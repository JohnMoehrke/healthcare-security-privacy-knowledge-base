# Record Location on FHIR - aka Patient Identity Correlation

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/05/record-location-on-fhir-aka-patient.html
Published: 2019-05-18T16:03:00.001Z
Updated: 2019-05-18T16:03:54.925Z
Author: John Moehrke

---

IHE has created

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgay0M_htxMkjnea-N3rkPQf2sK8hxmJIFo2J7eNpYPqYHCRmHFfHhyVN-5PwRPqA2eFr-UvNYwednHULcq4bRMBtCChQVsJSFy4FqqMSqiQiFfU9z4_hBHlIuBIJEVmUgia_4MzCTMFmNN/s1600/PRIM.png

a FHIR based Patient identity management system for health information exchanges. This builds on PDQm and PIXm, by adding a Feed mechanism, and a subscription to the Feed. Added to this is a set of requirements and expectations around how Merging (Link and UnLink) are to be implemented.

The result of a Merge is that the two identities of a Patient are linked, one become master, and all the data recorded against both are considered one Patient. This means that a system implementing the Profile will treat a query request for one of the identities as if it was a query against all the linked identities. Putting the burden of link management and comprehensiveness of the query results upon the server, so that applications don't need do multiple queries to get a comprehensive patient record.

There is expected further refinement of this after Public Comment, and in coordination with HL7 Patient Administration workgroup efforts on the same topic. It is possible that a formal Merge will be supported, but in FHIR a Merge comes with some downsides. When FHIR is a front-end to a non-FHIR system (e.g. an EHR), the result will likely look like a Merge, in that only the surviving identity will ever be seen from again. Where as a native FHIR Server is used, a link is more friendly to the integrity of the data persisted in FHIR Resource form. Especially if those FHIR Resources have digital signatures on them.

What we also don't quite know is how to scale a Patient Identity Management system to a very large federation. How to keep track of communities that are behind communities (nested communities). What additional functionality that FHIR can bring to the table, what issues will appear once we start using FHIR Resources to discover the locations where Patient Data exists. It feels like this will be easy, it feels like we have learned from v2 and v3; but there is always dragons hiding.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgw1ydHXIWmk3rIQpGvF4UkFZGZZHi0mmen4ExEEY4db0pOMjSqZHavo_x8213WClsHKL8oV5pSrPTuje1MuX4CRvf9fvTu6Y3018Y4zzYdXCjLkNv87POd9KFcJCWOZTYdAg0MeSRSy6mk/s1600/Slide15-729021.PNG

So, does FHIR Patient Identity Management replace XCPD which is based on HL7 v3, or PIX/PDQ which is based on HL7 v3? The answer is, "Yes, eventually". But that timeframe is likely 5-15 years. That is to say that the backbone that exists today using HL7 v2 ADT, and the XCPD infrastructure is functioning and will continue to function. There is no need to rip-and-replace. However there is a STRONG need to provide more simple API into those environments for NEW partners and applications. This is where PDQm, and PIXm have been for a while. Now there is the Feed and Subscription to the Feed that this new profile brings.

So, yes HL7 v2, v3, and FHIR (four) will be used together for different endpoints. The common factor is the Patient Identity, Patient Demographics, Patient Address, Patient Phone Numbers, and other non-patient identifiers like SSN, Drivers License, Insurance ID, etc...

