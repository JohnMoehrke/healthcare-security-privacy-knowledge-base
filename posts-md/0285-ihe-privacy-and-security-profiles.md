# IHE - Privacy and Security Profiles - Document Digital Signature

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html
Published: 2011-06-01T13:00:00.006Z
Updated: 2012-12-31T04:16:34.473Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgS6JXPQqrFGRCtVaROXfceZxhaieNAaPhW33mXDqkt8cbznsGHSlMwb9q0jIMjnm-LlUUsx32Le38BbKlfzEcVjyiRGEyvnSGbgfL1GJRJZXN2jno5sVMmY4EOVu6MEdf45i267zRjIvUZ/s1600/Slide38.PNG

Most of the time a Document can be considered complete and authentic simply because it was stored, received or retrieved via trusted pathway. A good example of this is the [secure communications built into the IHE ATNA profile](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) which includes three different solutions: Mutually-Authenticated-TLS, WS-Security, and S/MIME.  Another good example is the XDS Metadata attributes of 'hash' and 'size' that are built into the XDS family of profiles. These metadata values are carried independent of the document it-self; and thus there is a moderate level of assurance provided.

A [Document Digital Signature](http://wiki.ihe.net/index.php?title=DSG) is needed when these infrastructural mechanisms are not sufficient. This is usually only critical cases of  [high value or concern](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html). Some example use-cases:

- Attesting a document as true copy - to verify that the document being used is the same as the original document and has not been modified by error or intent. Also important to establish the signer and the reason for signature

- Attesting clinical information content - a physician may choose to review a document and apply a signature to attest the report is complete and correct.

- Attesting to a diagnostic report - a doctor may verify a diagnostic report and apply a signature across both the source data and the diagnostic report. This provides a proof that the original data has also not changed since the diagnosis was made.

- Co-Signatures and Counter-Signatures. This functionality allows for complex workflows that might need to have signatures in a specific order.

- Signing multiple documents. This functionality produces one signature that signs multiple documents.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh71QP2GN7C8T2y4Ly4qCnWRjj-NRr10ONDjlQ-RI8hO4HaZE_TbnrSIQUWMSWVbqGQcE9cYuc0IovkDHFK_C5MBTri9ZkoGLOkOt80cIxYcbRs7qQ8nFufuY2by9oP5BvJifVcukdfZcgC/s1600/Slide39.PNG

The Document Digital Signature profile uses a detatched signature to allow for the clinical document (the document being signed) to be manipulated independent from the signature. The Digital Signature is not specific to transport, nor does it rely on the signed document being in a specific transport. If the clinical document is managed in XDS, then an EHR will see the clinical document just like any other document. If this EHR needs to validate the signature it can detect the signature through the Metadata, and pull the Document Digital Signature as a document.

The Digital Signature document is an XML document following the W3C XML Signature specification using a W3C profile for signatures (XadES). IHE further profiles this to add a Purpose Of Signature, and Timestamp. Thus the Digital Signature document includes the signer credentials (X.509 certificate), timestamp of signing, purpose of signature, and a manifest of all the documents that are being signed with their individual hash value.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh_Sq7Mt5ORUHq0ge0NePO4H1p1kN1B51l_qxfbUpqk6xSraQygP2OQ1y0a7WC6Usb1_INn1R6gi2hJeQSI7HLAPfPNavA7HJkx7Q_s5IJ-etZ2wiZ_RaF6qo0B_t7cJmKiro2QQnEeoZP2/s1600/Slide40.PNG

Given that these Digital Signatures are potentially going to need to be validated 10-20 years later and thus need to be self contained and self describing. It is this reason that IHE has mandated that the Digital Signature include the  reason why the signature was done. These "Purpose of Signature" values come from a vocabulary defined in ASTM E1762 as show here. This allows for simple author signatures, but also more complex relationships to the signature such as validation signature, witness signature, addendum signature, and timestamp signature.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicUwTg30UdtkWcQL908PZcxLjRvdd0bR5SG_ROyOS0nUcvoeD9-VJglBs2-UufWJS-ZhyunchoYBb9mXVFVSOyEOnjuFsTzmFXbH-QUXBoT7ouha-FCsNGJUcjSd5mTRFpdOl8TS2cwS9u/s1600/Slide41.PNG

The result looks a little like this. The original document is mostly unmodified except that it has an association type "Signed".

The Signature Document contains the Who, When, and Why; along with the list of items that are signed with their individual hash codes. The whole thing is signed to protect it over time. In the case where these documents are managed in XDS, they both are registered as independent documents with the specific associations. This same mechanism is used for XDM, XDR, and XCA. Where the transport is some other method, the profile does not define how the two documents are managed.

**References**

- Status: Trial Implementation

- [IHE ITI Supplement â€“ Document Digital Signature](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_Digital_Signature-2009-08-10.pdf)

- August  2009

- Standards Used

- [W3C XML Signature](http://www.w3.org/TR/xmldsig-core/)

- [XadES profile](http://www.w3.org/TR/XAdES/)

- [ASTM E1762 - Purpose of Signature](http://www.astm.org/Standards/E1762.htm)

**Additional Comments**

[DSG](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_Digital_Signature-2009-08-10.pdf) - A profile of XML-Digital Signatures to provide long-term signature across a 'document'

- Can sign any document type. Not limited to XML type documents such as CDA

- Signature document is created that is an XML-Digital Signature blob

- Original document to be signed is signed by 'reference'.

- Encapsulation is not a bad thing, but it does make the original document harder to get at. Especially if that original document is not XML based

- Signature by reference allows the original document to continue to be accessed normally by applications that don't need to validate he signature. While having the signature present for those applications that do need it.

- The digital signature includes the Date/Time of the signature. Assuming trustable date/time

- The digital signature includes the certificate of the signer

- Note that signatures need to be valid for decades. Which brings up interesting certificate management issues not addressed.

- The digital signature includes the reason for the signature. Why was it signed? What does the signature mean?

- XDS Metadata shows that the signature document is in a 'signs' relationship to the original document

- This allows for finding the signature from a document, and finding the document from the signature

- Works for XDS, XDM, XDR, XCA

- Might work for other environments as well. The main thing that must happen is for there to be a way to dereference the document ID number found in the digital signature document to get to the document that is being signed.

- Might be future work to have an encapsulated flavor

- USA Regulation from FDA that explains Digital Signature from Electronic Signature - [21 CFR Part 11](http://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfcfr/cfrsearch.cfm?cfrpart=11)

-

- (a) The regulations in this part set forth the criteria under which the agency considers electronic records, electronic signatures, and handwritten signatures executed to electronic records to be trustworthy, reliable, and generally equivalent to paper records and handwritten signatures executed on paper.

- (b) This part applies to records in electronic form that are created, modified, maintained, archived, retrieved, or transmitted, under any records requirements set forth in agency regulations. This part also applies to electronic records submitted to the agency under requirements of the Federal Food, Drug, and Cosmetic Act and the Public Health Service Act, even if such records are not specifically identified in agency regulations. However, this part does not apply to paper records that are, or have been, transmitted by electronic means.

- USA (DEA) Regulation update for [electronic prescribing of Schedule II drugs](http://www.deadiversion.usdoj.gov/ecomm/e_rx/faq/faq.htm)

- Clearly a high value use-case that should be able to justify the overhead of digital signatures infrastructure.

- See: **[Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)**

**Back links**

This is part of a blog presentation of the IHE Privacy and Security Profiles Overview:

- [Introduction to IHE impact on Meaningful Use](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html)

- [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [This Page](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

