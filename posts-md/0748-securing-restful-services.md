# Securing RESTful services

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/09/securing-restful-services.html
Published: 2011-09-29T13:17:00Z
Updated: 2011-09-29T13:17:00.214Z
Author: John Moehrke

---

What is meant by RESTful? Ok, that is an old one; given that there is no such standard as REST. My understanding, RESTful is simply the philosophy of using HTTP built in command set PUT/GET/POST/DELETE (aka Create, Read, Update, Delete â€“ or by others RLUS - Read, Locate, and Update Service). Thus the transport, encoding and command set are fixed. The theory is that you as a programmer then just focus on the special encoding above this command set, for example what is your query parameters and what is the result to look like. Thus freeing you from worrying about transport or command set, and ... security.

As far as securing RESTful services;[IHE-ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) already says how to do that â€“ Mutually Authenticated TLS. I talk at length about this in [Securing mHealth - the role of IHE profiles](http://healthcaresecprivacy.blogspot.com/2011/09/securing-mhealth-role-of-ihe-profiles.html), specifically about the operational reality of using ATNA. IHE ATNA takes care of many risks, and does provide system authentication. Sometimes knowing the requesting system, is enough to know that you can trust that system would only ask for information that it knows the user is authorized to get. Surely using ATNA the service can trust that the client will include the user and purpose in the audit message recorded at the client side, because ATNA requires security audit logging.

What I want to address is deeper than simple HTTPS -- or even full Mutually-Authenticated-TLS. I want to address user and patient based access controls to very sensitive health information. Today RESTful is used mostly to access non-sensitive information. It might be important information, or simply might be maps, earthquakes, weather, etc. Most uses of RESTful are not trying to access as sensitive of information as healthcare information, certainly not information that can have privacy policies (Consents) that rule so finely over the data. Many are asking for RESTful to be used to access fully identified clinical information, and some are even asking that it be used to create or change this clinical information - such as the [IHE Profile Proposal for a RESTful interface to XDS](http://healthcaresecprivacy.blogspot.com/2011/09/securing-mhealth-role-of-ihe-profiles.html). These are the issues that I am trying to figure out how to equally secure [RESTful vs SOAP](http://healthcaresecprivacy.blogspot.com/2009/12/web-services-restful-vs-soap.html).

In SOAP we have well defined ways to communicate the security context. IHE profiled the use of [SAML assertion (XUA)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html): who the user is, what their roles are, what they intend to use the data for, and any authorizations they hold. I cover this in the [Bloginar on XUA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html). With SOAP based web-services this all comes along in the security layer built into SOAP, the WS-Security layer. RESTful doesn't have this layer, or at least not this well defined.

As to providing user identity, there is some hope, but no clear hope. Yes there is a Kerberos for HTTP (documented in [EUA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)). Kerberos has issues when being used beyond a constrained environment, so it is not as suitable for HIE use.

Yes you  can use SAML over HTTP. This is not documented in IHE as it is not implemented consistently in toolkits --- but this is used today for browser interactions. For example inside of GE all user authentication uses SAML identities mostly through the [SAML "Browser SSO Profile"](http://en.wikipedia.org/wiki/SAML_2.0#Web_Browser_SSO_Profile), thus making it easy to work with external parties such as travel reservations. This method doesn't work great for a system-to-system API.  The good news here is that the OASIS committee that handles SAML is working on this very problem now.

Most RESTful people want to use OpenID now days; which is a good choice for last-mile API; It just doesn't support the necessary user context attributes (role, purpose of use, authentication type) that access to sensitive information really needs. For this the OpenID community adds OAuth, which is fast developing but not mature. OAuth 2.0 looks really good in this camp.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2aGd-MF8ESAT3XRgICFvCYtCrQyEWH8z6KNAiM_g-WmPzG_iQ5sIDQNPoNZbNQtRcQCH85GlwO0ooqrQ1ny0oZsdACIUWzd-XhMCFSy_Xcnsyse2G0_rkA8GFfPDu8QplW1wQF-mHdNjV/s1600/14328503317_GGgx5.jpg

The worst choice for user identity is to use an inline HTML form. This might work for interacting with a human, but as a programming interface it is very hard to work with. This solution locks you into one method of authentication, and one centrally managed user database. Thus proliferating the post-it note problem.

I hope to uncover the 'right' way to specify a RESTful service API for accessing highly sensitive healthcare information. I am not sure I can provide as good a security layer as is provided today with SOAP, but I am hopeful and open to suggestion. IHE will try to figure out all the possibilities, and all the operational environments. Much of the documentation I find is specific to one platform or the other.

I suspect that we will use something like OpenID + OAuth on the RESTful side, use WS-Trust to convert these tokens in the proxy service, so that on the backend we can use SAML to interact with the XDS or XCA backbone. I think this is a reasonable solution. I do expect that a RESTful API will be deployed for a specific use. It might be for the use by a large healthcare organization, or by a PHR vendor, or by a HIE; but the point is that this is an API into XDS/XCA that is hosted for a very specific purpose. Thus the very specirfic purpose can scope the security context well enough to make it easy on the Browser side, while satisfying the needs on the backend.

We could ignore the problem, but then what would "App" developers do? Guess at what they need to have implemented? Even a bad single choice is better than no choice. Even if we tell the App developers to include HTTP Basic Authentication, we will be sure that they can at least do that. Thus only hoping that they have thought beyond the minimal necessary to be compliant with the profile.

Please help. Please provide your choice. Please provide your environmental problem. The more information we have at the start, the better choices can be made.

