# IHE Document Digital Signature (DSG) Profile approved for Final Text

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/04/ihe-document-digital-signature-dsg.html
Published: 2017-04-27T19:49:00Z
Updated: 2017-04-27T19:49:45.236Z
Author: John Moehrke

---

Today the IHE ITI Technical and Planning committees approved the [Document Digital Signature (DSG) Profile](http://wiki.ihe.net/index.php/Document_Digital_Signature) be moved into Final Text. This Document Profile defines a way to support Digital Signatures, including when those Documents are managed in a Document Sharing infrastructure. This [DSG](http://wiki.ihe.net/index.php/Document_Digital_Signature)Profile is referenced in many places where adding a Digital Signature to a document would be beneficial, such as Consent, Legal Evidence, etc.

http://images.metmuseum.org/CRDImages/an/web-large/VS86_11_249A.JPG

There is more interest in digital signatures driven by some [Anti-Fraud use-cases](http://healthcaresecprivacy.blogspot.com/2013/08/digital-signature-standards-use-and.html). I think there will be more interest driven by [Patient Authored content.](https://www.healthcare-informatics.com/news-item/onc-launches-health-data-provenance-challenge)

The main problem with Digital Signatures is NOT the standards, it is the Policies and overhead in issuing proper Digital Identity (PKI). Once there are Digital Certificates issued for the purpose of Digital Signatures, then there are many use-cases that can be enabled. However that first justification of the costs is very hard to do, and somehow combining justifications just never seems to happen.

The Document Digital Signature (DSG) profile is a Document Content profile that provides general purpose methods of digitally signing of documents for communication and persistence. This method can be used within a [Document Sharing infrastructure (e.g., XDS, XCA, XDM, XDR, and MHD)](https://healthcaresecprivacy.blogspot.com/p/topics.html#HIE).

Electronic documents are being increasingly relied upon in healthcare. Signatures have been a part of the electronic documentation process in health care and have traditionally been indicators of accountability.  Reliable exchange of data between disparate systems requires a standard that implements non-repudiation to prevent document creators from denying authorship and rejecting responsibility.

[DSG](http://wiki.ihe.net/index.php/Document_Digital_Signature)supports:

- An Enveloping Signature is a Digital Signature Document that contains both the signature block and the content that is signed. Access to the contained content is through removing the Enveloping - Digital Signature. Among other uses, this method should not be used with Document Sharing infrastructure.

- A Detached Signature is a Digital Signature Document that contains a manifest that points at independently managed content. Detached signatures leave the signed document or documents in the original form. Among other uses, this method is recommended for use with a Document Sharing infrastructure to support Digital Signatures, as this method does not modify the original Document Content. This method uses the Document Sharing â€œSIGNSâ€ relationship provide linkage.

- A SubmissionSet Signature is a Detached Signature Document that attests to the content in a SubmissionSet by: containing a manifest of all the other Documents included in the SubmissionSet, and a reference to the SubmissionSet. The Document Sharing â€œSIGNSâ€ relationship may be used but is not required.

The digital signature standard is XML-Signature using XAdES-L-T profile, which brings inside the certificate and a timestamp; and we utilize the CommitmentTypeIndication for Purpose Of Signature. Thus we just bind in a vocabulary specific to Healthcare needs.

We did not include the new CDA digital signature. This is not because it isn't useful or interesting, but more because that would have been a very different technology. Those that want this profiled by IHE, should bring a [New Work Item Proposal to profile it.](https://groups.google.com/forum/#!searchin/itiplan/new$20work$20item$20proposal/itiplan/a9g5b1m5NWc/P2s5SGZemRoJ)

Other D[igital Signature Blog Posts](https://healthcaresecprivacy.blogspot.com/p/topics.html#DSG)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Non-Repudiation is a very old art](http://healthcaresecprivacy.blogspot.com/2011/11/non-repudiation-is-very-old-art.html) --- the story behind the picture which is of a signature on a receipt for goods.

