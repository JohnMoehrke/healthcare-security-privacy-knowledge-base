# Security Considerations: Healthcare RESTful Resource specifications

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html
Published: 2013-01-25T13:30:00Z
Updated: 2013-01-25T13:30:04.691Z
Author: John Moehrke

---

This topic came up last week at the HL7 meeting, that is, just how much should [FHIR](http://healthcaresecprivacy.blogspot.com/2012/09/the-magic-of-fhir.html)say about security. Those of us that have thought about this quite a bit, including many who have actually coded the RESTful services; come down on the side of : There is very little that the RESTful Resource specifications (FHIR, DICOM-WADO-RS, IHE-MHD, etc) should say, but they should recommend robust implementations that have wide potential use of the security layer built into the transport, specifically HTTP(S).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgctCCPTpqAUmoXR8IjVdb-e5oXis1ycclW-MLNpxvQhh3G0hqOC8dXAO1wvNe4DYYgpl7tLBQA7ofITsGukb5_bXhH6OYKRR4ZuL8qrNlqeGXET6tMn7moCuyegoVPu4YYacqHLa29lo1Z/s1600/image006-744130.png

I recommend everyone that wants to help develop this to get involved in the [IHE-IUA profiling effort](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html). There is actually much to be said, but it can  be said in one place and re-used by all those that are working hard on making good Healthcare RESTful Resource definitions.

Shown pictorially as the RED layer

**The Medium Length answer isâ€¦ **

There is good stuff already available, use it

**a)** Use HTTPS to protect against most network risks (encryption, hashing, server authentication), with proper certificate validation including revocation checking

**b)** Have the ability to use Client Certificates on HTTPS to close the client side risks and identify the client system to the server, with proper certificate validation including revocation checking

**c)** Have the ability to leverage HTTP authentication mechanisms.

**c.1)** Internal to an organization the use of [Kerberos](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)(Microsoft Active Directory) is common. This is profiled in [IHE as EUA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

**c.2)** Between large organizations the use of [SAML](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)is a mature Identity Federation. This is mostly profiled in [IHE as XUA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html), but needs to leverage the SAML-SSO-PROFILE from OASIS for browsers.

**c.3)** In cases where the user is more mobile, or less associated with a large organization, or simply using more lightweight systems, or where using third-party services/applications, or etcâ€¦ This is the space that the [IHE IUA profile is looking to fill](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html).  This profile likely will leverage oAuth 2.0; but it is in development now. (The subject of the e-mail that started this thread)

**d)** [Audit Logging](http://healthcaresecprivacy.blogspot.com/2013/01/simplifying-security-audit-standards.html) through either the FHIR SecurityEvent, or [IHE-ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) should be encouraged.

There are various other things that will come together after we get this far. Much of this advanced stuff is actually inside client or server and thus not needing to be exposed in a RESTful Resource specification (like [FHIR](http://healthcaresecprivacy.blogspot.com/2012/09/the-magic-of-fhir.html)). But some of the work we are doing now in the HL7 Security WG will impact user identities, data tagging, and obligations on release of data.

**The longer answer, which is really the start of the security project:**

The HL7 Security WG has a handbook published for HL7 Standards development that directs the standards developers on how to consider Security (and Privacy). [http://wiki.hl7.org/index.php?title=Cookbook_for_Security_Considerations](http://wiki.hl7.org/index.php?title=Cookbook_for_Security_Considerations) I will be using this process for FHIR, while at the same time doing it for IHE, DICOM, and others. Thus I intend on addressing many use-cases as I can.

I suggest we apply security/privacy in phases. Generally speaking there is little impact on FHIR in the first few phases, where applying Security in the Transport layer. For the vast majority of use-cases one simply plugs in common HTTP based security. Further the choices in HTTP based security can be done very late in the implementation phases with little impact on applications, provided they use mature HTTP stacks. Just like FHIR is leveraging as much as possible from common toolkits, we should do the same for Security.

But as we mature our use of RESTful Resources and fine-grained security we will need to get more involved. This because the more fine-grained security is not commonly used in non-healthcare REST use-cases. It isn't a total void either, so we will use existing standards. We just will eventually need to get more detailed. Much of this more detailed work is being modeled now in the HL7 Security WG. Ultimately we will need to define security-tags that could be carried on every resource, content encryption, partial encryption, non-repudiation, etc.

**Consent Management **

On a related note, but not completely off base,  I would like to see a â€œ[Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)â€ resource, modeled off of a combination of the HL7  SOA Access Control Service, and the HL7 CDA Consent Directive. We should start basic. Not because it is hard, but because there are far more impactful risks to worry about first. Using risk assessment to guide our priorities.

**Simple to Start**

First, letâ€™s focus on HTTP based REST. For most of the RESTful work going on now it is using HTTP, FHIR has visions of going beyond HTTP.  I am not trying to exclude the other models, just trying to have a coordinate analysis. The other transports that are envisioned for FHIR will be able to leverage much, but will also have some differences.

Initially one just deals with the high-impact risks to security, that is risks to â€œConfidentialityâ€, â€œIntegrityâ€, and â€œAvailabilityâ€.  The high-impacting risks are easy to deal with in HTTP, one just applies HTTPS. Normal HTTPS doesn't deal with all of the high-impact risks, but is a foundational starting point. There are alternatives, but those alternatives usually come into a system when dealing with fine-grained risks and rights. For the sake of our efforts, lets start simple.

**Encryption, Hashing, and Server Authentication**

HTTPS is not without controversy, we should warn the users of FHIR that they should be careful about validating the server certificate. Normal browser behavior, and some HTTP toolkits, donâ€™t do a good enough job here. Such as they donâ€™t check revocation lists, they accept a far too wide list of Certificate Authorities, etc. This is a RISK that we identify, but donâ€™t mandate any solution, as the solution would be a policy decision. But we do identify it as a risk and we do flow that risk down to the next level of design. This is a great example of what the Security WG recommends in the Security Considerations Cookbook.

**Client  Authentication**

I would like to also recognize the risk that the service side doesn't know what system is requesting the resource when simply using HTTPS (as HTTPS only authenticates the service, not the client). There are some alternatives. These alternatives are part of the [IHE Internet User Authorization (IUA)](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html). Many of these alternatives are again totally transparent to FHIR as a specification, the more transparent we can make [IUA](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)the better. [IUA](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)is not trying to replace the most basic solutions.

**High level alternatives (various combinations and effectivity)**

- Authenticate the system

- Authenticate the software

- Authenticate the user

Ultimately we are trying to figure out

- If the transaction should happen, that is to test Access Controls

- to record that the transaction was allowed or denied and why, that is to [record Audit Log](http://healthcaresecprivacy.blogspot.com/2013/01/simplifying-security-audit-standards.html)

**Client System Authentication**

Some will find the most easy solution is to use [Client side Certificate Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html). Called Mutual-Authentication, and the core protocol in the [IHE-ATNA profile](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html). This is technically easy, but administratively hard. If you are making a fixed number of connections to clients, this is likely a good choice. For example a corporate issued device that has controls on the device to assure it is secure, like persistent-memory encryption and the like. Easy to issue a certificate to these and be done. And when the device is lost/stolen the certificate gets revoked and magically it no longer has access.

Client Certificate Authentication is sometimes sufficient, sometimes too hard, sometimes unnecessary. Hence why it should not necessarily be mandated, although it would be highly recommended to be compatible and thus any implementation should have the capability.

**Use-Cases**

At this point we need to get more use-case specific. This is because dealing with the next level of granularity requires different pathways.  From a high level we are speaking of two basic patterns. PUSH and PULL. Specifically these break down into the Client side Access Control and Audit Logging; vs the Service side Access Control and Audit Logging. At the modeling level you always presume these are happening at both sides. One models each side at a time. If either side is not satisfied that access should be given, then it stops the disclosure. Sometimes, like in the case of browser based applets, the client access control modeling is set to NULL.

**Client Access Controls**

Generally the client must make the access control decision sufficient for the clientâ€™s purposes, and record the [audit log](http://healthcaresecprivacy.blogspot.com/2013/01/simplifying-security-audit-standards.html) sufficient for the clientâ€™s purposes. Yes this can sometimes be NULL. I would simply point out that a Client that is doing a Create operation is choosing to expose the content of a Resource to a Server. This is usually the use-case that one focuses the client access control decision on. However this client side access control decision is totally within the client, and thus not exposed on the FHIR modeling. yes the server should also have a say in if it will keep it our not, but the disclosure has already happened by the time the Resource gets to the server.

Further down the line, we will look at how the Client can handle the case where the Access Control decision comes with â€˜_okay, with strings_â€™, otherwise known in security circles as â€œ_Obligations_â€. For example, where the client Pushes content (message, publication of a document, RESTful Create), but the content has restrictions on use. Such as no-re-disclosure, for-treatment-purpose-only, no-persistence, etc.  Same is true about a Server returning a Resource. The HL7 Security WG is currently modeling this in abstraction right now for future standards availability.

**Server Access Controls**

The Server will also do an Access Control decision, and [record Audit Log events](http://healthcaresecprivacy.blogspot.com/2013/01/simplifying-security-audit-standards.html). This is where most of the attention is focused, and with good reason. Because most data accesses are in Request/Response pattern, and the Server is the typical place to restrict access. It isn't the only model, some systems trust their clients to do access control decisions and thus donâ€™t make any at the server side. Some do access control decisions in various forms in both places (or more).

What the [IHE IUA (oAuth?)](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html), [XUA (SAML)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html), [EUA (Kerberos)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html), and [ATNA (Client TLS)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) do is try to explain how a client can encode claims about identity and context such that the server can interpret them. Interoperability is focused on both sides being able to use the information. In this case it is the system, application, and/or user identity that is being communicated in a security token. The server uses as much as it needs to use to come to a decision to release the information requested. The security system does need to understand sufficiently the content of the RESTful Resource so that it understands the information requested, but the Resource specification doesn't really need to understand the security system. The security system, when faced with not enough information to allow the data to flow, denies the transaction, usually by claiming the requested information doesn't exist (so as to not allow a malicious probing to determine existence vs non-existence of information)

**Impact on RESTful Resources (FHIR, DICOM-WADO, IHE-MHD, etc)**

The hope for [IUA](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)is to make it as transparent to the Resource definition as possible. I have heard this need. I understand the desire to not have any URL parameter modification, sometimes this can be done. There is already rather transparent solutions in [IHE-ATNA (Client TLS)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html), [EUA (Kerberos)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html), and [XUA (SAML)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html). The [IUA use-cases](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html) are different, and useful.

There is definitely an impact on application architecture and programming. Leveraging a mature programming infrastructure helps, but clearly there will be responsibilities. These responsibilities and behaviors are out-side-the-scope of the RESTful Resource specification. For example in properly maintaining cookies, or maintaining an application-secret. The least impact is that the client must support HTTP redirects, and allow the redirects to interact with the user in some cases.

**Conclusion**

Any RESTful Resource specification should have minimal specification for Security or Privacy. Not because it isn't important, but because Security and Privacy are layers that are built into tools and layers that are designed to do their work transparent to the RESTful Resource specification. Very clearly impacting an operational environment, and having some impact on application development.

What I would like to do is see how much of the above we can get agreement on. Once that list of capabilities is decided on, however small or large, we can start a Security/Privacy Risk Assessment. This will then show us what more we might need to do. Most of the time the additional risks are best handled in some design layer beyond the standards specification, so we simply document the risk in â€œSecurity Considerationsâ€ so that our reader is informed. But there are potential for risks that we need to hand over to further standards development.

**See:**

- [IHE efforts in RESTful security](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)

- [Securing RESTful services](http://healthcaresecprivacy.blogspot.com/2011/09/securing-restful-services.html)

- [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [How to Write Secure Interoperability Standards](http://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html)

- [Identity Proofing and Authentication -- Patient vs Provider](http://healthcaresecprivacy.blogspot.com/2012/10/identity-proofing-and-authentication.html)

- [IHE mHealth Hackathon](http://healthcaresecprivacy.blogspot.com/2012/11/ihe-mhealth-hackathon.html)

- [The Magic of FHIR](http://healthcaresecprivacy.blogspot.com/2012/09/the-magic-of-fhir.html) â€“ The HL7 movement toward REST resources, away from v3 and v2

- [IHE Mobile access to Health Documents - Trial Implementation](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html)

