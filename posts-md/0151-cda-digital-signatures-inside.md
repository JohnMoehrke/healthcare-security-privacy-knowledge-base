# CDA Digital Signatures inside

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/10/cda-digital-signatures-inside.html
Published: 2014-10-22T17:13:00Z
Updated: 2014-10-22T17:13:12.728Z
Author: John Moehrke

---

HL7 has been working on an Implementation guide that explains how one would use a Digital Signature inside of a CDA document. This is an implementation of XML-Signature in [Enveloped](http://www.w3.org/TR/xmldsig-core/#def-SignatureEnveloped)form.
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjRgGS8YNNOm7LHpW9623YBKVvn-r6kmJEOhNtihtuu7TKamSlILpBT16PcObXoJvpt9TKZU4hDSs-M2eTmN9XMs4oXgMHGljD_QlQ1PzJW8UlTCUbILtrF8j1tzqAMHX6pHf1chDmoVrrZ/s1600/CDA+enveloped+signature.png

This has completed a round of ballot and now enters 24 months of DSTU.

- [Signature,    Enveloped](http://www.w3.org/TR/xmldsig-core/#def-SignatureEnveloped) -- The signature is over the XML content that contains the
    signature as an element. The content provides the root XML
    document element. Obviously, enveloped signatures must take
    care not to include their own value in the calculation of the
    SignatureValue.

Note, I can't find the current DSTU version of the text... When I find it I will provide a link.



The HL7  CDA Digital Signature Implementation
Guide shows a model where the Digital Signature is treated as a
 blob that is then inserted into the CDA document. This means that it is
 restricted to only signing CDA documents. The advantage that this CDA
internalized digital signature is that it is carried inside the CDA
document throughout any transport that conveys the CDA document.

**_DSTU Publication Approvals  _**

**_HL7 Implementation Guide for CDAÂ® Release 2: Digital Signatures and Delegation of Rights, Release 1_** for Structured Documents WG of SSD SD at [Project Insight 1005](https://www.hl7.org/special/Committees/projman/searchableProjectIndex.cfm?action=edit&ProjectNumber=1005) and [TSC Tracker 3639](http://gforge.hl7.org/gf/project/tsc/tracker/?action=TrackerItemEdit&tracker_item_id=3639&start=0) requested DSTU publication for 24 months. The Digital Signature and Delegation of Rights Implementation Guides provide a standardized method of applying Digital Signatures to CDA documents.  The standard provides for multiple signers, signerâ€™s declaration of their role, declaration of purpose of the signature, long-term validation of the Digital Signatures and data validation of the signed content.****

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicUwTg30UdtkWcQL908PZcxLjRvdd0bR5SG_ROyOS0nUcvoeD9-VJglBs2-UufWJS-ZhyunchoYBb9mXVFVSOyEOnjuFsTzmFXbH-QUXBoT7ouha-FCsNGJUcjSd5mTRFpdOl8TS2cwS9u/s1600/Slide41.PNG

This Digital Signature is not a conflict with the [IHE-DSG profile](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html), but rather a different model. IHE-DSG profile is a standalone Digital-Signature that references a standalone document of any type. So the IHE-DSG profile can sign a CDA document, but can just as well sign a PDF or any other format of document. The limitation that the IHE-DSG profile has is that it can only sign by reference. This model has been extensively discussed in IHE and on my blog. See [IHE-DSG profile](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html),

IHE Does have a proposal that I am working on to add [XML-Signature Enveloping.](http://www.w3.org/TR/xmldsig-core/#def-SignatureEnveloping)

In this case there would be one document that is an XML-Signature document, with the signed content inside of the document. In this way the content is carried inside the signature. The opposite of the CDA Enveloped DSTU. This method can Envelope ANY type of document, it is not restricted to CDA documents. It is also, like the CDA Enveloped DSTU, completely independent of Transport.

- [Signature,    Enveloping](http://www.w3.org/TR/xmldsig-core/#def-SignatureEnveloping) - The signature is over content found within an
    Object element of the signature itself. The
    Object (or its content) is identified via a
    Reference (via a URI fragment
    identifier or transform).



[Signature - Digital, Electronic](http://healthcaresecprivacy.blogspot.com/p/topics.html#DSG)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Non-Repudiation is a very old art](http://healthcaresecprivacy.blogspot.com/2011/11/non-repudiation-is-very-old-art.html)

https://www.blogger.com/null

