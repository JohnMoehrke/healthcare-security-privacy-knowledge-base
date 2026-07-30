# Security/Privacy comments on the IFR

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/02/securityprivacy-comments-on-ifr.html
Published: 2010-02-09T22:51:00Z
Updated: 2010-02-09T22:51:00.698Z
Author: John Moehrke

---

I have submitted comments through a couple of different organizations that I am honored to be a part of including HIT-Standards Privacy & Security Committee, EHRA, HIMSS, and GE. I have [vented on my blog](http://healthcaresecprivacy.blogspot.com/2010/01/meaningful-use-clearly-does-not-mean.html), given [advice to implementers/providers](http://healthcaresecprivacy.blogspot.com/2010/01/meaningful-use-security-plan.html), and [commented on CCHIT comments](http://healthcaresecprivacy.blogspot.com/2010/01/cchit-security-certification-gap.html). Now I reproduce my comments on the  [IFR (Bookmarked)](http://mycourses.med.harvard.edu/ec_res/nt/11a2d479-1c5f-4e84-93e8-eba58a0f1559/ifr.pdf).

The modularity mechanism:

The modularity mechanism  is important for separation of clinical/quality functions, but causes difficulty with regards to security and privacy. Security and Privacy are cross-cutting requirements that can only be evaluated when a complete system is brought together. In some cases of modularity the software module really has no security/privacy controls as it is relying on the platform and integration. An example of this is a software component that is plugged into a CCOW, Web-Service, or Browser-plugin. These software components can and do rely on their environment to provide the necessary security functionality. In other cases of modularity the software component needs to take responsibility for some of the security functionality, such as audit logging while leveraging the platform to provide access control and secure communications. In these cases of modularity the software component (module) can state how the component leverages these platform capabilities without providing the capability it-self.

Security must be applied and evaluated on a complete system. Any portion of a complete system can present security holes. Modules can be designed to be securely assembled into a complete system, this requires that they be designed with a specific security expectation. When modules are certified, they should not be required to meet specific technical requirements, but rather be required to explain how they are to be securely assembled into a complete system. This allows for web-applications to explain their expectations of the web-server environment and such.

**I recommend **that this modularity be recognized by requiring that modules declare how they address security/privacy, rather than placing technical requirements upon these components.

Goal of Requirements are unclear:

The criteria are conflating functional, interoperability, and operational requirements. This causes confusion on who is responsible to meet the requirements. That is to say that there are requirements listed that are much more efficiently implemented operationally through the assembling of common hardware, operating-system, and IT-software. In these cases the solution is totally transparent and fully encompassing of the ultimate EHR technology used. These Organizational solutions are flexible and scalable. These Organizational solutions are driven by a Risk Assessment such as the one already required by HIPAA.

There are times when an Interoperability solution should be imposed. In these cases the solution needs to be specific to assure interoperability, yet flexible to allow Operational choices beyond the single interoperability solution. A good example of this is the Mutually-Authenticated-TLS-using-RSA-3DES-SHA. This is a very specific solution so that it assures that all vendors can interoperate in at least one way. But it is also flexible in that it is only imposed as a â€˜capabilityâ€™. Thus Operationally a provider can choose to rather use a VPN at a lower level and thus NOT use the specified technology.

**I recommend **that the security standards should be specific to Interoperability so as not to get in the way of Interoperability, and therefore be specific to capability to at-least do XXX. This does not constrain operational use.

Specific Requirements

- **Â§170.210 (a) - Encryption and decryption of electronic health information**

- The biggest problem here is their lack of standards references, thus anything can qualify as encryption (e.g., XOR with a 128 bit fixed key that is simply appended to the data).

- Although the regulation text does not specify "AES", the specified bit values are only supported by AES.

- AES is not supported in older versions of Windows, which are very commonly used in business especially in Healthcare (i.e., Windows XP, NT, 2000)

- FIPS 140-2 Annex A allows for 3DES or AES, so there should not be a mandate in the IFR that is more restrictive than FIPS 140-2. 3DES is widely available.

- It is unclear to what this encryption is to be applied. Many encryption solutions are provided by the platform (transparent hard-drive encryption, encrypting USB-Memory, S/MIME or PGP email) or network (VPN). These solutions are very effective and do NOT require that the EHR technology be aware of the technology. By placing an encryption requirement on the EHR technology, this IFR is proposing that the EHR solution provider involve themselves in a way that removes flexibility currently available to an operational environment.

- The goal of the item is unclear. For transport encryption it is important that both the sender and the receiver are using the same technology. Thus 'interoperability' is important. For interoperability to function a standard must be selected and assured that all involved can at-least support that standard. This 'at-least' qualifier does not constrain the operational environment to that standard, but does enable at-least one way of communicating securely. I presume that Interoperability is the driving force throughout the IFR and thus the security requirements are targeting 'secure interoperability'.

- The IFR does not specify end-point authentication. It is only through mutual authentication of both end points of a network communications that a system can be sure that it is talking to an authentic and authorized (trustable) system.

- To place encryption on all network communications would be burdensome. Many network communications are within the organization where isolation techniques can mitigate risks effectively.

- To place encryption on all data-at-rest would be burdensome. Data-at-rest in a secure server room would be burdensome and not mitigate any risks as the servers in the room are not likely to be stolen. Data-at-rest on a portable device like a USB-Memory stick is far more likely, but can be mitigated through proper selection of USB-Memory devices that include encryption technology and are thus transparent to the EHR technology.

- It is understandable that the encryption requirements could be applied to the Meaningful Use workflows that â€˜exportâ€™ or â€˜importâ€™ individually identifiable information. The concern I have here is that there are limited standards to support this, and often times the solution can easily be added-on as a transparent hardware solution or software solution. There are few standards for portable encryption, and thus should not be imposed on the certified EHR.

- It is understandable that encryption may be applied to portable devices such as laptops. Where the certified EHR is hosted on Provider hardware, the encryption of the portable device can be supported transparently with hardware or software solutions.

- The encryption requirements should NOT be applicable to devices/systems that are physically secured or secured through access controls. These physically secured systems are not likely to be lost or stolen. This will eliminate unnecessary encryption of databases that are housed in a well secured location.

- Encryption technology requires good key management. The specification lacks key management requirements. These techniques are typically built into network protocols such as TLS. These techniques are typically manual and/or proprietary for data-at-rest.

- The â€œUser-Defined Preferencesâ€ is overly broad. There needs to be some expectation of reasonable user defined preferences. It would be completely unworkable to have user-defined preferences for different encryption requirements on a doctor-by-doctor basis.

**I Recommend**:

A) Specify that for network communications that cross the organizational boundary (e.g. HIE), that TLS be available with mutual authentication of both endpoints and that the encryption algorithm be at least 3DES with a recommendation that AES be made available.

B) Do not specify any data-at-rest criteria as this is most efficiently and effectively handled at operational implementation.

C) Please be clear that these are requirements for the product to be capable of meeting, and clearly differentiate from operational use.

D) I like the CCHIT criteria **

**

- **SC 06.01.1** - The system shall support protection of confidentiality of all Protected Health Information (PHI) delivered over the Internet or other known open networks via encryption using the Advanced Encryption Standard (AES) and an open protocol such as TLS, SSL, IPSec, XML encryptions, or S/MIME or their successors.

- **SC 06.03 **- For systems that provide access to PHI through a web browser interface (i.e. HTML over HTTP) shall include the capability to encrypt the data communicated over the network via SSL (HTML over HTTPS). Note: Web browser interfaces are often used beyond the perimeter of the protected enterprise network

- **SC 06.06.1** - The system, when storing PHI on any device intended to be portable/removable (e.g. thumb-drives, CD-ROM, PDA, Notebook), shall support use of a standards based encrypted format the Advanced Encryption Standard (AES).

- **Â§170.210 (b) Record actions related to electronic health information**

- ** **The Alert requirement is very difficult to meet in a complete EHR system, when modularity is added there is no way to coordinate Alerts. Recommend that the Alert requirement be deferred and made into a modular requirement that may be met by an audit record repository.**

I Recommend**:

A) The events be constrained to the minimal events that are related to HIE interactions.

B) Future certification require the ATNA message/transport to those that are representative of the transactions that cross the organizational boarder (meaning they are subject to Meaningful Use). This would allow a mature EHR to not try to get all security relevant events into ATNA compliance (e.g. System startup, User Login, view of flow-sheet, etc).

C) I like the CCHIT criteria:** **

- **SC 02.03** - The system shall be able to detect security-relevant events that it mediates and generate audit records for them. At a minimum the events shall include those listed in the Appendix Audited Events. Note: The system is only responsible for auditing security events that it mediates. A mediated event is an event that the system has some active role in allowing or causing to happen or has opportunity to detect. The system is not expected to create audit logs entries for security events that it does not mediate.

- **SC 02.04** - The system shall record within each audit record the following information when it is available: (1) date and time of the event; (2) the component of the system (e.g. software component, hardware component) where the event occurred; (3) type of event (including: data description and patient identifier when relevant); (4) subject identity (e.g. user identity); and (5) the outcome (success or failure) of the event.

- **Â§170.210 (c) Verification that electronic health information has not been altered in transit**

- The requirement listed is a reasonable functional requirement, but the standard specified can not accomplish all of these functionality expected of it by Table 1.

**I Recommend **

A) that this be limited to transport of health information, where the Mutually-Authenticated-TLS discussed above would be the solution.** **B) I like the CCHIT criteria

- ** SC 06.04 -** The system shall support protection of integrity of all Protected Health Information (PHI) delivered over the Internet or other known open networks via SHA1 hashing and an open protocol such as TLS, SSL, IPSec, XML digital signature, or S/MIME or their successors.



- **Â§170.210 (d) Cross-enterprise authentication**

- There is not sufficient implementation of the infrastructure necessary to support this requirement today.

- Today mutually authenticating both endpoints of a network communications to assure that systems only talk to other authorized systems is sufficient when procedures have proven that operationally these systems enforce the necessary access controls and log the necessary audit events.

- The text would allow any method of carrying a user identity, presumably even a plain text string.

- The user identity is often not enough to support RBAC or Policy enforcement. Additional profiling has been done by XSPA, NHIN, epSOS, etc. This is being brought together in an update to XUA this year by IHE.

**I recommend:**

A) The criteria should be delayed until 2013/2015 so that Providers can focus on developing the operational environment that can support identity assertions using SAML as profiled by HITSP/C19 and IHE/XUA.

Note) This kind of requirement is missing from CCHIT as CCHIT recognizes that further profiling of SAML is needed beyond XUA/C19. This is spoken of in the IFR comments, but not in the regulation text.

- **Â§170.210 (e) Record treatment, payment, and health care operations disclosures**

- The 'description of the disclosure' needs to be made more clear. As with 'patient identification' and 'user identification', the 'description' should be allowed to be an object identifier that can be de-referenced in post-processing. In this way the real-time auditing of the events is kept minimal, the record in the log is accurate yet minimal.

- The security audit log should be focused on identifiers and not on descriptive values. These identifiers can be decoded in post-processing into descriptions, for example a user-ID can be looked up in the user-directory into the name of the user.  This is especially true of the healthcare object that was accessed, as putting a description of the healthcare object accessed would be difficult in realtime and would make the security audit log it-self a record with PHI in it.

- The security audit log contains many events that are not relevant to an Accounting of Disclosures, but it can be informative to an Accounting of Disclosures. Many of the security events may need to be combined to produce sufficient information to fully describe a recordable Accounting of Disclosures event. The security audit log can be post-processed into patient specific Accounting of Disclosure reports.

**

I Recommend: **

A) Replace 'description' with 'description or identification'.

B) The realtime audit log be focused on recording all security events without regards to if the event will be used in an Accounting of Disclosures.

C) Account of Disclosures be clearly indicated as a post-processing task

D) I like the CCHIT criteria** **

- **SC 02.03** - The system shall be able to detect security-relevant events that it mediates and generate audit records for them. At a minimum the events shall include those listed in the Appendix Audited Events. Note: The system is only responsible for auditing security events that it mediates. A mediated event is an event that the system has some active role in allowing or causing to happen or has opportunity to detect. The system is not expected to create audit logs entries for security events that it does not mediate.

- **SC 02.04** - The system shall record within each audit record the following information when it is available: (1) date and time of the event; (2) the component of the system (e.g. software component, hardware component) where the event occurred; (3) type of event (including: data description and patient identifier when relevant); (4) subject identity (e.g. user identity); and (5) the outcome (success or failure) of the event.

- **AM 30.06** The system shall have the ability to provide support for disclosure management in compliance with HIPAA and applicable law.

- (and others)

I do not think that CCHIT has everything right. But I must be forward about the fact that I spent years as co-chair of CCHIT Security workgroup getting these written well and testable.

Missing Requirements

If the certification requirements are to be complete set of functional requirements, then there are many requirements missing. In the early years of CCHIT I was co-chair of the Security Workgroup and lead CCHIT effort to define a set of comprehensive yet reasonable requirements for a secure Health IT system. These requirements have been very carefully crafted to not interfere with healthcare workflows, implementations, or the creativity of the EHR vendor.

In some cases these are requirements for specific documentation from the vendor. This is a good way to support the communications between the vendor and the operational environment. These documentation requirements ultimately force the vendor to think beyond clinical functionality and make declarations on security topics including such non-functional aspects as hardening the system to network attack.

Without these additional requirements I am concerned that the IFR will leave the false impression that a system certified to the criteria is secure. If these additional requirements are not also included then I would recommend that the security requirements be totally removed. The Operational environment is already required to meet the HIPAA Security requirements that are based on Risk Assessment and Mitigation. This is a far more comprehensive and reasonable approach.

**I recommend **that the other requirements found in the Security section of CCHIT be considered.

Privacy Consent

Totally absent is Privacy, not even opt-in or opt-out Consent. I think that [BPPC can and should be used to enable OPT-IN](http://healthcaresecprivacy.blogspot.com/2009/10/consumer-preferences-and-consumer.html) in an XDS like RHIO (HIE/HIO). This is not to say that BPPC is the long term solution, but without an OPT-IN ability we will get nowhere on deploying the Health Internet. BPPC is 'good enough', and is a logical path toward something more advanced. HL7 is already working on that more advanced solution, and it is a logical extension to where BPPC is today.

**I recommend **that BPPC be used in HIE/HIO networks, which means that the EHR needs to be aware and honor the OPT-OUT or OPT-IN registered there.

Egregious Statements

The text on SOAP vs RESTful should be removed.  It is not germane to the goal of the IFR. The current HL7 v2 transport required by other IFR sections are neither REST nor SOAP; thus the IFR is in conflict with itself. The specification of SOAP or REST would forbid the use of the most successful healthcare standard, DICOM.  Please remove the SOAP and REST discussion, both are good solutions that should be built on when they are appropriate. Focus on specifying data transports that are optimal for their intended use and fully specified.

**I recommend **that all discussion of SOAP vs RESTful be removed.

