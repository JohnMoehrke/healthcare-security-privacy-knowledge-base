# FHIR Document Digital Signatures 

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/08/fhir-document-digital-signatures.html
Published: 2021-08-16T12:31:00.004Z
Updated: 2021-08-16T14:45:34.826Z
Author: John Moehrke

---

I was asked about Digital Signatures for FHIR documents:

> I am working on _____  IG that is FHIR document based and we need a means to prove authenticity. The model is relatively simple in that a document and all of its parts represent a single thing that needs to be â€œsignedâ€.

> I have looked around for examples of this in IGs and in example documents and I have not found anything. I see a lot of references to CDA documents and signatures, but not much in the ay of FHIR documents. Can you point me in the right direction? Are there example FHIR IGs and documents out there. Where should I start?

Documents are goodThe right way to do this is to have the signature cover the whole document, you have gotten to that point well. This is important as the signature covers all of the contents, including identity, date/time, context, etc; and also the meat of the content you are needing signed.  The point here is that a Document does not rely on references to outside data that might change, but rather a document should copy within itself everything that needs to be protected with the signature.

A FHIR-Document is not different than a CDA Document or any other kind of document. It is seen by the digital signature as simply a bucket of bits. Thus anything you see showing a digital signature on a CDA document is likely just as applicable to a FHIR-Document.

The wrong way to do this is to believe that one can include a signature within the document (or within anything that is signed -- for example a FHIR Resource that contains a signature element). As soon as you need to exclude something in the bucket of bits, you open up the opportunity for other things to be excluded from the signature. So, always sign a whole bucket of bits, and a whole bucket of bits that is internally complete (doesn't rely on outside data).

The solution
A signature over a document is a document itself. It is a document of type XML-Signature. https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEisIBTeAjGG5IXr4iF2n-8noTtb0J2UfAd5bXMFS_3Hry2D_zJAJIo573EISfedp9aLx-q2SygclZW7JLs4EcmzRuEfh-FSUvq9aB2LO_UkjDDVT46Tp1Z55SAyEPAanSPHITaS194l1_jz/s960/Slide41.PNG

There is already a specification for this from IHE â€“ Document Digital Signature (DSG); and is what the FHIR core specification recommends.  [https://profiles.ihe.net/ITI/TF/Volume1/ch-37.html](https://profiles.ihe.net/ITI/TF/Volume1/ch-37.html)

Both documents would have DocumentReference that point at the bits (My preference is using a Binary, but the enclosed base64 data is an alternative).

The two documents would have a relationship. The digital signature (DocumentReference) would have a .relatesTo with the .relatesTo.target of the DocumentReference with the content; and the .relatesTo.code of â€˜signsâ€™.

Some more context on this [https://healthcaresecprivacy.blogspot.com/2017/04/ihe-document-digital-signature-dsg.html](https://healthcaresecprivacy.blogspot.com/2017/04/ihe-document-digital-signature-dsg.html)

Note the concept of having everything needed (document) in one blob to be signed is very similar to what the COVID-19 credential does, but they strip things down to the bare minimum in order to fit in a reasonable QR code. They do use a JSON signature and encapsulate the content. So it is logically similar to the above, but practically it looks very different.  (Updated to be more correct)

My other articles on [Digital Signatures](https://healthcaresecprivacy.blogspot.com/p/topics.html#DSG)
* [Foundation of IHE - DSG profile](https://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

