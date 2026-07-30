# IHE Encryption choices

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/01/ihe-encryption-choices.html
Published: 2013-01-01T16:17:00.003Z
Updated: 2013-01-01T16:17:43.217Z
Author: John Moehrke

---

IHE now has full coverage on how to Encrypt sensitive data.

The following table comes from the [IHE-Document Encryption (DEN)](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html) profile. It was created in that supplement as a way to verify the need for the parts of the DEN profile. This table recognizes that [IHE-ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) already covers most of the encryption needs, especially network transactions. However there is a need for encrypting a single Document at a time, and for encrypting XDM removable media. These needs are covered in the [DEN](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html) profile.

The following table uses a large â€œXâ€ to indicate the best solution, the solution that is recommended and optimal for that use-case. The use of â€œ(x)â€ is an indication of where there is support in a sub-optimal way; usually this choice is more complex and doesn't fully handle key management. Multiple solutions can be used as well. For example one can use Document Encryption, and also XDM media encryption.

Use-Case

[Doc Enc (CMS)](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

[XDM Media Enc (CMS)](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

[ATNA (TLS)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

[ATNA (WS-Sec)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

[XDM](http://wiki.ihe.net/index.php?title=XDM)
Email option

[(s/mime)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

[PDI privacy option (CMS)](http://wiki.ihe.net/index.php?title=Portable_Data_for_Imaging)

Point-to-point network exchange between machines

(x)

X

(x)

Network exchange between machines in different trust domains

(x)

X

(x)

Online exchange of documents where partially trusted intermediaries are necessary

X

X

Exchange of medical documents using person-to-person Email

(x)

X

Media data (DICOM) exchange between healthcare enterprises using physical media

(x)

(x)

X

Exchange health records using media

X

X

(x)

Media to media transfer

X

(x)

Patient Carried or

Medical Records File clerk import

X

X

Unanticipated work-flows

X

(x)

Clinical trial

X

X

Multiple recipients of secure document

X

X

Sharing with receivers only partially known a priori, a group or a role

X

X

(x)

Partial encrypted XDM submission set

X

Note that there are other uses of encryption, but they fall outside the scope of Interoperability. For example there is Whole-Hard-Drive-Encryption, but in that case the same software that is encrypting is decrypting and thus there isn't an Interoperability need. Yes there still is a need to use good quality encryption algorithms, but this need is based on staying away from bad encryption algorithms, which is a standards issue but not an interoperability standards issue. Any whole-hard-drive-encryption solution will work just fine as long as it uses quality encryption algorithms. This is different than the need to have an interoperable solution for removable media, which the new [DEN profile](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html) provides.

**Additional Information**

- http://healthcaresecprivacy.blogspot.com/2012/02/encryption-is-like-penicillin.html[IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [Encryption is like Penicillin](http://healthcaresecprivacy.blogspot.com/2012/02/encryption-is-like-penicillin.html)

- [Critical aspects of Documents vs Messages or Elements](http://healthcaresecprivacy.blogspot.com/2011/10/critical-aspects-of-documents-vs.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Document Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html)

- [Securing RESTful services](http://healthcaresecprivacy.blogspot.com/2011/09/securing-restful-services.html)

- [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [Meaningful Use Stage 2 :: SHA-1 vs SHA-2](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-sha-1-vs-sha-2.html)

- [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

- [S/MIME vs TLS -- Two great solutions for different architectures](http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html)

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

