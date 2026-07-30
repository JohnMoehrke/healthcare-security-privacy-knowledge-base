# FHIR Consent Resource mapping to Kantara Consent Receipt

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/03/fhir-consent-resource-mapping-to.html
Published: 2018-03-02T15:21:00.001Z
Updated: 2018-03-02T15:21:50.770Z
Author: John Moehrke

---

I really like the work that [Kantara is doing with Consent Receipt](https://kantarainitiative.org/confluence/display/infosharing/Consent+Receipt+Specification). I think they are doing what is needed. Specifically they are not trying to define an internal consent resource, nor one that would go from one data controller to another data controller.
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjCq3zeYgX5girGWxl7iKz-D-Vy0I1bRZ13jkcwjr6xN7kgb8Hm1lhTzIGqxMMhuwd-PRMXlQetgV3HjVxWa1Pnl1jNiNT2SkN8iB4G30h9LcJ6kJ9T7RRpigB3cK16YspkctZrQGe9psiT/s1600/Kantara_Consent_Receipt.png
They are focused on giving the Individual something (a receipt) that is evidence of the Consent Ceremony, and contains the terms agreed to. In this way, the Individual has evidence that can be used later when their consent terms have been violated. Much like a retail receipt is used by a consumer when the thing they bought turns out to be broken or defective.

The diagram here is the [Kantara Consent Receipt](https://kantarainitiative.org/confluence/display/infosharing/Consent+Receipt+Specification)

Perspective difference between FHIR and Kantara:

The [FHIR Consent](http://build.fhir.org/consent.html) is shown here

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgK7Hx5HQXW9i8WOLxi5CKfTPAMJw32M2rtTxmrUHzojcCd0y64GpXGvnYvwXd6VfEy0NqJrrR5yxXSZ2aLnXvZTRQ7lJ2Dc4flIkm4MZf7vQCXCS9qkYRE53DdZzsgW_7pHS13bSPq6OMG/s1600/FHIR_Consent_R4b.png

The Kantara Consent Receipt is intended to be a self-contained message, where the [FHIR Consent](http://build.fhir.org/consent.html)is one Resource to be used within a FHIR infrastructure.   The [FHIR Consent](http://build.fhir.org/consent.html) is just focused on the consent specifics.

Thus to create a complete equivalent one would need to assemble from FHIR:

>
Bundle { MessageHeader(1..1), Consent (1..1), Provenance(1..1)}

Where:

- Bundle assemblies everything together

- MessageHeader explains to whom the message is going, and from who it originates

- I am assuming a pushed message, but FHIR clearly can be used RESTfully, or a Document could be created.

- Provenance carries the proof of origination (signatures)

- Consent specifics

Mapping FHIR Consent to Kantara Consent Receipt.

http://build.fhir.org/consent-mappings.html#v2

https://www.blogger.com/nullhttps://www.blogger.com/null**FHIR Consent****Kantara Consent Receipt**
    identifier4.3.5 Consent Receipt ID
    status(N/A - would be active)
    scope(N/A - would be fixed at privacy-consent)
    category4.5.5 Consent Type
    patient4.4.1 PII Principal ID
    dateTime4.3.3 Consent Timestamp
    performer4.4.3 PII Controller

4.4.5 PII Controller Contact

4.4.6 PII Controller Contact

4.4.6 PII Controller Address

4.4.7 PII Controller Email

4.4.8 PII Controller Phone

4.4.9 PII Controller URL

4.4.4 On Behalf
    organization4.4.3 piiControllers (including all contact information)
    source[x]4.7 Presentation and Delivery
    policy
        authority4.3.2 Jurisdiction
        uri
    policyRule4.4.10 Privacy Policy
    verification
        verified
        verifiedWith
        verificationDate
    provision4.5.1 Services
        typePERMIT
        period4.5.9 Termination
        actor

            role4.5.10 Third Party Disclosure
            reference4.5.11 Third Party Name
        action4.5.2 Service
        securityLabel4.5.12 Sensitive PII

4.5.13 Sensitive PII Category
        purpose4.5.3 purposes

4.5.4 Purpose

4.5.5 Purpose Category

4.5.8 Primary Purpose
        class4.5.7 PII Categories
        code4.5.7 PII Categories
        dataPeriod
        data
            meaning
            reference
        provision

Not well mapped:

I am pleased and very surprised at how well these map. The following items are where there was differences. These differences seem reasonable given the purpose of each, and capabilities of the environments.

The following items from the Kantara Consent Receipt do map, but not perfectly.

- 4.3.4 Collection Method - a description of the method by which consent was obtained

- for FHIR, the current presumption is that the data is collected during treating the patient for healthcare reasons. This current presumption is likely not going to be true as FHIR matues

- 4.5.8 Primary Purpose -- indicates if a purpose is part of a core service of the PII controller

- Seems to be a way to differentiate primary purpose from secondary.

- FHIR Consent addresses purpose of use regardless of primary or secondary

- 4.5.9 Termination - conditions for the termination of consent. link to policy defining how consent or purpose is terminated.

- FHIR Consent has timeframe to automatically terminate, but does not address how the patient would take action

There are a few additional capabilities of the FHIR Consent that are not yet represented in Kantara

- verification -- these elements are there to hold who verified the consent ceremony. I am not convinced that this is commonly needed.

- dataPeriod -- often a patient is willing to allow some data to flow, but might want to block data from a specifically sensitive period of time. The timeframe is an easy thing to identify, and to enforce.

- data -- FHIR we can point at exactly which data is controlled by this rule

- nested provisions -- FHIR Consent can defined nested provisions. Thus enable this, but not that...

[Consent is a deep topic that I have many articles](https://healthcaresecprivacy.blogspot.com/p/consent.html)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhMpKLuZn44ZQuX5miXygGUdCg2D-5ffo2QAbafz44TdX3yu4xmER5hgI-b4845-2e5g-hWWF-WiKJEN01-0jlE57Jrv_GQDFvJ6R9_MIr89YH6C1xQ0UCCzdiY4qFECoLG21td4muUV-6e/s1600/Slide7.PNG

