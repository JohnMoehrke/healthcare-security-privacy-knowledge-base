# Big audit entries

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/03/big-audit-entries.html
Published: 2018-03-01T19:59:00.002Z
Updated: 2018-03-01T19:59:38.439Z
Author: John Moehrke

---

The [ATNA audit scheme](http://dicom.nema.org/medical/dicom/current/output/html/part15.html#sect_A.5.2) has been re-imagined in [FHIR as the AuditEvent Resource.](http://build.fhir.org/auditevent.html)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhrIwyw1pbnZf5cZMFlPm9EmXBFlCXOR33_ul7OnOssdgNtJ_o5Oe7TU98SIgV8LsR7up8lS11Z640rNnN8rbgObCqVWaCLyll-BaxUhzIN-aZnstKZ4ua4qLLzrcLTqOWdqAdIsKUqrbXJ/s1600/AuditEvent_R4_ballot_UML.png

The reformatting is only to meet the FHIR audience expectations for readability. For this there is really useful datatypes, structure, referencing, and tooling. There is no intention to change in any fundamental way. There is a [mapping between the two](http://build.fhir.org/auditevent-mappings.html#dicom) that is expected to translate forward and backward without loss of data. The reality is there might be some cases where the mapping might be lacking....

Small entries are large
One of the observations many make about ATNA and AuditEvent is that the schema itself makes what could be recorded in classic log file using a simple unstructured string of about 115 character. The following example comes from the examples in the FHIR AuditEvent for an [Accounting of Disclosure Log Entry](http://build.fhir.org/auditevent-example-disclosure.html),

>
Disclosure by some idiot, for marketing reasons, to places unknown, of a Poor Sap, data about Everything important.

becomes a [4604 character XML object](http://build.fhir.org/auditevent-example-disclosure.xml.html) or a [4156 character JSON object](http://build.fhir.org/auditevent-example-disclosure.json.html) (Hmm, json is smaller, but not by much).

THIS is a ridiculous example, as the string clearly is not sufficient, but the point I do want to make is that adding structure will make the space needed to be larger.

This is a tradeoff that is simply a fact of the difference between unstructured strings, and a structured and coded object. The string might be useful, but often needs special processing to get the data embedded in that string. More often in a string world, on an log analysis must correlate many log entries to get the full story.

**The point of ATNA and AuditEvent is that the original record knew exactly the values of Who, What, Where, When, Why, How, etc... so the goal of ATNA and AuditEvent is to provide well defined ways to record this so that it doesn't need to be guessed at.**

So reality is that an ATNA or AuditEvent is likely larger than a string... but most 'happy path' audit log entries are 1-2 k in size. Not small, but also not big.

Big log entries

The problem is that there are occasionally cases, failure-modes, where more information would be useful to be recorded. Such as when there is a technical failure, one might want to record the 'stack trace'. Or when a request is rejected, one might want to record more fully the request details and response error message.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgudlK1FTu8JVtTt4pbXNe_SPhAKT30C3JmMpsI2uXCHt7i6KWyi5Skc45EnYQte0T9fH7yHldeegGoF3tEgL8vtfArtKyaNOokA71C6BaB1-r1YQgLl1j3zhi-k-3mABjo-dRbqYm8t7S_/s1600/RandomStackTrace.pngOr some want to record the results of a Query, something I caution against as it fills the audit log with data that is easily re-created.  Often these results are saved in other databases locally, so in that case just link the AuditEvent with that database entry. This could be done by just putting a database index into a AuditEvent.entity.

So sometimes there is a need to record a big amount of data along with your audit log entry... so, how should this need be handled?

FHIR offers an interesting solution. The Binary resource. That is to say you put the big blob into a Binary, and have the AuditEvent point at that Binary. There is an additional feature of Binary that is useful to identify the security that should be applied to this Binary instance, the Binary.securityContext can point at the AuditEvent instance.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiYX1vRnUiNihyb_fCetTNyYD5JAWhYBvCQ2sILcNQnaHWmWPrst21fxWiu4lN8IPf6AL5uPrQgCURTXUKub_mJx5uFjLayXAbuvwnMOHCArYqHEUgyUg0sf5RmHUPpVbQD22EHlcABvHxa/s1600/AuditEvent_Binary.png

More about [FHIR](https://healthcaresecprivacy.blogspot.com/p/fhir.html)and [Audit Logging](https://healthcaresecprivacy.blogspot.com/p/topics.html#Audit)

