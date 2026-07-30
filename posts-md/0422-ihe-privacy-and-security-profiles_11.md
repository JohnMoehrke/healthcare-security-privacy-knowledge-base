# IHE - Privacy and Security Profiles - Miscellaneous

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html
Published: 2011-08-11T13:17:00.003Z
Updated: 2012-12-31T03:55:27.831Z
Author: John Moehrke

---

There are other profiles, white papers, and governance that is important to Privacy and Security from the IHE perspective.

[Personnel White Pages (PWP)](http://wiki.ihe.net/index.php?title=Personnel_White_Pages) and[Healthcare Provider Directory (HPD)](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_HPD_Rev1-1_TI_2010-08-10.pdf) are covered by a different Webinar. These profiles are primarily focused on delivering attributes about Individual Healthcare Providers, Healthcare Provider Organizations, and the workforce inside a Healthcare Provider organization. These profiles are based on a widely deployed Directory standard used in all industries, [LDAP v3](http://en.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol), specializing them only where healthcare have special needs. These profiles can assist Security and Privacy through their ability to uniquely and positively identify an individual, provide attributes about an individual, and can be used to authenticate users.

A new profile under development is the[Document Encryption (DEN) Supplement](http://wiki.ihe.net/index.php?title=Document_Encryption_-_Discussion). This supplement contains a comprehensive analysis of encryption needs and identifies two gaps in existing Profiles. It then fills these gaps through creating a transport agnostic document encryption and adds encryption on XDM media.

**IHE Governance that considers security during profile development**IHE has instantiated [a process to be used by all IHE domains](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_Cookbook_2008-11-10.pdf) when they develop new Profiles. This process utilizes risk assessment methodology to identify unique security and privacy risks that would need to be mitigated by the profile through some requirements or are identified to be addressed by system development or system deployment. The profile should include "[Security Considerations](http://wiki.ihe.net/index.php?title=Cookbook_for_Security_Considerations)" sections in Volume 1 that are profile wide, and in Volume 2/3 to cover technical requirements at the transaction level.

For example some profiles will recommend the use of the Audit Trail and Node Authentication (ATNA) profile, others will require it.  Often times the profile will include specific instructions for accurately encoding the Audit Message.

**IHE profiles that leverage De-Identification and Pseudonymization**

IHE is developing a handbook that will instruct IHE profile writers that want to leverage De-Identificationa and/or Pseudonymization. These instructions leverage existing standards and existing knowledge, and set up a specific process to follow when developing a profile. There has not yet been a public comment on this paper.

**Additional Comments**

- Document Encryption (DEN) - new profile being worked on this year - Encryption of documents and/or XDM

- Because this is under development the details are yet to be written

- Document encryption has favor as it would be transport agnostic, but is unclear the usefulness of this for long-term-storage usecases like XDS and XCA.

- XDM encryption would likely leverage the e-Mail option that exists today

- The e-Mail option uses S/MIME to secure the ZIP of the XDM file-system

- The modification from existing profile would be to explain how to save the S/MIME message as a file rather than delivering it over SMTP

- This file would simply be a S/MIME message, thus protected with whatever the S/MIME protections used.

- De-Identification handbook - this is NOT a profile, but is a document being written this year.

- Will be a procedure document that explains how one would evaluate the requirements for a De-Identification scheme specific to a desired use-case

- Would leverage De-Identification and Pseudonymization

- See [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html) and [Redaction and Clinical Documentation](http://healthcaresecprivacy.blogspot.com/2010/08/redaction-and-clinical-documentation.html)

- Directories

- [A broadly usable HIE Directory](http://healthcaresecprivacy.blogspot.com/2011/05/broadly-usable-hie-directory.html)

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

- [Healthcare Provider Directories](http://healthcaresecprivacy.blogspot.com/2010/08/healthcare-provider-directories.html) Profile

- [Healthcare Provider Directories -- Lets be Careful](http://healthcaresecprivacy.blogspot.com/2010/10/healthcare-provider-directories-lets-be.html)

- [Authentication and Level of Assurance](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html)

- [Healthcare use of Identity Federation](http://healthcaresecprivacy.blogspot.com/2010/07/healthcare-use-of-identity-federation.html)

- [Federated ID is not a universal ID](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)

- Risk Assessment

- [Cookbook: Preparing the IHE Profile Security Section](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_Cookbook_2008-11-10.pdf) - Revised 2008-11-10

- [How to Write Secure Interoperability Standards](http://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html)

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

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [This Page](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

