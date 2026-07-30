# Patient Data in the Audit Log

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/04/patient-data-in-audit-log.html
Published: 2012-04-27T02:22:00.001Z
Updated: 2012-04-27T02:22:40.916Z
Author: John Moehrke

---

There are many different Audit Logs that we often think of. These audit logs should be designed and maintained independent as they have very different purposes.

- **Security Audit Logs** -- contain log of security relevant events that have happened. These logs are used to prove that the security controls are working properly and to evaluate if the organizations security and privacy policies are being upheld. The use of these audit logs are limited to the privacy/security office. I outline in [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html) how to get Privacy Audit Reports from a Security Audit Log.

- **Medical Records Audit Logs** -- contain log of clinically relevant events that have happened. Are used to prove that a clinical event has happened. Examples include that a drug that was ordered was administered by a specific nurse at a specific time. These audit logs need to be visible to the clinical users and are used in clinical decision support and reporting.

- **Error/Event Audit Logs** -- contain log of errors or events that have happened. Often these are debugging logs or diagnostic (software or hardware) logs that are used by service personnel during the installation, configuration, or servicing of the system/equipment

How much Patient Identifiable Data is allowed in Security Audit Logs?

There are a few factors in this question:

- Patient Identifiable Data is the binding of healthcare data with identifiers of the patient. In the USA this is referred to as Protected Health Information (PHI).

- Audit logs, especially security logs, generally need many identifiers. These identifiers will give accurate sorting, filtering, and reporting.

- The Audit Reporting system can always use lookup services (IHE PWP, PDQ, XDS, or other) to convert identifiers into displayable names, or to find aliases that should also be used in the searching.

- Audit logs, especially security logs, generally do NOT need healthcare data. They need to identify the data, which is done using unique identifiers assigned to the data where possible.

Thus the answer to the question is that audit logs should have as close to zero PHI in them as possible. This of course is the goal, with the possibility of good reason to break this goal. Usually these good reasons are because the identifiers are not yet available, or not available in the code-path that is recording the audit event.

Therefore the audit logs should include the user ID, but not the display name of the user. They should include the patient ID, but not the patient's name. They should include the lab order number, but not the lab values.

Here is an abstract description of an ATNA audit event, one event:

- User ID (e.g. 212008131, NOT the user's personal name: "John Moehrke")

- Patient ID (e.g. pa123456, NOT the patient's personal name)

- Data ID (DICOM SOP Instance, CDA Document OID, XDS UUID)

- Description of what (Viewed, Created, Updated, Printed, Exported, etc)

- Success/Failure of the operation

The point is that the reporting tools have the ability to look these up, with appropriate access controls and audit logs tooâ€¦

It is understood that some clinics are specialty clinics, like Betty Ford Clinic, and thus a patient being associated with that clinic is enough to suspect that the patient has that ailment. These specialty clinics need to be handled as special cases.

Where are Security Audit Logs stored?

Security Audit logs need to be protected from threats. These are a different class of threats and there is a very different set of mitigation.

A security audit log needs to be writable by any system that is creating authentic audit log events, clearly the record needs to show what system recorded the event. One risk this presents is that a malicious individual could simply create many audit events and thus overflow the audit server with useless messages, so the operational design needs to handle this.

The security audit log should be readable only by those authorized to read it. This will be a small sub-set of employees as the security audit log will contain sensitive health information (PHI), but will also contain sensitive employee information.

There are many different filtering, reporting, and alerting requirements on the audit log system.

This is why the ATNA profile utilizes syslog standards to record the audit events on a specialized system. These specialized systems are used often outside of healthcare, and there is a very large industry built around them (IBM tivioli, CA unicenter, etc). The Healthcare industry should utilize these network standards and focus our attention on continuing to develop clinical capability. There is no reason for the healthcare industry to reinvent this wheel.

See Also

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html)

- [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

- [ATNA audit log recording of Query transactions](http://healthcaresecprivacy.blogspot.com/2011/12/atna-audit-log-recording-of-query.html)

- [How granular does an EHR Security Audit Log need to be?](http://healthcaresecprivacy.blogspot.com/2011/11/how-granular-does-ehr-security-audit.html)

- [Document Submission: Audit requirements under error conditions](http://healthcaresecprivacy.blogspot.com/2011/11/document-submission-audit-requirements.html)

- [ATNA + SYSLOG is good enough](http://healthcaresecprivacy.blogspot.com/2011/12/atna-syslog-is-good-enough.html)

- [NIST SP800-92 Guide to Computer Security Log Management](http://csrc.nist.gov/publications/nistpubs/800-92/SP800-92.pdf)

