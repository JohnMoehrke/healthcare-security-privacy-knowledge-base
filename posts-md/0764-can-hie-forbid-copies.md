# Can an HIE forbid copies?

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/08/can-hie-forbid-copies.html
Published: 2011-08-12T13:02:00.025Z
Updated: 2011-08-12T13:11:09.520Z
Author: John Moehrke

---

There have been discussions in privacy circles where some would want an HIE to forbid making copies. That is when a doctor pulls a document (or it gets pushed to them), that they use the data but don't keep a copy. Typically the reason for wanting this is to limit the risk of accidental or intended secondary exposure.

I struggle how in the current [Medical Legal Records](http://library.ahima.org/xpedio/groups/public/documents/ahima/bok1_012547.pdf) environment this can be done when the custodian of the data is not the same as the user of the data. Care givers have a Legal responsibility to maintain copies of any evidence they used to come to a medical decision. This drives the need to keep a 'secured' copy.

I can imagine a HIE that has strong governance such that any custodian is required to produce exactly the same evidence when asked for it in the future. With this we might be able to fulfill this vision. The XDS profile allows for this, as any update to a document is a 'replace' of the previous. The previous and new are still available, although the old one is not in a ready state. Meaning if you ask for only currently ready documents you would only see the new document. But if you asked for deprecated documents, or asked for the original by unique ID, then it would show up.

The data user might want to validate that the data has not changed by saving a digital hash of the original document to prove in the future that the data returned by the custodian is the same as that they saw.  But what would legally happen if the custodian produces different data and can't match the hash the user stored? How would this legal dispute be handled? There simply is no precedent for this.

Note: Some of the reasons why people want to forbid copies is to allow for changes to be made to the data without needing to change all copies. This is simply not a reasonable request at all. If the data was wrong and it has been corrected this is a very important legal medical records thing to track. What was the old data, what is the new data, why was it changed, who changed, what authority allowed the change. etc. There is a real risk, based on drug seeking behavior, for medical records to be modified to allow for narcotics to be prescribed then changing the records to indicate that they were not prescribed. There are lesser likely risks around malpractice, ambulance chasers. An HIE governance should spell out what the expectations are when data changes. Right now it seems changes will NOT be automatically propagated or notified. I think this will change as technology can better support it. For now keep it simple.

I think a far more reasonable policy is one that indicates that copies can be used only for treatment, and that further propagation is not allowed (re-publishing). This is focusing on the risk of secondary use. I am not sure if this is the most important risk, but it is a start. I am also not sure if 'used only for treatment' covers any 'operational' use for things like quality outcomes reporting. It would clearly need to include the 'operational' use for medical records legal challenges (e.g. malpractice).

The big problem with this is that we are modifying EHR technology from an environment where the EHR was the center of the medical record, and thus all data in the EHR was considered original. We hook an EHR to an HIE (Push or Pull) and now it is the receiver of 'copies' that it somehow needs to indicate it is not the originator of but must still protect. This is on paper a simple change, but in design not necessarily so simple.

