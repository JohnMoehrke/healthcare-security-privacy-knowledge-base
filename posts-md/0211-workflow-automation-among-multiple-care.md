# Workflow Automation Among Multiple Care-Providing Institutions

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/01/workflow-automation-among-multiple-care.html
Published: 2012-01-17T04:36:00.001Z
Updated: 2012-01-17T04:36:23.977Z
Author: John Moehrke

---

[IHE IT Technical committee](http://www.ihe.net/Technical_Framework/index.cfm#IT) has released the [Cross-Enterprise Document Workflow (XDW) profile](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_XDW_Rev2-1_TI_2011-10-03.pdf). This is a key foundational profile that will enable use-case specific workflows to be managed across organizational boundaries. It sets forward a basic workflow 'token' by defining a workflow document which is profiled by combining [OASIS](http://www.oasis-open.org/)WS-HumanTask, and [HL7 CDA](http://www.hl7.org/implement/standards/index.cfm?ref=nav). The XDW profile does not define any workflows, but rather sets a framework that others will use to support Health Information Exchange (HIE) based workflows like Patient Transfer, Remote Imaging Diagnosis Referral, Prescription workflows, and many Home  Care plans. By re-using the [XDS infrastructure](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html), XDW leverages the clinical documentation also managed there. XDW provides context and focus to the documentation.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj_XPhd9FavgI3-XLJFrcPhW-5c46SuWjg3OaOhnjVs-mmghIiTwmJsMndCaCt3lCYU0HTDSp3FdBOPyyvE6M-O6dxU4hhOo5nUDd4wNjnJalw9Kwi9JbNAwDoNFOIpABVU0uIH8691-YyP/s1600/image002-707379.pngXDW is targeted to facilitate the development of interoperable workflow management applications where workflow-specific customization is minimized. XDW does NOT replace departmental workflows, although it might leverage a departmental workflow as one of the larger steps that are managed by XDW. XDW does NOT replace centrally managed workflows such as those controlled by BPEL, but might leverage a BPEL controlled workflow as one of the larger steps that are managed by XDW.  The XDW workflow may refer to an externally defined and possibly not computable workflow definition, but is designed to support evolution to completely enclosed and/or computable workflows.

In the development of the XDW Profile, much attention has been applied to making XDW deployment easy, without the need for dedicated centralized workflow infrastructure. The profile recognizes that the patient is centric to their healthcare workflow, and thus uses the patient centric Health Information Exchange provided by XDS. XDW is foundational both to support care-setting specific workflows, but also to expand with future evolution.

Health Systems in developed countries are receiving much attention, it is now well accepted that interoperable IT systems and EHRs are a critical technology.  Much progress has been made in standards-based interoperability in [health information exchange (HIE)](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html) and early deployments are encouraging.  Integrating the Health Enterprise (IHE) profiles such as Cross-Enterprise Document Sharing (XDS) and Cross-Community Access (XCA) are playing a key role in large scale projects such as the [European cross-border epSOS](http://www.epsos.eu/) and the [US NwHIN-Exchange](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407).  Many are satisfied that they can now share Clinical Documents (CCD/CDA), Diagnostic Imaging (DICOM) or even unstructured (PDF) content is accepted as foundational.

We now look to manage workflow among the various institutions that are coordinating a patientâ€™s care delivery. These workflows are community wide and involve different tasks at different specialty facilities that are not part of the same organization, to leverage the HIE infrastructure that has been proven as a good longitudinal document exchange.  This is the problem that is addressed by the Cross-Enterprise Document Workflow (XDW) profile.

**A novel approach to multi-organization workflow management**

The Cross-Enterprise Document Workflow (XDW) profile was released by IHE in October 2011 for trial implementation.  XDW enables participants in a multi-organizational environment to manage and track the tasks related to patient-centric workflows as they coordinate their activities:

- It does not rely on a central controller, or a central scheduler, thus it may scale from exchanges, to communities to nations.

- Decisions are made by the â€œedgeâ€ IT systems supporting the providers, doctors, nurses, etc. Note an edge system can be a departmental workflow automation system.

- It is flexible to support a wide range of workflow, from the simplest e-Referral, to dynamic and adjustable workflows.

- It minimizes implementation impact on IT systems that manage workflows within each organization

- Basic framework today that can be enhanced by specific workflows and advanced as multi-organizational workflow standards emerge and mature

**XDW a Framework for multi-organizational workflows**

XDW is an interoperability framework operating in a document sharing context (e.g. based on the XDS profile) which supports the management of clinical process. Its a workflow-generic profile which needs to be specialized through specific Workflow Definitions (IHE specified Profiles or project specific) to address specific clinical processes.  As a framework, it Increases the consistency across workflows, and enables the easy deployment of interoperable workflow management applications where workflow-specific customization is minimized.  As a result, XDW facilitates the integration of multi-organizational workflows with the variety of existing workflow management systems used within the participating organizations.

It federates the workflows managed by each institution in a peer-to-peer approach.  This is quite different from the classical intra-hospital approach to support a workflow by exchanging messages (orders, acknowledgments, results, notifications, etc.) between predefined IT systems.

**How does XDW Work? **

XDW operates around the sharing of a Workflow document for each workflow instance associated with a patient.  A workflow document:

- Tracks the current/past tasks of the workflow and engaged health care entities

- Tracks the workflow specific tasks status with relationship and references to input/output documents

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg9EY5aZDL340RMO-8MDe5lQazOH4Uon0fJy0Ftlee91-XZUYWLwQ6MyBZ0hvyx3lRwpTocrMj7XlX2zutCHnBYAQb3O-qZ2YhO-pHYa-uNny_5xzAP1R0bw6AYBDYLmC17_tiG7sEedOb2/s1600/image003-708365.png

The execution of each instance of a workflow is driven/enforced by the participating IT systems (XDW actors), while the document sharing infrastructure provides transparent access to any authorized participating system.

The Workflow Document format and structure is specified by XDW and is generic across any specific workflow definition.

What are the workflows supported by XDW ?

The XDW profile is designed to be used in conjunction with any Workflow Definition.  It makes the task of defining such workflows quite easy, as it provides a clear and user friendly framework to develop such definitions.  They include:

Â·         A human readable definition of a specific healthcare process

Â·         A set of rules and task definition which characterize the process

Â·         The definition of the participants involved in the workflow and their roles

The XDW profile contains an annex that includes the informal definition of a simple e-Referral workflow, sufficient to implement and use XDW.  IHE expects that clinical IHE domains will develop reusable Workflow Definitions as IHE Profiles for the most common workflows, but that more specific workflows may be also defined by e-Health projects around the world. IHE anticipates provider organizations and national bodies (HHS/ONC) to define workflows that can be directly automated using XDW.

IHE Patient Care Coordination (PCC), IHE Radiology and IHE Pharmacy have already started to build upon XDW with profiles due by the summer of 2012 such as:

- XBeR-WD Cross Enterprise Basic e-Referral Workflow Definition Profile

- XSM Cross Enterprise Screening Mammography Workflow Definition Profile (White Paper)

- XTHM-WD Cross Enterprise Tele Home Monitoring Workflow Definition Profile

- XTB-WD Cross Enterprise Tumor Board Workflow Definition Profile

- CMPD Community Medication Prescription and Dispense

**Selected Standards**

XDW Supplement introduces a new content profile type - for a workflow management document - based on the following standards:

- OASIS Human Task for task structure and encoding (part of the BPEL suite of standards)

- HL7 CDA for provider description

- HL7 R-MIM for patient and author description

In XDW, no new transactions are introduced. WDW leverages existing ITI IHE Profiles:

- XDS, PIX, PDQ, DSUB, BPPC, ATNA, XUA, CT

- No XDS Metadata extension, but specific rules about XDS Metadata content for the registry entry associated to the XDW Workflow Document

Is XDW ready for prime time?

With the trial implementation profile specification available, the first IHE Connectathon testing is scheduled for Bern (Switzerland) in May 2012 with at least an e-Referral workflow.  The profile is ready for implementation in products towards the end of 2012, early 2013.

**Conclusion**

The integration of multi-organizational workflows with the variety of existing workflow management systems used within the participating organizations has been waiting for such a common, workflow-independent approach to interoperability.

XDW provides a platform upon which a wide range of specific workflows can be defined with minimal specification and implementation efforts (e.g., Medical Referrals Workflow, Remote Imaging Diagnosis, Prescriptions Workflow, Home Care Workflow).  As it increases the consistency of workflow interoperability, it is targeted to facilitate the development of interoperable workflow management applications where workflow-specific customization is minimized.

Much attention has been applied to making its deployment easy, without the needs dedicated centralized infrastructure beyond a secured sharing of health documents infrastructure provided by an XDS Registry/repository.

