# Meaningful Use Stage 2 FINALLY means Secure and Privacy Protecting

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-finally-means.html
Published: 2012-03-15T21:41:00.001Z
Updated: 2014-08-05T18:40:43.244Z
Author: John Moehrke

---

**Updated August 2014 -- Seems people are still finding and reading this post from almost 3 years ago. Please refer to the [MU](http://healthcaresecprivacy.blogspot.com/p/topics.html#MU)topic for more up-to-date information. **

****

Meaningful Use [Stage 2](http://www.healthit.gov/providers-professionals/meaningful-use-stage-2) has made mostly minor adjustments to the security and privacy capabilities, but **critical and welcome ones**. They have added detail to the Security/Privacy Audit Logging, references to FIPS for cryptographic algorithms, synchronization of time clocks, clarified some old criteria, and defined a patient accessible accounting report. These are all things that have been recommended in many other environments including IHE, HL7, DICOM, HITSP, and previous EHR certifications. These are also aligned with guidance and requirements from other regional and national programs. Overall a system that has been designed well to handle security should be in good shape.

**Detailed Discussion**I provide more details below. Here is the text from the NPRM of interest to Privacy and Security:

7. In Â§ 170.210 republish the introductory text and add paragraphs (e), (f), and (g) to read as follows:

**Â§ 170.210 Standards for health information technology to protect electronic health information created, maintained, and exchanged.**

The Secretary adopts the following standards to protect electronic health information created, maintained, and exchanged:** **

* * * * *__

(e)  Record actions related to electronic health information, audit log status, and encryption of end-user devices.

(1) When EHR technology is used to create, change, access, or delete electronic health information, the following information must be recorded:

(i)    The electronic health information affected by the action(s);

(ii)   The date and time each action occurs in accordance with the standard specified at Â§ 170.210(g);

(iii)  The action(s) that occurred;

(iv) Patient identification; and

(v)  User identification.

(2)  When the audit log is enabled or disabled, the following must be recorded:

(i)    The date and time each action occurs in accordance with the standard specified at Â§ 170.210(g); and

(ii)   User identification.

(3)  As applicable, when encryption of electronic health information managed by EHR technology on end-user devices is enabled or disabled, the following must be recorded:

(i)    The date and time each action occurs in accordance with the standard specified at Â§ 170.210(g); and

(ii)   User identification.

(f)   Encryption and hashing of electronic health information._ _Any encryption and hashing algorithm identified by the National Institute of Standards and Technology (NIST) as an approved security function in Annex A of the Federal Information Processing Standards (FIPS) Publication 140-2 (incorporated by reference in Â§ 170.299).

(g)  Synchronized clocks. The date and time recorded utilize a system clock that has been synchronized following Request for Comments (RFC) 1305 Network Time Protocol (NTP) v3 (incorporated by reference in Â§170.299) or RFC 5905 NTPv4 (incorporated by reference in Â§170.299).

-----------------------------------------

Â§ 170.314(d) Privacy and security.

(1) Authentication, access control, and authorization.

(i) Verify against a unique identifier(s) (e.g., username or number) that a person seeking access to electronic health information is the one claimed; and

(ii) Establish the type of access to electronic health information a user is permitted based on the unique identifier(s) provided in paragraph (d)(1)(i) of this section, and the actions the user is permitted to perform with the EHR technology.

(2)  Auditable events and tamper-resistance.

(i) Enabled by default. The capability specified in paragraph (d)(2)(ii) of this section must be enabled by default (i.e., turned on) and must only be permitted to be disabled (and re-enabled) by a limited set of identified users.

(ii) Record actions. Record actions related to electronic health information, audit log status and, as applicable, encryption of end-user devices in accordance with the standard specified in Â§ 170.210(e).

(iii) Audit log protection. Actions recorded in accordance with paragraph (d)(2)(ii) must not be capable of being changed, overwritten, or deleted.

(iv) Detection. Detect the alteration of audit logs.

(3) Audit report(s). Enable a user to create an audit report for a specific time period and to sort entries in the audit log according to each of the elements specified in the standard at Â§ 170.210(e).

(4) Amendments.

(i) Enable a user to electronically amend a patient's health record to:

(A) Replace existing information in a way that preserves the original information; and

(B) Append patient supplied information, in free text or scanned, directly to a patient's health record or by embedding an electronic link to the location of the content of the amendment.

(ii) Enable a user to electronically append a response to patient supplied information in a patient's health record.

(5) Automatic log-off. Terminate an electronic session after a predetermined time of inactivity.

(6) Emergency access. Permit an identified set of users to access electronic health information during an emergency.

(7) Encryption of data at rest. Paragraph (d)(7)(i) or (ii) of this section must be met to satisfy this certification criterion.

(i) If EHR technology manages electronic health information on an end-user device and the electronic health information remains stored on the device after use of the EHR technology on that device has stopped, the electronic health information must be encrypted in accordance with the standard specified in Â§ 170.210(a)(1). This capability must be enabled by default (i.e., turned on) and must only be permitted to be disabled (and re-enabled) by a limited set of identified users.

(ii) Electronic health information managed by EHR technology never remains stored on end-user devices after use of the EHR technology on those devices has stopped.

(8) Integrity.

(i)  Create a message digest in accordance with the standard specified in Â§ 170.210(c).

(ii) Verify in accordance with the standard specified in Â§ 170.210(c) upon receipt of electronically exchanged health information that such information has not been altered.

(9) Optionalâ€”accounting of disclosures. Record disclosures made for treatment, payment, and health care operations in accordance with the standard specified in Â§ 170.210(d).

 ----------------------------------------------

Â§ 170.202(a)(2)(ii) Patient accessible log.

(A) When electronic health information is viewed, downloaded, or transmitted to a third-party using the capabilities included in paragraphs (e)(1)(i)(A) through (C) of this section, the following information must be recorded and made accessible to the patient:

(1) The electronic health information affected by the action(s);

(2) The date and time each action occurs in accordance with the standard specified at Â§ 170.210(g);

(3) The action(s) that occurred; and

(4) User identification.

(B) EHR technology presented for certification may demonstrate compliance with paragraph (e)(1)(ii)(A) of this section if it is also certified to the certification criterion adopted at Â§ 170.314(d)(2) and the information required to be recorded in paragraph (e)(1)(ii)(A) is accessible by the patient.

 ---------------------------------------------------------

**Â§ 170.210(g) Synchronized clocks:**The most referenced inside of the NPRM, and the most important of these changes is the synchronization of time clocks. This has been called for by [IHE since 2002](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html). The only addition that ONC did was to specify that NTP v4 is also acceptable. I think this is more because they feel the need to point at the latest version. The only useful new thing in NTPv4 is support for [IPv6](http://en.wikipedia.org/wiki/IPv6). IPv6 is going to be critical, but is likely a decade off. The US federal government has been mandating it since 2003. IPv6 will likely show up first for mobile devices on cellular networks. Having support for NTPv4 and IPv6 is a good thing, eventually, but not too urgent.

http://www.atsclock.com/files/image/general/LARGE/clockCollage.jpg

Supporting NTP in an EHR is also the easiest thing to implement. It is already inside all modern operating system platforms in some form, and most have it turned on by default. The responsibility of the EHR technology is to simply use the system clock for recording when things happen including using it in the clinical documents.

The expectation is that the practicing organization will choose a single time source and configure all their systems to synchronize with that. This is often times transparently done in cases where Active Directory is used as the Microsoft technology automates this.

The comment to both ONC and CMS: First I very much back the use of NTP, I just don't know that it needs to show up in EHR certification criteria. The reason is that it is already in every operating system. I know that including it in the EHR certification does make sure that it is configurable and the time is used. But I suspect this is already true today. I would encourage CMS to add the use of NTP to the operational side. This is where the failure is more likely to be. If NTP stays in the certification rule, then it should be noted as not needing to be tested. Testing this is very... time consuming... Not because it is hard, but because time must pass in order to prove that it is working. This is simply not worth the amount of wasted time spent certifying, to have each EHR technology waiting idly for time to pass, while holding up test resources.

**Â§ 170.210(e) Record actions related to electronic health information, audit log status, and encryption of end-user devices**This section is simply adding some more detail to a few specific auditable events and what minimally should be recorded when these events happen. A well designed security audit log system would have captured these events anyway, as there is not new events or new detail. These events have been included since 2004 in [IHE-Audit Trail and Node Authentication (ATNA)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) and the standards that it is based on.

The motivation for adding these events, tied to each group: (1) to enable good security surveillance and assist with an Accounting of Disclosures and an Access Report, (2) protect the audit log against administrators, and (3) catch someone disabling encryption on end-user devices.  Items (1) and (2) are simply common security audit logging. A system that has implemented the audit logging profile from [IHE-ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) would be compliant with these requirements.

Item (3) is the least useful and should be removed. The most likely scenario for encryption of data-at-rest is to use a totally transparent off-the-shelf solution. The EHR would not be involved in this and couldn't possibly know that encryption of data-at-rest is being used. I have written an extensive blog article on this: [Encryption is like Penicillin](http://healthcaresecprivacy.blogspot.com/2012/02/encryption-is-like-penicillin.html).

This is just one example where ONC is reacting to a very large number of Breach Notifications that are due to end-user devices getting lost or stolen with large numbers of patient records and no encryption. This is not a case where encryption was present and turned off, these are cases where someone simply never did their HIPAA mandated risk assessment and determined that encryption really was a reasonable and appropriate thing to do. So the violation was with HIPAA security rule, not with technology. The prolog does speak to this. I think that making this an auditable event is a waste of ink.

More confusing is the way they are describing how security audit logging will be handled for EHR Modules vs EHR Complete. I simply can't quite figure it out. Seems to me that if a piece of code, modular or complete, is responsible for allowing a 'security auditable event' to happen, that it should be responsible for recording that it happened. This is the [model defined in the IHE-ATNA profile](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html), and through the SYSLOG standard that it uses for transport all of the events end up in one location, the Audit Record Repository. In this way many modules record events that are all able to be sorted, filtered, alerted on, and reported on.  The result is a distributed system with a complete [Accountability](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html) supporting [Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html).

The comments to ONC on this would be to remove (3). I get why they want it, but it is an event that will never be detected by an EHR. The underlying problem of mobile devices getting stolen is an operational problem that CMS has covered well through pointing at HIPAA Security rule.

I would like to encourage IHE-ATNA, but I am ok with that coming in Stage 3; while I encourage everyone who will listen to do IHE-ATNA as their solution to all Security Auditing requirements.

**Â§ 170.210(f) Encryption and hashing of electronic health information**This item is here to clear up confusion caused by Meaningful Use Stage 1 which included specific algorithms. The goal of this new item is to indicate that Meaningful Use and Healthcare as an industry should simply look to NIST/FIPS for the algorithm endorsements. This is a good thing as it puts the decision in the hands of experts in cryptography, and opens up the number of algorithms to a more reasonable choice.

This should make it more easy to simply leverage off-the-shelf security. Typical network, object, and system encryption tools follow the recommendations of NIST/FIPS.

It is good to see that in the prolog (Page 32 in my copy) of the NPRM they explain that because the Transports defined include Security (Encryption, Integrity, and Mutual-Authentication), that it is unnecessary to further elaborate on transport security. This is good, but does put in question all the other non-specified transports. The IHE-ATNA profile handled this differently saying that once you include "Secure Node" or "Secure Application" that the system is obligated to include security for ALL network communications that carry PHI, regardless of if they are IHE compliant network communications or not. This is just the 'capability' to secure the communications, but it is a clear indication that any non-secured communication is a vector for attack.

They reinforce this with more comments on page 49 "â€¦designing EHR technology to meet the following standards: IETF RFC 2246 (TLS 1.0) and SMTP/SMIME as well as implementation specifications such as NIST Special Publication 800-52 ("Guidelines for the Selection and Use of TLS Implementations") and specifications developed as part of nationwide health information network initiatives. ". This is also a reference to the Transport standards that I covered [here](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-170202-transport.html).

What is still missing is guidance around Key Management. This is a major issue with [Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html) and [Digital Signatures](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html), the keys must be managed very carefully. With [bad key management comes bad security](http://healthcaresecprivacy.blogspot.com/2012/02/bad-randon-number-generator-will.html).

The comments to ONC are that this is a good job, please add comments that Key Management must also follow the recommendations found in FIPS 140-2.

**Â§ 170.314(d) Privacy and security.  **I am not going speak to everything in here as most of it is clear.

I have a minor concerned with their Â§ 170.314(d)(2)  "Auditable events and tamper-resistance".   At some point audit logs need to be purged. This is only done after they have been fully analyzed and all value (security and privacy surveillance) has been gotten out of them. But ultimately the audit log must be purged or it will become far larger than the EHR database it-self. My comment would be to recognize that there are times when authorized purging of the audit log is appropriate.

I have another minor concern with Â§ 170.314(d)(6) "Emergency access". They define a term using the term it-self. What is an 'Emergency'? We have been developing an understanding of "Break-Glass", that is not the "Emergency Room", as the emergency room is a place where specific individuals are assigned to work and these people hold the functional role of emergency room doctor. So are they talking about a wide scale disaster like Katrina or TÅhoku. See some [lessons learned from them](http://healthcaresecprivacy.blogspot.com/2012/01/distributed-active-backup-of-health.html). My comment for ONC is to remove this item. The concept of 'Emergency access' has not been clear since HIPAA, it needs some clarity before we can start requiring support for it.

I have lots to say about Â§ 170.314(d)(7) "Encryption of data at rest", and have said it in my article [Encryption is like Penicillin](http://healthcaresecprivacy.blogspot.com/2012/02/encryption-is-like-penicillin.html). What I have to say is very supportive of this item, then again I was very much engaged in the writing of this specific item.

**Â§ 170.202(a)(1&2)(ii) Patient accessible log.  **This is the start of a real Privacy Access Report. It is clearly leveraging the audit logging, and is a well written description of the expectation for an Access Report. How this Report gets created is left to the creativity of the EHR designer. I could imaging it being only created upon demand, but that would require that the audit log be kept for a very long time. I could also imaging it being created on an annual basis, thus allowing the audit log to be purged.

**Conclusion**

They have made mostly minor changes to the security criteria. They are leveraging well known best practices and applying them only to Healthcare when there is something specific. They are leveraging the existing HIPAA Security rule and HITECH. The main changes this time around are added detail for Audit Logging, references to cryptography experts at NIST/FIPS, synchronization of clocks, and recommendations around encryption on end-user devices. **
**

They have included Privacy! They should be given kudos for this. Nothing earth shocking for any well done EHR or operational environment, but welcome guidance and encouragement for those that had not yet addressed Privacy. Their changes are directly to support HIPAA Privacy and HITECH. They have identified that security audit logging is an input to an Accounting of Disclosures, and a Access Log. They have defined what these reports would include. They have given stronger guidance on Amendments.

A EHR that has been designed with Security and Privacy should easily be able to support these and exceed them in ways that will make the healthcare provider Security Office and Privacy Office very happy. I predicted these changes in December [Predicting Meaningful Use Stage 2 Security](http://healthcaresecprivacy.blogspot.com/2011/12/predicting-meaningful-use-stage-2.html), and I think I did quite good with my predictions. The prediction does include some more useful details too.

See my other comments [Meaningful Use Stage 2 seems to support Security, Privacy, and HIE Transport](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-security-privacy.html)

