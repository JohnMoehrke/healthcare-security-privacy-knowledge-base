# Simplifying Security Audit Standards

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/01/simplifying-security-audit-standards.html
Published: 2013-01-16T17:32:00.002Z
Updated: 2015-08-20T13:20:28.378Z
Author: John Moehrke

---

There ARE Security Audit and Accounting of Disclosure Standards. I am constantly explaining why this is true. I blame History. Yes we used many standards organizations but we have coordinated the efforts so that they are already all in harmony

- [ASTM E2147](http://www.astm.org/Standards/E2147.htm) â€“ Setup the concept of security audit logs for healthcare including accounting of disclosures

- [IETF RFC 3881](http://www.ietf.org/rfc/rfc3881.txt) â€“ Defined the Information Model (IETF rule forced this to be informative)

- **[DICOM Audit Log Message](http://medical.nema.org/medical/dicom/current/output/html/part15.html#sect_A.5) â€“ Made the information model Normative, defined Vocabulary, Transport Binding,  and Schema**

- [IHE ATNA](http://wiki.ihe.net/index.php?title=ATNA) â€“ defines the grouping with secure transport and access controls; and defined specific audit log records for specific IHE transactions.

- [NIST SP800-92](http://csrc.nist.gov/publications/nistpubs/800-92/SP800-92.pdf) â€“ shows how to do audit log management and reporting â€“ consistent with our model

- [HL7 PASS](http://gforge.hl7.org/gf/download/docmanfileversion/6970/9669/PASSNotes-HL7SeptWG.ppt) â€“ Defined an Audit Service with responsibilities and a query interface for reporting use

- [HL7 FHIR](http://wiki.hl7.org/index.php?title=FHIR) - Defined a RESTful binding for the Security Audit Event, and thus provide a Query/Retrieve also

- [ISO 27789](http://www.iso.org/iso/home/store/catalogue_tc/catalogue_detail.htm?csnumber=44315) â€“ is defining the subset of audit events that an EHR would need

There is very little about IHE-ATNA specification. These other standards are where the real stuff is. I am however happy to use IHE-ATNA as the marketing tag.

**Community of Experts**

I have been involved in developing Security Audit Standards for Healthcare since I started working on Healthcare Standards. Back then there were a handful of people working on Security and Privacy standards for healthcare. We tried to get more people involved, but the reality is that Security and Privacy is simply not an exciting space. I get it, i am a security geek, and we are few. I still only need two hands to count the people working on Security and Privacy standards in Healthcare. They are retiring about as fast as they arrive.

The Standards that we do have in Healthcare for  Security Audit all are well harmonized, because of the fact there are few people working on the domain. Even though we did the  work in very different standards organizations  It is the very fact that we did this work in many standards organizations that makes it hard to determine if we have Security Audit standards in Healthcare.

**Abstract Model**

The core standard that sets up the conceptual model comes from [ASTM E2147](http://www.astm.org/Standards/E2147.htm). This defines the purpose of a security Audit Log, the uses of this audit log information, including how it is used to provide patients with accounting of disclosures.

This specification has been leveraged by many regional initiatives including in the USA the Meaningful Use Stage 2.

**Data Model**

We then needed to produce a schema that would meet [ASTM E2147](http://www.astm.org/Standards/E2147.htm), and provide more specific guidance on how to describe that an event has happened. At the time there was much harsh competition between the various Healthcare Standards organizations. Again, not within Security/Privacy community. So we decided that ASTM was not the right organization to do this Data Modeling, and neither was HL7 or DICOM the right  organization. IHE couldn't be used as they only profiled existing standards. So we chose a non-healthcare organization. IETF was at the time a very open organization, so we chose to go there. Unfortunately for us, IETF changed their rules of publication while we were developing. Thus by the time we finished [RFC-3881](http://tools.ietf.org/html/rfc3881) we could only get it published as Informative. Thus it couldn't be used for conformance claims, it wasn't normative.

**Normative Data Model** We then needed somehow to get the data model and schema that we developed in [IETF RFC-3881](http://tools.ietf.org/html/rfc3881) to be normative. By this time the Healthcare standards organizations were behaving better. More importantly is that Radiology was using [RFC-3881](http://tools.ietf.org/html/rfc3881), so the Imaging world needed the  Normative schema more than other parts of Healthcare. So, we simply imported the RFC-3881 into [DICOM and stamped it Normative](http://medical.nema.org/medical/dicom/current/output/html/part15.html#sect_A.5).

Note that this did not produce a Audit Log Standard that was any different than RFC-3881, and this has nothing in common with any other  part of DICOM. So, implementing the Audit  Log Standard from DICOM does not require you  to implement anything else in DICOM. It is completely [independent](http://medical.nema.org/medical/dicom/current/output/html/part15.html#sect_A.5).

Now days DICOM isn't exactly the same as the original vision in RFC-3881, because mistakes were found and because functionality needed to be added. So, now days if someone starts with RFC-3881 they will end up with not the same thing. I just this week noticed two more things that need to be fixed.

The normative specification is ISO 12052 --- aka DICOM. It is freely available. Specifically you want [Part 15 - Security and Systems Management](ftp://medical.nema.org/medical/dicom/2011/09v11dif/09v11_15.doc). Specifically you want in that text [Annex A.5 AUDIT TRAIL MESSAGE FORMAT PROFILE](http://medical.nema.org/medical/dicom/current/output/html/part15.html#sect_A.5)

**Transport binding to SYSLOG**

Both DICOM and IHE chose to leverage the SYSLOG standard. This is the standard that is used in general purpose IT to collect audit logs from various devices (Firewalls, IDS, Databases, Web-Servers). The SYSLOG protocol comes in two flavors. The general problem of event transport suffers from various risks for which there is no perfect solution. The UDP version of SYSLOG does fail from the risk that it will loose events when the number of transactions per second become very large, but it is far more simple and doesn't fail in other ways. The TCP version of SYSLOG assures that all events will get recorded, but does need to have buffer management handled and even here the  buffers can get overflowed. The TCP  version also supports security through TLS, so does address some confidentiality and integrity risks.

So essentially this gives us a SYSLOG binding using XML payload. I will point out that [IHE-ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) is really nothing more than bringing forward the DICOM specification into a Profile for visibility.

**Query Function**

Up to this point there is the  expectation that the Audit Record Repository is simply receiving all these events from various systems that are detecting and logging security relevant events. The expectation is that this system can have functionality to address Reporting, Alerting, Alarms, and such. This is product functionality. This functionality can be accomplished given the audit schema and the cooperation of all the systems logging events. The access control to this Audit Record Repository is also a very sensitive resource. This system has records retention requirements that are very hard to accomplish. The audit log record must be protected against many unintended and malicious risks. This is why there has been little developed in the space of Query on the Audit Log.

**Query Service**

[HL7 PASS](http://gforge.hl7.org/gf/download/docmanfileversion/6970/9669/PASSNotes-HL7SeptWG.ppt) has produced a Service definition -- for what a Query might look like. This Draft Standard for Trial Use leveraged the very same Standards identified above. It simply added a Query and Retrieve transaction. This is now being looked at in HL7 to determine if there is really interest in further developing it. So far there has been little interest.

**Security Audit Log on FHIR**

The coolest thing to happen lately is that the [HL7  FHIR](http://wiki.hl7.org/index.php?title=FHIR) project has take the same standards as above and created a [RESTful resource out of them](http://www.hl7.org/implement/standards/fhir/securityevent.htm). This simple effort produces significant capability.

First, it is another way for an application to record that a security relevant event happened. HTTP is not a great protocol for this very chatty eventing (yes there are [speedy](http://en.wikipedia.org/wiki/SPDY)solutions). Sometimes an application has easy access to RESTful technology and the effort to get more complex tooling will result in avoiding doing the audit logging completely. Thus we can accept that there is now an HTTP binding for recording an audit log event. I am not sure how this will be received at IHE, since IHE purpose is to reduce the number of ways to do one thing in order to converge on one method that everyone can implement with confidence. Adding HTTP binding could only be confidently used if all Audit Record Repositories implemented the service side.

Second, and more exciting, is that through the magic of REST there are now Query and Retrieve transactions on this same resource space. Yes this opens up a huge question of Access Control to these transactions. More risky is that REST also magically adds Update and Delete; operations that should never be allowed on an Audit Log. These risks are identified in the FHIR  specification. The security layer that IHE is working on with IUA should support these use-case needs.

**Application Level Functionality**

ISO TC215 is balloting right now [ISO 27789  - Health Informatics - Audit Trails for electronic health records](http://www.iso.org/iso/home/store/catalogue_tc/catalogue_detail.htm?csnumber=44315). This goes up  another layer and explains how one would apply the very same standards above to an EHR. This includes a set of use-cases that are supported. This is simply an application of the same standards to EHR technology.

The HL7 EHR-Functional Model has some of this, but not quite to the same level of detail. The expectation, I hope, is that they will leverage ISO 27789, thus carrying on the tradition of harmony.

**Conclusion**

Yes we used many standards organizations but we have coordinated the efforts so that they are already all in harmony

- [ASTM E2147](http://www.astm.org/Standards/E2147.htm) â€“ Setup the concept of audit logs for healthcare including accounting of disclosures

- [IETF RFC 3881](http://www.ietf.org/rfc/rfc3881.txt) â€“ Defined the Information Model (IETF rule forced this to be informative)

- [DICOM Audit Log Message](ftp://medical.nema.org/medical/dicom/2011/09v11dif/09v11_15.doc)â€“ Made the information model Normative, defined Vocabulary, Transport Binding,  and Schema

- [IHE ATNA](http://wiki.ihe.net/index.php?title=ATNA) â€“ defines the grouping with secure transport and access controls; and defined specific audit log records for specific IHE transactions.

- [NIST SP800-92](http://csrc.nist.gov/publications/nistpubs/800-92/SP800-92.pdf) â€“ shows how to do audit log management and reporting â€“ consistent with our model

- [HL7 PASS](http://gforge.hl7.org/gf/download/docmanfileversion/6970/9669/PASSNotes-HL7SeptWG.ppt) â€“ Defined an Audit Service with responsibilities and a query interface for reporting use

- [HL7 FHIR](http://wiki.hl7.org/index.php?title=FHIR) - Defined a RESTful binding for the [Security Audit Event](http://hl7.org/implement/standards/fhir/securityevent.html), and thus provide a Query/Retrieve also

- [ISO 27789](http://www.iso.org/iso/home/store/catalogue_tc/catalogue_detail.htm?csnumber=44315) â€“ is defining the subset of audit events that an EHR would need

Note there is very little in the IHE-ATNA specification. These other standards are where the real stuff is.

UPDATED: February 26, 2015 with [direct links to the HTML version of the Audit Log Message](http://medical.nema.org/medical/dicom/current/output/html/part15.html#sect_A.5).  A very readable and directly usable specification that does NOT require you to understand anything else in DICOM. Also the FHIR version of [SecurityEvent](http://hl7.org/implement/standards/fhir/securityevent.html)(soon to be AuditEvent) is also compatible.

**For More information**

- [Testing your ATNA Audit Log implementation](http://healthcaresecprivacy.blogspot.com/2012/10/testing-your-atna-audit-log.html)

- [MU Patient Engagement - Activity History Log](http://healthcaresecprivacy.blogspot.com/2012/10/testing-your-atna-audit-log.html)

- [Patient Data in the Audit Log](http://healthcaresecprivacy.blogspot.com/2012/04/patient-data-in-audit-log.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html)

- [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

- [ATNA audit log recording of Query transactions](http://healthcaresecprivacy.blogspot.com/2011/12/atna-audit-log-recording-of-query.html)

- [How granular does an EHR Security Audit Log need to be?](http://healthcaresecprivacy.blogspot.com/2011/11/how-granular-does-ehr-security-audit.html)

- [Document Submission: Audit requirements under error conditions](http://healthcaresecprivacy.blogspot.com/2011/11/document-submission-audit-requirements.html)

- [ATNA + SYSLOG is good enough](http://healthcaresecprivacy.blogspot.com/2011/12/atna-syslog-is-good-enough.html)

