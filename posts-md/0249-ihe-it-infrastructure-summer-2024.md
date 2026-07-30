# IHE IT-Infrastructure Summer 2024

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/07/ihe-it-infrastructure-summer-2024.html
Published: 2024-07-23T13:53:00.006Z
Updated: 2024-08-14T17:43:24.592Z
Author: John Moehrke

---

This summer IHE IT-Infrastructure has been working on three very different work items. All are very clear IT-Infrastructure scoped projects, but two of them are very new territory.

Updated 8/14/2024 to include published links

Announcements

- [PCC](https://mailchi.mp/ihe/ihe-pcc-tf-supplement-published-for-pc-2024-08-13) - QEDm
- [ITI](https://mailchi.mp/ihe/ihe-iti-tf-supplements-published-pc-2024-08-13) - FAIS and Scheduling

Document Digital Signature - JSON signature optionThis work item is updating a long standing, and "Final Text" profile, the Document Digital Signature (DSG). The original DSG used XML-Signature standards, as that was the signature standard of choice back then. This original DSG is still available, as there are environments that want to use XML-Signature standards.

With the XML-Signature we additionally leveraged the profiling of the XML-Signature standard done by ETSI in the XAdES-X-L standard profile for Long Term signatures. Using Long Term signatures as Documents in an HIE (aka Document Sharing) would tend to be available for a long time, and over a broad distance.

The new work is to add an Option that uses the JSON Signature standards. The JSON Signature standards are getting mature and are gaining in interest. One of the key milestones for us is that ETSI has released their Long Term signature profile of the JSON Signature - JAdES-B-LT.

This work item has been out for Public-Comment. We are still trying to work out some specific details about how IHE Document entries are to be indicated in the JSON Signature. As part of this we will be providing examples and pointing at some code that people could use.

The details are in [the supplement that is still available for review and comment.](https://profiles.ihe.net/ITI/DSGj/index.html)

Finance and Insurance Service (FAIS)The Finance and Insurance Service (FAIS) stores, categorizes, and facilitates the administration of centralized claims and finance related data to care provision to patients within the HIE. The service receives claims/financial data from Point of Service applications (including financing applications acting as a point of service interface outside of other PoS systems) and curates the management of them.

This collection of workflows allows an external system to save and retrieve Finance and Insurance Information. The workflows are designed to support the following types of data exchanges with systems.

- A point-of-care system can enroll a beneficiary
- A point-of-care system can check a beneficiaryâ€™s eligibility
- A point-of-care system can run a pre-determination, pre-authorization and claim
- A point-of-care system can track a claimâ€™s status

This is a very new ground for IHE and is coming from the emerging markets where they have this need and don't have existing solutions.

The [FAIS Implementation Guide](https://profiles.ihe.net/ITI/FAIS/1.0.0-comment/index.html)
SchedulingThe IHE FHIR Scheduling Profile is a specification providing FHIR APIs and guidance for access to and booking of appointments for patients by both patient and practitioner end users. This specification is based on [FHIR Version 4.0.1](http://hl7.org/fhir/R4/) and specifically the [Schedule](http://hl7.org/fhir/R4/schedule.html), [Slot](http://hl7.org/fhir/R4/slot.html), and [Appointment](http://hl7.org/fhir/R4/appointment.html) resources.

This work item is based on the previous work of the [Argonaut Project](https://fhir.org/guides/argonaut/scheduling/release1/).  This is an evolution in cooperation with the Argonaut Project.  The following are some of the major differences from the Argonaut IG:

- The IHE Profile is based on FHIR R4
- The IHE Profile is intended for international use, and it does not have required bindings or any dependencies to national profiles
- The operations described are $find, $hold, and $book
- A separate transaction describes the use of FHIR Search for the Appointment resource

The [Scheduling Implementation Guide](https://profiles.ihe.net/ITI/Scheduling/1.0.0-comment/index.html)

New ProjectsGiven that all of the current work items are in Public-Comment, and that we still need to resolve any comments we get, we are being conservative at adding new projects.
Sharing Verifiable Health LinksThis said we are picking up a new work item proposed by the WHO (Who brought the DSG JSON, and Finance projects). This new work items are also backed by Canada and Australia. The new work item looks to profile a portable Verifiable Health Link, to enable patients to provide specific access to their current health data, such as an International Patient Summary (IPS).

This project will leverage other IT-Infrastructure profiles where appropriate, such as MHD and sIPS.
Ongoing Projects - aka Important Change Proposal work
- Integrating the Sex and Gender support into the existing appropriate Profiles, such as PDQ/PDQm.
- Increasing support in XCA and XCPD for searches to be targeted to a given home community, so as to limit the unintended visibility of searches (aka Privacy).

Mention simply because it was my contribution (QEDm)PCC has published for Public-Comment the conversion of the Query for Existing Data for mobile (QEDm) from a PDF publication to a full Implementation Guide. This should be very similar intent as the existing PDF, but as an IG is far more specific and includes examples. This also adjusted to the update that ITI made to [mXDE last year regarding Provenance.](https://profiles.ihe.net/ITI/mXDE/index.html) This will be followed with efforts to build QEDm upon [HL7 IPA](https://hl7.org/fhir/uv/ipa/) in a future public-comment.

The [QEDm Implementation Guide](https://profiles.ihe.net/PCC/QEDm/3.0.0-comment1/index.html)
Join and HelpPlease look to join IHE as a [member](https://www.ihe.net/membership/), or [benefactor](https://www.ihe.net/membership/benefactors/). If these are not possible, then please do continue to watch for Public-Comment and help out with your comments. IHE does not require that you are a member in order to [comment](https://www.ihe.net/resources/public_comment/#IT).

