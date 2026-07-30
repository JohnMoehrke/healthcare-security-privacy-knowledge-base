# HL7 ballot - CDA Digital Signature

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/09/hl7-ballot-cda-digital-signature.html
Published: 2013-09-10T20:03:00.002Z
Updated: 2013-09-10T20:03:57.091Z
Author: John Moehrke

---

I encourage a review of the CDA Digital Signature ballot by anyone that understands Medical  Records Retention requirements, CDA, Delegation of Signature Rights, or simply Digital Signatures. This ballot is good work to bring digital signatures as a visible functionality of Healthcare  IT.

- CDAR2_IG_DIGITALSIG_R1_D1

http://images.metmuseum.org/CRDImages/an/web-large/VS86_11_249A.JPG

It is part of the broader use of [Digital Signatures that wrote of last month](http://healthcaresecprivacy.blogspot.com/2013/08/digital-signature-standards-use-and.html).

There are plenty of similarity to the existing [IHE-Digital Signature profile](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html), but the way the document and signature are bound is different. In IHE-Digital Signature profile the signature is a 'related' document, but can be managed independent. Thus it doesn't interfere with existing document workflow, and can work on ANY document type.

This CDA Digital Signature ballot creates the same digital signature, functionally and mostly encoding wise, but rather  puts the digital signature inside of the  document. Due to this gymnastics, it does need to do some different processing.

The unfortunate thing about this ballot is that they have also included in the mix a specific form of delegation of rights that uses a mash-up of SAML and Digital Certificates. This is likely the best technical solution, but that kind of decision should be a Profile decision, not a Standards one. Thus this system doesn't support any other form of delegation of rights.

I wanted and expected to give this ballot a Positive vote, with a few comments. This was based on the many times the  group consulted with me. However they made just a few too many mistakes. Thus I had to vote Negative. Like the hData ballot, this one can also be easily cleaned up. In all my comments I gave at least one way to resolve the comment. I am very confident that this will eventually be a good standard. I suspect that someone will need to pickup the profiling that they included. This  profiling still needs to be done, just not in a standard.

The good news is that the IHE-Digital Signature profile really needs some attention. It needs at minimal to be rewritten to use the  latest concepts in IHE around Document Content profiles, and likely needs some updates including use of XAdES-XL.

Healthcare Digital-Signature

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Non-Repudiation is a very old art](http://healthcaresecprivacy.blogspot.com/2011/11/non-repudiation-is-very-old-art.html)

