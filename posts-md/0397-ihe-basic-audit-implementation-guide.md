# IHE Basic Audit Implementation Guide

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/03/ihe-basic-audit-implementation-guide.html
Published: 2022-03-03T14:18:00.002Z
Updated: 2022-05-04T18:57:51.278Z
Author: John Moehrke

---

Updated May 4th, 2022 -- Trial Implementation released. The Implementation Guide is now named [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) Version 1.1.0.

Supporting Privacy Principles to give transparency to how a Patients data are used is one of the goals of a new [Implementation Guide from IHE](https://profiles.ihe.net/ITI/BALP/index.html). The AuditEvent profiles in this guide can also be used for Security purposes.

The [Basic Audit Log Pattern (BasicAudit) Content Profile](https://profiles.ihe.net/ITI/basicaudit/index.html) defines some basic and reusable AuditEvent patterns. Defining formally an Audit Creator and an Audit Consumer actors (similar to how IHE has Content Creator and Content Consumer in the Document space).https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjghKhnglKvTZqQ5hikYiOmsx_MLcNr2QPU_dTR7Fyc5MkFo8-FqTUGR4nfBYkNeY12ttjgWPGOgjQSpmWflmTx2Ij0FTElgPOQ6BS2_trA78-_2fuuRYbiJHaU67WmjPawFTsQLVdExn9AtztpSFeJpc7MbhQ-xNuyKYreNIAQyazjkGhIWffg-oOpRA/s343/basicaudit-actors.png

The Audit Log Patterns defined here rely on the [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Profile for transport of the AuditEvent and query/retrieval of AuditEvents previously recorded. The patterns defined here may be used as they are, or further refined to specific use-cases. Where a more specific audit event is defined, it should be derived off of these basic patterns. Thus a more specific AuditEvent would be compliant with one or more of the AuditEvent patterns defined here.

This implementation guide is intended to be fully compliant with the HL7 http://hl7.org/fhir/http://hl7.org/fhir/https://blogger.googleusercontent.com/img/a/AVvXsEib7PMnUmRzq3V0KVRGPCQlw1ILUA6PTRSm5ovtuF_VHTeLyg78S4_1dLmJGi1zlM0ibKM8UUA4_7OPxL6qV2CDFcdz2CUYhBA2-jVU7QjF7WmZOwPSnZxNt87IpepZNtg6ycG7hzp-ZUS_1jlJlpZXa--tY9YGmiqmq7GfKcAFVD9aQNTwiZUnAAY5HQ=s476
FHIR specification, providing only use-case driven constraints to aid with interoperability, deterministic results, and compatibility with [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) and other IHE Profiles.

[This Implementation Guide](https://profiles.ihe.net/ITI/BALP/index.html) is not about the "ANY request/response", this is about what should be put into an AuditEvent record that "auditable event" happened.

Specifically, there are a set of patterns (profiles) defined for the AuditEvent content that should be recorded when any of the following happens:

- [RESTful activities](https://profiles.ihe.net/ITI/BALP/content.html#3573-restful-activities)

- Create
- Read
- Update
- Delete
- Search/Query

- [SAML Security Token](https://profiles.ihe.net/ITI/BALP/content.html#3574-saml-security-token) used
- [OAuth Security Token](https://profiles.ihe.net/ITI/BALP/content.html#3575-oauth-security-token) used
- [Consent Authorized Decision Audit Message](https://profiles.ihe.net/ITI/BALP/content.html#3576-consent-authorized-decision-audit-message)
- [Privacy Disclosure Audit Message](https://profiles.ihe.net/ITI/BALP/content.html#3577-privacy-disclosure-audit-message)

