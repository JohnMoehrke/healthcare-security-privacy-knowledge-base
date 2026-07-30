# Why does IHE-XDS not have a Delete Document?

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/05/why-does-ihe-xds-not-have-delete.html
Published: 2024-05-26T12:51:00.004Z
Updated: 2024-06-03T15:10:20.729Z
Author: John Moehrke

---

This also applies to IHE: [MHD](https://profiles.ihe.net/ITI/MHD/index.html), [MHDS](https://profiles.ihe.net/ITI/MHDS/index.html), [XDS](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html), and [XCA](https://profiles.ihe.net/ITI/TF/Volume1/ch-18.html). To some extent it applies to normal use of [FHIR R4 DocumentReference](https://hl7.org/fhir/R4/documentreference.html)

The [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model is focused on document lifecycle, and thus supports Create, Append, Transform, Replace, and Signs of a document. When an existing document is replaced with a new document, the Replace action is used. This marks the old document as superseded and the new document points to the old document (in XDS the Association Object is bidirectional, but in FHIR the new document points at the old). Thus, when someone finds the document they have, they can see that it has been replaced.

This is a well understood model when one thinks about a clinical document. That clinical document may have various revisions, each replacing the prior document. With a clinical document the final version is left available forever (or for as long as the legal persistence policy identifies). This is the typical lifecycle, that is that eventually one gets to a final version of the document.

However, there are some documents that need to be deleted / removed / revoked / deprecated / etc. Some examples:

- Basic Patient Privacy Consent -- when the consent is revoked by the patient
- Advanced Directives -- when the advanced directive is revoked by the patient
- Entered in Error -- when a document gets incorrectly registered, and needs to be removed because of this error

With only Replace, these needs seem to be unachievable in XDS/MHDS.

Native FHIR R4In [FHIR R4 DocumentReference](https://hl7.org/fhir/R4/documentreference.html) one can set the status to [entered-in-error](https://hl7.org/fhir/R4/valueset-document-reference-status.html), but there are two very important considerations

- This status is not supported in XDS, so it is not going to interact properly with any exchange that uses IHE Document Sharing. I will cover this later in the section on Just delete it.
- This status does not include any evidence for why the document is marked as entered-in-error.  Meaning that there is often a need to explain why it was marked as entered-in-error.
- The status of entered-in-error is reasonable when a mistake was made. But the first two use-cases are cases where the original publication was not an error, the change is to indicate removal.

In [FHIR R4 DocumentReference](https://hl7.org/fhir/R4/documentreference.html) one can set the status to [superseded](https://hl7.org/fhir/R4/valueset-document-reference-status.html), but there are is an implication that it has been superseded by another DocumentReference. This is not a requirement, so it is not a problem.
One could use an extension in FHIR DocumentReference that can carry a more refined status code... but that is not going to guarantee that everyone understands it... And those extensions will not be understood by IHE Document Sharing transports. Most important is that the .status codes in the Event pattern does not have a 'deleted' status.

Just delete itFHIR Resources can be deleted, provided policy allows. A Deleted resource can be handled in multiple ways. If the FHIR Server supports versions, it can mark the version as deleted in a way that one could retrieve the deleted resources.

XDS does have some methods available for document delete - [Remove Metadata and Documents (RMD)](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_RMD.pdf). The problem with delete in XDS is similar in that it does not convey the deletion to those that might have used it before, and certainly doesn't understand why it was deleted.

Document Sharing -- Recommended ApproachIn Document Sharing, one would Replace the current document with a new document. The new document likely will be a brief summary of why the document was revoked or replaced. This kind of a flavor of the document would need to be profiled anyway to support the use-cases.

The new document could be an empty document, provided the policy allows that.

The new document metadata could be either

- A variation of the original document, so that it is discoverable in the same way the original is discoverable
- Very different metadata that clearly indicates deletion.
- A variation of original content to support some discoverability, but also clear indication of the deletion.

So, how can the Metadata (e.g. DocumentReference) look like to indicate to everyone that might have pulled the previous document?  Well, realistically the fact that the previous document was Replaced, is the signal to any previous uses of the previous document.

But, should the Metadata (e.g. DocumentReference) be good to have an indication that the previous has been rejected and that there is no new content. Meaning, a way to send a terminal signal using just the Metadata?

- In pure FHIR, the DocumentReference.docStatus  could indicate this, especially in newer versions of FHIR (given that FHIR R4 has a very limited vocabulary on docStatus).

- However, this element is profiled out of IHE Document Sharing

- The DocumentReference.type or .category could be different to indicate this is a Terminal document; but this might make it harder to find. So likely these should be the same as the original.
- The DocumentReference.content.format is the indication of the profile / formatCode of the document content. If one defines a new profiled document for this use-case of a Terminal / Revoked / Removed document. Then one could put this value here.
- The DocumentReference.context.event is the MOST USEFUL. This in both FHIR and XDS is a general useable code. Thus any code can be put in here.

So, use DocumentReference.context.event and define a specific code to indicate a Terminal state of the previous document. I don't know if there is a useable code, but likely there is a code in CDA. Or you could put the Composition Status code from the updated CodeSystem[Composition Status code from the updated CodeSystem](https://build.fhir.org/codesystem-composition-status.html) in here

ConclusionSo, my conclusion is
1. Use Replace, with some differently profiled document
2. This document would be defined to indicate the context of the Removal / Revocation / Rejection / etc.
3. This document would have a defined set of codes to use inside the document
4. This document would have a different FormatCode / profile
5. This document would profile the Metadata (e.g. DocumentReference) to indicate this terimal status document. This could be all of the above, but most likely would be the FormatCode and an Event code.

Meaning this is a normal use-case analysis that results in a specific profiled document that replaces the previous document. This will be understood in simple FHIR Server, and would be understood in XDS / XCA / MHDS. Thus it has the broadest useability and clarity.

