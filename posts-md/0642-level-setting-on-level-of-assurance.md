# Level setting on Level of Assurance

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/09/level-setting-on-level-of-assurance.html
Published: 2012-09-27T14:44:00.001Z
Updated: 2012-09-27T14:44:27.849Z
Author: John Moehrke

---

Level-of-Assurance is NOT simple and can't be boiled down to 4 values. There is renewed excitement on the topic of Level of Assurance brings me back to a need to describe the fundamentals. The S&I Framework has projects on it, it also came up at the HL7 Security WG meeting. I look back in my blog and find [I covered this best in March of 2011](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html). The concepts are also covered in various articles (See References).

The fundamental that is important is that Level of Assurance applies at 2 abstractions. It is important that these two abstractions are recognized and independently managed:

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1HWkj5t-8KsSGCs8oeKARQY4fEfwC20hJry6rplxAos2093Dgu-BL8Ki_iGlB9fsFvK0DoHqnSiJ_IkDR5jZrmGDpVQzL0cfCGER1u2n3ub9JxkSDK9eeLhxl6hhHLuER1rp7QD4oiJdr/s1600/Slide33.PNG
- The Level of Assurance provided by the User Provisioning. That is how sure can we be that the identity represents the individual that it says that it represents.

- The Level of Assurance of the authenticated session. That is how sure can we be that the user logged on right now is the user that the identity represents.

In the case of (2) it is far easier to make a technical assessment of the level of assurance of the session authentication step. It is generally along a typical graph showing the types of authentication mechanisms, and how well those mechanisms are managed.

http://assets.amuniversal.com/cf774330896c012d63f500163e41dd5b?width=900.0

In the case of (1) there is very little technical aspects. Meaning that for (1) the Level of Assurance is almost completely a Policy and Procedure issue. There is high-level guidance provided by [(NIST) Special Publication 800-63](http://csrc.nist.gov/publications/nistpubs/800-63-1/SP-800-63-1.pdf). This sets up the 4 different classes of level-of-assurance. But it does NOT set specific level-of-assurance values. The reason is that actual level-of-assurance can only be defined when bound to specific Policies, Procedures, Physical environment, as well as technology. This is recognized by NIST, this is why they didnâ€™t define a vocabulary. This is also why you will not find a vocabulary anywhere.

In the world of PKI, the Level-Of-Assurance is defined by the Certificate Authority published document â€œCertificate Policyâ€. This is not very scaleable or reusable, so there is now an assignment to IANA to host a registry of Level-Of-Assurance policies. In this way there would be a registered URL that can be used as a Level-Of-Assurance vocabulary.

[RFC-6711 - An IANA Registry for Level of Assurance (LoA) Profiles](http://tools.ietf.org/html/rfc6711)

>
This document establishes an IANA registry for Level of Assurance (LoA) Profiles.  The registry is intended to be used as an aid to discovering such LoA definitions in protocols that use an LoA concept, including Security Assertion Markup Language (SAML) 2.0 and OpenID Connect.

**Conclusion:**

Don't expect that the NIST level-of-assurance model is executable and don't expect a standard to develop a simple vocabulary.

**References:**

- [Authentication and Level of Assurance](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html)

- [Identity - - Proofing](http://healthcaresecprivacy.blogspot.com/2012/08/identity-proofing.html)

- [Direct addresses- Trusted vs Trustable](http://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html)

- [The Emperor has no clothes - De-Identification and User Provisioning](http://healthcaresecprivacy.blogspot.com/2012/08/the-emperor-has-no-cloths-de.html)

- [What User Authentication to use?](http://healthcaresecprivacy.blogspot.com/2012/06/what-user-authentication-to-use.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [Healthcare use of Identity Federation](http://healthcaresecprivacy.blogspot.com/2010/07/healthcare-use-of-identity-federation.html)

- [Federated ID is not a universal ID](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)

- [Separation of Layers: Security Error Codes](http://healthcaresecprivacy.blogspot.com/2011/04/separation-of-layers-security-error.html)

