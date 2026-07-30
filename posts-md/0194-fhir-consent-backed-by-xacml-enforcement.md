# FHIR Consent backed by XACML enforcement

Originally posted: https://healthcaresecprivacy.blogspot.com/2025/12/fhir-consent-backed-by-xacml-enforcement.html
Published: 2025-12-28T23:32:00.005Z
Updated: 2025-12-28T23:32:49.521Z
Author: John Moehrke

---

Imagine a scenario where my organization uses XACML for all of our policy. This is where HR policies are on what HR relevant data can be accessed by whom, etc. This same XACML system would also be used to protect Patient data, including imaging, EHR, and HIE access. Thus, the XACML system is very broad and deep. Thus, it is the one that we want to use to protect everything.

Along comes FHIR Consent and we feel that there is a need to have some representation of the Patient Consent in FHIR form, but the actual rules that are applied stay in XACML. So, what does the FHIR Consent look like?

Generally speaking, the FHIR Consent would be just a cross-reference between the Patient as known in FHIR with the XACML subject id as known in XACML. The FHIR Consent would not replicate any of the patient specific rules.

So, lets imagine a Patient has indicated that they agree to permit all the normal clinical activities with Normal sensitivity data, but that they do not allow external access to Restricted sensitivity data.

In FHIR Consent, this would be a set of Consent.provisions; but in my case I already have this in computable form in XACML.

Further, my organizational overriding policies are written in XACML.

https://blogger.googleusercontent.com/img/a/AVvXsEiqhYq4NYK8HcYu_2tTY60ep8tXlFoWSGpGMS_vOnro7gdxmBBiHK4Wn7ct8QaZVe8a58AklCy1ZB9ekrYMGfNtS17cW-OT1AYSKvfR73ndaCV-wNc9rgRmdWZoCHGj2vQV4qSWmuXv8WxilG7vCeLRCm08vt0Ra63wdJgwTEBOomAC3zsXDvUQ6cimYcYl

To see what this looks like, I have written a [simple Implementation Guide](https://build.fhir.org/ig/JohnMoehrke/xacml-consent/branches/main/index.html): The [Consent](https://build.fhir.org/ig/JohnMoehrke/xacml-consent/branches/main/Consent-ExampleFHIRConsentXACML.html) points at the [overriding policy](https://build.fhir.org/ig/JohnMoehrke/xacml-consent/branches/main/index.html#xacml-overriding-policy) and the [patient specific policy](https://build.fhir.org/ig/JohnMoehrke/xacml-consent/branches/main/index.html#xacml-patient-consent-policy) as shown below. This is [Profiled](https://build.fhir.org/ig/JohnMoehrke/xacml-consent/branches/main/StructureDefinition-fhir-consent-xacml.html):

XACML PoliciesFor those more familiar with XACML, can you check my work? I don't pass off these two policy sets as perfect, but as small representative examples.

Using XACML leverages an existing standard for defining access control policies. XACML policies are XML documents that specify rules for granting or denying access to resources based on various attributes, such as user roles, resource types, and environmental conditions.

XACML Overriding Policy
The XACML Overriding Policy is a policy set that defines the overarching access control rules for FHIR resources. This policy is intended to be used in conjunction with patient-specific XACML policies referenced in FHIR Consent resources. The overriding policy ensures that certain organizational or regulatory requirements are consistently applied across all patient consents.

Policy PolicyId="Org_Policy_7890_Workflow_Governance"
        RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-overrides"
        xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17">

    Description>
        Organizational Governance: Enforces workflow roles and clinical status.
        This policy overrides subject-level permits.
    Description>

    Target/>

    Rule RuleId="Emergency_Access_Permit" Effect="Permit">
        Description>Allows doctors to access data regardless of tags during a life-safety event.Description>
        Condition>
            Apply FunctionId="urn:oasis:names:tc:xacml:1.0:function:string-equal">
                AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">EmergencyAttributeValue>
                AttributeDesignator
                    AttributeId="urn:example:names:clinical:access-context"
                    Category="urn:oasis:names:tc:xacml:3.0:attribute-category:environment"
                    DataType="http://www.w3.org/2001/XMLSchema#string"
                    MustBePresent="true"/>
            Apply>
        Condition>
    Rule>

    Rule RuleId="Deny_Archived_Data_Access" Effect="Deny">
        Description>Strictly forbids access if the record is in 'Archived' status, overriding user permits.Description>
        Target>
            AnyOf>
                AllOf>
                    Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-equal">
                        AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">ArchivedAttributeValue>
                        AttributeDesignator
                            AttributeId="urn:example:names:resource:status"
                            Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource"
                            DataType="http://www.w3.org/2001/XMLSchema#string"
                            MustBePresent="true"/>
                    Match>
                AllOf>
            AnyOf>
        Target>
    Rule>

    Rule RuleId="Deny_Non_Clinical_Staff_Restricted" Effect="Deny">
        Description>Forbids administrative staff from seeing any data tagged as 'Restricted' (R).Description>
        Condition>
            Apply FunctionId="urn:oasis:names:tc:xacml:1.0:function:and">
                Apply FunctionId="urn:oasis:names:tc:xacml:1.0:function:string-equal">
                    AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">AdministrativeAttributeValue>
                    AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:2.0:subject:role" Category="urn:oasis:names:tc:xacml:1.0:subject-category:access-subject" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"/>
                Apply>
                Apply FunctionId="urn:oasis:names:tc:xacml:1.0:function:string-equal">
                    AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">RAttributeValue>
                    AttributeDesignator AttributeId="urn:example:med:names:resource:data-tag" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"/>
                Apply>
            Apply>
        Condition>
    Rule>
Policy>XACML Patient Consent Policy
The XACML Patient Consent Policy is a policy document that defines the specific access control rules for an individual patient. This policy is referenced in the FHIR Consent resource and works in conjunction with the XACML Overriding Policy to determine access permissions for FHIR resources.

PolicySet xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"
           PolicySetId="consent-policy-set-12345"
           Version="1.0"
           PolicyCombiningAlgId="urn:oasis:names:tc:xacml:1.0:policy-combining-algorithm:deny-overrides">

    Description>Consent Policy Set for Patient ID 12345Description>
    Target>
        AnyOf>
            AllOf>
                Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-equal">
                    AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">12345AttributeValue>
                    AttributeDesignator
                        AttributeId="urn:oasis:names:tc:xacml:1.0:subject:subject-id"
                        Category="urn:oasis:names:tc:xacml:1.0:subject-category:access-subject"
                        DataType="http://www.w3.org/2001/XMLSchema#string"
                        MustBePresent="true"/>
                Match>
            AllOf>
        AnyOf>
    Target>

    Policy PolicyId="consent-policy-12345-normal-data"
            RuleCombiningAlgId="urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:permit-overrides">

        Description>Policy to permit sharing of Normal (N) dataDescription>

        Target>
            AnyOf>
                AllOf>
                    Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-equal">
                        AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">NormalAttributeValue>
                        AttributeDesignator AttributeId="data-sensitivity"
                                             Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource"
                                             DataType="http://www.w3.org/2001/XMLSchema#string"
                                             MustBePresent="true"/>
                    Match>
                AllOf>
            AnyOf>
        Target>

        Rule RuleId="permit-normal-data" Effect="Permit">
            Description>Permit access to Normal dataDescription>
        Rule>

    Policy>

    Policy PolicyId="consent-policy-12345-restricted-data"
            RuleCombiningAlgId="urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:deny-overrides">

        Description>Policy to deny sharing of Restricted (R) dataDescription>

        Target>
            AnyOf>
                AllOf>
                    Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-equal">
                        AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">RestrictedAttributeValue>
                        AttributeDesignator AttributeId="data-sensitivity"
                                             Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource"
                                             DataType="http://www.w3.org/2001/XMLSchema#string"
                                             MustBePresent="true"/>
                    Match>
                AllOf>
            AnyOf>
        Target>
        Rule RuleId="deny-restricted-data" Effect="Deny">
            Description>Deny access to Restricted dataDescription>
        Rule>
    Policy>
PolicySet>

