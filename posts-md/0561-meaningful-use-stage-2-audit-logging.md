# Meaningful Use Stage 2 - Audit Logging - Privacy and Security

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-audit-logging.html
Published: 2012-09-04T03:24:00.001Z
Updated: 2014-08-05T18:04:03.109Z
Author: John Moehrke

---

Updated August, 2014 -- It seems people are still reading this post. I am simply adding a forward pointer to the [Audit Logging Topic](http://healthcaresecprivacy.blogspot.com/p/topics.html#Audit) where you might find fresher blog articles.

In few words: Normal Security Audit Logging and Reporting. Much of the security and privacy changes between Stage 1 and Stage 2 ; and even between the Stage 2 NPRM and Final rule are around the Security Audit Log.  The changed details are in Â§170.210(e), Â§170.210(g), and Â§170.210(h). Note that Â§170.210(f) is an important Security criteria that I cover elsewhere. They are called upon by 170.314(d) and 170.314(e)

**Summary: **

The regulation, as wordy as it is, is just asking for typical Security Audit Logging on typical Security Auditable Events. Events like: login, logout, patient selected, report viewed, report created, report printed, order requested, results returned, etc. Record when, who, what, and where. Essentially any time a user creates, views, manipulates, or exports PHI. This audit log sets up a multitude of reports including those used by the healthcare providers security and privacy office. Reports specifically called for are Accounting of Disclosures and Access Report.

I cover this space quite a bit on my blog. I suggest reading my blog rather than being confused by the regulation and all the things that it says in different ways.

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html)

- [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

- [ATNA audit log recording of Query transactions](http://healthcaresecprivacy.blogspot.com/2011/12/atna-audit-log-recording-of-query.html)

- [How granular does an EHR Security Audit Log need to be?](http://healthcaresecprivacy.blogspot.com/2011/11/how-granular-does-ehr-security-audit.html)

- [Document Submission: Audit requirements under error conditions](http://healthcaresecprivacy.blogspot.com/2011/11/document-submission-audit-requirements.html)

- [ATNA + SYSLOG is good enough](http://healthcaresecprivacy.blogspot.com/2011/12/atna-syslog-is-good-enough.html)

I show you the details below, for those that donâ€™t trust my simple summary above.

**Details: **Remember, you wanted the details...

Important to note that Â§170.210(b) has NOT changed, which covers much of the same space. I will assume the overlap is handled by the new regulation.

>
Â§ 170.210(b) Record actions related to electronic health information. The date, time, patient identification, and user identification must be recorded when electronic health information is created, modified, deleted, or printed; and an indication of which action(s) occurred must also be recorded.

Here is the new Stage 2 that is in addition.

>
Â§ 170.210 Standards for health information technology to protect electronic health information created, maintained, and exchanged.

The Secretary adopts the following standards to protect electronic health information created, maintained, and exchanged:

* * * * *

(e) Record actions related to electronic health information, audit log status, and encryption of end-user devices. (1)(i) The audit log must record the information specified in sections 7.2 through 7.4, 7.6, and 7.7 of the standard specified at Â§ 170.210(h) when EHR technology is in use.

(ii) The date and time must be recorded in accordance with the standard specified at Â§170.210(g).

(2)(i) The audit log must record the information specified in sections 7.2 and 7.4 of the standard specified at Â§ 170.210(h) when the audit log status is changed.

(ii) The date and time each action occurs in accordance with the standard specified at Â§170.210(g).

(3) The audit log must record the information specified in sections 7.2 and 7.4 of the standard specified at Â§ 170.210(h) when the encryption status of electronic health information locally stored by EHR technology on end-user devices is changed. The date and time each action occurs in accordance with the standard specified at Â§ 170.210(g).

â€¦

(g) Synchronized clocks. The date and time recorded utilize a system clock that has been synchronized following (RFC 1305) Network Time Protocol, (incorporated by reference in Â§170.299) or (RFC 5905) Network Time Protocol Version 4, (incorporated by reference in Â§170.299).

(h) Audit log content. ASTM E2147-01(Reapproved 2009), (incorporated by reference in Â§170.299)

The summary of this is that ONC has chosen to leverage the [ASTM E2147](http://www.astm.org/Standards/E2147.htm) standard, rather than write specifics into regulation text. I applaud this as that is the role that Regulation Text and Standards should have.

However this means that [ASTM E2147](http://www.astm.org/Standards/E2147.htm) has now become interesting to many more people than it ever has before. I worked on [ASTM E2147](http://www.astm.org/Standards/E2147.htm), and encourage everyone to read the whole thing, all FOUR pages. It is a very foundational standard in the space of Healthcare Audit Logging. It is the basis of the [IHE-ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) schema and model, as I explain in [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html). Most of what it says is very relevant to Security and Privacy Audit Logging. I will tell you what MOST people need to know about [ASTM E2147](http://www.astm.org/Standards/E2147.htm):

**The Information that needs to be recorded: Â§ 170.210(e)(1)(i) **

The MU Stage 2 rules identify â€œsections 7.2 through 7.4, 7.6, and 7.7 of the standard specifiedâ€. This is simply the list of attributes that an audit log entry should contain that [ASTM E2147](http://www.astm.org/Standards/E2147.htm) says are mandatory, and excludes the values it outlines as important but  not mandatory. Below is about 90% of what is in section 7, I didn't want to copy all of it out of respect for the copyright. But, the part missing is just a one-line definition of each item, nothing more than that.

>
7. Audit Log Content

7.1 Audit log content is determined by regulatory initiatives, accreditation standards, and principles and organizational needs. Information is needed to adequately understand and oversee access to patient identifiable data in health information systems in order to perform security oversight tasks responsibly.

Logs must contain the following minimum data elements:

7.2 Date and Time of Event

7.3 Patient Identification

7.4 User Identification

7.5 Access Device (optional)

7.6 Type of Action (additions, deletions, changes, queries, print, copy)

7.7 Identification of the Patient Data that is Accessed(optional)

7.8 Source of Access (optional unless the log is combined from multiple systems or can be indisputably inferred)

7.9 Reason for Access (optional)

7.10 If capability exists, there should be recognition that both an electronic â€œcopyâ€ operation and a paper â€œprintâ€ operation are qualitatively different from other actions.

Note that this is the abstract scheme that IETF built into [RFC-3881](http://tools.ietf.org/html/rfc3881), and that is what got built into DICOM and [IHE-ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html). Thus if you follow the requirements of [IHE-ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html), then you will be following the requirements of this regulation. The regulation doesnâ€™t mandate IHE-ATNA because there was concern that the model of having a standalone AuditRecordRepository is not scalable down to small clinics. It certainly is very helpful the larger your network gets.

**Special attention Events **There are 2 special security audit log entries that the regulation calls out specifically. The reason they are called out specifically is because there is special worry about these events in todayâ€™s environment. They should always be auditable, and the [ASTM E2147](http://www.astm.org/Standards/E2147.htm) calls for it in generic terms. All the special handling of 7.2 vs 7.3 vs 7.4 is obvious when you look at the above outline for section 7 in [ASTM E2147](http://www.astm.org/Standards/E2147.htm). Specifically they are worried

* CEHRT that might have the ability to disable the audit log, so they call out for a special event to record that this has happened Â§ 170.210(e)(2);

* CEHRT might have the ability to decrypt encrypted PHI or disable encryption when it might be called for. They call for a special event to be recorded when this happens 170.210(e)(3);

**The Date and Time Â§ 170.210(e)(1)(ii) The date and time must be recorded in accordance with the standard specified at Â§ 170.210(g). **This item is a little confused. The standard specified in Â§ 170.210(g) is the Network Time Protocol, which is all about how to synchronize timeclocks. It has NOTHING to do with how one might format a date and time in a record. However, what this does mean that all audit log entries do need to be using the synchronized date/time that is provided through timeclock synchronization.

What is important for EHR vendors to know is that NTP is already a part of the operating system you use. It doesn't matter if you are a Windows shop or a UNIX/LINUX shop. The NTP protocol is ready to enable; mostly what needs to be done is that it needs to be configured with the IP Address of the server that has the right time. In a Windows network, this is usually the Active Directory service. All that you need to do is use the operating system clock when you record events. Donâ€™t do any special handling, and you will be fine.

The hard part is the operational choice of what system will be the master clock. This is not the EHR vendors decision, unless you are hosting the EHR in the cloud. Note that if users login to their workstations using Active Directory, then time synchronization is already configured as this is forced when using Windows Login.

**170.314(d) Privacy and Security **Auditable events and tamper-resistance â€“ this section simply calls upon the above.

>
170.314(d)(2) Auditable events and tamper-resistance. (i) Record actions. EHR technology must be able to: (A) Record actions related to electronic health information in accordance with the standard specified in Â§170.210(e)(1);

(B) Record the audit log status (enabled or disabled) in accordance with the standard specified in Â§170.210(e)(2) unless it cannot be disabled by any user; and

(C) Record the encryption status (enabled or disabled) of electronic health information locally stored on end-user devices by EHR technology in accordance with the standard specified in Â§ 170.210(e)(3) unless the EHR technology prevents electronic health information from being locally stored on end-user devices (see 170.314(d)(7) of this section).

(ii) Default setting. EHR technology must be set by default to perform the capabilities specified in paragraph (d)(2)(i)(A) of this section and, where applicable, paragraphs (d)(2)(i)(B) or (C), or both paragraphs (d)(2)(i)(B) and (C).

(iii) When disabling the audit log is permitted. For each capability specified in paragraphs (d)(2)(i)(A) through (C) of this section that EHR technology permits to be disabled, the ability to do so must be restricted to a limited set of identified users.

(iv) Audit log protection. Actions and statuses recorded in accordance with paragraph (d)(2)(i) of this section must not be capable of being changed, overwritten, or deleted by the EHR technology.

(v) Detection. EHR technology must be able to detect whether the audit log has been altered.

**Audit Report **

>
170.314(d)(3) Audit report(s). Enable a user to create an audit report for a specific time period and to sort entries in the audit log according to each of the data specified in the standards at Â§ 170.210(e).

Typical reporting. Not even including typical alerting and alarming.

**Accounting of Disclosures **

>
170.314(d) (9) Optionalâ€”accounting of disclosures. Record disclosures made for treatment, payment, and health care operations in accordance with the standard specified in Â§ 170.210(d).

They indicate that the EHR needs to record events in assistance to the [Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html) . This is given as an optional criteria, which most will read as unnecessary. I have a long blog on Accounting of Disclosures, which is a necessary and empowering report; but it is not easy to create even if you have perfect audit logging.

**170.314(e) Patient Engagement â€“ Audit Log **

I am confused by this section as it comes so close to simply recognizing that when a Patient uses one of the Patient Engagement options that these are auditable events. BUT the  regulation stops short of simply invoking 170.210(e); rather it invokes the time synchronization [Â§170.210(g)] and then writes a regulation specific audit log requirement.

>
(ii) Activity history log. (A) When electronic health information is viewed, downloaded, or transmitted to a third-party using the capabilities included in paragraphs (e)(1)(i)(A) through (C) of this section, the following information must be recorded and made accessible to the patient:

(1) The action(s) (i.e., view, download, transmission) that occurred;

(2) The date and time each action occurred in accordance with the standard specified at Â§ 170.210(g); and

(3) The user who took the action.

(B) EHR technology presented for certification may demonstrate compliance with paragraph (e)(1)(ii)(A) of this section if it is also certified to the certification criterion adopted at Â§ 170.314(d)(2) and the information required to be recorded in paragraph (e)(1)(ii)(A) is accessible by the patient.

**Conclusion: **I said that all they are asking for is typical Audit Logging and typical Audit Log Reporting. You are far better off reading my blog

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html)

- [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

- [ATNA audit log recording of Query transactions](http://healthcaresecprivacy.blogspot.com/2011/12/atna-audit-log-recording-of-query.html)

- [How granular does an EHR Security Audit Log need to be?](http://healthcaresecprivacy.blogspot.com/2011/11/how-granular-does-ehr-security-audit.html)

- [Document Submission: Audit requirements under error conditions](http://healthcaresecprivacy.blogspot.com/2011/11/document-submission-audit-requirements.html)

- [ATNA + SYSLOG is good enough](http://healthcaresecprivacy.blogspot.com/2011/12/atna-syslog-is-good-enough.html)

There still is much confusion in ONC on Security Audit Logs vs Accounting of Disclosures. See [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html). I really thought that I and others on the HIT Standards - Privacy and Security Workgroup had done a better job of explaining that 'less is more'. But the resulting regulation text sure says  basic stuff using lots of text. I really don't think that anything special is hiding, but we really won't know until the certification text comes out. In many ways Stage 2 is getting right back to the original CCHIT criteria, which I wrote as co-chair of then CCHIT privacy and security workgroup. It is painful to see this over and over again.

