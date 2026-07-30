# Is XUA useful in service-to-service?

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/11/is-xua-useful-in-service-to-service.html
Published: 2016-11-25T16:11:00.003Z
Updated: 2016-11-25T16:11:46.682Z
Author: John Moehrke

---

I got an email question asking if the use of XUA is proper for situations of service-to-service communication.

>
I am not sure how far  XUA really got in the IHE world, but we have an HIE in XYZ [sic] that seems to want to implement it on every IHE transaction, even those without a document consumer. Our role with them is strictly at a system level as a document provider and of course we are using Mutual Authentication

Reading the XUA spec it seems that IHE was gunning for consent authorization of a document consumer and those transactions, though it never actually came out and said "just" those transactions. SO my questions.

Does the IHE have a stance on this ? Are all transactions(XDS and PIX PDQ) to use SAML ? Or is the spirit of the law about consent and document consumption calls ?

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgdbHJlx0DlZy9SsF-pFP-47ReLVohovGUQ45fn-jL5IG1fEiqmgZwS5a8j3VJHM1k8NEz61siG2PIivlyRePQqjHEx713Y9Do4WmYL35nYcXeuy9NtclUxK_PVe_k2rNDaPFqkgiMsJu2M/s1600/blah2.JPGHow much is XUA used... very hard to know. But the concept of XUA is simply that a requesting party identify the requesting agent using SAML. Where that agent is usually a human in an interactive workflow. If we recognize that XUA is simply the use of SAML, no any specific subset, then I would say it is very universally used. In many cases, the server is ignoring it completely, in a few more it is doing nothing but recording in an audit log, but in a few it is being used in an Access Control decision. All of these are the vision of XUA.

XUA is also not tied to XDS, it is tied to SOAP transactions. These are mostly found in the XDS family (XCA, XDR, XDS), but also exist in some patient lookup transactions like (XCPD, PIXv3, and PDQv3). However there is no clear binding between SAML and HL7 v2 transactions like (PIX, and PDQ). It is not clear how one would identify the user in cases of HL7 v2. Note that you could identify a user in PDQm, and PIXm using IUA; but that is a different blog - [Internet User Authorization: why and where](https://healthcaresecprivacy.blogspot.com/2013/06/internet-user-authorization-why-and.html).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi6Jx5LeEBUQ32xpJ7OaDrWPWLTLqSY6yalZtDzBJvXATEZ2apSq4mRsw8bswoIL4IJRVMcR0vTrGHt0j3BD_RC6CwsB-CO_lMO0iOVWjjiSdXpuIkbQuCt1PMgy1xSMsCKVb2pJgE73PPq/s1600/Slide32.PNG

XUA does include a number of optional attributes; specifically use-cases that when needed shall be satisfied a specified way; but the use-cases are not mandatory. There are indeed a few consent focused use-cases in this optional space. If the client needs to inform the server of a specific consent that authorizes access, THEN it is communicated thus. Other more commonly used use-cases are those around the name of the user, and the purpose of use for the request.

XUA is independent of consent, although many times consent is specific down to the user.

XUA is most often useful when the requesting party is a human, but that is not the only useful scenario.

However it is not unusual to use XUA to identify the service that is making a request, even if it is redundant to the TLS 'client' certificate.  The SAML assertion is more expressive, and including it allows for future expansion to utilizing this more expressive capability.

On a **practical perspective**, it is common for TLS to be terminated at the very edge of a cloud infrastructure. It certainly authenticated the calling system. But being terminated in a TLS specific piece of equipment, that identity is not available for Access Control checks that will happen later. This kind of a configuration simply can't make access control decisions based on the TLS client identity (Or can't without some hacks in the service stack).

**Conclusion**

So I think it is reasonable that you are being asked to include a SAML assertion in all requests, even those that are automated and for which the only identity you can claim is the automated service itself. It is this analysis that does need to be done, what triggered the request. That agent that triggered the request is the one that needs to be identified. It is likely today to be a background task, not a human. Background tasks can be identified in SAML just as well as humans can.

