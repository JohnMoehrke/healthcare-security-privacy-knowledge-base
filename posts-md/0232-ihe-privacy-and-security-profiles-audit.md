# IHE - Privacy and Security Profiles - Audit Trail and Node Authentication

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html
Published: 2011-05-29T13:00:00.004Z
Updated: 2012-12-31T04:25:46.500Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh-0GBq7fhjnR4qlVWOizleJyD3Uyzpuvx1BdnfdcgkRTUt2W0FCcyfjIN1mdxlUIM1OsP7Eblgb8om9gHSMQmUy4eYF8A9VVe74xvpK_9gcAY1JkXhyphenhyphenrWXPTm5YsGSDxfEWo-HXcXX6WAH/s1600/Slide12.PNG

This is the prime security profile in the IHE toolbox. Prime in so many ways, but it wasn't the first. The [Audit Trail and Node Authentication (ATNA)](http://wiki.ihe.net/index.php?title=ATNA) profile is composed of three things.

The first part of ATNA is not found in the name, that is that the profile expects that the system functionally includes reasonable access controls. Because this is a functional requirement, IHE doesn't further define it. This has more to do with [the purpose of IHE](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html) than the need. The expectation is that product suppliers will do the right thing, and that operational environments will inspect their systems before they grant them network access. The other two parts of ATNA: Audit Controls and Network Controls will be further explained below.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgih9VnI0YA6k_6evUDe_XUlrITrsAx1LKhdDGJbg713izdiU174vzuRLVUCfpLTzSLIQE5hTaAFbF_AjyrVYldf6DhUUve8pbjw1onamNmPV_LZwfw7VGX1-0b94aFxBqRlA-gpYWGRsvb/s1600/Slide13.PNG

The Actor/Transaction diagram looks complex, but it isn't as complex as it appears. The diagram includes the actors from the [Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html) profile. The diagram complexity comes from the practical fact that our original Actors were more monolithic and reality is more plug-and-play. IHE had originally defined a **Secure Node** as complete hardware and software system that is considered in whole to be one, although it may be made up of multiple computers, but it is one distinguishable system.

Examples:

- MRI â€“ made up of many components and computers, may even be made up of discrete physical cabinets

- EHR â€“ whole system considered as one including all workstations and supporting servers

- EKG device â€“ single small medical device

The concept of a Secure Node is ultimately the configuration desired, but we had to recognize that software components and services are being developed and they need to be responsible for what they control. Thus IHE had to define **Secure Application** â€“ a software component that is expected to be integrated into a larger system. Where this software component is responsible for securing any communications it is controlling, initiating, receiving; responsible for any controlling access that it is responsible for; and responsible for logging any security events that it is in control of. This means that a Secure Application is simply not responsible for something that is out of itâ€™s control (for example: auditing of the system startup event, or user-login event) Example:

- A network service, such as a eMPI, that requires to be integrated into a database farm

- A software application that must be installed onto a workstation

The other Actor shown is  the **Audit Record Repository** â€“ Receives the Record Audit  Event transaction. A system implementing this actor will typically process, report, record, alert, forward, and in any other way process the security events. More on this later.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjR5Hhh_y8shTO8HNXqwdK0HvFv6fqNvFEh7T2rdkbqG9AFsTLAQcZ4oNJIF-Ckpd-MN8LDZrUc2pP0nVtC7M-nHS0av4If3PotaxfELqMoc-YB0uVyyJeEuPTKBGmdolnHO81cNMnZWc04/s1600/Slide15.PNG

**Secure Nodes** and **Secure Applications** are expected to use secure communications, specifically the "**Authenticate Node**" transaction. This transaction is not really a transaction but an augmentation of  transaction in a way that both sides of the transaction can be assured of mutual-authentication, and that the communications between them are protected against risks to confidentiality and integrity.  The easy part of this to understand is that the network communications is encrypted. The thing that I usually need to emphasize is that this communications is mutually-authenticated.

On the Internet we are getting use to using a web-browser to connect to a web-server, normally this has no security. For sensitive sites we are using HTTPS, which adds authentication of the server and encryption. This would mean that the browser user knows which server they are connecting to with high assurance ([not as much trust as you would think](http://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html)). But the problem with this model is that the web-server has zero knowledge of the client. For healthcare we want to not only make sure we are connecting to the server we wanted to connect to, but the server wants to make sure it is only connecting with clients that it can trust. It is this client authentication that is special, and allows for a trusted network to develop.

The most simple protocols profiled in ATNA is [Transport Layer Security (TLS)](http://tools.ietf.org/html/rfc2246). This is what is otherwise referred to as SSL. The difference is that TLS is defined in an IETF standard, where as SSL is defined by Netscape. Ultimately they are now the same, and advancements are being made to TLS. TLS has advantages that it is very easy to deploy, has built in protocol negotiations, built in certificate discovery, and is built into many toolkits and platforms.

Sometimes other configurations are called for, so IHE ATNA also recommends end-to-end security with Web-Services Security, and S/MIME for e-mail. In both of these cases the certificate discovery and management is not automated, thus they are more complex to deploy.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiL4Y2UrTptLhQ7Jp_HxzkSiZ6nVSx4M7jsKjVRA1MVLr8uLv42u3MfzMHd8VWLWioKkz36PMi42_119rzkbg6vT0UAHG4KFqRcyt5Q5fqSqpOVJgsjiT_c44q0D5GOeifrITInToG3vikn/s1600/Slide17.PNG

Audit logging is the final component of the ATNA profile. The idea of the Audit logging in ATNA is that ultimately the use of an audit log is a specialized functionality that needs to have all events that happened on all the various systems in the organization. This is a specialty that has been developing in the general IT market around Firewall, Intrusion Detection, Routers, Databases, and Operating system audit log analysis. Given that specialty exists, we felt it was better for healthcare specific products to simply note that a security relevant event happened and send the details off to an **Audit Record Repository** for this analysis. So we followed the general IT market architecture. Here is some history and the relationship of the standards:

- [ASTM E2147](http://www.astm.org/Standards/E2147.htm) â€“ Setup the concept of audit logs for healthcare including accounting of disclosures

- [IETF RFC 3881](http://www.ietf.org/rfc/rfc3881.txt) â€“ Defined the Information Model (IETF rule forced this to be informative)

- [DICOM Supplement 95](ftp://medical.nema.org/medical/dicom/final/sup95_ft.pdf)â€“ Made the information model Normative, defined Vocabulary, Transport Binding,  and Schema

- [IHE ATNA](http://wiki.ihe.net/index.php?title=ATNA) â€“ defines the grouping with secure transport and access controls; and defined specific audit log records for specific IHE transactions.

- [NIST SP800-92](http://csrc.nist.gov/publications/nistpubs/800-92/SP800-92.pdf) â€“ shows how to do audit log management and reporting â€“ consistent with our model

- HL7 PASS â€“ Defined an Audit Service with responsibilities and a query interface for reporting use

- ISO 27789 â€“ is defining the subset of audit events that an EHR would need

The goal of the Audit log is to support security surveillance to look for abuse of policy, abuse of systems, and to inform an [accounting of disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html). The ATNA audit log is not intended to be used to track changes made to the medical records, this would be the responsibility of the medical records systems.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLwV_fZyGsRWbzAUuVzCyzzB25Rp_KjNtmrmKJ8-aHiKQRYVOKyA2k2Fzn7aMpT6hZO6dA9NEnwy7cjRZUSnHzFbwr022RRhGOmG8ZT3Pn5RWkuPYEV8LeORTG3b2rAImJPigfHF7Bejna/s1600/Slide18.PNG

This diagram shows a use-case where there are multiple Audit Record Repositories distributed across an XDS environment. This would be a common configuration where each organization in an Health Information Exchange (HIE) has decided to maintain their own Audit Record Repository independent from the HIE. In this way the Audit Record Repository in any one organization would manage the audit log entries for that organization and would forward copies of any audit log entry that is a result of a transaction with the HIE (the dotted orange lines).

A good example of why this is important is the basic XDS Document Retrieve transaction. If this transaction does not force an user assertion (discussed later) then the Document Repository can only record the document unique ID that was requested and the system identity that requested it. This is not enough information for the organization hosting the Document Repository to fully report an account of disclosures, but is sufficient information to trace the specific event back to a specific Document Consumer system where the further details can be found.

When this transaction includes an XUA assertion the audit log on the Document Repository would include the user identity and likely purpose of use, but would require extra processing to determine the patient (this extra processing could take place during the transaction, could be known through other means, or could be looked up during audit analysis and reporting)

**References:**

- Status: Final Text

- [IHE ITI Technical Framework](http://www.ihe.net/Technical_Framework/index.cfm#IT)

- Vol. 1 - Section 9

- Vol. 2a - Sections 3.19, 3.20

- Standards Used

- Secure Communications

- [RFC-2246 Transport Layer Security (TLS)](http://tools.ietf.org/html/rfc2246).

- [WS-I Basic Security Profile](http://www.ws-i.org/profiles/basicsecurityprofile-1.0.html),

- [Web-Services Security header](http://en.wikipedia.org/wiki/WS-Security)

- Security Audit Log

- [ASTM E2147](http://www.astm.org/Standards/E2147.htm) â€“ Setup the concept of audit logs for healthcare including accounting of disclosures

- [RFC-3881](http://www.ietf.org/rfc/rfc3881.txt) â€“ Defined the Information Model (IETF rule forced this to be informative)

- [DICOM Supplement 95](ftp://medical.nema.org/medical/dicom/final/sup95_ft.pdf)â€“ Made the information model Normative, defined Vocabulary, Transport Binding,  and Schema

- â€œSecurity Considerationsâ€ section found in other Profiles may specialize how ATNA is applied

- The Audit Event Message typically specialized in Vol 2 at the Transaction level

- PIX QueryTransaction : See section Vol 2a:3.9.5.1

- XDS Register Document Set-b: See section Vol 2b:3.42.7.1

**Additional Information:**

[ATNA](http://www.ihe.net/Technical_Framework/index.cfm#IT) - This is a comprehensive profile that indicates that Access Control, Audit Control, and Network Controls are important

- Access Control

- There is no standards pointed to by ATNA here. There is simply a statement that a system needs to have access controls that can be shown to a local authority are sufficient to protect the systems resources according to the local policies

- If this can't be demonstrated, then the system should not be authorized to be used. Specifically it should not be given a network identity (see network controls)

- Audit Controls

- Specifically Security Audit logging

- This is a very thin profiling of the commonly used SYSLOG protocols for communicating that an auditable event has occurred

- There is statements that relax size limits

- This is a FULL PROFILE of the content of that auditable event into an XML encoded message

- There is a set of 'auditable events'. That is events that when they happen an audit log should capture what happens

- The audit log message is fully describing: Who, What, Where, When, How, and Why.

- This requires that the audit event time be kept consistent. Which is why the CT profile exists. The CT profile says use common NTP protocol to keep clocks synchronized to about 1 second, which is generally good enough for security audit logs

- See [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html) And [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

- Network Controls

- There are a set of standards specific to the type of network communications. They all address three aspects of network communications of protected information. Not all network communications are protected, for example DNS is not generally needing to be protected as it is not communicating protected information (mostly)

- Authentication of both sides of all communications that include protected information

- This is consistently done using machine/service-end-point identities using public/private keys (certificates)

- Certificates can be directly trusted. One-by-one

- Certificates can be trusted because they 'chain' to a known authority (certificate) that is trusted directly

- Caution: the method used on the internet with SSL certificates is technically the same, but not administratively the same. In the internet browser world the 'known authorities that are trusted' are authorities that your internet browser decides should be trusted.

- ATNA wants a deliberate decision of trust to be done, not a decision by a vendor.

- Encryption of the communications that include protected information

- AES is the protocol of choice. This choice does NOT mean that other protocols can't be used. It only means that at least AES needs to be present. This is to assure interoperability. This is NOT to constrain algorithms

- Integrity control of the communications that include protected information

- SHA1 is the protocol of choice. This choice does NOT mean that other protocols can't be used. It only means that at least SHA1 needs to be present. This is to assure interoperability. This is NOT to constrain algorithms

- Note also that the communications is transitory, not long-term-storage, so the use of SHA1 is acceptable. SHA1 tends to not be acceptable for long term signature (See DSG below)

- TLS is the general mechanism when no other mechanism is used. TLS is the 'standardized' protocol that is more commonly called SSL. (mostly)

- IHE profiles that BOTH sides of the communication need to be authenticated

- Whereas common SSL only authenticates the server. This is not sufficient as it allows any client to connect. In healthcare we want to know where the data is coming from and where it is going. Not just the server

- S/MIME is used for e-Mail

- WS-Security mechanisms are allowed for Web-Services that want to use end-to-end security. Note that none of the IHE profiles leverage this as they are all profiles defining endpoints that need access. But this is specified because there may be deployments where someone puts in the middle of an IHE transaction some form of intermediary that needs partial access

- See Also

- [Designing a Secure HIE](http://healthcaresecprivacy.blogspot.com/2010/02/it-security-problems-continue.html),

- [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [Medical Device Security and Privacy](http://healthcaresecprivacy.blogspot.com/2011/02/medical-device-security-and-privacy.html) - White paper on Certificate Management for Machine Authentication

- [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html)

- http://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html[Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

- http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html[Authentication and Level of Assurance](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html)

- http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html[S/MIME vs TLS -- Two great solutions for different architectures](http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html)

- http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html[Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

- Open Source Implementations

- [Open Health Tools -- Open ATNA](https://www.projects.openhealthtools.org/sf/projects/openatna/)

**Back links**

This is part of a blog presentation of the IHE Privacy and Security Profiles Overview:

- [Introduction to IHE impact on Meaningful Use](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html)

- [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [This Page](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

