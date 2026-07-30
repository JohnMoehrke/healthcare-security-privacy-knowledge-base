# IHE Security/Privacy primer

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/12/ihe-securityprivacy-primer.html
Published: 2010-12-03T18:25:00Z
Updated: 2010-12-03T18:25:32.521Z
Author: John Moehrke

---

Most of the IHE profiles in the security space are all  simply pointers to common IT security protocols. The message is that healthcare  is not special when it comes to security. That healthcare should just  leverage the good work common to all IT. The following is NOT a complete explanation. I assume the reader can use a internet search engine to find resources including the specification themselves using key terms I provide. Clearly official profile text and standard text is the best resource.

[ATNA](http://www.ihe.net/Technical_Framework/index.cfm#IT) - This is a comprehensive profile that indicates that Access Control, Audit Control, and Network Controls are important

-  Access Control
-   There is no standards pointed to by ATNA here. There is simply a  statement that a system needs to have access controls that can be shown  to a local authority are sufficient to protect the systems resources  according to the local policies

-  If this can't be demonstrated,  then the system should not be authorized to be used. Specifically it  should not be given a network identity (see network controls)

-  Audit Controls
-  Specifically Security Audit logging

-  This is a very thin profiling of the commonly used SYSLOG protocols for communicating that an auditable event has occurred

- There is statements that relax size limits

- This is a FULL PROFILE of the content of that auditable event into an XML encoded message

- There is a set of 'auditable events'. That is events that when they happen an audit log should capture what happens

- The audit log message is fully describing: Who, What, Where, When, How, and Why.

- This requires that the audit event time be kept consistent. Which is  why the CT profile exists. The CT profile says use common NTP protocol  to keep clocks synchronized to about 1 second, which is generally good  enough for security audit logs

- See [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html) And [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

-  Network Controls
-   There are a set of standards specific to the type of network  communications. They all address three aspects of network communications  of protected information. Not all network communications are protected,  for example DNS is not generally needing to be protected as it is not  communicating protected information (mostly)

- Authentication of both sides of all communications that include protected information

-  This is consistently done using machine/service-end-point identities using public/private keys (certificates)

-  Certificates can be directly trusted. One-by-one

-  Certificates can be trusted because they 'chain' to a known authority (certificate) that is trusted directly

-   Caution: the method used on the internet with SSL certificates is  technically the same, but not administratively the same. In the internet  browser world the 'known authorities that are trusted' are authorities  that your internet browser decides should be trusted.

-  ATNA wants a deliberate decision of trust to be done, not a decision by a vendor.

- Encryption of the communications that include protected information

-   AES is the protocol of choice. This choice does NOT mean that other  protocols can't be used. It only means that at least AES needs to be  present. This is to assure interoperability. This is NOT to constrain  algorithms

- Integrity control of the communications that include protected information

-   SHA1 is the protocol of choice. This choice does NOT mean that other  protocols can't be used. It only means that at least SHA1 needs to be  present. This is to assure interoperability. This is NOT to constrain  algorithms

- Note also that the communications is transitory, not  long-term-storage, so the use of SHA1 is acceptable. SHA1 tends to not  be acceptable for long term signature (See DSG below)

- TLS is the  general mechanism when no other mechanism is used. TLS is the  'standardized' protocol that is more commonly called SSL. (mostly)

-  IHE profiles that BOTH sides of the communication need to be authenticated

- Whereas common SSL only authenticates the server. This is not  sufficient as it allows any client to connect. In healthcare we want to  know where the data is coming from and where it is going. Not just the  server

- S/MIME is used for e-Mail

- WS-Security  mechanisms are allowed for Web-Services that want to use end-to-end  security. Note that none of the IHE profiles leverage this as they are  all profiles defining endpoints that need access. But this is specified  because there may be deployments where someone puts in the middle of an  IHE transaction some form of intermediary that needs partial access

See **[Designing a Secure HIE](http://healthcaresecprivacy.blogspot.com/2010/02/it-security-problems-continue.html)**

[PWP](http://www.ihe.net/Technical_Framework/index.cfm#IT) - This is a very thin profile that simply says that for user directory, use LDAP

-  LDAP is a protocol for doing queries of a directory. That directory might be a database or may be specifically a directory

-  The schema for describing a user is based 99% on the common user

-  The little addition to the schema is really not that important

-  This profile also describes how to find the directory. Using a special DNS record that points at the LDAP directory

-  There are pointers to how LDAP can be secured using TLS.

-  There are pointers to how LDAP can be used to authenticate a user, through the LDAP security mechanisms

-  LDAP is the standard that Windows ActiveDirectory uses for accessing directory entries

-  Healthcare Provider Directories (HPD) is a profile leveraging LDAP as well for external use
-  See [Healthcare Provider Directories](http://healthcaresecprivacy.blogspot.com/2010/08/healthcare-provider-directories.html). And **[Healthcare Provider Directories -- Lets be Careful](http://healthcaresecprivacy.blogspot.com/2010/10/healthcare-provider-directories-lets-be.html)**

[EUA](http://www.ihe.net/Technical_Framework/index.cfm#IT) - Very thin profile that simply says to use Kerberos protocol for safely authenticating users

-  Kerberos is a pluggable protocol, but really is only used for username/password

-  Kerberos is the standard that Windows ActiveDirectory uses for authenticating users.

-  Kerberos is the standard that Windows uses at windows login (with minor Microsoft extensions)

-  Kerberos is very common in Unix as it was invented at Berkely

-  Kerberos is really good for within an organization, but has real problems that prevent it from being useful on the internet

-  There are also Kerberos ways to pass authentication 'tickets' between an application and server

-  See: **[Kerberos required in 2011 then forbidden in 2013](http://healthcaresecprivacy.blogspot.com/2009/09/kerberos-required-in-2011-then.html)**

[XUA](http://www.ihe.net/Technical_Framework/index.cfm#IT) - Very thin profile that simply says to use SAML Identity Assertions for authenticating users on Cross-Enterprise transactions

-  This is the solution for the space where Kerberos doesn't work well

-  SAML is both a standard for an XML way to describe a user and provide trust mechanisms of that data; and also a protocol

-  The protocol is not part of the XUA profile. It is ok, but not as important as the assertion

-  There are other protocols that are more common, WS-Trust is one.

-  There is also good reason for a product that does its own user authentication to simply create SAML assertions w/o protocol

-  See [- Federated ID is not a universal ID](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)and [IHE ITI XUA++ - Trial Implementation](http://healthcaresecprivacy.blogspot.com/2010/08/webinar-on-new-work-from-ihe-it.html)

[DSG](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_Digital_Signature-2009-08-10.pdf) - A profile of XML-Digital Signatures to provide long-term signature across a 'document'

-  Can sign any document type. Not limited to XML type documents such as CDA

-  Signature document is created that is an XML-Digital Signature blob
-  Original document to be signed is signed by 'reference'.

- Encapsulation is not a bad thing, but it does make the original  document harder to get at. Especially if that original document is not  XML based

- Signature by reference allows the original document  to continue to be accessed normally by applications that don't need to  validate he signature. While having the signature present for those  applications that do need it.

- The digital signature includes the Date/Time of the signature. Assuming trustable date/time

- The digital signature includes the certificate of the signer

- Note that signatures need to be valid for decades. Which brings up interesting certificate management issues not addressed.

- The digital signature includes the reason for the signature. Why was it signed? What does the signature mean?

- XDS Metadata shows that the signature document is in a 'signs' relationship to the original document
-  This allows for finding the signature from a document, and finding the document from the signature

-  Works for XDS, XDM, XDR, XCA
-   Might work for other environments as well. The main thing that must  happen is for there to be a way to dereference the document ID number  found in the digital signature document to get to the document that is  being signed.

-  Might be future work to have an encapsulated flavor

-  See: **[Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)**

[BPPC](http://www.ihe.net/Technical_Framework/index.cfm#IT) - A profile of a document that represents a patient agreeing to a privacy policy (e.g. Consent)

-  Uses CDA to capture that the patient has agreed to a policy by reference
-   The policy is not actually ever defined. This is because there is not  sufficient maturity to any standard for encoding of privacy policies.  Therefore BPPC assumes that someone can write the policy in human  readable language and give that a unique identifier (OID). This OID is  used as a reference.

-  Supports the consent being digitally signed with DSG

-  Supports encapsulation of a scanned image of something (e.g. an ink on paper signature) using the XDS-SD profile

-  Supports time limited consents

-  Supports both positive policies (OPT-IN) and negative (e.g. OPT-OUT)

-   Recognizes that the absence of an instance of a policy means that some  other policy is in place. Commonly called 'implied consent'.

-  Defined for XDS, XDM, XDR, XCA - and may work for other environments

-  See [Stepping stones for Privacy Consent](http://healthcaresecprivacy.blogspot.com/2010/08/stepping-stones-for-privacy-consent.html)

ENC - new profile being worked on this year - Encryption of documents and/or XDM

-  Because this is under development the details are yet to be written

-   Document encryption has favor as it would be transport agnostic, but is  unclear the usefulness of this for long-term-storage usecases like XDS  and XCA.

-  XDM encryption would likely leverage the e-Mail option that exists today
-  The e-Mail option uses S/MIME to secure the ZIP of the XDM file-system

-   The modification from existing profile would be to explain how to save  the S/MIME message as a file rather than delivering it over SMTP

-  This file would simply be a S/MIME message, thus protected with whatever the S/MIME protections used.

confidentialityCode  - this is NOT a profile, but is a security/privacy concept built into  almost all of the healthcare standards.

-  Statement of the data security/privacy classification

-  Would be used by access control decisions

-  See: [Data Classification - a key vector enabling rich Security and Privacy controls.](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

De-Identification handbook - this is NOT a profile, but is a document being written this year.

-   Will be a procedure document that explains how one would evaluate the  requirements for a De-Identification scheme specific to a desired  use-case

-  Would leverage De-Identification and Pseudonymization

-  See [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html) and [Redaction and Clinical Documentation](http://healthcaresecprivacy.blogspot.com/2010/08/redaction-and-clinical-documentation.html)

Other

-  [Cookbook: Preparing the IHE Profile Security Section](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_Cookbook_2008-11-10.pdf) - Revised 2008-11-10

-  [HIE Security and Privacy through IHE](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_and_Privacy_of_HIE_2008-08-22-2.pdf)- Revised 2008-08-22

-  [Access Control](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf) - Published 2009-09-28

Secure Design

-  All this assumes that your system is secure by design. This includes limiting opportunities for bad guys.

-  Risk based approach should be used to assure that all risks are managed appropriately

-  Unnecessary services are disabled, security patches applied,

-  Multiple layers of defense are in place both within and in the network

-  Etc.

