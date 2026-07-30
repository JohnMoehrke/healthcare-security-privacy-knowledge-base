# IHE Basic Audit Log Patterns using #FHIR AuditEvent

Originally posted: https://healthcaresecprivacy.blogspot.com/2023/09/ihe-basic-audit-log-patterns-using-fhir.html
Published: 2023-09-19T12:19:00.001Z
Updated: 2023-09-22T16:56:33.625Z
Author: John Moehrke

---

The [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/volume-1.html) is a Content Profile that defines some basic and reusable AuditEvent patterns.

The Audit Log Patterns defined rely on the [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Profile for transport of the AuditEvent and query/retrieval of AuditEvents previously recorded. The patterns defined may be used as they are, or further refined to specific use-cases. Where a more specific audit event is defined, it should be derived off of these basic patterns. Thus, a more specific AuditEvent would be compliant with one or more of the AuditEvent patterns defined here.

This Implementation Guide is intended to be fully compliant with the HL7 [FHIR](http://hl7.org/fhir/) specification, providing only use-case driven constraints to aid with interoperability, deterministic results, and compatibility with [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) and other IHE Profiles.

https://blogger.googleusercontent.com/img/a/AVvXsEj2sJfXBvmz6oU51rtCUq0arqbEFLKaKMFfLJJihA53CrqLZh8CMQooeMCwCg29LO1EMVMJFahTPujOQLy3pqMOBkG-ydh7t_pUgnZfwsrZUNC_0PHJauRyrV_Pg1dGZT6-MGbWTF8j6P4SVdgvTC_7OUvMlYtERms45d2FYgXcvY-EXiT0pLkJgWwEZQzU
ANY Secure Client and ANY Secure Server represent abstractions of any client/server actor grouped with an ATNA Secure Node or an ATNA Secure Application supporting the ATX: FHIR Feed Option, defined in the [RESTful ATNA Supplement](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_RESTful-ATNA.pdf). Where ANY Secure Client and ANY Secure Server are involved in some communication that is an auditable event described in this Implementation Guide and for which some AuditEvent pattern is defined. The AuditEvent patterns defined here will be created and recorded [ITI-20] by the Secure Node or Secure Application that is grouped within the diagramed ANY Secure Client and the ANY Secure Server.

The double recording enables forensic analysis to detect failures better. Both audit events recorded will be different as the AuditEvent.source would identify the actor recording the event. Some actors will be able to populate the AuditEvent pattern given more fully, the lack of an element being populated is not a defect, but rather indicates that the actor did not have access to that data.
AuditEvent
AuditEvent ProfilingThe AuditEvent resource is used to record that an auditable event has happened. These auditable events are usually security or privacy relevant, but may be for other purposes. The profiles of AuditEvent here are to support security and/or privacy use-cases. These profiles of AuditEvent can be used as is, or may be used to derive more specific profiles of AuditEvent for more specific use-cases.
Profiles

The following AuditEvent patterns are defined:

- [RESTful activities](https://profiles.ihe.net/ITI/BALP/content.html#3573-restful-activities) (Create, Read, Update, Delete, Search)
- [SAML Security Token](https://profiles.ihe.net/ITI/BALP/content.html#3574-saml-security-token)
- [OAuth Security Token](https://profiles.ihe.net/ITI/BALP/content.html#3575-oauth-security-token)
- [Consent Authorized Decision Audit Message](https://profiles.ihe.net/ITI/BALP/content.html#3576-consent-authorized-decision-audit-message)
- [Privacy Disclosure Audit Message](https://profiles.ihe.net/ITI/BALP/content.html#3577-privacy-disclosure-audit-message)

Implemented in FHIR Servers
The following commonly used FHIR Servers have BALP implemented within them. You just need to turn it on. For more details:

- HAPI FHIR Server - [https://hapifhir.io/hapi-fhir/docs/security/balp_interceptor.html](https://hapifhir.io/hapi-fhir/docs/security/balp_interceptor.html)
- Firely FHIR Server - [https://docs.fire.ly/projects/Firely-Server/en/latest/security/auditing.html](https://docs.fire.ly/projects/Firely-Server/en/latest/security/auditing.html)
- Aidbox FHIR Repository - [https://docs.aidbox.app/modules-1/logging-and-audit/audit-logging](https://docs.aidbox.app/modules-1/logging-and-audit/audit-logging)

