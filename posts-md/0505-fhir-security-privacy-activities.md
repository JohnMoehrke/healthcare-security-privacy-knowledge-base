# FHIR Security & Privacy activities

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/05/fhir-security-privacy-activities.html
Published: 2019-05-09T18:34:00.003Z
Updated: 2019-05-09T18:34:30.316Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjRUcSXDdrYzqKgzQjhs4eQNUDhUEDW64SiCIbpQK9THZ7XKCJFEEI1d1fR8sT9KL95afyZ-YRYn_674J6Qak5epQSkkP7t6_kbqRJYnn4ToOy577C75y-xB66KjgqlNTuhrsfTFK_9j4fF/s1600/secpriv.jpg

This is an update of what is going on in Security and Privacy in, and around, the FHIR specification.

---------------tl;dr-----------------------

- FHIR R4 includes Security Considerations classification

- SMART-on-FHIR first flavor is Normative

- Addition of X-Provenance and X-Consent http headers

- GDPR assessment against FHIR indicates good coverage of needs in FHIR already

- Maturing AuditEvent and Provenance to Normative by FHIR R5

- HL7 Implementation Guide on Basic Provenance (CDA and FHIR)

- IHE updated ATNA to include FHIR AuditEvent feed and query

- Signature datatype not likely to be R5 normative candidate

-----------------Details -----------------------

Overall Security Considerations:

The FHIR R4 specification now has an overall [Security Consideration Classification](http://build.fhir.org/security.html#SecPrivConsiderations). This spans the whole of the FHIR specification such that each Resource is assessed into one of four buckets of Security Considerations: Patient specific, Other Identified Individual specific, Business sensitive, and Anonymous Readable. These are not mutually exclusive classifications, but rather a "tendency". That is to say that each resource could cover many of these classifications, but tends to fall into the specified classification. The main goal of the classification is to raise awareness that the FHIR specification covers use-cases other than just sensitive patient data. The Security WG set the initial assessment, but the owner of the Resource can re-classify.  Also, actual use will be context specific. There is nothing wrong with using the 'Patient" classified resources in a way that is fully anonymous because they are holding synthetic data.

GDPR driven activities:

The Security WG has done an assessment of FHIR in the context of GDPR. This has produced a white paper that is [available informally today](https://confluence.hl7.org/display/SEC/FHIR+-+GDPR). The GDPR assessment has driven some of changes that are already in the specification, and is also driving some future changes or implementation guides. These things have not really started formally yet, but include :

- consent decision service -- to enable a FHIR Server to ask a service for Permit/Deny on an otherwise authorized request

- basic Privacy Authorization Consent IG to support freely given and informed privacy authorizing consent

- erasure operation to support GDPR and Right-to-Forget

SMART-on-FHIR:

The [SMART-on-FHIR specification is now published](http://www.hl7.org/fhir/smart-app-launch/)in the basic form that is compatible with the original Argonaut version. This base-lines the standard at this starting point. There is interest in opening up for the next more advanced form of OAuth token support. One method uses a JSON Scope encoding, thus enabling far more comprehensive and complex scopes.

Maturity toward FHIR Release 5:

The Security Workgroup is going to work toward getting Provenance and AuditEvent to Normative by Release 5 (R5) of FHIR (Approximately end of 2020). This will be enabled by two different projects.  The HL7 Basic Provenance Implementation Guide, and IHE Audit Trail and Node Authentication updates to support FHIR. Signature datatype is not likely to go Normative in R5, but likely will have some advancements.

Plan to Mature Provenance:

The [HL7 Basic Provenance Implementation Guide](https://confluence.hl7.org/display/SEC/Basic+Provenance+Implementation+Guide) is getting started, so there is no specific conclusions yet. That said, the goal of this project is to define realistic and effective guidance on implementation of Provenance in a cross-organizational health information exchange (HIE) for the purpose of Treatment (may be Payment). This project is not addressing the Provenance requirements for within an organization. This project is not addressing ALL possible use-cases for Provenance, such as supporting Clinical Research. The most important part of the scope of this project is to set requirements that are as minimal as possible, yet effective for supporting Treatment. Counter this against a comprehensive Provenance implementation that would likely have well over a dozen Provenance records for any one clinical object record. Meaning that in a fully advanced Provenance it is very likely that Provenance is 10x the clinical data.  This Implementation Guide will drive public comment ballot, comment resolution, improvement of the core Provenance resource, and testing at Connectathon.  This is the maturity steps that the core Provenance resource needs to approach Normative in R5.

Note there are some [Implementation Guides that have included Provenance](https://healthcaresecprivacy.blogspot.com/2019/03/basic-provenance-use-cases.html) guidance and constraints.

Plan to Mature AuditEvent

The [IHE Audit Trail and Node Authentication (ATNA)](https://wiki.ihe.net/index.php/Audit_Trail_and_Node_Authentication) project will help mature the core AuditEvent resource in support of Normative in R5. The ATNA profile is one of the oldest profiles in IHE, but has seen a [major change to add FHIR based interactions](https://wiki.ihe.net/index.php/Add_RESTful_Query_to_ATNA). Last year there was an update of ATNA to add a query one could make of an Audit Repository to support reporting and alerting such as a report for Accounting of Disclosures, Access Log, and to support investigation of security and privacy incidents. This year IHE has added a AuditEvent feed support to support FHIR based applications recording AuditEvents using http RESTful FHIR create. Thus now the ATNA profile has support for recording an AuditLog, and queries.  This is going through a Public Comment ballot in the coming months, and will be setup for testing at IHE Connectathon in the future.

Advancements since R4

Provenance has not changed much yet, although there is a related abstract Provenance service ballot going through the HL7 ballot process. This abstract Provenance service work may impact the FHIR Provenance resource, but no changes have yet been proposed.

Provenance X-Header:
In FHIR R4 there is a new capability that may not be as well known. When an app is creating a FHIR Resource (for example an Observation), that application likely has a very rich understanding of the context of the creation event, so could provide a Provenance. The historic way it could do this was to either create the Observation, then create the Provenance; or it could use a Transaction to send a Bundle with both the Observation and Provenance. These do work, but there is a question of making this more easy. So there is [now a http "X" header that one can use in a simple RESTful create/update](http://build.fhir.org/provenance.html#header) to also carry the Provenance. Thus a normal http RESTful create of a new Observation can carry the app's definition of the Provenance in the http header, while the Observation is in the body.

Consent X-Header:

A joint effort with CBCP has moved to add an X-Header to support an app asserting that a FHIR Consent authorizes the request being made. This is a http "X" header that holds the URL to the FHIR Consent. The Server is not obliged to consider the Consent, but it may consider it. That is to say that the use of this "X" header will only enable actions that the access control protecting the data also agrees with. The prime use-case for this feature is to enable a real-time point-of-care capturing of a Consent from the patient that authorizes the interaction. Where prior to having this Consent, the request would be rejected, but with appropriate proof that an informed and freely given Consent would now enable access. A similar "point of care consent" interaction is supported in some Nationwide Health Exchanges such as CareQuality.

Signature:

The [Signature datatype](http://build.fhir.org/datatypes.html#signature) is receiving some interest. Given that the primary function of a digital signature leverages external Digital-Signature standards such as XML-Signature and JSON Signature. Thus we are not developing the technology of Digital-Signature. In the FHIR Signature Datatype, we are just exposing in a more friendly FHIR way some of the useful attributes about the signature. The Digital-Signature validation is done using the Digital-Signature standard. A new use-case that is driving some interesting new views is one that has a context of a Provenance "Service" that is managed independently from the Clinical repository. In this case a end-user may be using a clinical Resource and use a Provenance Service to discover the Provenance of that clinical Resource. In that case the Provenance is being managed independently from the clinical Resource and the pathway the clinical Resource was communicated; then the Provenance.signature does not need to be a non-repudiation, but can be a simple integrity check (e.g. sha256). See [other issues on Signature](http://build.fhir.org/signatures.html).

