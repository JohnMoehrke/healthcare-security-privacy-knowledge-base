# Signing CDA Documents

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html
Published: 2010-11-03T15:44:00Z
Updated: 2012-02-13T19:41:00.383Z
Author: John Moehrke

---

I get asked about signing documents in healthcare every other month. Signatures in the electronic world is an area full of technology solutions, but fought with policy and expense issues.

**Understanding the Paper world:**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjqV-Rn2wiKGt_H-4204yNELtAP9tAIWC8nDZpW6IX_kXmzcrLPx3rqYje9o_Ubx-lgWLDceAYhvzeVeHhmNUdbDtoJkBcvhR4cRfH-R1KrD5_VqqquQ8bR3YUm_mesKeGHZyqWJTfihHy/s1600/InkSignature.JPG

The paper world is full of signatures, and it is very important to understand these signatures in the paper form before we quickly jump to the electronic world. A signature in the paper world is not just ink on paper. There is a ceremony involved in the act of placing a signature on paper. This ceremony is not necessarily a hugely formal thing, but the physical act of being presented with the paper, reading of the text on paper (yes I know no one reads them, but it does imprint an image in the brain), finding a tool to do the signature (pen), and placing the signature onto the paper. This physical act is important, not just at the time that it is done, but also because it places memories into our memory about that ceremony. Thus 10 years later when someone presents us with that ink signature on that paper we have quick recall as to if we did that signature or not.

There is also different levels of signatures. I am sure everyone has an experience where initials have been requested, such as at hotel check-in or when renting a car. These initials are their way to make sure you have participated in the ceremony, and draw your attention to critical parts that you are agreeing to. For example initialing by the daily-rate, conditions of fuel filling, etc. These initials carry less importance than the final full signature at the bottom. This placement at the bottom (or end) is important as it is implying that you are signing everything from the top to the bottom.

**Factors to think through:**

Often times a signature in the electronic world doesn't think about all of these factors.

1) Is your use-case specific to [Digital Signatures](http://en.wikipedia.org/wiki/Digital_signature), or are you also including [Electronic Signatures](http://en.wikipedia.org/wiki/Electronic_signature)? Where Electronic Signatures are not using cryptography standards, and often are simply attributes. Digital Signatures use open standards so that the signed 'thing' can be verified using various and non-related tools.

-- I  am only going to talk about real Digital Signatures.

2) What is the goal of the signature? This leads to who/what is attesting to what to whom. Is the signature a transactional signature or a long-term signature. There is a Digital Signature function built into secure transports such  as TLS/SSL; but these are only good for covering authenticity and  integrity between the sending system and the receiving system. Once the  data comes out the other end of the transport tunnel, it is no-longer  protected by this transport based signature. Usually no one thinks about  transport signature, but it is important to recognize that this is a  specific type of signature.

3) How is the signed data to be used vs how the signature is used. There are use-cases for a digital signature across a CDA document, but when looked at closely there is good reason to keep the signature separate. In many cases where the CDA document is used, the signature is not important. This is not because the signature is not important overall, just that for that specific clinical purpose the signature is not important. The signature is there for legal challenge reasons. Back to the paper world, it is common for many people to use a signed document, but most of them don't do any validating of the signature. There is an assumption that the document exists because it is legitimately signed. At best they verify only that a signature is present. This is a good reason to keep the signature independent of the CDA document it-self. Thus the vast majority of uses of the CDA document don't need to be bothered with the signature.

4) What is the reason-for-signature? This is usually something that people forget to think through. There is some reason why the signer is signing the document. It might be because they are the author. It might be because they have over-read it. It might be simply to indicate that they reviewed it. It might be a signature by a software-service indicating only that it is authentic. The reader of a signature may care only about one of these purpose of signature values. They may be only looking for the authors signature. The reason-for-signature should be considered to be part of the signature. This is the main contribution that the [IHE Document Digital Signature (DSG) Profile](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_Digi%0Atal_Signature-2009-08-10.pdf) offered, through extension of XAdes. (that and the date/time stamp)

5) Where is the date/time going to come from, and why should the signature validator trust that the date/time is accurate? This is usually a chicken and egg problem; but does need to be considered. Often times the only way to solve this is through policy/procedure. There are technology ways to solve this, for example using a timestamp service that it-self signs the timestamp alone (reason-for-signature = attesting time/date). The signed date/time is only important to someone challenging the higher level signature. This is yet another use-case where having an external signature from the CDA document is helpful.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEizp_vPDpbMGoqgFQDY1XfYbEBEUUuIbxgaK7qs5GaTwQTV4Q25zgl5L4KQLmr7QsLe9WF5WsWQLyyQwRsEDVZS0VEsPzjzBvzsvl3WIP-p0LWaZ-xExmjkfyIVDxXuJFj-OwIwEtbWP9S5/s1600/Full_BPPC.jpg

6) Is the signature only going to be applied to CDA documents? In the [IHE Document Digital Signature (DSG) Profile](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_Digi%0Atal_Signature-2009-08-10.pdf) case, they wanted to have a reusable signature that could be applied to any document type. This is an advantage of this model. Having one mechanism that is independent of document type is very helpful. However a drawback of this model is that it is not as useful for a partial signature. So the current IHE DSG profile covers the whole document only. For example the diagram at the left is the layout of the IHE DSG profile for use with a [BPPC Consent Acknowledgment](http://healthcaresecprivacy.blogspot.com/2010/10/consent-management-using-hitsp-tp30.html) document.

7) Will counter signatures and co-signatures going to be needed? Again a functionality supported by IHE DSG.

8) Are partial signatures really needed? The XML-Digital Signature standard is very powerful and likely the right base standard (as IHE DSG used). * Be careful when using the partial-signature. This is academically possible with XML-Digital signature; but there are known problems with this. This does not mean you should not use partial-signature, but you should be very careful to evaluate if partial-signature is really needed. Often times the need for partial signatures can be handled with a good reason-for-signature.

9) There are ways to use XML Digital Signature that are embedded inside the CDA structure. This is done with a transform that excludes the part of the CDA document where the signature is stored, and thus the final digital signature is stored inside the CDA document. This is likely the most fully functional, but also the most complex. I know that there are known issues with partial signatures, so I worry about this in the short term. It is possible that this will eventually become mature enough to rely on.

10) Whole package Signature? S/MIME packaging vs IHE XDM are somewhat equivalent from the outside. But there are implementation maturity issues with MIME-Multipart-Related. Not with the specification, but with the implementations. This is why IHE choose to use ZIP as the packaging mechanism. The additional advantage of XDM is that the XDS-Metadata allows for documents of all kinds to have relationships, metadata, and lifecycle. IHE will likely add a S/MIME wrapper to XDM this year. But it will be encapsulating so that the whole package can be authenticated, encrypted, and verified. So, this will be yet another model for Digital Signatures. Most applicable to cover a point-to-point conversation, even if that conversation goes through a patients hands.

****

**Available Technology solutions**

So here is a list of possible technical ways to do a long-term Digital Signatures in healthcare.

- XML-Digital Signature  value inserted into the structure of the CDA document as an extension

- XML-Digital Signature in Encapsulating mode (Where the outer XML is  XML-Digital Signature, and where the contained CDA is untouched)

- XML-Digital Signature in Detached mode (Where the  XML-Digital Signature is it-self a document that signs the CDA document  by reference) This is what IHE DSG does.

- S/MIME Digital Signature on the the CDA Document and any images that go with it

There are some other technology that are considered valid Digital Signatures, such as PKCS

I prefer either 2 or 3 methods. I like the IHE DSG model, as it  has no impact on those actors that trust the  transport and don't feel  the need to validate the signature every time the document is used; yet  the signature is available when needed.

**Digital Signatures are Expensive**

Most of what I have  covered is readily available and mature Technology. But there is one  more piece of Technology that causes Digital Signatures to be not  implemented. This is not because the technology is expensive or hard to  use. The thing that typically kills Digital Signature projects is the issues around managing the necessary [Digital Certificates.](http://en.wikipedia.org/wiki/Digital_certificate) It isn't just the Digital Certificate, but also the Private Keys associated with the Public Digital Certificate. I am not going to go into these issues in this article. But it is very important for people to include the expense of [certificate management](http://en.wikipedia.org/wiki/Public_key_infrastructure), especially as it relates to long-term digital signatures. Issues around identity verification, certificate issuance, private key protection, certificate expiration, certificate revocation, certificate purpose,  etc.

Food for thought: Validating a Digital Signature 20 years later includes making sure that the Digital Certificate used was valid at the time that the signature was made.

** **

****

**Reference:**

- [IHE Document Digital Signature (DSG) Profile](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_Digi%0Atal_Signature-2009-08-10.pdf)

- [NHIN Direct (The Direct Project)](http://nhindirect.org/)

- [IHE XDM](http://wiki.ihe.net/index.php?title=XDM)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Non-Repudiation is a very old art](http://healthcaresecprivacy.blogspot.com/2011/11/non-repudiation-is-very-old-art.html)

