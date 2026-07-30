# IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html
Published: 2011-05-31T13:00:00.004Z
Updated: 2012-12-31T04:22:43.663Z
Author: John Moehrke

---

With the growth of communications between organizations there is a strong need to provide user identity, role assignment, and other claims about the context of the communication. These transactions are happening between different organizations that are otherwise competitors, and thus not likely that they will be able to agree on a [centralized user identity system like EUA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html). This communications between organizations is the space that the [Cross-Enterprise User Assertion (XUA)](http://wiki.ihe.net/index.php?title=Cross-Enterprise_User_Assertion_(XUA)) profile fills by using [Federated Identity](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html).

The initial use-cases that drove the creation of XUA is the Health Information Exchange built on the XDS and XCA profiles;  A Health Information Exchange model using a Discover and Retrieve exchange model needs the user identity inside the query or retrieve transaction to assure that the organization holding the data can get a [detailed audit log](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) and could enforce policies through [access controls](http://healthcaresecprivacy.blogspot.com/2011/03/access-controls-on-clinical-decision.html).

This diagram shows a typical implementation of an EHR (in white) accessing an HIE based XDS Registry (in black). The XUA Profile provides the orange functionality: X-Identity Provider creates the SAML Assertion given the User Authentication identity and EHR security context, the X-Service User inserts this SAML Assertion into the normal XDS Query Transaction, and on the XDS Registry the X-Service User (not shown) uses the SAML identity and includes that identity in the Audit log.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhqg5ZhCMP5mFR2ei7FqrKdBY_fN3HwRYknV6Y-SHzzfCusKA9Hdw2NZG7VC-qqEV5FQbmjKJ2TYfwucOlwWTnJzmsxHiv_BYJPPaNYnqlkfeXxoz2xI0Hli4tgGVOchGHFNhjYMMBtjI5Y/s1600/Slide32.PNG

The XUA profile is not limited to clinical users, it includes use-cases where the patient is participating in a Health Information Exchange, for example this diagram is identical for a [PHR as a peer on the HIE](http://healthcaresecprivacy.blogspot.com/2011/04/phr-as-equal-peer-on-hie.html). The XUA profile is also not limited to XDS profile, but is generic to Web-Services and thus can enable any  Web-Services transaction.

The XUA profile is a very thin profile that simply indicates that the [SAML 2.0 standard](http://www.oasis-open.org/committees/tc_home.php?wg_abbrev=security) includes a specification for an identity Assertion. These SAML Assertions are self-contained XML objects that can contain claims about the identity, attributes about the identity, and claims about the context.

The XUA Profile explains how to add a SAML identity assertion to a Web-Services (SOAP) transaction, in this way the XUA profile can be used to enable any Web-Services transaction. The method of adding SAML assertions to Web-Services is well known and already [profiled by the WS-I](http://www.ws-i.org/profiles/basicsecurityprofile-1.0.html), a general IT industry consortium that do profiling.  The SAML protocol does include transactions for retrieving and validating SAML assertions, but IHE recognized that these protocols are not the only legitimate way to obtain a SAML assertion for example the WS-Trust standard is more commonly used.

The XUA profile has had a few additional use-cases added to it as named options.

- User Role -- To support Role Based Access Control

- Consent / Authorization -- To support use-cases where the requesting party has explicit consent that they want to point at to assist the service

- Purpose Of Use -- Carry an indicator of what the reason for the transaction is and what will be done with the result

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1HWkj5t-8KsSGCs8oeKARQY4fEfwC20hJry6rplxAos2093Dgu-BL8Ki_iGlB9fsFvK0DoHqnSiJ_IkDR5jZrmGDpVQzL0cfCGER1u2n3ub9JxkSDK9eeLhxl6hhHLuER1rp7QD4oiJdr/s1600/Slide33.PNG

The SAML assertion does not carry a simple attribute, Level Of Assurance, such as described in [NIST SP800-63 â€œElectronic Authenticationâ€.](http://csrc.nist.gov/publications/nistpubs/800-63/SP800-63V1_0_2.pdf) This is because although the NIST specification identifies 4 levels there is still a need for specific Policy and Vocabulary definition.  The SAML assertion does carry an identifier of the method that was used to authenticate the user, outlined by oval in this diagram. From this identifier, of the method used to authenticate, the relying party can determine the relative Level of Assurance in the view of the relying party organization. The future might provide a Level Of Assurance vocabulary, but we don't have this right now.

**Resources**

- Status: Final Text

- [IHE ITI Technical Framework](http://www.ihe.net/Technical_Framework/index.cfm#IT)

- Vol 1: Section 13

- Vol 2b:  Section 3.40

- Standards Used

- [SAML 2.0 Identity Assertions](http://www.oasis-open.org/committees/tc_home.php?wg_abbrev=security)

- [Web-Services Security header](http://en.wikipedia.org/wiki/WS-Security)

- [WS-I Basic Security Profile](http://www.ws-i.org/profiles/basicsecurityprofile-1.0.html)

**Additional Comments**

[XUA](http://www.ihe.net/Technical_Framework/index.cfm#IT) - Very thin profile that simply says to use SAML Identity Assertions for authenticating users on Cross-Enterprise transactions

- This is the solution for the space where Kerberos doesn't work well, yet WS-Trust can be used to create a SAML assertion based on a Kerberos authentication

- SAML is both a standard for an XML way to describe a user and provide trust mechanisms of that data; and also a protocol. The protocol is not part of the XUA profile. It is ok, but not as important as the assertion

- WS-Trust is more commonly used to get and manipulate SAML Assertions.

- There is also good reason for a product that does its own user authentication to simply create SAML assertions w/o protocol

- See [- Federated ID is not a universal ID](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)and [IHE ITI XUA++ - Trial Implementation](http://healthcaresecprivacy.blogspot.com/2010/08/webinar-on-new-work-from-ihe-it.html) and [Separation of Layers: Security Error Codes](http://healthcaresecprivacy.blogspot.com/2011/04/separation-of-layers-security-error.html) and [Healthcare Access Controls standards landscape](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html)

**Back links**

This is part of a blog presentation of the IHE Privacy and Security Profiles Overview:

- [Introduction to IHE impact on Meaningful Use](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html)

- [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [This Page](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

