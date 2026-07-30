# On-Behalf-Of - FHIR Signature datatype update

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/06/on-behalf-of-fhir-signature-datatype.html
Published: 2016-06-22T12:36:00.003Z
Updated: 2016-06-22T12:38:36.696Z
Author: John Moehrke

---

The Security workgroup is looking at the FHIR datatype for Signature, specifically the use-cases where the one signing is not the one that the agreement or contract is about. For example when a parent signs for an infant child, or a guardian signs for an individual, or where an individual signs for an organization.

https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Uniform_Commercial_Code.jpg/220px-Uniform_Commercial_Code.jpg

We look to the [Uniform Commercial Code (UCC)](https://en.wikipedia.org/wiki/Uniform_Commercial_Code) as one use-case for the use of On-Behalf-Of, as it is a long-standing and proven case where this is needed and has been used. ....

Rob Horn (AGFA) wrote the following as his analysis of the need for On-Behalf-Of capability using the UCC as a use-case. He has authorized me to publish this on my blog. Note: my signature on-behalf-of him, because he doesn't have standing as an individual on my blog.

UCC is best thought of as a use case for the signature datatype.
The major impact of the UCC use case is the need for an â€œonBehalfOfâ€ element in a signature.  UCC distinguishes two kinds of signatures in one dimension.  The signature can be by a party to the agreement or it can by a person on behalf of a party to the agreement.  One extremely common situation is that the jurisdiction laws prohibit signatures by an organization.  Those jurisdictions require that the signature be made by a person on behalf of the organization.  At the level of â€œwhat is a signature and how do signatures workâ€ the UCC does not specify when there are such restrictions.  It specifies that there are two kinds of signatures.

When a signature is â€œonBehalfOfâ€ there is very strong recommendation that both the person/device/organization signing, and the person/device/organization that it is on behalf of are identified.

Adding an optional element â€œ**onBehalfOf**â€ that contains a Uri or a Reference takes care of that.  The **existence of this element identifies the signature as on behalf of **rather than by a party to the agreement.

DISTRACTIONS THAT NEED TO BE MENTIONED.
â€œinvalid signatureâ€ are still signatures.  There is a dangerous legal swamp around invalid signatures that need a lawyer as a guide.  Itâ€™s best to just leave discussions around validity to the lawyers and not try to capture it in the signature.

â€œdelegationâ€ is used in digital signatures.  The legal alternatives for delegation are far more extensive and different than the delegation structure used in digital signatures.  It would be a mistake to try to impose the digital signature rules regarding delegation onto the â€œon behalf ofâ€ signatures.  Donâ€™t confuse the digital signature delegation with other kinds of authorization for signing.

â€œauthorized/unauthorized signatureâ€ are both signatures.  Like â€œinvalid signaturesâ€ this is a dangerous legal swamp.  This is another area that is best kept out of the datatype.  These are just signatures.

PURPOSE OF SIGNATURE
UCC handles purpose of use differently than we did in the digital signature world.

According to UCC, a signature has one (and only one) purpose:

>
The signer agrees to or accepts a â€œwritingâ€.

The term â€œwritingâ€ deals with instantiation and is how they deal with verbal and implicit agreements.  Those cannot be signed.  A â€œwritingâ€ is something that can be signed.

â€œWritingsâ€ also exist in relationships.  Thus when I check into a hotel I sign a number of â€œwritingsâ€:

- The registration, which specifies general terms for room rental, agreeing to those terms

- The departure date, agreeing that is the correct date

- The room rate, agreeing that is the rate

- The no-smoking policy, agreeing to comply with that policy

- The parking policy, agreeing with that policy.

These are often all on the same piece of paper, with the different â€œwritingsâ€ identified by the layout on the paper together with the layout for where I sign.

For all these signatures the purpose of signature is â€œagree to writingâ€.

Most of the ASTM purpose of signature are snippets that are almost statements that could be agreed to, much like the little writings when you check in to a hotel.  Some examples:

- â€œauthor signatureâ€ - agrees with â€œI am the author, as defined by ASTMâ€

- â€œsignature witnessâ€ - agrees with â€œI witnessed signature Xâ€

- â€œInterpreter signatureâ€ - agrees with â€œI performed the interpretation of the writingâ€

UCC didnâ€™t find sufficient commonality among all the many kinds of writings that require signed agreement.  There is no standard purpose of signature concept.  They move all of the purpose into the writings themselves.

https://healthcaresecprivacy.blogspot.com/p/topics.html#DSG

[Blog references Signature - Digital, Electronic](https://healthcaresecprivacy.blogspot.com/p/topics.html#DSG)

- [IHE MHD and DSG now open for Public Comment](http://healthcaresecprivacy.blogspot.com/2015/01/ihe-mhd-and-dsg-now-open-for-public.html)

- [Digital Signatures on FHIR](http://healthcaresecprivacy.blogspot.com/2014/12/digital-signatures-on-fhir.html)

- [CDA Digital Signatures inside](http://healthcaresecprivacy.blogspot.com/2014/10/cda-digital-signatures-inside.html)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Non-Repudiation is a very old art](http://healthcaresecprivacy.blogspot.com/2011/11/non-repudiation-is-very-old-art.html)

