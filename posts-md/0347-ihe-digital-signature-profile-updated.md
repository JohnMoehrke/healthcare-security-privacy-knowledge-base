# IHE Digital Signature Profile - updated -- Need COMMENTS

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/08/ihe-digital-signature-profile-updated.html
Published: 2014-08-05T16:35:00.001Z
Updated: 2014-08-05T16:35:48.486Z
Author: John Moehrke

---

The[IHE Digital Signature (DSG)](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)profile has been updated. Well it is out for Public Comment through the [IHE Change Proposal system -- Ballot 24](https://groups.google.com/forum/#!topic/ititech/kFnIOCRbwqE) -- as [Change Proposal 412.](ftp://ftp.ihe.net/IT_Infrastructure/TF_Maintenance-2015/CPs/Ballots/ballot_24/CP-ITI-412-01.doc)

http://images.metmuseum.org/CRDImages/an/web-large/VS86_11_249A.JPG

**IF YOU ARE AN IHE MEMBER, PLEASE COMMENT!!!! We need constructive comments on this proposal. It was not intended to be a breaking change, but reality is that there is no unified understanding of what the old DSG supplement was defining. The old DSG supplement must be considered fundamentally broken. So this CP must be considered a breaking change. **

The goal of [Change Proposal 412](ftp://ftp.ihe.net/IT_Infrastructure/TF_Maintenance-2015/CPs/Ballots/ballot_24/CP-ITI-412-01.doc) is four very important things, none of them are related to failures of the original.

- The original supplement was written before IHE had a concept of a Content Profile, so it was never written this way. Now that we have a concept, we can write it in a way that is more readable. There was also some loose-ends related to the now deprecated NAV profile.

- The current supplement template has some other formatting requirements. Actually we also needed to do proper section number reservation and management. So many simple 'editorial' needs.

- The original only supported a Detached signature, where the content was managed in an XD* environment and the linkage to the signature was done by the XDS Association type "SIGN". This is still needed but we also need an Encapsulating signature that can be used where no XD* is available to hold the things together, so encapsulating signature is an outer envelop of the Digital Signature that holds the signed document inside.

- The digital signature standard has been updated and now includes everything we needed. So we now specify XAdES-L-T, which brings inside the certificate and a timestamp; and we utilize the CommitmentTypeIndication for Purpose Of Signature. Thus we just bind in a vocabulary specific to Healthcare needs.

- We did not include the new CDA digital signature. This is not because it isn't useful or interesting, but more because that would have been a very different technology. Those that want this profiled by IHE, should bring a [New Work Item Proposal to profile it.](https://groups.google.com/forum/#!searchin/itiplan/new$20work$20item$20proposal/itiplan/a9g5b1m5NWc/P2s5SGZemRoJ)

I have had this Change Proposal on my plate since I wrote that it was needed back in 2009. It didn't happen because there simply was not enough use of Digital Signatures in healthcare. However now there is more interest, driven by some [Anti-Fraud use-cases](http://healthcaresecprivacy.blogspot.com/2013/08/digital-signature-standards-use-and.html).

The main problem with Digital Signatures is NOT the standards, it is the Policies and overhead in issuing proper Digital Identity (PKI). Once there are Digital Certificates issued for the purpose of Digital Signatures, then there are many use-cases that can be enabled. However that first justification of the costs is very hard to do, and somehow combining justifications just never seems to happen.

Review the proposed new supplement as [Change Proposal 412.](ftp://ftp.ihe.net/IT_Infrastructure/TF_Maintenance-2015/CPs/Ballots/ballot_24/CP-ITI-412-01.doc)

>


  800x600



  Normal
  0




  false
  false
  false

  EN-US
  X-NONE
  X-NONE











  MicrosoftInternetExplorer4



























































































































































 /* Style Definitions */
 table.MsoNormalTable
 {mso-style-name:"Table Normal";
 mso-tstyle-rowband-size:0;
 mso-tstyle-colband-size:0;
 mso-style-noshow:yes;
 mso-style-priority:99;
 mso-style-parent:"";
 mso-padding-alt:0in 5.4pt 0in 5.4pt;
 mso-para-margin:0in;
 mso-para-margin-bottom:.0001pt;
 mso-pagination:widow-orphan;
 font-size:10.0pt;
 font-family:"Times New Roman","serif";}

The changes to the IHE DSG profile are significant
should be considered a breaking-change from the original DSG supplement
published in 2009. The DSG supplement has remained in â€œTrial Implementationâ€
since 2009. Breaking changes during â€œTrial Implementationâ€ are proper and
should be expected.

The Document Digital
Signature (DSG) profile is a Document Content profile that provides general
purpose methods of digitally signing of documents for communication and
persistence. This method can be used within a Document Sharing infrastructure
(e.g., XDS, XCA, XDM, XDR, and MHD). There are three methods of digital
signature provided: Encapsulating (An encapsulating signature is a signature
approach that encapsulates the signed content within the signature syntax.),
and Detached (manifest).

Electronic documents are
being increasingly relied upon in healthcare. Signatures have been a part of
the electronic documentation process in health care and have traditionally been
indicators of accountability.  Reliable
exchange of data between disparate systems requires a standard that implements
non-repudiation to prevent document creators from denying authorship and
rejecting responsibility.

This second revision of the
DSG supplement addresses the following:

- Puts the profile into the current supplement template

- Puts the profile into the current Document Content format

- Adds Encapsulating signature, which is especially useful when
     Document Sharing are not used. For example: RFD based output.

- Update the signature standards: XaDES specifically that now includes
     profiles for Long-Term signatures

Other Digital Signature Blog Posts

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Non-Repudiation is a very old art](http://healthcaresecprivacy.blogspot.com/2011/11/non-repudiation-is-very-old-art.html)

