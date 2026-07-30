# ATNA auditing of CCOW context changes

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/02/atna-auditing-of-ccow-context-changes.html
Published: 2012-02-25T22:55:00.002Z
Updated: 2012-02-25T22:55:47.873Z
Author: John Moehrke

---

On the IHE mailing list the following question came in: â€œ**Are there any commonly accepted or standard ATNA message structures for auditing CCOW context changes?**â€

The short answer is that the CCOW transactions are not particularly â€˜Security Relevantâ€™. The thing that happened before or because of the transaction usually are. Those security relevant events that happen before or after should be recorded as [ATNA events](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html). For example it should be the User Authentication application that records that a user was authenticated. The actual CCOW transaction to set the context or to read the context is not that interesting.

**Deeper Discussion:**

For many other IHE Profiles (e.g [XDS](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html), PIX, [EUA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)) we have identified the security audit message that would be appropriate to capture that the transaction happened. This is done now days as part of the Security Cookbook. Where we do a risk assessment to identify reasonable security and privacy controls, including if there is a need for a security audit event to be recorded.

IHE does have a profile that leverages CCOW, The â€œ[Patient Synchronized Applications](http://wiki.ihe.net/index.php?title=Patient_Synchronized_Applications)â€ Profile was written around the same time that â€œAudit Trails and Node Authenticationâ€ Profile was written; but was written before the Security Cookbook. So one can see how it might be possible that IHE simply hasnâ€™t thought about the relationship between PSA and ATNA; or hasnâ€™t fully executed the Security Cookbook.  I canâ€™t say that this is not the case, but I donâ€™t think that there would be a strong reason to define the ATNA events for PSA.

Not all transactions are going to be security auditable events, and more important there are far more security auditable events than there are network transactions. Far more security relevant events happen in the normal workflow of an application that have no external transaction. This is something that I have tried to cover multiple times, as many people get a false impression that the only ATNA events are those that are defined by IHE. The main security relevant events that IHE defines are â€˜Importâ€™ or â€˜Exportâ€™ events. This is the reason why [XDS](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)was so highly covered with ATNA, as everything about XDS is either an Import or an Export event; and one that is most likely not just to the application but to the organization â€“ hence [Cross-Enterprise](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html) prefix.

**Surveillance:**

Another factor is that the [IHE ATNA audit message is about Surveillance](http://draft.blogger.com/Audit%20Control%20IHE%20-%20Privacy%20and%20Security%20Profiles%20-%20Audit%20Trail%20and%20Node%20Authentication%20Accountability%20using%20ATNA%20Audit%20Controls%20%20ATNA%20and%20Accounting%20of%20Disclosures%20ATNA%20audit%20log%20recording%20of%20Query%20transactions%20How%20granular%20does%20an%20EHR%20Security%20Audit%20Log%20need%20to%20be?%20Document%20Submission:%20Audit%20requirements%20under%20error%20conditions%20ATNA%20+%20SYSLOG%20is%20good%20enough), not forensics or even debugging. The statement that the CCOW transactions are not security relevant does not mean that there should be no log, but that log is more of a debugging log, something that might be called upon if deeper analysis is needed (forensics).

**Who did what when:**

As stated above the CCOW transactions are not that interesting, but the events leading up to a context change and the events caused by a context change are very interesting.

- [User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html): This event should be logged by the application that actually authenticated the user. It is important that this responsibility be here, as it is more important to log failed attempts to authenticate. The failed attempts would never hit the context, so the context changes would not be helpful to detect an attack at the user authentication.

- Patient Selected: The application that is used to select a new patient should be recording that a new patient was selected.

- Patient Changed: All applications that change their display because of the context change likely are showing the user something new, and thus there is a need to record that that new thing is being shown to the user.

- Object Changed: The CCOW specification allows for other objects within the patient record to also be changed and thus synchronized.

**Gap in ATNA?:**

It is at this point that a potential gap in the current ATNA specification comes into discussion. There is clear ways to indicate that the user is being shown a patient study, document, order result, or other specific object. There is not a clear way to say to simply say the patient identity has changed and that no-specific information is being shown.

http://newsroom.gehealthcare.com/_uploads/images/thumbs/iPad_centricity-578x390.jpg

The one case where this comes up and I think makes this a bit harder is the typical EHR/EMR case or the Nurse Station, where the first screen is a high-level view. I have heard this referred to as the â€˜chartâ€™. There is clearly information on this screen, but it isnâ€™t a discrete object, but rather made up of the most interesting values in the EHR.  I covered this [before](http://healthcaresecprivacy.blogspot.com/2011/11/how-granular-does-ehr-security-audit.html), and am still not clear what is security relevant.

If nothing in particular was shown to the user, was there really any security relevant event? This might simply be the case, that one doesn't record an ATNA event until there is some data shown to the user.

**Conclusion:**

I don't think I have come up with a gap or a reason why CCOW events should be recorded using IHE ATNA. That is not to say that they can't be, just that I don't see a compelling reason to specify it.

**References:**

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html)

- [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

- [ATNA audit log recording of Query transactions](http://healthcaresecprivacy.blogspot.com/2011/12/atna-audit-log-recording-of-query.html)

- [How granular does an EHR Security Audit Log need to be?](http://healthcaresecprivacy.blogspot.com/2011/11/how-granular-does-ehr-security-audit.html)

- [Document Submission: Audit requirements under error conditions](http://healthcaresecprivacy.blogspot.com/2011/11/document-submission-audit-requirements.html)

- [ATNA + SYSLOG is good enough](http://healthcaresecprivacy.blogspot.com/2011/12/atna-syslog-is-good-enough.html)

