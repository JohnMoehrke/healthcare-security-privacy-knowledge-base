# Digital Signatures  on FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/12/digital-signatures-on-fhir.html
Published: 2014-12-17T23:21:00.001Z
Updated: 2014-12-17T23:21:19.435Z
Author: John Moehrke

---

Within the FHIR community there has been many disconnected discussion on Digital Signatures. These discussions have made it formally an action item for the Security WG to come up  with a better guidance than exists today. This discussion has also come up with a listing of the problems that FHIR presents, an incomplete listing. This discussion has come up with a few solutions, but none that work for everything.

Document Signatures
With Document Signatures, we have a completely [self-describing blob](http://healthcaresecprivacy.blogspot.com/2011/10/critical-aspects-of-documents-vs.html) that we hash, and that hash is included in a Digital Signature block. This signature block can be managed in at least three distinct ways:

- **Detached **â€“ Signature block is managed as an independent document from the document(s) it signs Possibly using a Document Sharing system like XDS which also has  â€˜associationâ€™ linkages that can identify the signature relationship between signed document and the signature document.

- **Enveloping **â€“ Signature block is managed as a document that contains the document that it signs. The signed document is â€˜envelopedâ€™ inside of the signature block. This â€˜newâ€™ object can be managed and communicated in many ways. The signed document and the signature are bound together through this containment. However to access the signed document, one must be able to take the signature envelop off of the document.

- **Enveloped **â€“ The Signature block is inserted inside of the signed document. This means the signed document must have a defined place to hold the signature block, and the signature must exclude this place. The signed document and signature are bound together through this form of containment. However to access the signature block, for validating the signature, one must have the ability to extract the signature prior to sending it to a standards based signature verification algorithm.

I will say more about this in the future, as IHE has just approved a new version of the IHE Digital Signature (DSG) profile for â€œPublic Commentâ€.

FHIR are Resources
FHIR could use the above mechanisms, but the dynamic nature of FHIR causes many problems.

FHIR Resources can and will be made into Documents

First the good news: If one were to create a â€œDocumentâ€ using FHIR, rather than CDA, it would (should/shall) have the same characteristics of a â€œDocumentâ€ and thus be self-describing blob.

Resource fixup breaks Signatures
But most of the time with FHIR, the expectation is that the Document or any set of Resources will be decomposed and managed independently. Thus we donâ€™t have a â€œDocumentâ€ for long, we have a set of Resources that are â€˜fixed upâ€™ by the server. We have a set of Resources that are moved around, and thus more â€˜fixupâ€™ happens. The first problem that FHIR presents is this concept of â€˜fixupâ€™.  What I mean by â€˜fixupâ€™ is this: Any FHIR Resource that contains pointers, either Reference or URI or Attachment or other; these pointers might need to be adjusted by any system that is going to persist or further process. An example is that sometimes a bundle will be created that contains all the necessary Reference resources, all pointed to through relative-URI. The recipient will break these resources out of the Bundle and as it stores them it will create a absolute-URI and thus adjust the uses of the previous relative-URI to the new absolute-URI. This is a specific  example of â€˜fixupâ€™. There are others elements of a Resource that might need to be adjusted by a recipient. These â€˜fixupâ€™ are expected, and normal. They should not be changing the meaning originally intended. A digital-signature would see this as a change and thus flag the change as breaking the signature. If the change is expected and normal; then the signature needs to ignore these changes. However the signer does also need to make sure that the â€˜fixupâ€™ was done accurately.

An interesting, and simple, solution to one deployment scenario goes like this: For a client that wants to create a signature across a Resource that it is going to publish, it could manage the â€˜fixupâ€™ problem using the following method: From the perspective of a FHIR client

- The client creates a new instance of some resource(X)

- The client Posts X onto server Y

- The HTTP Response indicate successfully created, returning the URL to Xâ€™

- The client retrieves that instance Xâ€™ from the server Y resulting in a local copy of Xâ€™

- The client confirms that the essence of what is intended to be recorded has been recorded. Thus allowing the server to do things like fixing up references.

- The client then calculates the signature S across that Xâ€™

- The client then creates a Provenance resource P pointing at Xâ€™, with the signature calculated S.

- The client could then retrieve the Provenance instance Pâ€™ and validate Xâ€™ and included Sâ€™ with the current Xâ€

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiL5UoH5T9ByNpzG-Dt_XG5XsrfWz4L1-jjn2qfyMJhi42JU5xjCYtAePQ5p8tA6WxU7DoVWIx9DOUXR6vwGrmMSPDoO5k_3LVMWLsVGC6LFqObB_3fOrwI4aqJL9YjJfP9yPIUx16lcBik/s1600/DSG_FHIR_RESTful_Resource-784316.png

**This does not address all problems. It does address one of the â€˜fixupâ€™ problems, the first server need to â€˜fixupâ€™ the resource. It doesnâ€™t address cases where that server further needs to forward a copy of the Resource to a system that canâ€™t access the server, as that introduces a new fixup problem. But it is an elegant solution to one of the problems we are presented with. And this just might be the highest important problem to solve.

I think the above interaction would work for a Bundle of Resources too. Just more involved.

Transforms break Signatures
Next problem that FHIR brings in is the ease with which it transforms a Resource from JSON to XML and back. There is new work going on in HL7 to now bring in a third form of RDF. And many applications will use JAVA, and thus only see the resource in the JAVA form. There is great effort in FHIR, enforced by the publication tooling, that these translations are lossless. But from a digital-signature perspective they are all different. Digital-signatures operate on the binary level, not the semantic level. When one actor signs some Resource, they canâ€™t know (or dictate) that all users of that Resource use the same transform. The publisher might use XML, the reader might only be able to read using RDF.

A proposed solution for this is to force the Signer to include in the Signature a signature block for all possible transforms. The drawback of this is that the Signer likely can't validate each of those transforms as valid.

Another proposed solution is for the Verifier -- the one using content and wanting to get proof that the content has been signed -- be forced to be able to use ALL transforms, thus verify the transform that was signed. There would be trust-in-the-server that it transforms all other versions reliability.

More issues and solutions to come
Surely there will be more. I encourage comments on my blog, but I also encourage participation in FHIR efforts. The FHIR efforts are being cataloged on the HL7 Wiki at

- [FHIR Digital Signature Working Page](http://wiki.hl7.org/index.php?title=FHIR_Digital_Signature_Working_Page)

