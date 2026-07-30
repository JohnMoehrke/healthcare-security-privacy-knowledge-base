# Digital Signature standards use and evolution

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/08/digital-signature-standards-use-and.html
Published: 2013-08-16T14:37:00.001Z
Updated: 2013-08-16T14:37:09.856Z
Author: John Moehrke

---

I am excited about a [S&I Framework](http://wiki.siframework.org/) project. Excited at the prospect that finally Digital Signatures will see the light of day. Yet, I am also troubled by the overly technical focus of the maximal solution.

The [Electronic Submission of Medical Documents (esMD)](http://wiki.siframework.org/esMD+Initiative) project is a very good case for the use of Digital Signatures. There is a high-value asset, and high-value to false submissions. Meaning having a mechanism that can prove non-repudiation would have a big benefit. Unfortunately, there is a downside on the workflow by the Provider. This downside is that even the GOOD Providers (which we must presume is a much larger number than the bad ones) will need to carry out extra steps when documenting.
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhu-_i5nlZaSiaulxrItYJ37lPNakXqEwSky3pk3MecigxlS9gpkDi6Rvwxho-DxpRLG9Z0s4rJ2WMPm6TFh9KcRVOIRhUnv33-kXMxQXCu-uVafaAPJ-A9Ja2vWXs7UcGX8cyiMd6xLagJ/s1600/PSWG_2013Aug08_Final+esMD+Update-740926.png
Their First Level of solution is not so onerous  It recognizes that the act of submitting the document could be enhanced to include a Digital Signature on that bundle of Medical Documents. This use-case is well handled by the [IHE- Digital Signature Profile (DSG)](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html). You can see the S&I Framework reportout slide that was used when presenting this to the HIT Standards Privacy and Security workgroup and Exchange Power Team.

The signature would still need to be by the Authoring Doctor and Legal Authenticator. The technology and workflow are just different. The [IHE-DSG profile](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html) also can be used to sign any format of document, so if the Doctor has documents in PDF, DICOM, or any other format; these can be signed by IHE-DSG. The IHE-DSG profile creates a NEW document that is the signature itself. This document lists each of the documents it is signing with the cryptographic hash of that document. Thus the original document is totally unaffected.

The drawback, as described by esMD leadership, is that the signature can become lost. That is that as the document is moved around, someone might carelessly not continue to carry around the Digital Signature.

This is why they have also prototype d a Digital Signature that is carried within the CDA document that it is signing. This is done through the magic of XML, and is supported by CDA and XML-Signature. There is just some important syntactic sugar that is needed to make sure everyone does it the same way. This is now being written into a standard by the Structured Documents workgroup. This CDA Digital Signature standard will be coming out for Ballot soon.

There are well known issues with the use of Partial Signatures, even when using XML-Signature. These issues need careful attention. Further, I am unconvinced that that same careless individual that in Level 1 failed to carry along the digital signature, might not also carelessly not carry along this digital signature. Being XML, it is easy to extract and re-create. This should not be done with CDA anyway, as it does break the theory of wholeness. But we are talking about careless people.

Signature: Digital-Signature, Electronic-Signature

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Non-Repudiation is a very old art](http://healthcaresecprivacy.blogspot.com/2011/11/non-repudiation-is-very-old-art.html)

