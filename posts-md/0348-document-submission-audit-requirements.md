# Document Submission: Audit requirements under error conditions

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/11/document-submission-audit-requirements.html
Published: 2011-12-05T15:08:00Z
Updated: 2011-12-05T15:08:04.929Z
Author: John Moehrke

---

I got [this question](http://exchange-specifications.wikispaces.com/message/view/Spec%20Factory%20FAQ/41433549) through [NwHIN-Exchange](http://exchange-specifications.wikispaces.com/): When a receiver of a Document Submission request encounters an error, the entire submission is required to be backed out (i.e. the operation is atomic). Is the receiver still required to log audit data in this case? Required not to? Permitted but not required?

Recognize that this is a specific question about the transaction to submit a document. The XDS and XDR transaction: "Provide and Register". In this transaction it defines that the whole transaction must succeed or fail totally. Meaning if any reason causes part of the transaction to fail, the whole transaction must fail. Thus no changes are made if a failure happens.

There are two very different views that could be taken on this question:

a) Since everything is backed out, no changes were made. Thus why log anything.

b) Someone tried to do something, and any attempt to do something needs to be logged.

On (a), this is not a 'security or privacy' view. This would be a view of a "Medical Records" perspective. This doesn't make it wrong, but it does move the motivation. The [ATNA audit logging](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) is not for medical records retention reasons, it is for [security/privacy surveillance](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html). That is to say that the reason ATNA records events is to have an audit log that can prove that the [security/privacy controls](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html) are working properly.

On (b), a system needs to have the capability to record the [audit log event](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html). The fact that the security-relevant-event is a transaction being rejected vs the same transaction being accepted is simply an attribute values in the audit log message. In the case of the transaction being rejected this is simply setting the fact that it was rejected (EventOutcomeIndicator), and why (EventOutcomeDescription).

Some will wonder if it is useful to record all of these events. This is a different factor totally. The event must be "record-able", what is being questioned is if it always needs to be "recorded". This is a question of "configure-ability"  of the audit system. Classes of audit events might be disabled at the direction of some organizational and operational policy. They might be disabled at the generating system, or might be disabled at the Audit Record Repository (meaning not recorded). But this is a configuration. The system must still be able to generate the audit event.

