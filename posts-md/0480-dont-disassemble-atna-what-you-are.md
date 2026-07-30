# Don't disassemble ATNA, what you are looking for is there.

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/08/dont-disassemble-atna-what-you-are.html
Published: 2015-08-29T16:16:00.003Z
Updated: 2015-08-29T16:16:36.772Z
Author: John Moehrke

---

I have been pulled into many discussions that are not taking 'all' of [ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html). They are either just taking the audit logging, or just taking the Secure Communications. Then there are the discussions that are taking the Secure Communications but don't want to take the Client authentication. All of these discussions are missing the point of [ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html), and/or are missing the configurability that is built into [ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html).

Let me explain:

1. [ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)is a grouping of three functions: [Security Audit](http://healthcaresecprivacy.blogspot.com/p/topics.html#Audit), [Secure Communications,](http://healthcaresecprivacy.blogspot.com/p/topics.html#Com) and[local Access Controls](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC). It is only when you are assured that ALL of these functions exist that you should administratively accept the node/application, and provision a certificate. When I see groups picking and choosing parts, I worry that they might not be understanding the overall. I donâ€™t mind treating them independent as long as this overall design is understood.

2.       ATNA [Secure Communications (actually  Authenticate Node)](http://healthcaresecprivacy.blogspot.com/p/topics.html#Com). is not just [mutual-authenticated-TLS](http://healthcaresecprivacy.blogspot.com/2014/03/testing-atna-secure-communications.html), although this is the predominant form (The only form for point-to-point protocols like HL7 v2, and DICOM). It also includes SMTP end-to-end security used by Direct. It includes end-to-end security for SOAP using XML-Signature and XML-Encryptionâ€¦.

3.       ATNA Secure Communications expects that you will do [certificate management (PKI)](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html) properly, that is that authenticating a node is more than just proving that the claimed identity is the one authenticated. If you donâ€™t manage your truststore, then you are just authenticating that the identity is the one claimed in the certificate. This is the kind of https used on the internet, one that only looks to prove that the server you connected to is 'most likely' the one you intended. When you don't manage your trust-store, all you can know is that the identity seems 'most likely' to be the one you intended to connect to. This is indeed not very helpful. This is why ATNA has a long discussion around certificate management. Managing the trust-store, usually through [removing the hundreds of internet Certificate Authorities (CA)](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html), and[leaving only CAs](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html) that you really trust.

**4.       Further there is an expectation that you donâ€™t stop at authentication, but also check that the [remote node is authorized](http://healthcaresecprivacy.blogspot.com/2014/03/what-does-saml-assertion-mean-in-xdsxca.html). The ATNA Secure Communications is just the â€œInteroperabilityâ€ way to get authentication done, you still must use that authenticated identity in an authorization decision. If you fail to do this then you will certainly fail to be secure. This fact is true about ALL authentication mechanisms. **

5.       ATNA Secure Communications can be grouped with a user authentication profile like [EUA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html), [XUA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html), or [IUA](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-users.html). This is less clear in the ATNA profile and transaction, as the transaction doesnâ€™t mention these (beyond EUA).  So you can authenticate the user at the client, in addition to authenticating the client they are on.

6.       ATNA Secure Communications does specify TLS 1.0 or better, and the use of [TLS_RSA_WITH_AES_128_CBC_SHA](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-sha-1-vs-sha-2.html); this is an â€œInteroperabilityâ€ statement, not a security statement. Meaning it is there to set a low bar that assures interoperability can happen. Policy is expected to take over from there, where policy can push the security criteria up as high as the actors can handle.   If you are in the space of Policy, you  can certainly set the Policy higher. I emphasize that IHE is focused on assuring that products come with capability that will interoperate, it is NOT constraining on the top-end and canâ€™t constrain on the top-end; that is policy space. The profile does recommend that all crypto algorithms, and key sizes be configurable. It only specifies one set, so that interoperabililty will work, as without this it is likely two systems choose non-overlapping crypto algorithms and key sizes.

7. [IHE](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)has further [explained that for HTTP traffic](http://healthcaresecprivacy.blogspot.com/2011/09/securing-restful-services.html), it is likely that policy will allow HTTPS with no client-authentication, where the client is authenticated using[IUA (OAuth)](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html). This is the same recommendation you [will find in FHIR, and SMART](http://healthcaresecprivacy.blogspot.com/2015/01/fhir-security-do-not-worry.html). OAuth is an acceptable standard, it â€œcanâ€ represent the [application as being authorized by the User](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-real-people.html). In this way it meets the expectation of ATNA Secure Communications. So if you are focused on HTTP like things, FHIR, then stop worrying about the client certificate in ATNA Secure Communications, and start demanding OAuth for client; as this does meet the ATNA requirement and is far more easy to manage in HTTP like architectures (Mutual-Auth-TLS is very hard to deal with in web centric architectures).

8.       That said, although OAuth can be used to authorize background tasks for authorized applications (e.g.  Facebook app does this); OAuth  doesnâ€™t work as well for cases where the identity that needs to be claimed is NOT HUMAN. Meaning it works fine  for Facebook, but doesnâ€™t work all that well for â€œThe XCA Gateway of Kaiserâ€. In these cases certificates work better as they are inherently more manageable as automaton identity, vs human identity.



**Conclusion**

So, keep ATNA together, it is an important set of capabilities that if not used together don't provide security. Recognize that ATNA is just one security profile, user authentication is done with IUA, XUA, and EUA. Lastly recognize that IHE is enabling default interoperability, it is not restricting the security to that level.

**Other articles**

- [User Identity and Authentication](http://healthcaresecprivacy.blogspot.com/p/topics.html#UID)

- [Access Control (including Consent Enforcement)](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC)

- [Audit Control](http://healthcaresecprivacy.blogspot.com/p/topics.html#Audit)

- [Secure Communications](http://healthcaresecprivacy.blogspot.com/p/topics.html#Com)

- [mHealth](http://healthcaresecprivacy.blogspot.com/p/topics.html#mHealth)

- [The Direct Project](http://healthcaresecprivacy.blogspot.com/p/topics.html#Direct)

