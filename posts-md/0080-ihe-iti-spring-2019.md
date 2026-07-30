# IHE ITI Spring 2019

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/05/ihe-iti-spring-2019.html
Published: 2019-05-06T13:31:00Z
Updated: 2019-06-12T15:13:30.828Z
Author: John Moehrke

---

Updated with [Public Comment details available here](https://mailchi.mp/ihe/ihe-iti-tf-supplements-published-for-pc-and-ti-2019-05-24?e=2d68229859)

The IHE ITI, PCC, and QRPH workgroups met in [OakBrook, IL](https://goo.gl/maps/gPeVkzp7Jwp)this week at the [RSNA Headquarters](https://www.rsna.org/). We still are not meeting in [Treviso Italy.](https://en.wikipedia.org/wiki/Treviso), but we have heard that the July meeting will be in [Sardinia Italy](https://en.wikipedia.org/wiki/Sardinia). Right before the big tourism time. Specifically we will be at the Facilities of Sardegna Ricerche at Polaris, Parco Scientifico e Tecnologico della Sardegna, in Pula (CA), Italy. Great time to join IHE and have your company send you to the meeting.

The ITI committee this week finished up one small supplement on adding Facility support to the Mobile Care Services Discovery (Provider/Services Directory). This updates the [version from last meeting.](https://healthcaresecprivacy.blogspot.com/2019/03/ihe-produces-profiles-using-fhir-r4-for.html)

We approved for Public Comment three brand new Supplements

- Adding a FHIR AuditEvent feed capability to the ATNA profile. Thus the ATNA profile would now include a Query on AuditEvent to support reporting and alerting applications, and now a Feed (RESTful Create) of AuditEvent to support applications recording audit events.  This work item also updated the Query to FHIR R4, so this supplement is focused on FHIR R4. There is now good bi-directional support for the original DICOM Audit Message schema, and the FHIR AuditEvent. This gives applications flexibility on how they record auditable events. They can use:

- UDP Syslog - DICOM XML schema

- TLS/TCP Syslog - DICOM XML schema

- http/REST - FHIR JSON AuditEvent

- http/REST - FHIR XML AuditEvent

-
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgXnEYbLLjgm8Gwp7PJEH9pWWu9J_fuM4o7A13Has06mYEYAd4R6mNeoFmQW1TZ2YEG91MyU7vc7Q8ZmiwLyQuFa_T0zKqmecutsGcdYiyXaElNJvPZj1o5zuuqCeD7FGEntHGvHNXbDmZH/s1600/xca-defered.png

Adding support to XCA for a deferred response mode to support responding organizations that need significant time to complete a request. For example where a responding organization holds large quantities of historic paper records, which they will make available, but want specific patient request to trigger them scanning and indexing that data. In this way they can receive a request for a specific patient, they can respond that they do have data, but need a day or week to complete the request, then as they scan the data they can feed the data back in bunches.  This work is similar to a deferred mode in XCPD, and much of the technical work was done many years ago in a white paper by Karen.

-
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicApJngXaSsVirAfyWEDQSan2aobXz4ArPsnHsoIV-MI9Nr-mXxRg3NOFhQM3Wev-f75mR9nHLTfeceNabYSMUa3m9SLDBDcu8aoxWMHW_BC6S4pVFp1iT2NPOMM3j-hpq7fx1L8Y7quPe/s1600/PRIM.pngCreation of a FHIR based Patient identity management system for health information exchanges. This builds on PDQm and PIXm, by adding a Feed mechanism, and a subscription to the Feed. Added to this is a set of requirements and expectations around how Merging (Link and UnLink) are to be implemented. The result is that when two identities of a Patient are linked, one become master, and all the data recorded against both are considered one Patient. This means that a system implementing the Profile will treat a query request for one of the identities as if it was a query against all the linked identities. Putting the burden of link management and comprehensiveness of the query results upon the server, so that applications don't need do multiple queries to get a comprehensive patient record.

I am confident of the text we are sending to Public Comment, but I also expect that there is a significant amount of experience we need to gain before these become final specifications. That there will be more clarifications needed based on Trial Implementation, and the use-case that drives constraints will become more clear.

There are three very short webinars by the three editors of these Public Comment versions of their supplements. In these webinars they explain the use-cases that are being addressed, how they are addressed, and specific open issues we would like the Public Comment to help us with.

