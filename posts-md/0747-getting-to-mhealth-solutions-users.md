# getting to mHealth solutions - Users

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-users.html
Published: 2013-07-19T13:48:00.001Z
Updated: 2013-07-19T13:48:48.972Z
Author: John Moehrke

---

How do we 'get to' mHealth solutions?

What is [mHealth](http://healthcaresecprivacy.blogspot.com/2013/04/mhealth-solution.html)? It is clearly [almost anything you want it to be](http://healthcaresecprivacy.blogspot.com/2013/04/mhealth-solution.html). For this article I will consider mHealth the ability to access Health Information on mobile devices. This might be a health professional treating a patient, or this might be the patient accessing their own data. In both of these use-cases one has highly sensitive health information and some authorized access. The biggest difference here is the Access Control Policy, I will show that treating this as a policy allows the technology to mature at different rates.

I am going to break it down in the following way. It is not the only way to deconstruct, but it works for the topics of Privacy, Security, and enabling technology.

a) How to authenticate users?

b) How to know who that user is?

c) How to do more complex access controls?

d) How to eliminate patient identity cross-referencing errors?

e) How to enable application developers to develop one application regardless of where the data is held?

Inside of this deconstruction I will speak about multiple aspects of Identity, Level of Assurance, Authorization, Consent, and Trust. These are different ways to deconstruct, but they are harder to explain the solution I will explain. They are going to get covered, just not as components of the outline.

First, Please use good design that includes Privacy and Security from the beginning. Bolting these concepts on later just doesn't work. That doesn't mean that these can't be modularized or architected as-a-service. In fact by defining functionality as services one gets great architecture that gives great flexibility. This is indeed included below. For basic security and privacy I recommend NIST.

-  [SP 800-146 Cloud Computing Synopsis and Recommendations](http://csrc.nist.gov/publications/PubsDrafts.html#SP-800-146).  does a really good job of outlining not just the technology, but also the operational and policy issues.  They have touched on issues I had never thought of. They do a really good job of explaining responsibilities between the cloud subscriber and the cloud provider. I highly recommend that people use this guide.

-  [SP 800-124](http://csrc.nist.gov/publications/nistpubs/800-124/SP800-124.pdf) Guidelines on Cell Phone and PDA Security

- [SP 800-111](http://csrc.nist.gov/publications/nistpubs/800-111/SP800-111.pdf) Guide to Storage Encryption Technologies for End User Devices

- [SP 800-53 - Catalog of Security and Privacy controls - technical, operational, physical, and management](http://csrc.nist.gov/publications/drafts/800-53-rev4/sp800-53-rev4-ipd.pdf)

- [SP 800-30 - Security Risk Assessment](http://csrc.nist.gov/publications/drafts/800-30-rev1/SP800-30-Rev1-ipd.pdf)

- [SP 800-144 - Guidelines on Security and Privacy in Public Cloud Computing](http://csrc.nist.gov/publications/nistpubs/800-144/SP800-144.pdf)

- [IR-7497 - Security Architecture Design Process for Health Information Exchanges (HIEs)](http://csrc.nist.gov/publications/nistir/ir7497/nistir-7497.pdf)

- [The rest of the NIST 800 Special Publications](http://csrc.nist.gov/publications/PubsSPs.html)

a) How to authenticate users?

Please do NOT create your own password database or user authentication scheme. Please treat the process of authenticating users as a service. You can implement that service your-self, and likely do need to do so for some of your users. By treating user authentication as a service you enable the user to have some choice. You enable combinations of services to work together, mashups. You abstract out the authentication technology so that it can be enhanced and strengthened as needed.

If you are creating applications by an organization for that organization, then SAML is the most likely solution. I am not going to cover SAML much here, but that isn't because it isn't the right solution sometimes. However SAML is best for organizations that want to enable identity federation (portability) while still holding control of those identities. When a new application needs identities then the SAML authority must be told about it. Thus the authorization of a new application is controlled by the SAML identity provider. This works well for businesses, as businesses tend to need business-agreements to be in place before applications really are allowed to do something.

If you  are creating applications for consumers, then oAuth is the most likely solution. Again, SAML might be, but might not. Both oAuth and SAML are technically very similar, as they are also technically similar to Kerberos and PKI. The differences between each of these is important and deliberate. What oAuth brings to a consumer marketspace is that the user is the one that controls authorizing a new application. This tips the administrative process around from SAML. In oAuth the user is given the choice of what authentication provider to use, the user is given the control to authorize an application, and also to remove authorization from that application. This is a very powerful concept. This is the "Authorization" that is part of oAuth, not to be confused with Role-Based-Access-Control or Privacy-Consents-and-Authorizations. These are related by not the same thing.

The user experience is best to explain. With oAuth, the user gets to choose what identity provider they will use (within some constraints described later). Typically when they first go to a web site that needs authentication, such as a social media or blog, they will be given the choice of identity providers to choose from. Choices like Google, Facebook, LinkedIn, Twitter, MySpace, Yahoo, or even SalesForce.com. When the user clicks on one of these, the web page 'from that site' is asked to authenticate the user and authorize the application you have. That Identity Provider does what ever it needs to to authenticate the user, this allows that site to use 2-factor authentication if it does that. This allows the Identity Provider to change authentication systems. Thus when a new authentication systems comes about the Identity Provider changes, not your application. Example is this year using a cellular phone SMS message became really popular as a second factor authentication, this is transparently added by for example Google authentication.

The user is asked if they want to Authorize the application that they just came from. They are given some information that your application provided. If they agree to Authorize your application, then you get a 'token' that can be used in various ways. If they don't agree then your application gets nothing. Really cool part is that the user can go back to their Identity Provider at anytime and REMOVE that Authorization. This is the Authorization that oAuth manages. This is not the same as Role-Based-Access-Control or Privacy-Consent-Authorization. I could see oAuth enabling these, but it isn't these.

At this point you have used out-of-the-box oAuth. You have not needed anything special for healthcare. But you don't know who the user actually is. You just know that each time this user comes to your application it will be verified by their Identity Provider as the same individual. This is good enough for most social networking or self-created content (blogs). All that these applications need to do is make sure that the same user comes back, and that others that are not that user can't get improper access. Thus simple oAuth can separate the 'same user' from 'everyone else'.

next up:

b) How to know who that user is?

c) How to do more complex access controls?

d) How to eliminate patient identity cross-referencing errors?

e) How to enable application developers to develop one application regardless of where the data is held?

For references see: [My Topics page](http://healthcaresecprivacy.blogspot.com/p/topics.html)

User Identity and Authentication

- [Internet User Authorization: why and where](http://healthcaresecprivacy.blogspot.com/2013/06/internet-user-authorization-why-and.html)

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

