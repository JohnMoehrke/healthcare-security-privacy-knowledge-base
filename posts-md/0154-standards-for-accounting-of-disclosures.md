# Standards for Accounting of Disclosures

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/01/standards-for-accounting-of-disclosures.html
Published: 2024-01-30T13:58:00.002Z
Updated: 2024-01-30T13:58:31.023Z
Author: John Moehrke

---

I was asked lately if there are standards that support "Accounting of Disclosures". The use-case of Accounting of Disclosures is specific to the USA, but the broader concept is an expected [Privacy Principle](https://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html). The broader concept of an Access Report, or a Report of Data Uses, would inform a data subject of any use of their data both those that were authorized by the patient (e.g. Consent) and those that were against that authorization. The USA concept of Accounting of Disclosures is a much smaller subset, and in my view a useless subset as this subset is made up of only those uses of the data that the patient explicitly authorized outside the normal Treatment, Payment, and healthcare Operations.

So, are there standards? YES. The standards don't produce a human readable report, but rather would provide the raw material that is used to fill out a human readable report. This is an important distinction, although it is a common distinction between technical standard and User Experience. For example, the technical standards for encoding a lab result are not fit for patient consumption, but they are key contributors to the human readable report that is given to the patient. The report includes context setting, and assistance with understanding the details.
Are their interoperability standards?Yes, there is a long history of Healthcare and general standards that are designed to support Accounting of Disclosures, Access Log, and many other use cases.

- ASTM E2147 - Setup the concept of security audit logs for healthcare including accounting of disclosures
- IETF RFC 3881 - Defined the Information Model (IETF rule forced this to be informative)
- DICOM Audit Log Message - Made the information model Normative, defined Vocabulary, Transport Binding, and Schema
- IHE ATNA - Defines the grouping with secure transport and access controls; and defined specific audit log records for specific IHE transactions.
- NIST SP800-92 - Shows how to do audit log management and reporting - consistent with our model
- HL7 PASS - Defined an Audit Service with responsibilities and a query interface for reporting use
- ISO 27789 - Defined the subset of audit events that an EHR would need
- ISO/HL7 10781 EHR System Functional Model Release 2
- ISO 21089 Trusted End-to-End Information Flows

More specifically does FHIR have this?
Yes, the [AuditEvent](https://hl7.org/fhir/auditevent.html)resource has as a use-case to provide support for Accounting of Disclosures. The AuditEvent resource is a collaboration between HL7, DICOM, and IHE.

In FHIR R4 - [http://hl7.org/fhir/R4/auditevent.html](http://hl7.org/fhir/R4/auditevent.html)

IHE has a relevant Implementation Guide â€“ Basic Audit Log Patterns (BALP)
    [https://profiles.ihe.net/ITI/BALP/index.html](https://profiles.ihe.net/ITI/BALP/index.html)

within BALP IG, which is all relevant to Security/Privacy audit log recording and access to that recording using FHIR, there is a specific profile of the AuditEvent resource for recording a known disclosure.
    [https://profiles.ihe.net/ITI/BALP/content.html#3577-privacy-disclosure-audit-message](https://profiles.ihe.net/ITI/BALP/content.html#3577-privacy-disclosure-audit-message)

IHE has a supplement on ATNA that brings in FHIR AuditEvent
    [https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_RESTful-ATNA.pdf](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_RESTful-ATNA.pdf)

With this linkage between FHIR and ATNA, the events can be recorded using FHIR restful create, and can be accessed using FHIR search.

Which brings up ATNA ([Audit Trails and Node Authentication](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html)) which is the long-standing solution in IHE.

Further IHE governance has each Profile that IHE writes should have in it how that Profiles transactions would be logged in the audit log. These would be in Volume 2, in the Security Considerations section.
Must I record using ATNA or FHIR AuditEvent?No, one of the benefits of the supplement adding FHIR AuditEvent to ATNA is to provide a search mechanism that produces a FHIR Bundle of AuditEvent records. These records do not need to be originally stored in ATNA or FHIR AuditEvent, just made available in FHIR AuditEvent format. Much like clinical APIs to EHRs that expose the clinical data in FHIR clinical resources, while not mandating the format of the database to be FHIR.

Thus a system can record the event using whatever mechanism it wants to, which might be native database and web-server formats.
Are there implementations of BALP?Yes: The following commonly used FHIR Servers have BALP implemented within them. You just need to turn it on. For more details:

- HAPI FHIR Server - [https://hapifhir.io/hapi-fhir/docs/security/balp_interceptor.html](https://hapifhir.io/hapi-fhir/docs/security/balp_interceptor.html)
- Firely FHIR Server - [https://docs.fire.ly/projects/Firely-Server/en/latest/security/auditing.html](https://docs.fire.ly/projects/Firely-Server/en/latest/security/auditing.html)
- Aidbox FHIR Repository - [https://docs.aidbox.app/modules-1/logging-and-audit/audit-logging](https://docs.aidbox.app/modules-1/logging-and-audit/audit-logging)

PS
IHE is a recognized standards organization focusing on profiling standards. The use of AuditEvent is recognized broadly for support of Security and Privacy audit log requirements.

