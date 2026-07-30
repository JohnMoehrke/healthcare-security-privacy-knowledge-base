# When is a document not a Document but still a document?

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/02/when-is-document-not-document-but-still.html
Published: 2021-02-27T14:16:00.001Z
Updated: 2021-02-27T14:16:52.289Z
Author: John Moehrke

---

Documents have a bad perception, they are big, unfocused, and hard to process or view. I'm going to propose something that is counter to the perception, driven by current healthcare use of CDA documents and the HL7 Principles of a Document. Something supported by IHE Document Sharing (XDS/XDR/XDM/XCA/MHD), something enabled and using #FHIR.

When is a Document a Document?

Some background that is important can be found in the IHE HIE-Witepaper in the section on "[Principles of IHE for Health Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html#2-principles-of-ihe-for-health-document-sharing)". The the most important part is the HL7 defined Principles for a Document. Found in "[2.3 Distinction between Documents and Messages](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html#23-distinction-between-documents-and-messages)"

> The HL7 standard for Structured Documents Section describes the document vs. message distinction as follows â€œA document is designed to be persistent for long periods of time, whereas messages are more often expected to be transient. There is a place for both of these constructs in healthcare.â€ HL7 characterizes a document by the following properties:

- Persistence â€“ Documents are persistent over time. The content of the document does not change from one moment to another. A document represents information stored at a single instance in time.
- Wholeness - A document is a whole unit of information. Parts of the document may be created or edited separately, or may also be authenticated or legally authenticated, but the entire document is still to be treated as a whole unit.
- Stewardship - A document is maintained over its lifetime by a custodian, either an organization or a person entrusted with its care.
- Context - A clinical document establishes the default context for its contents
- Potential for authentication - A clinical document is an assemblage of information that is intended to be legally authenticated.

I am not going to say that these principles are not good Principles. I really believe they are critical principles. But sometimes they become a burden when one wants a "document" and not a "Document". What I am describing is something that is short of these Document Principles, but still meets the need.

What is a document vs a Document?The Document Sharing system from IHE is focused on "document", not "Document". I don't think that IHE always makes that distinction, but I will make it here for the purposes of this article. I use  "Document", with an upper-case "D", when the object meets (or is intended to meet) the principles listed above. These are the best kind of Documents, I am not arguing that these principles are not the best.

I use "document", with a lower-case "d", when I am referring to an object that meets the Internet's definition of a document. As in the "http" transport is defined to move documents. All that the Internet cares about a document is that it is a set of bytes that have a mime-type and possibly other metadata. These mime-types and other metadata in the case of http are carried in the http header. But they are simply metadata, that is to say they are data that describes the document. the mime-type is the most visible, and the mandatory one.

The IHE Document Sharing infrastructure has almost this same requirement. A document in XDS need only have a mime-type and a Patient identity. The additional requirement of a Patient identity is because of our Healthcare need.

FHIR-Document is a Document

In FHIR there is a formal definition of a FHIR Document, that is intended to be able to meet the above HL7 defined Principles of a Document. Most of the Principles are carried in the FHIR Composition Resource that must exist in a FHIR-Document Bundle. Everything else in the Bundle is just FHIR Resources. The problem with a FHIR-Document is that there is not as much experience with it, vs experience with http RESTful FHIR. So, although I could propose that FHIR-Document concept be used, I am going to deviate back to "document"

What is this document?Given that there is much experience and interest in using http RESTful FHIR, and given that there is a nationwide exchange for Document Sharing. How can we use this exchange to get at RESTful FHIR results? So what I propose is that there is a well established set of typical queries used in the RESTful space. It is not as big as one might imagine. I am not saying that the full spectrum of FHIR queries are not needed or used, just that the vast majority fall into a few typical needs. This is especially true in Treatment usecases in cross-organizational need.

I propose that we define a set of canned Queries that are needed often. Each of these would be defined as a FormatCode with a set of metadata appropriate to the need. The document in this case is then the FHIR search set Bundle that would result from a http RESTful query. In this way the document is not fully a Document, but it is a Bundle that is more commonly consumed by clients today.

A system supporting these FormatCodes would publish a "On-Demand" entry advertizing each of these that they are willing to produce. A consuming application can discover these "On-Demand" entries, and retrieve the "document". That "document" is a SearchSet Bundle holding the query results. Likely the use of Snapshots to preserve each response would not be needed.

Some suggestions would need to be discussed. I suspect the following are a good start:

- Current Medications
- Current Allergies
- Current Problems
- Current Immunizations
- etc...

Some design needs to be done, The list is likely not more than 10 or 20. There might need to be consideration of huge results, that might be addressed through better query specifications, or might have some other solution.

Consuming FHIRThis solution gives a similar result to the one described in "[Consuming data as FHIR Resources](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html#4-consuming-data-as-fhir-resources)" in the HIE Whitepaper. But does not require a "decomposition" step as the original source is producing the FHIR SearchSet Bundle.

