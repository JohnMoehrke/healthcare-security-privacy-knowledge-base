# MHD Document Responder: patient.identifier chaining

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/09/mhd-document-responder.html
Published: 2022-09-13T18:41:00.002Z
Updated: 2022-09-13T18:41:42.123Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjIAsDZH3Sj-p7kwbRvhDYaMoxssWl_2RHGBgYNN9A6ssdeU_PJGoiTOVyLGJhQWJCjLOtRGVMmR1aaGdjLWMVQsJbXuRtCRzBCGS4DOO4mO--TcmcTaBFbY9sxisuhxJiPdryxaoS5EJ_L-o353K8K48y4j4LLGCGZglUxj0scwzY2rTywRloON1L0Dg/s800/Broad_chain_closeup.jpg
This is a quick article on a requirement of the MHD Document Responder that may be less obvious to some. The specific requirement is related to chained search parameters, like `patient.identifier`;  `source.given` and `source.family`; and `author.given` and `author.family`. These search parameters have a `.` that indicates that one is to search deeper, aka chaining the search value to a different kind of resource and use the results in the primary search.

The requirement is hinted at being special with a mention of FHIR Chaining Parameters:

> This use of patient.identifier follows the [FHIR Chaining Parameters](http://hl7.org/fhir/search.html#chaining) search methodology.

But these hints might not be enough, because they do not tell you how to solve the requirement, and this is because there are many ways to solve this, and the implementation details of your system are more important than any factor.

The hints just indicate that the parameter provided is to be matched in a chained way. For example with patient.identifier the parameter is an identifier that should be first looked up with the Patient Identity Manager to find the Patient resource that is then used to find the DocumentReference resources.

That hint tells the Document Responder, that when the Document Source chooses to use `patient.identifier` rather than `patient`; that the Document Source is expecting the Document Responder to do this lookup, rather than the Document Source to do that very same lookup.  So, it seems reasonable that queries using chained search parameters might be slower than those that are not.

There are cases where this is inverted, such as when the MHD has an XDS or XCA backend; in these cases the use of patient.identifier that is from the Affinity Domain or Community is better than providing the Patient link. As when a Patient link is the search parameter then a MHD front end to XDS or XCA would need to convert the patient link into the Affinity Domain or Community. This case is likely to be a system such that the Document Responder can quickly do this lookup.

Another place where patient.identifier is going to be preferred are environments that have a national patient identifier. In these cases the national patient identifier is more readily available to both Document Consumer and Document Responder. In these cases it is possible that the DocumentReference.subject element could hold both the Patient id link and the national patient identifier.

The chaining of given name and last name are similar but different in how one must support them on the Document Responder given the system design you have.

