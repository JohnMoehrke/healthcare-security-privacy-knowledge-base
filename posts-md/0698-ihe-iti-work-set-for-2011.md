# IHE ITI Work set for 2011

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/11/ihe-iti-work-set-for-2011.html
Published: 2010-11-18T20:07:00Z
Updated: 2010-11-18T20:07:46.742Z
Author: John Moehrke

---

The [IT Infrastructure (ITI)](http://www.ihe.net/Technical_Framework/index.cfm#IT) domain of [Integrating the Healthcare Enterprise (IHE)](http://www.ihe.net/)  has started the Development Cycle for 2011. The process starts with the  Planning committee evaluating "Proposals". This year the ITI committee  had only a few proposals to choose from, so they choose to simply  prioritize the list rather than eliminate some proposals.

The Technical committee meet this week to evaluate how hard each one is, including  evaluating if it is even feasible. There was spirited debate about each one of them. There are some work items that are simple documentation but complex decisions to be made, where others have been discussed at length that result in convoluted textual changes.

The Technical committee ultimately decided to eliminate one proposed work item from the list given to them by the planning committee. The work item that was removed is the [Document Sharing Directory Service](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr9-2011-2012/Planning_Cmte/BriefProfileProposals/ITI_Profile_Proposal_Directory_Services_Oct_2010.ppt)-  This proposal would have resulted in a way to publish service endpoints for  building a Health Information Exchange using the IHE XDS family of  profiles. This is a profile of the UDDI directory standard specific to  the IHE XDS family services. This work is highly influenced by the  NHIN-Exchange experience.  The main reason it got killed was due to overall resource balance across the whole committee; there was also concern with the maturity of the standards with evolving new standards.

**The resulting Work items for 2011

**

1 [XDS Link/Unlink Support](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr9-2011-2012/Planning_Cmte/BriefProfileProposals/ITIProfileProposalXDSLink-UnlinkSupport_v3.0.ppt)  - This proposal will result in a profile that explains how to handle  Link and Unlink in an XDS Health Information Exchange. This proposal  will impact Health Information Exchange Infrastructure including Patient  Identity Management and Registries.

2 [Cross-Enterprise Document Workflow (XDW)](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr9-2011-2012/Planning_Cmte/BriefProfileProposals/ITIProfileProposalXDW_OakBrook_v2.ppt)  - This proposal focuses on the Cross-Enterprise Workflow for Document  Sharing in support of workflow document and status management. Key  elements: Managing workflow specific status with relationship to one or  more documents, Tracking the health care entity that change a status  associated to a workflow step, and Tracking the past steps of the  workflow related to specific clinical event. This is a BASIC profile that real workflows will build upon.

3 [XCA Query & Retrieve](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr9-2011-2012/Planning_Cmte/BriefProfileProposals/epSOS-IHE-XCAQR-v02.ppt)  - This is a proposal to add a new transaction to the XCA environment  that would combine an XDS Query and a Retrieve of all documents  identified by the Query result. This proposal likely will not be  supported in XDS environments. The motivation for this is to make  Cross-Community queries easier to process in the infrastructure.There is clear concern about the unintended consequences of adding this profile.

4 [XD* Minimal Metadata](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr9-2011-2012/Planning_Cmte/BriefProfileProposals/IHE2011-2012ProfileProposalXD_Metadata.ppt)  - This proposal asks for the XDS Metadata requirements to be  reevaluated relative to PUSH type transactions (i.e., XDR and XDM). This  proposal is inspired by the [NHIN-Direct project](http://insidege.ge.com/portal/site/igeglobal/menuitem.ac57a32ad147f2d328d50382edc1aa30/?content_id=4362045&root_portlet_id=20313) and will include other changes to XDR proposed by them.

5 [CDA Encryption](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr9-2011-2012/Planning_Cmte/BriefProfileProposals/ITIProfileProposal-DocumentEncryption_v1.0.ppt)  - This proposal has been shaped and scoped by the Planning committee.  It now focuses on adding Encryption capability at the document level. This  solution will likely follow the IHE Radiology committee solution in PDI.  This is to apply Secure e-Mail (S/MIME) content packaging around the  XDM zip file. This results in a portable encrypted package that can be  carried on any device or transport. This profile could also create an encrypted container for any document at the document level, similar to the DSG profile.

6 [Pseudonymisation and De-Identification in IHE Profiles (Handbook)](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr9-2011-2012/Planning_Cmte/BriefProfileProposals/IHE_profile_Pseudonymisation_Proposal_%28Brief%29.doc) -  This proposal will result in a handbook, a process that IHE domain  committees can use, that can be used on domain specific use-cases to  develop a de-identification and pseudonymization profile. This work will  leverage similar work done in HITSP. This work will look closely at the  [QRPH white paper](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr9-2011-2012/Planning_Cmte/BriefProfileProposals/QRPH_Pseudonymisation_white_paper_v0.4.doc) written last year on the subject. This handbook will also incorporate the process I have documented in [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html)

