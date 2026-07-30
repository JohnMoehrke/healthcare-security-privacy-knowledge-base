# XDS Notifications

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/03/xds-notifications.html
Published: 2013-03-21T16:13:00Z
Updated: 2013-03-21T16:13:04.283Z
Author: John Moehrke

---

A highly passionate discussion happened today regarding the use of XDS and the case of â€˜how does an individual know that they have documents of interest they should look atâ€™. One specific example is when the individual is a key individual of a workflow step. It could be as well that the individual should be simply interested in new content.

The discussion got heated because there is interest in getting a very targeted notification. As elaborated there is indeed no specific IHE profile capability to do this notification. There is however many ways that the functionality can be implemented. No single functionality is universal, there are really good reasons for each method.

The XDS notification functionality methods are:
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbbQ2Wm_Jki41J9TVCBqrEdMxSSGKO1sdOyayvbFHYv_Y-NHV0USmHztCpbqTD7qDlLDrmjponsp2HJTGc26bs6Nk6nU1dHeRaY1s4R-umgadx7oXGkaSg9EicmjlQDT2_zhlD6dMcYJiq/s1600/image001-768672.png
**Poll**: An individual (system) can poll XDS. That is to use Queries one for each patient that system has individuals that are interested in. How often should it poll is left as a configurable parameter as there are good reasons to have this configurable.  ** Note this is very much what e-mail uses at the technical level with POP. Clearly as users we are not polling, nor do we know our machines (cellular phones) are polling. This is the most basic, and most robust mechanism. But this is also cumbersome and causes unnecessary traffic and query processing. *** Note that doing date specific queries are not easy to do, but can be done; and there is a Change Proposal to enhance the query.

**
**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiZ0mZgRiXvb4dP7UJ1Vnbr1TsGZfFLGrh4PIQnq0eCpbVHaw9ERc-rA3VuPGX5OikdEFDgsPgkpKomhLf_oRoXCznmlpyHTahJsagS43wWmwwkSxGXbiZQNuzXiZJBpdHqZy8ZtXDu0JLw/s1600/image002-770706.png
**Notification**: The Notification of Document Availability (NAV) Profile is a little known supplement. It defines a simple XML encoded manifest of document references, and indicates to send this in an e-mail message. This is just a list of document ID values, so it is not exposing patient privacy in any direct way. This e-mail could surely be sent using encrypted email if you have that capability. The drawback is that it does require that someone knows that you need to be notified, and that you would like to be notified in this way. *Note that the profile does have a specification of how to encode this on paper as well. ** Note a degenerate form is simply an e-mail with no information, just a â€˜pingâ€™ that you might recognize, however this isnâ€™t interoperability. *** Of course you could also just pick up the phone as well.

**
**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJSby1c6OZlOLbAfFVAmO2zB9EI9b8hNzF-GXHtGCltTfgRTO_4sQz71512N2o1jq5R7aOCYE-PF4Jw5j0SvN9acsRkUgoHwcaKAfygUhMwKoML3CV6tSVx41hfL5i0611baXI0BB0q1r-/s1600/image003-772239.png
**PUSH**: That is to Push the content using XDR or XDM. This could be a copy of the documents, because they are globally uniquely identified there is no problem that they get duplicated. ** Clearly again the publisher must know who to next notify *** Because this is full content one must secure the communications.

**
**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSo3rDJUEfgZQB_9XwPmFdCEMzeB8TSapg8i2SjoAUCfkT9wcahhs72X4YRqq08RQdNJPhST4334wBprNWGmBcj_S4JEbB_y2COpUIe5JSPOmmKHVn3-7Mc9_jB1s-FguDmCZ_IFGc9ISA/s1600/image004-774868.png
**
**
**Subscription**: There is the Document Subscription (DSUB) profile that allows a system to â€˜subscribeâ€™ to be notified. This subscription contains a filter criteria that would constrain why a notification would happen. Although this is a rather technically easy profile, it is not implemented often. It is not clear how big does a notification system need to be to satisfy a growing population of systems that want notification. This profile is also tied to SOAP webservices, and really only works within a single XDS domain.

**
**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEih7umwIUNw1JizmmU8ZIkhyphenhyphenpI4dypcwlWm0H2ADiB0ztr6o0i8D02t1AgBvBwymfs7PuGpH7GkS6gCmtF20ZIQcb8S5wBJyccOJ01fR2cA5M4LJuUg-0_l4JTkXRyOkddVlpQlYYFp8qFa/s1600/image005-776147.png
**Atom Feed**: This is really a polling query, but the results often is seen as a form of notification. The Atom feed is a part of the Mobile Health Documents (MHD) profile.

Is there a pattern that we donâ€™t have? I know of some creative ways to use TCP sessions that are left in a closing state, where the one that knows who to notify closes the connection when there is something useful to pull, thus causing the system to poll only when this session close event happens. This is a very low overhead, but does require the systems handle many failure-modes robustly. This is what happens in some mobile APIs to help limit the polling traffic.

Specific to workflows, in the Cross-Enterprise Document Workflow (XDW) profile we did document that a workflow does need to have a system watching to make sure workflows do progress normally. This system could notice a workflow document that seems to have stalled, and give notice via a mechanism like NAV.

It seems we have plenty of ways to achieve the functionality. This technical solution should not be confused with what the user sees or feels.

Document Management (Health Information Exchange - HIE)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

- [Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/minimal-metadata.html)

- [What is the benefit of an HIE](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html)

- [Karen's Cross or just Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html)

- [HIE using IHE](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [The French Health Information Systems Interoperability Framework -- Now available in English](http://healthcaresecprivacy.blogspot.com/2012/04/french-health-information-systems.html)

- [One Metadata Model - Many Deployment Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html)

- [Critical aspects of Documents vs Messages or Elements](http://healthcaresecprivacy.blogspot.com/2011/10/critical-aspects-of-documents-vs.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Document Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html)

- [XDS/XCA testing of Vocabulary Enforcement](http://healthcaresecprivacy.blogspot.com/2011/11/xdsxca-testing-of-vocabulary.html)

- [Where in the World is CDA and XDS?](http://tinyurl.com/wwxds)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [HIE/HIO Governance, Policies, and Consents](http://healthcaresecprivacy.blogspot.com/2012/01/hiehio-governance-policies-and-consents.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

