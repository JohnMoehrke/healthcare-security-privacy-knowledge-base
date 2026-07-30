# Healthcare Access Controls standards landscape

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html
Published: 2011-03-17T17:27:00Z
Updated: 2011-03-17T17:27:29.632Z
Author: John Moehrke

---

The following will give an overview of the landscape of Standards development for Access Controls in Healthcare. There is surely more being done in Healthcare Standards, I am sure I have missed something, and there is ongoing work that is not always included here because it is less mature and not really formally published. Given that this is my blog, I have taken license to include more than just access control at times.  I created this as a response to a question by the OASIS PMRM (see below).

**OASIS -- [http://www.oasis-open.org](http://www.oasis-open.org/)**

The most technically detailed work is happening in a sub-workgroup in OASIS â€“ XSPA. This group has profiles, and works with the SAML and XACML committees to examine the gaps they identify. Please see the XSPA home page on OASIS to understand more.

- [OASIS Cross-Enterprise Security and Privacy  (XSPA)](http://xml.coverpages.org/xspa.html)

- [OASIS Cross-Enterprise Security and Privacy Authorization (XSPA): WS-Trust Healthcare Profile](http://xml.coverpages.org/xspa-ws-trust-profile-20080820.pdf).

- [Cross-Enterprise Security and Privacy Authorization (XSPA) Profile of XACML v2.0 for Healthcare](http://xml.coverpages.org/xspa-xacml-profile-CD01-29664.pdf).

- [Cross-Enterprise Security and Privacy Authorization (XSPA) Profile of Security Assertion Markup Language (SAML) for Healthcare](http://xml.coverpages.org/xspa-saml-profile-V11-29421.pdf).

-  [OASIS Privacy Management Reference Model (PMRM) TC](http://www.oasis-open.org/committees/tc_home.php?wg_abbrev=pmrm)

- Providing a guideline for developing operational solutions to privacy issues

- Just starting to form, so they are looking to healthcare as an area needing help

**HL7 -- [http://www.hl7.org](http://www.hl7.org/)** The healthcare specific standards organization HL7 also has significant work available

- Security TC [http://www.hl7.org/Special/committees/secure/index.cfm](http://www.hl7.org/Special/committees/secure/index.cfm)

- Security Domain Analysis Model â€“ With security use-cases

- [http://wiki.hl7.org/index.php?title=Security_Use_Cases](http://wiki.hl7.org/index.php?title=Security_Use_Cases)

- Emergency Access use-cases

- Permissions Catalog â€“ a vocabulary of permissions necessary for RBAC

- Ontology project â€“ Advancement from current Domain Analysis Model and Permissions Catalog

- Etc â€“ see the committee web site

- CBCC TC [http://www.hl7.org/Special/committees/homehealth/index.cfm](http://www.hl7.org/Special/committees/homehealth/index.cfm)

- Privacy Consent Directive CDA Implementation Guide.

- a structured document specification to exchange signed Privacy Consent Directives.

- confidentialityCode â€“ a common attribute across many healthcare standards used to carry the data sensitivity and confidentiality classification. The vocabulary and understanding of this metadata label is evolving

- SOA - PASS  [http://hssp-security.wikispaces.com/](http://hssp-security.wikispaces.com/)

- Access Control - [http://hssp-security.wikispaces.com/PASS_Access_Control](http://hssp-security.wikispaces.com/PASS_Access_Control)

- Audit Logging - [http://hssp-security.wikispaces.com/PASS_Audit](http://hssp-security.wikispaces.com/PASS_Audit)

- Architecture Framework - [http://hssp-security.wikispaces.com/PASS+Architecture+Framework](http://hssp-security.wikispaces.com/PASS+Architecture+Framework)

**IHE -- [http://www.ihe.net](http://www.ihe.net/)** IHE is only an â€˜interoperabilityâ€™ profiling organization. So they only define interoperability specifications. They donâ€™t get into architecture, services, or implementation details. They have endorsed through their Profiles the use of SAML for identity assertions, and the HL7 XML document for capturing patient privacy consent.  They have other more classic security profiles as well. They do have a white paper that examines Access Control space in healthcare explaining how federation and directories are used to bring together the security/privacy context necessary for access control decisions and how that relates to federated enforcement.

- [ATNA](http://www.ihe.net/Technical_Framework/index.cfm#IT) - This is a comprehensive yet thin profile that indicates that Access Control, Audit Control, and Network Controls are important

- [PWP](http://www.ihe.net/Technical_Framework/index.cfm#IT) - This is a very thin profile that simply says that for user directory, use LDAP

- [EUA](http://www.ihe.net/Technical_Framework/index.cfm#IT) - Very thin profile that simply says to use Kerberos protocol for safely authenticating users inside of an enterprise

- [XUA](http://www.ihe.net/Technical_Framework/index.cfm#IT) - Very thin profile that simply says to use SAML Identity Assertions for authenticating users on Cross-Enterprise transactions, [updated with some options](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_XUA-_Rev1-1_TI_2010-08-10.pdf)

- [DSG](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_Digital_Signature-2009-08-10.pdf) - A profile of XML-Digital Signatures to provide long-term signature across a 'document'

- [BPPC](http://www.ihe.net/Technical_Framework/index.cfm#IT) - A profile of a document that represents a patient agreeing to a privacy policy (e.g. Consent)

- ENC - new profile being worked on this year - Encryption of documents and removable media

- confidentialityCode - this is NOT a profile, but is a security/privacy concept built into almost all of the healthcare standards.

- De-Identification handbook - this is NOT a profile, but is a document being written this year.

- [Cookbook: Preparing the IHE Profile Security Section](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_Cookbook_2008-11-10.pdf)  - handbook used when IHE produces profiles to assure that the profile has examined security/privacy

- [HIE Security and Privacy through IHE](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_and_Privacy_of_HIE_2008-08-22-2.pdf) â€“ white paper explaining how to use the IHE security / privacy profiles to build a health information exchange

- [Access Control](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf)  - White paper examining access controls in healthcare, specifically in a cross-enterprise federated use-cases.

**ISO - TC 215  [http://www.iso.org/iso/iso_technical_committee?commid=54960](http://www.iso.org/iso/iso_technical_committee?commid=54960)** There is also good foundational work from the Healthcare division of ISO. This work is mostly used as reference material.

- [ISO/TS 13606-4:2009](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=50121) Health informatics -- Electronic health record communication -- Part 4: Security

- [ISO 17090-1:2008](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=39845) Health informatics -- Public key infrastructure

- [ISO/TS 21091:2005](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=35647) Health informatics -- Directory services for security, communications and identification of professionals and patients

- [ISO/TS 21298:2008](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=40133) Health informatics -- Functional and structural roles

- [ISO/TS 21547:2010](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=44479) Health informatics -- Security requirements for archiving of electronic health records â€“ Principles

- [ISO/TS 22600-1:2006](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=36337) Health informatics -- Privilege management and access control -- Part 1: Overview and policy management

- [ISO 22857:2004](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=36522) Health informatics -- Guidelines on data protection to facilitate trans-border flows of personal health information

- [ISO/TS 25237:2008](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=42807) Health informatics â€“ Pseudonymization

- [ISO 27799:2008](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=41298) Health informatics -- Information security management in health using ISO/IEC 27002

- [IEC 80001-1:2010](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=44863) Application of risk management for IT-networks incorporating medical devices -- Part 1: Roles, responsibilities and activities

- Etcâ€¦

**ASTM ****E31.25 **[http://www.astm.org/COMMIT/SUBCOMMIT/E3125.htm](http://www.astm.org/COMMIT/SUBCOMMIT/E3125.htm)

New development in this group has stopped, but some of the documents are still useful as references.

-  [E1762-95(2009) Standard Guide for Electronic Authentication of Health Care Information](http://www.astm.org/Standards/E1762.htm)

-  [E1869-04(2010)  Standard Guide for Confidentiality, Privacy, Access, and Data Security  Principles for Health Information Including Electronic Health Records](http://www.astm.org/Standards/E1869.htm)

-  [E1985-98(2005) Standard Guide for User Authentication and Authorization](http://www.astm.org/Standards/E1985.htm)

-  [E1986-09 Standard Guide for Information Access Privileges to Health Information](http://www.astm.org/Standards/E1986.htm)

-  [E2147-01(2009) Standard Specification for Audit and Disclosure Logs for Use in Health Information Systems](http://www.astm.org/Standards/E2147.htm)

- [E2595-07 Standard Guide for Privilege Management Infrastructure](http://www.astm.org/Standards/E2595.htm)

**Government Initiatives**

One of the potential areas where there might be more mature modeling done is in specific countries such as Canada or regions like EU. I know people involved in Canada and EU, but the work is not yet fully public. This is expected to be made public soon.

- Europe -- epSOS -- [http://www.epsos.eu/](http://www.epsos.eu/)

- Canada -- [http://www.infoway-inforoute.ca/](http://www.infoway-inforoute.ca/)

- USA

- Historic â€“ [http://www.hitsp.org](http://www.hitsp.org/) â€“ Work stopped in 2010

- Capability 143 - [Manage Consumer Preference and Consents](http://hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=13&PrefixNumeric=143)

- SC108 [Access Control Service Collaboration](http://hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=12&PrefixNumeric=108)

- TP20 [HITSP Access Control Transaction Package](http://hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=2&PrefixNumeric=20)

- TP30 [HITSP Manage Consent Directives Transaction Package](http://hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=2&PrefixNumeric=30)

- Uses IHE BPPC and HL7 Consent

- SC109 [Security Audit Service Collaboration](http://hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=12&PrefixNumeric=109)

- Uses IHE ATNA

- TN900 [HITSP Security and Privacy Technical Note](http://hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=5&PrefixNumeric=900)

- Etcâ€¦

- Current - [http://jira.siframework.org/](http://jira.siframework.org/)

- Direct Project â€“ low technology solution to get healthcare providers started sharing healthcare documents

- [http://directproject.org/](http://directproject.org/)

- Nothing more than an endorsement of S/MIME with a recommendation to use IHE XDM content packaging

- All Access Controls are considered 'pre-conditions'

- NwHIN Exchange â€“ Comprehensive Health Information Exchange to cover whole USA

- [http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407)

- This uses the HITSP work specific to a cross-community exchange

- Many resources at [http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_resources/1194](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_resources/1194)

- DURSA 2009 Version for Production Pilots

- Policy for Participation Changes Suspension and Termination

- NHIN Data Use and Reciprocal Support Agreement Amendment Process

- Breach Notification

- Access Consent Policies Production Specification

- Authorization Framework Production Specification

- Consumer Preferences

- Etc...

- New S&I Framework development

- This is the focus of the primarily web site. No security or privacy yet.

- Meaningful Use

- NOTHING useful here - total absence of Access Controls

-  NIST - I know I should put this under USA government initiatives, but these come out of the core of NIST

- NIST IR 7497  Security Architecture Design Process for Health Information Exchanges (HIEs)[nistir-7497.pdf](http://csrc.nist.gov/publications/nistir/ir7497/nistir-7497.pdf)

- The Exchange Of Health Information: Designing A Security Architecture To Provide Information Security And Privacy[november2010-bulletin.pdf](http://csrc.nist.gov/publications/nistbul/november2010-bulletin.pdf)

****Conclusion:

So, that is quite a bit... I still think that the [IHE White paper on Access Controls](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf) is the best overall introduction to the details of Federated Access Controls. I think then the [NHIN-Exchange](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407) has the most mature implementation of this using the IHE BPPC, IHE XUA and OASIS XSPA.  This is good work, good-enough to get started on. There are known gaps in the area of perfection and a need to mature the space. I suspect that this will take many more years.

Of course my blog is full of discussion of all of these things. I often find myself using the search bar to find these discussions. It feels good when I find I can reuse an old blog post, which is exactly the reason I started this blog.

