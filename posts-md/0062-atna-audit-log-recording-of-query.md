# ATNA audit log recording of Query transactions

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/12/atna-audit-log-recording-of-query.html
Published: 2012-01-03T02:48:00Z
Updated: 2012-01-03T02:48:05.732Z
Author: John Moehrke

---

A common question that comes up when people are implementing [ATNA audit logging](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) is what to do when they are recording that a "Query" has happened. This might be the Queries that IHE defines in Profiles like [PIX](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html), [PDQ](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html), XDS; or it might be a database query of some kind. This topic is not fully covered in the IHE Technical Framework, but is covered better than people recognize.

According to the IHE [ITI Technical Framework](http://wiki.ihe.net/index.php?title=Audit_Trail_and_Node_Authentication), Volume 2a, section 3.20 (Record Audit Event), table 3.20.6-1, the "Query Information" event note says

>
Notes:    The general  guidance   is to log the query event with

the query parameters and not the result of the query. The

result of a query may be very large and is likely to be of

limited value  vs.  the overhead. The query parameters can   be

used effectively to detect bad  behavior  and the expectation is

that given the query parameters the result could be

regenerated if necessary.

This philosophy is why the PIX, PDQ, and XDS 'query' transactions, such as XDS "Registry Stored Query", security considerations only shows the query (parameters, and outcome indicator) being captured and not the query results. IHE did not duplicate this note in all the places where it shows query like transactions being profiled.  A familiarization with section 3.20 is essential, and table 3.20.6-1 is critical as it contains a listing of the other security relevant events that are expected to capture if your "Secure".. "node/application" controls them.

It is important to note that the "Query Information" audit event does include the "EventOutcomeIndicator", which will show that the query succeeded or failed. It is not an indicator of how many results were returned, so a successful query that returned zero results looks just like a successful query that returned 1 billion results.  This means that the ATNA audit event can't be recorded until the results are known, or at least if the query is going to be successful or failure.  Note that it is expected that an Access Control decision to deny a Query (resulting in zero results returned) would also be an auditable event, and thus an Access Control denied event would be recorded that would explain why.

The second sentence in the note is the 'reason' why we want only the Query to be recorded and not the results. The results would seem to be very useful, especially to a Privacy officer. But the results would likely be high-quality PHI; and we want to keep as much PHI out of the ATNA audit log as possible. This is why ATNA asks for identifiers and discourages descriptions. This is simply good design, to limit unnecessary risk. This greater phlosophy

The information that is not recorded can be discovered through other means. The ATNA Audit Record Repository is an abstract actor, it is fully expected that a valuable system/product would take many actors and functionality together. That is a good Audit Service would include an ATNA Audit Record Repository, but would also include a PIX Consumer, PDQ Consumer, PWP Consumer, XDS Consumer, and any other actors/functionality necessary to de-reference identifiers. This act of de-referencing the identifiers would be, Security Relevant and thus auditable. In this way there is built-in watching of the watchers.

Specifically in the case of XDS queries, that the Audit Service can tell simply by the Query parameters that are encoded into the ATNA Audit Message record of the XDS Query; which queries were against a specific patient. This is because all XDS queries are patient specific, and include the patient ID in the query parameters. Yes there are a few exceptions that are recognizable and handled independently.

If the [security office](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html) or [privacy office](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html) wants to know what the results of the query were, they can re-execute the query. With specialized (not IHE profiled) tools the query can even be with the same security context. Simplistically one would say that the state of the database has changed since the original query, this might be true; but good database design would also have a change-tracking-log  that would tell you what has changed since the date/time stamp of the original query.

Note that this philosophy is consistent with the other transactions, it just needs to be spelled out somewhere for Queries. For example, on XDS Retrieve Document Set transaction, we don't tell you not to duplicate the bytes of the document retrieved into the ATNA audit message. This seems logical that one doesn't copy the retrieved document into the audit log. It just doesn't feel as logical when the transaction is a query.

All of this is 'systems design', and not necessary to include in the 'Interoperability Profiles'. This is because this systems design knowledge doesn't change the interoperability characteristics. IHE also doesn't include this systems design knowledge because there are likely many ways to design a system. IHE technical committees do consider systems design during profile writing, specifically we make sure that there is at least one way to design a system.

See:

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

- [How granular does an EHR Security Audit Log need to be?](http://healthcaresecprivacy.blogspot.com/2011/11/how-granular-does-ehr-security-audit.html)

- [Document Submission: Audit requirements under error conditions](http://healthcaresecprivacy.blogspot.com/2011/11/document-submission-audit-requirements.html)

