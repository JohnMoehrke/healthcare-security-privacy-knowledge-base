# IHE - Privacy and Security Profiles - Document Encryption

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html
Published: 2012-12-31T03:48:00.001Z
Updated: 2012-12-31T04:08:34.911Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiHWMzqwEGKKD-NdjFJuyz3EATDqqI4_8Hf2Rfr95_-9vdm6wJDtwFJ2P7aJ_Hz5S6aMJGV_Og2jEXWVGG0GGr8oUOZJgiWRDOgwLBTaY1idPFQltgXvy2fcqzkmYuSf_qJTC2GmX851PA_/s1600/Slide54-764557.PNG

IHE Document Encryption supplement includes two more ways to encrypt documents.

- There is a method included for encrypting just a single Document that can be used to encrypt any document type, and thus be carried on any transport. This Encrypted Document can be carried using XDS/XCA/XDR/XDM, but may also be carried by any other means (e.g. HL7  MDM).

- The second method is applied to XDM physical media. With the XDM encrypted media the whole XDM content and structure is encapsulated in an encryption envelop thus fully enveloping all the content that would be transferred on USB-Memory, CD-ROM, or any other media type.

These new methods of encryption are complementary to IHE-ATNA, XDM e-mail, and IHE-Radiology PDI Privacy option. The additional new use-cases are

- Media to media transfer

- Patient carried media for medical records clerk import

- Unanticipated work-flows where media is used without knowing where it might be needed

- Clinical trial where transportation of the content may be by many different transport mechanisms over time

- Multiple recipients of secure document

- Sharing with receivers only partially known apriory, a group or a role

- Encryption of some documents in a submission set

**Encrypted Document Content**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3rRJMhLfz4xYisKAuGRtGHNs62GlTzujWrW36JdnKRW5z5JlJd0QDxuR1PV1W-aKXtgS9KAngLAIvqWvJVzamsSXPp07ADusIHt8ibAYbsz9qTXwXPu1q71Yl-Umhnqv3mQ-uccmtmc4m/s1600/Slide55-766380.PNGThe Content Profile in the DEN supplement defines how to encrypt a Document in a way that is independent of transport. There are defined ways to handle the XDS metadata when XDS metadata is used.

There are multiple key management methods to support a wide number of use-cases. The choice of key system used is defined by the Content Creator (the creator of the encrypted content). The movement of the key from the Content Creator to the Content Consumer is not defined, there are many ways that this can be done. The movement of the key should be done with care.

The Original document is encapsulated inside the encryption envelope, thus fully subsumed by the Encrypted Document object.

The Encryption Document is made up of a CMS (Cryptographic Message Syntax) [aka PKCS#7] envelope, MIME-header to define the content, and the encrypted Original document. Note that CMS is the core protocol used in S/MIME (Secure email), the core of the USA/ONC Direct Project.

**XD* Metadata ramifications of Encrypted Document**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgVNUQboiKc50EqnUvX4c2vwaM0qhp7nFWTlC3icz86LegUtHK7CGl2mhyphenhyphenTmsWXhr6lJxMo5okb0_iW_92E-uf0mo7x5Qnw2RQmKwrn4mpoxqBdKIoQSglKGVBeaZ9chxM3WTPJbCdvM_Fu/s1600/Slide56-768355.PNG

When an Encrypted Document is transported using XDS/XCA/XDR/XDM, most XDS Metadata need not be changed.

There may be other logic (De-Identification) that may choose to change these metadata values: such as blinding, obfuscating, or pseudonym; but these decisions are outside of the scope of the DEN profile. (See the forthcoming IHE ITI De-Identification Handbook)

The hash, mimeType, and size values MUST be changed to reflect the actual Encrypted Document. The hash and size must represent the encrypted document, as these are defined in XDS metadata as representing the document stored in the Repository. The mimeType also must represent the encrypted document, which is now in the format of â€˜application/pkcs7-mimeâ€™.

When using a non-IHE transport one might need to have a file-extension which would be â€œ.p7mâ€ which is recognized by many applications

**Encrypted XDM Media**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgUaDuzSoro3Z1cFvRtgGAsKNX4AjhqX7ifVSerRgbcT8ThbC2iqpoRhAabIRPjiqsYVED8fB1JpVkuYhxG-TE0C1r3ckVqHqXmhkpSS8kgGBhk2zmWu9NV92X_KISsyrsqOhd-S_cSlEOD/s1600/Slide57-770167.PNGThe DEN supplement also adds a Media Encryption option for XDM. This is a new option on the XDM profile that produces a fully encrypted XDM media. The Media directory structure is first ZIPPED, just as if preparing for the e-mail option. The zipped file is then encrypted using the same mechanism as defined for the  Document Content; that is to encapsulate using CMS encryption. The result is a file that stats with XDMME, 3 digits, and ends in â€˜.pk7â€™

**Encryption Key Management**

Recipients must support all key management methods to support the widest use-cases.

- Digital certificates and private key utilize PKI. The IHE PWP and HPD profiles support certificate distribution and may be leveraged for some use-cases.

- Shared symmetric key should be used only where there is some secure means to distribute the symmetric key. For example through some access control service that can be used to deliver the symmetric key upon authorized request for key retrieval.

- Password-based key derivation must use a password based key derivation algorithm (PBKDF2 â€“ RFC3211) to be sure to generate keys of appropriate strength. Poor password choice is still susceptible to brute force attack.

The biggest risk to presented is that the encrypted objects can be copied and brute force attacks used without monitoring and alerts. Encrypted documents and media should still be handled carefully.

**Standards Used**

- Key Properties

- Encryption at Document or Media (XDM)

- Flexible Key Management (PKI, Shared-Key, Password)

- Complementary with other (ATNA, XDM, and Document)

- Standards

- Cryptographic Message Syntax (CMS) [RFC5652]

- MIME [RFC2045]

- bulk encryption: AES 128, 196, 256 in CBC mode

- digest: SHA256

- signature:          RSA

- key encryption: RSA (certificate),AES (shared key),AES + PBKDF2 (password)

**References**

- Status: Trial Implementation

- IHE ITI Technical Framework

- Vol 1: Section 32 â€“ Document Encryption

- Vol 3: Section 5.3 â€“ Encrypted Document Content

- Options added to other transactions

- Vol 1: Section 16.2 - Add Encrypted XDM option

- Vol 2b:  Section 3.32 â€“ Add encrypted XDM

**Additional Information**

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

**
**
**Back links**

This is part of a blog presentation of the IHE Privacy and Security Profiles Overview:

- [Introduction to IHE impact on Meaningful Use](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html)

- [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- This Page

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

