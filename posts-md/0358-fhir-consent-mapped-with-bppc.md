# FHIR Consent mapped with BPPC

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/11/fhir-consent-mapped-with-bppc.html
Published: 2019-11-22T15:10:00.005Z
Updated: 2019-11-22T15:10:49.629Z
Author: John Moehrke

---

Today on the FHIR Consent call we had a very useful discussion of how one would use FHIR Consent to do the same thing that BPPC does in XDS. Said another way, what is the degenerate form of FHIR Consent that is equal-to the functionality of BPPC, and what is the degenerate form of FHIR Consent that is compatible with BPPC. We did have a slight side discussion about APPC, but lets start simple.

BPPC -- Basic Patient Privacy Consent
An IHE profile for use in an XDS/XCA environment to convey the Privacy Policy Consent status given some basic function. This profile was intentionally called "Basic" with the expectation that something more expressive would eventually come along, but at the time we needed a solution for simple use-cases. Something did come along that is more expressive, called Advanced Patient Privacy Consent (APPC).  BPPC is still the dominant solution as it fits the realistic set of use-cases that are most used. APPC leverages BPPC for context setting and documentation, but adds more flexible rules. Where BPPC supports a binary (true/false), and APPC enables all flavors of grey.

See past articles for more

- [Basic Consent - a necessary first step](https://healthcaresecprivacy.blogspot.com/2016/08/basic-consent-necessary-first-step.html)

- [BPPC is not just for XDS/XCA](https://healthcaresecprivacy.blogspot.com/2016/02/bppc-is-not-just-for-xdsxca.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](https://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [Texas HIE Consent Management System Design](https://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [Beyond Basic Privacy â€“ The IHE APPC Profile](https://healthcaresecprivacy.blogspot.com/2017/07/beyond-basic-privacy-ihe-appc-profile.html)

BPPC supports:

The BPPC profile supports a few vectors. It might be Basic, but it is really quite useful:

- Identify who the Patient is -- in BPPC the patient is all that is recorded in coded form. The act might have been signed by a guardian or parent; but that would be only noted in the attachment. It was not seen as critical to automatic processing

- Identify what organization is being bound by this Consent -- in BPPC there was not a need to differentiate between what organization is bound, vs what organization signed, vs what organization is allowed to use this consent.

- Policy being acknowledged -- this enables the community to define a set of policies that are offered, and the one picked and agreed to by the patient is referenced. That policy might be the "OPT-OUT" policy, thus their selection is to not allow sharing of data. -- ITI TF3:5.1.2.1.1.2

- Time period that the Consent is valid -- supports a consent that starts in the future, and a consent that has an expiration -- ITI TF3:5.1.2.2.1

- When the Consent happened - BPPC doesn't address when the consent was indexed as that is not important to automatic processing

- What PurposeOfUse this applies to -- what activities identified by PurposeOfUse vocabulary. When the consent is an OPT-OUT, this means this PurposeOfUse is forbidden. The PurposeOfUse enables research project-by-project identification each as a coded value.

- Copy of the signed policy, which may be scanned ink-on-paper or other representation

- Replacing previous choice -- enabling patient to change their mind as many times as they want

[Here is a table showing the mapping between these fundamentals](https://docs.google.com/spreadsheets/d/15ICZl04XZV21v4LtTeRm_mI9dNqgWydIqtpbbmo5ER0/edit?usp=sharing):

- Column A -- short identification of the above fundamental

- Column B -- BPPC as it would look in MHD (FHIR DocumentReference) with no adjustments

- Column C -- BPPC as it would look published in FHIR Consent with no adjustments or improvements -- plenty more can be don in FHIR Consent

- Column D -- BPPC as it is today in XDS/XCA

Basic Patient Privacy mechanismBPPC in MHDBPPC in FHIR ConsentBPPC in XDS
Resource TypeFHIR DocumentReferenceFHIR ConsentXDS Document Entry
type identifierDocumentReference.code = LOINC â€œ57016-8â€Consent.category = LOINC â€œ57016-8â€DocumentEntry.typeCode = LOINC â€œ57016-8â€
1) Identify who the Patient isDocumentReference.subject = Reference(Patient)Consent.patient = Reference(Patient)DocumentEntry.patientId
2) What organization is bound by this ConsentDocumentReference.author = Reference(Organization)Consent.performer = Reference(Organization)
 Consent.organization=Reference(Organization)
 Consent.provision[0].actor.reference=Reference(Organization)DocumentEntry.author
3) Policy being acknowledgedDocumentReference.context.eventConsent.policy.uriDocumentEntry.eventCodeList
4) Time period that the Consent is validDocumentReference.context.periodConsent.provision[0].period.serviceStopTime"}" style="overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bottom;">DocumentEntry.serviceStartTime .serviceStopTime
5) When consent happenedDocumentReference.content.attachment.creationConsent.dateTimeDocumentEntry.creationTime
6) What PurposeOfUse this applies toDocumentReference.securityLabelDocumentReference.provision[0].purposeDocumentEntry.confidentialityCode
7) Copy of the signed policyDocumentReference.content.attachment.urlTwo Alternatives
 A) Consent.sourceAttachment
 B) Consent.sourceReference = Reference(DocumentReference)DocumentEntry.URI
8) Replacing previous choiceFHIR Create (New)DocumentReferencewith details &
Set previous DocumentReference.status = superseded with
DocumentReference.relatesTo.target = (New)DocumentReferenceTwo Alternatives
 A) (New)Consent with details & Set previous Consent.status=inactive
 B) Update Consent with details using a Version tracking ServerXDS Replace operation
fixed valuesDocumentReference.content.format=urn:ihe:iti:bppc:2007Consent.status = active
 Consent.scope = patient-privacy
 Consent.provision[0].type = permit | denyDocumentEntry.formatCode=urn:ihe:iti:bppc:2007
notes NOT \"OPT-OUT\""}" style="overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bottom;">unclear how negative consents are really supported. If one points
at a "OPT-OUT" policy, what goes into the Consent.provision[0].type?
A "permit" seems wrong as you are not permitting "OPT-OUT". Yet
a "deny" also seems wrong as you are not applying a
double-negative --> NOT "OPT-OUT"

APPC - Advanced Patient Privacy Consents Profile

APPC could also be mapped similar in two additional variations. These variations leverage the fact that APPC is a profile of the XACML language, and thus is a rich language for encoding policy rules. Thus where Consent has a complex set of .provision.provision nesting, this would not be used. Rather the XACML encoding would be used. In this case the Consent is mostly a method for managing the consents and not for encoding the rules; that is that the rules would be encoded in XACML and managed as XACML encoding. Likely encoding that are pushed into the XACML engine and thus only externally referenced by each policy set unique identifier.

The two variations are:

- Where the FHIR Consent is similar to above, where Consent.policy.uri points at a base policy, but the deviations from that policy would be encoded in APPC (XACML) and that is pointed  by Consent.source[x]

- This model optimizes on maintenance at the expense of much less optimal run-time decision making

- Where the FHIR Consent is very sparsly populated with Consent.policy.uri pointing at a patient specific instance of APPC (XACML). Meaning where above this uri value is from a small pre-published policies that are chosen from, in this case each Consent instance has a unique uri as each one has encoded policy using XACML language. The drawback is that one must look inside to see all the context, which is not a problem when one is relying on XACML enforcement engines which would need this in XACML anyway.

- This model optimizes on run-time decision use of XACML, and is harder to do the maintenance (new consent, replacement consent, expiration, etc)

Performance

ALL of these and other solutions need careful design considerations to make access control decisions accurate and fast. This often means that these run time decisions are not processing the FHIR or XDS data, but rather each time a policy is changed, that change is pushed to the access control decision engine for ingestion into that engine's system.

