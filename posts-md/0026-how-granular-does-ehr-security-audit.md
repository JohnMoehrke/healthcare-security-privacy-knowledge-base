# How granular does an EHR Security Audit Log need to be?

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/11/how-granular-does-ehr-security-audit.html
Published: 2011-12-06T16:38:00Z
Updated: 2011-12-06T17:00:00.582Z
Author: John Moehrke

---

The EHR needs to be capable to be as granular as possible on any 'security relevant' event that it controls, but be configurable so that local policy can choose how much logging they desire.

I got this question from one of the IHE mailing lists.  - The answer is not as simple as the above summary, and brings up some gaps in our understanding of security audit log use regarding: academic pure answer, realistic answer, and operational reality.

------------------------------------------

**Initial Question**

I'd like some clarification on the auditing requirements for Content Consumer for XPHR.

PCC TF-1(Rev 7), section 4.8.2 says the following:

>
9. All activity initiated by the application implementing the Content Consumer shall generate the appropriate audit trail messages as specified by the ATNA Profile. The bare minimum requirements of a Content Consumer are that it be able to log views or imports of clinical content.

10. A Content Consumer shall log events for any views of stored clinical content.

Are these statements intended to mandate the auditing of each individual document that is viewed, each time that it is viewed, or is it adequate for the application to log that the user accessed functionality where clinical content can be viewed, without providing specifics?

-------------------------------------------

**Answer**:

Once a 'system' takes on the responsibility of the [ATNA 'Secure Node' or](http://draft.blogger.com/goog_736928416)['Secure Application'](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) the responsibilities of the IHE ATNA actor is system wide. This means that the system is responsible for creating audit messages for ANY of the security auditable events identified in ATNA (See Table 3.20.6-1.  Audit Record trigger events) that it-self mediates. (It is not responsible for events that it is not in control of). This means that the system must be capable of recording, as a ATNA audit message, all the times a user accesses patient data within the control of that system. Not just the accesses to XPHR data. Not just the accesses to XDS. All accesses.

Yes, we know this is a big burden. But once a system is 'trusted' to communicate with other systems, especially in an HIE, it becomes part of a bigger system. If the system can't be trusted to record all security relevant events, then it should not be trusted to communicate at all. The HIE is a massive web of trust. Each system is responsible for controlling and monitoring their own domain, but each system is connected into a larger domain (e.g. XDS Affinity Domain).See my bloginar of the [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html) .
---------------------------------------

**This created more questions**

Thank you for your response John. I do understand the overall objective and goal for auditing via ATNA, however I am still trying to get a better understanding of how granular we need to get to with auditing events in an EHR system, particularly when an event is viewed. The explanation/examples below may seem very detailed but it would help me and our team get a better sense of what is required/your thoughts. Thank you.

In this example the following is true: The system is an EHR, not a PACS/Radiology system; The Radiologist has the proper security and privileges to access any/all x-rays in a patient record that he is assigned to.; and The Radiologist has the proper security and privileges to document findings on any x-ray in a patient record that he is assigned to.

The Radiologist 1) accesses a patient record via the Radiology Application to review a chest x-ray study. Then the radiologist 2) documents his findings. During his dictation he looks at two prior x-ray studies, 3) and 4). Then he actually looks at the first x-ray study a second time.

Does the system have to log like this:

1) â€œPatient Record Accessed â€“ Chest X-ray study from 9 Nov 2011 @ 09:15 viewedâ€

2) â€œPatient Record Updated â€“ Chest X-ray study from 9 Nov 2011 @ 09:15 updatedâ€

3) â€œPatient Record Accessed - Chest X-ray study from 12 Dec 2010 @ 09:15 viewedâ€

4) â€œPatient Record Accessed - Chest X-ray study from 5 Oct 2010 @ 09:15 viewedâ€

5) â€œPatient Record Accessed â€“ Chest X-ray study from 9 Nov 2011 @ 09:15 viewedâ€ (2nd time)

Or can it look like this:

1) â€œPatient Record Accessed â€“ Radiology Applicationâ€

2) â€œPatient Record Updated â€“ Chest X-ray study from 9 Nov 2011 @ 09:15 updatedâ€

Would it be sufficient for the system to log â€œPatient Record Accessed from Radiology Applicationâ€ when the Radiologist first accesses the patient record to see the Chest x-ray(s)? The scope of what the radiologist has security and privileges to see in that application is known, and any/all radiology studies are available for him. Is it the intent of the standards to log â€œeyes on the screenâ€ for each and every radiology study that is viewed?

There are an enormous number of health care events that are seen by clinicians on a daily basis. Just opening the â€œMedication Administration Recordâ€ application in an EHR can let a clinician see dozens of med admin events simultaneously. These med admin events are ATNA auditable â€œmedicationâ€ events when they are prescribed, perfected, and delivered. But is it the intent of the standard to literally log each and every med admin event that a clinician viewed? Or does an Audit Log Record such as: â€œPatient Record Accessed â€“ Medication Administration Recordâ€ meet the intent of the standard?

Opening the â€œPatient Scheduleâ€ application in an EHR can let a clinician see dozens of orders and scheduled health care events simultaneously for a patient, everything from an order for discharge, the completion of a bed bath, or a scheduled surgical procedure. Is it the intent of the standard to log each and every view of a health-care-service event that the clinician reviewed from the schedule?

The ATNA auditable â€œstudy-usedâ€ event may suggest a different audit logging level for a radiology study than for a bed bath or patient teaching episode. But does that event apply to an EHR or to the PACS/Radiology System that owns the study? There are also specific audit record requirements for some special events such as a CCD import (PHI-import), but once the CCD is in the system, there is nothing in the standard that suggests a different level of audit logging for each view of the CCD.

If it is necessary to specifically log every view of every specific radiology study or CCD, then is it also necessary to log every specific view of every administration of a medication, every bed bath, every bedside teaching episode, etc. Each of those events would be considered an ATNA auditable â€œhealth-service-eventâ€ when it was documented. But there is no specific â€œhealth-service-event-usedâ€ ATNA trigger event in the standard.

------------------------------

**The answer to this question is complex. **

I will address an easy one first. In your example it is not clear if the radiology viewing application is considered part of your EHR 'security boundary', or is outside. I bring up the term security boundary to describe the logical extent of your ATNA "Secure Node" or "Secure Application". Any security relevant event happening inside this boundary needs to be auditable, but any communications outside of this boundary needs to be strongly authenticated. So drawing your boundary is important. If the radiology viewing application is outside this boundary then you are not responsible for the auditible events that happen in that radiology viewing application.

A Security/Privacy office will take what they can get.  So, the more you can record in the audit log the better. But there does become a point where the detail becomes noise and the goal of Surveillance is not aided. Remember that the goal of the Security Audit Log is to provide enough information that the Security/Privacy office(s) can determine that the users are following the Policies, thus detecting abuse by legitimate users and malicious factors. Yes part of this is the privacy office producing an Accounting of Disclosures and Access Report. What you are struggling with is a common problem that there is really few good answers available.

In DICOM they have answered this question by saying that the DICOM "Study" is the object of interest. When a Study is accessed, an audit event should be recorded. But for all the information within a study, audit events are unnecessary. It is assumed that if you accessed any part of the Study, you have accessed all of it (from a security perspective, from a medical responsibility we don't look to the security audit log.)

For the use-case you outline, either answer is likely right. You didnâ€™t include the â€˜studyâ€™ definition, so I canâ€™t tell if they are different studies. Also, looking at something and switching away to something else only to come back to the first; seems more like you never left the first. From a Security/Privacy perspective they want to know what was viewed, not how many times it was viewed (although some might care. And surely efficiency studies might find it useful, but this is not a legitimate use of the security audit log).

A CDA document is an equivalent â€˜niceâ€™ sized object. But as you  point out a CDA document is often decomposed into the EHR and not really accessed as a document after that. I would view a decomposed CDA as encapsulated into the EHR and now the proper control of the EHR and no-longer in CDA form.

An EHR as a standalone system (aka EMR in terms of ONC) is a very complext problem. One viewpoint that I have heard is that the EHR is seen as one patient centric object. That is one security object per patient uniquely identified. When a doctor selects a patient in the context of the EHR, one event is generated. Thus from the security/privacy perspective one must assume that the user viewed â€˜everythingâ€™ in the EHR. This is likely bigger than desired, but trying to define a hard boundary smaller than that is simply not possible with the way we understand EHR today.

I will say that even within the context of an EHR; any events to create data, export data, or import data should be considered security events worthy of recording. An import or export event is when data is passed into or out-of the control of the security/privacy system. Assuming that the EHR boundary is defined by the Access Control system; which may not be the logical or physical boundary. This is also involved with your use-case, given that it seems you  are calling upon an external viewer, which I assume is another control environment. Much in ATNA is very specific to how one draws the boundary of their â€˜systemâ€™.

In my opinion, the export event is the most important to be detailed. Again, the level of detail is not clear; but identifiable objects such as CDA documents clearly are individually identifiable.

Another exception to this rule would be when someone (e.g. patient or doctor) puts specific policy limitations on a specific object inside the EHR (or sub-object given the above discussion). That then defines that object as something of interest and thus makes all accesses to that object auditable.

The last point is that you must satisfy the needs of the customer (using organization). So your customers will ultimately define the satisfaction criteria. This is typically done by providing sufficiently many auditable events and configuration controls that allow authorized administrators (security/privacy office) to turn-off some of them (better to have them turn on events, but that is a different issue).

**Great question for profession societies like HIMSS to look atâ€¦**

