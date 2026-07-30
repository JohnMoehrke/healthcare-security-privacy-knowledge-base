# Patient Identity Management the IHE way

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/08/patient-identity-management-ihe-way.html
Published: 2020-08-31T15:00:00.004Z
Updated: 2020-08-31T15:14:44.018Z
Author: John Moehrke

---

Here are the IHE relevant works on the topic of Patient.

**Most important, this is not an interoperability problem**

Nationwide Patient Identity Management, especially in a federation like the USA, is a balance between quality, privacy, and safety. Where patient treatment is involved, mistakes in identity can kill. Where health data are involved, mistakes in identity can be a permanent privacy violation. These problems don't exist in environments outside of healthcare, like the financial / banking industry, where in those industries it is easy and effective to revoke an identity, protect an account, and issue a new identity. Further in these other industries a financial remedy is all that is needed to address damages, and thus insurance against damages is easy.

The more accurate one can identify the patient, the more accurate the linkage to that same patient at other locations. Quality of identity can build upon other identifier numbers, like Drivers License, Passport numbers, social security number, etc.

**Architectures**
IHE includes two distinct architectures at the interoperability level.
**1. Centralized - **In this model, all the participating organizations feed their updates to a central service. Thus the central service is completely aware of all the information. It can cross-reference various identifiers into a virtual identity. This central authority
**2. Federated - **In this model, all the participants agree to respond to queries from other participants.

The intention is that regional exchanges that are all within a single policy domain could use the **Centralized** approach. Where as broader access beyond that regional exchange would be knit together using the **Federated** approach.

Within an organization, there tends to be a scale of **Centralized**, but within an organization there could also be forms of **Federated. **The original PIX/PDQ model explained below was designed first for use within a healthcare treatment organization.

This was extended to an XDS "Affinity Domain" when XDS needed an identity. In the case of XDS "Affinity Domain" there is a master identifier that is maintained centrally within the Affinity Domain, yet there is no defined centralized set of master identifier attributes. Within an Affinity Domain there is mechanics for fixing mistaken identity, but no mechanics to inform all participants when a patient changes attributes like name, address, phone number, etc.

The **Federated** approach is what was designed for XCA, to enable communities to be self-contained, while enabling a patient discovery in a federated way. The XCPD profile is used in XCA to request that a patient match be discovered. This match is based on the policy, accuracy, and authorization at each responding community.

The new IHE Profile below that manages a comprehensive identity for each patient. In this way the community participants agree to cooperate on a single identity for each patient. This would include cross-references to local medical record numbers where they exist, but more important includes mechanics for cooperating on updates as the patient changes their address, phone number, e-mail address, and name.
**
**
**Interoperability solutions**

FHIR Profiles

- [Mobile Health Document Sharing (MHDS)](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_MHDS.pdf) â€“ Published 2020-05-29

- Section 50.7 MHDS Background
- 50.7.4 Patient Identity Management
- 50.7.4.1 Patient Identity Management Registry (PMIR profile)
- 50.7.4.2 Patient Demographics Query for Mobile (PDQm profile)

- [Patient Demographics Query for Mobile (PDQm)](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PDQm.pdf) â€“ Revised 2020-08-28

- transaction for looking up a patient by any identity attribute

- [Patient Identifier Cross-reference for Mobile (PIXm)](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PIXm.pdf) â€“ Revised 2019-12-05

- transaction for converting one identity into known alternatives

- [Patient Master Identity Registry (PMIR)](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PMIR.pdf) â€“ Revised 2020-08-28

- comprehensive community based Patient Identity for Golden Patient Identity

Legacy Architecture Profiles

-  [XCPD] [Cross-Community Patient Discovery](https://wiki.ihe.net/index.php/Cross-Community_Patient_Discovery) locates communities with electronic health records for a patient and translates patient identifiers across communities.
-  [PAM] [Patient Administration Management](https://wiki.ihe.net/index.php/Patient_Administration_Management) establishes the continuity and integrity of patient data in and across acute care settings, as well as among ambulatory caregivers.

-  [PDQ] [Patient Demographics Query](https://wiki.ihe.net/index.php/Patient_Demographics_Query) queries by patient demographics for patient identity from a central patient information server.
-  [PIX] [Patient Identifier Cross Referencing](https://wiki.ihe.net/index.php/Patient_Identifier_Cross_Referencing) queries for patient identity cross-references between hospitals, sites, health information exchange networks, etc.
-  [XPID] [XAD-PID Change Management](https://wiki.ihe.net/index.php/XAD-PID_Change_Management) updates the relationship between XDS Affinity Domain patient identifiers and other patient identifiers.

Whitepapers and Handbooks on HIE, each have sections on Patient Identity Management

- [Health Information Exchange: Enabling Document Sharing Using IHE Profiles](https://www.ihe.net/Technical_Framework/upload/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1-0_2012-01-24.pdf) â€“ Published 2012-01-24

- Section 4 Patient Identity Management
- 4.1 Patient Identity Cross-Reference (PIX)
- 4.2 Patient Demographics Query (PDQ)
- 4.3 Cross-Community Patient Discovery (XCPD)

- [Template for XDS Affinity Domain Deployment Planning](https://www.ihe.net/Technical_Framework/upload/IHE_ITI_White_Paper_XDS_Affinity_Domain_Template_TI_2008-12-02.pdf) â€“ Revised 2008-12-02

- Defines policy decisions that a community needs to address. Specific to Patient:

- Section A.8.2.2.7 XDS Patient Identity Source
- Section A.8.2.2.8 PIX Patient Identity Source
- Section A.8.2.2.9 PIX Manager
- Section A.8.2.2.10 PIX Consumer
- Section A.8.2.2.11 PDQ Patient Demographics Supplier
- Section A.8.2.2.12 PDQ Patient Demographics Consumer
- **Section A.9.2.1 Example of Rules and Restrictions for Patient Demographics Data**

-
- [Volume 2x (ITI TF-2x)](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol2x.pdf): Appendices A through X and Glossary (Rev. 15.1)

- Appendix E: Patient Identifiers in HL7-based IHE Profiles
- Appendix M: Using Patient Demographics Query in Multi-Domain Environments

- [Volume 1 (ITI TF-1): Integration Profiles](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol1.pdf)

- Appendix E.10 XCA and Patient Identification Management

IHE focuses on Interoperability, not policy. This said, the interoperability needs are driven by a set of reasonable policies that are expected to be used.

