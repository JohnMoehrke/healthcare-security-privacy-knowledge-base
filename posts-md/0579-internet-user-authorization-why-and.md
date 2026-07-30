# Internet User Authorization: why and where

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/06/internet-user-authorization-why-and.html
Published: 2013-06-24T14:44:00.002Z
Updated: 2013-06-24T14:44:32.790Z
Author: John Moehrke

---

User identity, authentication, and the userâ€™s authorization given to applications; are a hot topic in security and privacy.  The latest darling on the block is oAuth, championed by Google, Facebook, Twitter, LinkedIn, Salesforce.com, and Amazon.

This technology has just been profiled by IHE in the Internet User Authorization (IUA) profile that  is out for public comment right now. [http://www.ihe.net/Technical_Framework/public_comment.cfm#IT](http://www.ihe.net/Technical_Framework/public_comment.cfm#IT)

**oAuth is good for:**

This technology specification has some advantages over others, but mostly in the space of:

- Internet facing web services

- Web services available to the public

- Applications that are installed on mobile devices using internet facing web services

- Functionality that interact with social networking

- Functionality that can utilize identity and authentication managed elsewhere

- Web Browser or RESTful API

This does not mean that it is good for everything, nor that it is limited to these functionality. It is just good to understand where a technology fits best.

Both SAML and oAuth act rather similarly from a browser experience, although oAuth has a functionality that doesn't exist in SAML. I oAuth the authenticated user can endorse an application (mobile app or web-service) as having the authority of the user. That is the user can delegate their identity to an application, that can use that identity transparently in the background. This also comes with the ability of the user to revoke that authority. It is this functionality that differentiates oAuth.

SAML is still a better solution for:

- Backend communications that need a user identity

- Business-to-Business communications

- Federation of Identity

- Federation of Access  Control decision points

- When the Identity Provider is Active Directory â€“ Active Directory Federation Services

- SOAP web-services, although supported on Web Browser and RESTful API

It is more likely that an organization will host a Active Directory for their users and enable Active Directory Federation Services exposing SAML Assertions; than they will use oAuth. This might be a maturity thing that changes over time, or it might be a long term reality. SAML Assertions are generally seen as more business focused, where oAuth is more consumer focused.

I have covered this a bit more in [What User Authentication to use?](http://healthcaresecprivacy.blogspot.com/2012/06/what-user-authentication-to-use.html)

**IUA --> SAML + oAuth**

The IHE IUA profile profiled a join between these two worlds. An Option in the IUA profile utilizes an IETF draft rfc that defines how to carry SAML Assertions within the  oAuth infrastructure. Thus bringing together the benefits of both, although bringing along baggage that might be seen as the combination of the negatives.

The IUA profile is truly just an IHE profile. It only strives to profile the underlying standard to meet Heathcare needs. It is NOT a tutorial on how to use oAuth, or how to write your code, or how to configure a directory. These are all well documented today, and/or are opportunities for others to fill in. The IHE profile is simply taking the needs of healthcare and showing how to utilize oAuth to achieve that.

It recognizes the default oAuth use of bearer tokens, which are really only useful in the case where the oAuth token issuer is the same organization as the web resource being approached. This is because a bearer token is opaque and thus means the web resource gets no information about the user, the access control decision must be made totally at the oAuth token issuing. This is an okay solution, but didn't really enable much in the way of Interoperability. So IHE acknowledged this mode and allows it, but doesn't really utilize it in the profile.

The IUA profile primarily used JWT token types. These token types are readable, as they are encoded using JSON attribute encoding. The IUA profile shows how to carry the typical healthcare specific information within this package: User Role, Purpose Of Use, etc.

And Lastly the IUA profile added an option that uses an IETF draft for carrying a SAML assertion. In the case of IUA, this SAML assertion is profiled by XUA. Thus this is an encapsulation of a SAML assertion inside oAuth : IUA(XUA).

Public comment is open until July 3rd. Please get your comments in.

References:

- [IHE efforts in RESTful security](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)

- [IHE-IUA - Internet User Authentication for HTTP profiles](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)

- [Identity Proofing and Authentication -- Patient vs Provider](http://healthcaresecprivacy.blogspot.com/2012/10/identity-proofing-and-authentication.html)

- [Level setting on Level of Assurance](http://healthcaresecprivacy.blogspot.com/2012/09/level-setting-on-level-of-assurance.html)

- [Advanced Access Controls to support sensitive health topics](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html) â€“ a simple solution to sensitive health.

- [Direct addresses- Trusted vs Trustable](http://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html)

- [Identity - - Proofing](http://healthcaresecprivacy.blogspot.com/2012/08/identity-proofing.html)

- [The Emperor has no clothes - De-Identification and User Provisioning](http://healthcaresecprivacy.blogspot.com/2012/08/the-emperor-has-no-cloths-de.html)

- [What User Authentication to use?](http://healthcaresecprivacy.blogspot.com/2012/06/what-user-authentication-to-use.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [Healthcare use of Identity Federation](http://healthcaresecprivacy.blogspot.com/2010/07/healthcare-use-of-identity-federation.html)

- [Federated ID is not a universal ID](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)

- [Separation of Layers: Security Error Codes](http://healthcaresecprivacy.blogspot.com/2011/04/separation-of-layers-security-error.html)

- [Authentication and Level of Assurance](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html)

