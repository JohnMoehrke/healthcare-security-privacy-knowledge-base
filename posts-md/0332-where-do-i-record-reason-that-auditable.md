# Where do I record the Reason that an auditable event happened?

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/08/where-do-i-record-reason-that-auditable.html
Published: 2015-08-20T13:17:00.001Z
Updated: 2015-08-20T13:17:34.393Z
Author: John Moehrke

---

I received a question about where to put the 'reason' that an ATNA auditable event has happened. The short answer is that **Security **is not interested in the reason; but **Provenance **is.

>
Hello John,

I have a question around ATNA logging. We are currently implementing the Metadata Update profile; ITI-57 "Update Document Set". [Specifically for deprecating a document without replacement.]

>
However, we cannot find a place to store a reason (free text), which the user can enter when deprecating the document. It does not really make sense to allow the user to enter a reason, but not log it as part of the audit trail.

The ATNA log is for **Security **purposes. It therefore is not interested in why. it is just interested in the fact that it happened.  Security is interested in making sure that those that are not authorized to do things, are prevented from doing them. So the Security audit log is there to prove that only authorized acts are happening. If non-authorized acts are happening, then security is broken somewhere. If acts are happening that shouldn't be authorized, then the access control rules need to be changed.

This is not to say that it is not important to Medical-Records that there is a reason why the act happened. As with most information in medical records, they donâ€™t really get removed but rather deprecated. In these transitions it is important to note why this happened. This kind of a record-keeping is **Provenance**, and is parallel to security/privacy audit.

The most important distinction between **Audit **and **Provenance **is the target audience (Security/Privacy vs Medical-Records); this is also recognized in the fact that the Audit is often only kept around for a few years. The Audit is only kept long enough to prove that the whole system is operating properly, that only authorized acts are happening.

There is some support for recording the reason the event happened. But they are both coded values to limit the potential unintended spilling of PII into the Audit log.

- ParticipantObject.**ParticipantObjectDataLifeCycle **-- indicates the lifecycle that the object is now in.

- Event.**PurposeOfUse**, (also being added through DICOM) -- indicate the purpose of use when the event happened.

Note that this use-case, deprecate without replacement, is explicitly troubling. The original design for XDS allowed only Replacement. In a Replacement transaction one can record in the new XDS entry why this entry is better than the old one. This transaction was intentionally  the only method, so that we always had a permanent  record of the deprecation. We even explained how to do a Replace with an empty document. The Metadata-Update supplement breaks this nice model, and thus leaves us with no way to record why the deprecation is happening. The XDS registry is the place where **Provenance **is recorded, the ATNA log is not permanent.

So it is important with ATNA to keep the log entry to as minimal information as possible, using coded values and identifiers (pointers) rather than textual descriptions. This keeps the risk that the audit log itself presents as minimal as possible, while still making the content useful for the Security and Privacy use-cases. As in those use-cases the codes and identifiers can be dereferenced, with authority and audit log entries.



Blog articles on [Audit Control](http://healthcaresecprivacy.blogspot.com/p/topics.html#Audit)

