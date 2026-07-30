# IT-Infrastructure Fall 2022

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/10/it-infrastructure-fall-2022.html
Published: 2022-10-24T16:31:00Z
Updated: 2022-10-24T16:31:20.041Z
Author: John Moehrke

---

Releases Four publications released from IHE IT-Infrastructure, one in Public Comment

- Release for Public-Comment -- [Mobile access to Health Document (MHD) - Improvements](https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/index.html)

- changed to AuditEvent profiling leveraging [Basic Audit Log Patterns (BALP) Release 1.1](https://profiles.ihe.net/ITI/BALP/index.html)
- changes to RESTful type, and query subtype
- Added new features

- Add a **Generate Metadata **that adds the ITI-106 operation that allows for one structured/coded document to be published.
- Add a **Simplified Publish **option that allows for one DocumentReference with the document in the .data element to be published, expecting the Document Recipient to create the SubmissionSet derived off of the DocumentReference and Community mapping policy.
- Add an **ITI-65 FHIR Documents Publish** option with support in ITI-65 to include a FHIR Document Bundle as an alternative to Binary. This makes less the burden on the Document Source to serialize the content into an appropriate Binary format, as that requirement is moved to the Document Recipient. There are use-cases where the Document Recipient will use the FHIR Document Bundle directly, and there are requirements on the Document Recipient to serialize the FHIR Document Bundle when grouped with non-FHIR Actors like XDS/XDR/XDM.
- **Each of these new options may survive or may be removed. Please voice your interest, and sign up for IHE-Connectathon to test these options. Based on interest these Options may survive or be removed.**

- better clarity on types of Identifier
- a method has been added to support DocumentReference replace that is used by the Document Source to mark the old/replaced DocumentReference instance as superseded.

- Patch release -- [Basic Audit Log Patterns (BALP) Release 1.1.1](https://profiles.ihe.net/ITI/BALP/index.html)

- There are no functional changes or breaking changes. This release is primarily to address validation messages that have been made more strict by HL7 than when 1.1.0 was released.
- clarify explanation of each structureDefinition profile
- cleanup examples with explicit slice use to eliminate validation warnings
- add some oAuth AuditEvent examples
- fix the Actor definitions
- switch to new IHE template

- Trial Implementation - [Sharing Valuesets, Codes, and Maps (SVCM) Release 1.5.0](https://profiles.ihe.net/ITI/SVCM/index.html)

- Converted from PDF to a FHIR IG.
- Added in conformance resources and Basic AuditAudit events with examples.
- Clarified the use of business identifiers.

- Trial Implementation - [Secure Retrieve (SeR) Release 2.1](https://profiles.ihe.net/ITI/SeR/index.html)

- Expanded scope of services that can be secured beyond XDS Retrieve

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjEq9x1Whun_yZX1iNMJMpfuYSOvZcTmKlPTueLkQvJDAX3_oA44wF9DYmpoecu9wtr7EAsFcUUNbDe6DRV4xt52IGbw-DNjS4lFhGqUoqnvnA05Zr0soJiISAZDadnxe1XW8TWQ4_MEhT75bQOV77iw65OI0VSMc-J8zBdSX4pRlpXnpKQfsamoukAeQ/s1167/Slide2.PNG

These releases are continued improvement and advancement of the [Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html), and enabling of Community exchanges that are more than Document Sharing. Very focused on #FHIR, but also enabled by existing and successful XDS/XCA Health Information Exchange.

In developmentThe IT-Infrastructure committee is continuing to advance the state of the art. There are three specifications in development at this time.

- **New Implementation Guide on Scheduling** (aka calendar). This work item is taking lessons learned from the Argonaut project on scheduling that has stalled at STU3. The work is in cooperation with the Argonaut project approval. The project is focusing on simple appointments with proposed #FHIR Operations for finding appointment slots, holding an appointment slot, and booking an appointment slot. Current [committee draft](https://build.fhir.org/ig/IHE/ITI.Scheduling/)
- A **whitepaper that focuses on how various Health Information Exchange topologies** can be architected. Indicating the various design decisions, with benefits and drawbacks. These topologies that will be described will start with simple single-depth, but will be more focused on the complexity as multiple-depth networks are needed and where various sub-networks have different architectures. Current [committee draft](https://github.com/IHE/ITI.Topologies)
- **XCPD Revoke Transaction **- This was a CP, but has become a work item due to the scale of the changes -- The XCPD Health Data Locator and Revoke Option supplement adds a Revoke message to ITI-55. The Revoke message is really an entirely separate message, with its own Message Semantics, Trigger Events, Expected Actions, etc. separate from the main Cross Gateway Patient Discovery message in ITI-55. Therefore, it would make more sense for the supplement to introduce this message as its own transaction rather than add it on to ITI-55.
- A FHIR centered **Patient Privacy Consents Implementation Guide** -- The name of this will be determined sometime in the future after the set of use-cases are decided upon. Initial scope is to replicate the BPPC functionality except using FHIR Consent rather than CDA. There may be some of APPC brought in given the functionality of FHIR Consent. Thus the use-cases would tend to be around the same Consent functionality at controlling HIE access to Document scoped data. Future versions might expand to data scope at the FHIR resource level.

I welcome participation in IT-Infrastructure to help with these work items, and propose work items of your own. IHE is a much lower overhead than HL7, yet focuses on producing tightly conformance specifications that are formally tested at IHE-Connectathon.
Future projectsSome [potential next projects](https://github.com/IHE/IT-Infrastructure/projects/2), based on interest and resources:

- Profiling of $match for Patient lookup
- Federating MHDS communities (using XCA or not)
- Converting more of the existing FHIR Profiles to IG format

- mXDE
- QEDm (not formally an ITI project, but we touched it last)
- RESTful ATNA
- NPFS
- mACM

- Impact of the HL7 Gender Harmony IG on ITI profiles
- Broader workflows such as

- Maternal Health full care flows using HIE
- EMS full care flows using HIE
- Social Determinants of Health full care flows using HIE

