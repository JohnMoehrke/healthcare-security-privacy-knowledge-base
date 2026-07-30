# HL7 ballot - FHIR SecurityEvent -- Aka RESTful ATNA

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/09/hl7-ballot-fhir-securityevent-aka.html
Published: 2013-09-12T20:03:00Z
Updated: 2013-09-12T20:03:26.868Z
Author: John Moehrke

---

I just finished reviewing in detail the [FHIR SecurityEvent resource](http://hl7.org/implement/standards/fhir/securityevent.htm). This is part of the [first FHIR DSTU ballot](http://healthcaresecprivacy.blogspot.com/2013/08/time-to-kindle-fhir-it-needs-ballot.html). This is also a resource that I championed to get added to FHIR. I did have to fight hard during the pre-ballot time to get this resource to be as compliant as possible to [IHE-ATNA (DICOM)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) schema. I brought in extra people to add emphasis of the advantages of keeping compatible even in the light that the compatibility feels wrong. Indeed no one will argue that if we had a greenfield today, we likely would not have such an odd schema. The advantage is that it is highly flexible.

The resulting schema is not perfect match, but is a perfect functional match. It is laid out the same way, mostly has simplified names of the attributes. It couldn't be exactly perfect because they also support JSON. Nice part about the FHIR specification is that they have a page that shows [mapping between the attribute names given by DICOM/ATNA and those used by FHIR.](http://hl7.org/implement/standards/fhir/securityevent-mappings.htm)

The really good news is that my review of this FHIR resource is totally Positive. I have no negative comments and really want to express how exciting it is to have new ways (REST) to record audit events and super excited that there is now a way ([REST](http://healthcaresecprivacy.blogspot.com/2009/12/web-services-restful-vs-soap.html)) to query an audit record repository.

This does not replace the old [IHE-ATNA (SYSLOG) model, that still has many advantages](http://healthcaresecprivacy.blogspot.com/2011/12/atna-syslog-is-good-enough.html). Like many RESTful interfaces, these are best used by environments that have the RESTful tools. So it is the  tools that you have that are far more important. Also, I see FHIR SecurityEvent as something that enhances the space. I would like to see IHE-ATNA eventually updated to include this transport as a possibility.

As my part of the [FHIR Connectathon](http://wiki.hl7.org/index.php?title=FHIR_Connectathon_4), I am attempting to brush off my programming skills. Simply to create an application that can record a [Disclosure](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html). It would ask who disclosed, what they disclosed, what patient, where did the data go. It would record this explicitly as a Disclosure.  I had hoped to also be able to create an application that would use the FHIR query on SecurityEvent to create a pretty "[Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html)" report for a specified patient.

Audit Control

- [Simplifying Security Audit Standards](http://healthcaresecprivacy.blogspot.com/2013/01/simplifying-security-audit-standards.html)

- [Testing your ATNA Audit Log implementation](http://healthcaresecprivacy.blogspot.com/2012/10/testing-your-atna-audit-log.html)

- [MU Patient Engagement - Activity History Log](http://healthcaresecprivacy.blogspot.com/2012/10/mu-patient-engagement-activity-history.html)

- [Patient Data in the Audit Log](http://healthcaresecprivacy.blogspot.com/2012/04/patient-data-in-audit-log.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html)

- [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

- [ATNA audit log recording of Query transactions](http://healthcaresecprivacy.blogspot.com/2011/12/atna-audit-log-recording-of-query.html)

- [How granular does an EHR Security Audit Log need to be?](http://healthcaresecprivacy.blogspot.com/2011/11/how-granular-does-ehr-security-audit.html)

- [Document Submission: Audit requirements under error conditions](http://healthcaresecprivacy.blogspot.com/2011/11/document-submission-audit-requirements.html)

- [ATNA + SYSLOG is good enough](http://healthcaresecprivacy.blogspot.com/2011/12/atna-syslog-is-good-enough.html)

