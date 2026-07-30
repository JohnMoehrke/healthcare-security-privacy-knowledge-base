# IHE IT-Infrastructure Winter 2024

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/02/ihe-it-infrastructure-winter-2024.html
Published: 2024-02-19T15:57:00.001Z
Updated: 2024-03-01T13:11:29.289Z
Author: John Moehrke

---

Updated with final announcement: IHE IT-Infrastructure with two major new profiles (DSUBm, and PDQm match), and three minor updates (BALP, PIXm, and PCF), all on #FHIR. [https://mailchi.mp/ihe/ihe-iti-tf-documents-published-2024-02-29](https://mailchi.mp/ihe/ihe-iti-tf-documents-published-2024-02-29)

IHE just completed our winter quarter face-to-face meeting, held in Oak Brook IL at the RSNA headquarters. We primarily focused on two IHE-Profiles, and a set of other tasks. The update to PDQm and DSUBm will soon be formally published for Trial-Implementation.
- PDQm 3.0.0 - adding support for $match operation.
- DSUBm 1.0.0 - subscription to document sharing.

Other tasks worked on:

- Scheduling for Mobile - incremental development of transactions.
- Downgrade PCF 1.1.0 to R4 for greater usability.
- Minor Bug fixes in BALP 1.1.3 profiles.
- Minor Bug fixes in PIXm 3.0.4 profiles.
- FormatCode 1.1.1 vocabulary inclusion of status active.
- Plan for support of sex and gender profiling.

Next quarter's work:

- Continue developing Scheduling for Mobile.
- Add to DSG, support for JSON Web Signature (JWS).
- Develop Finance and Insurance workflow.
- Update HIE Whitepaper and MHDS with newest Profiles.
- Continue to work with IPA for suitability for QEDm use-cases

PDQm support for $match operation
[Patient Demographics Query for mobile (PDQm) version 3.0.0](https://profiles.ihe.net/ITI/PDQm/index.html) now has support that is more in alignment with the original use-cases with the addition of support for $match operation. The $match operation allows a client to provide all that it knows about the subject and enables the server to utilize algorithms to get the best match. Previously PDQm supported only the FHIR query, which does not give the server the power to utilize algorithms.
https://blogger.googleusercontent.com/img/a/AVvXsEjwl9aFFMW5bcCDKCc-3ccHMm6XBX3IgPv3loed5A8iFQtbfQZo3nX4o_gg26KaHcG9GoYAZ_vLAeM_mvIgkTZmjKNBVPhp0bQ-mkKWbsae1GdsZqYg_23xfRImBQKCV69caG0e6O-3ikibJZNxl-cELxXDL9W092td7k9TaFgLd_8HI5_eluGiUd5BDTWx

Both query and $match are now available in PDQm, as there are clear use-cases where one wants to use query, such as at a registration desk where a human would then further match. Whereas the $match may be more beneficial where some information is known about the patient and a best match is needed.

The PDQm server (Patient Demographics Supplier Actor) must support the search transaction and has an option to declare support for the $match. The PDQm client (Patient Demographics Consumer) will need to declare at least one option indicating that it will use either query, $match, or both. Support for the normal FHIR dynamic discovery using the metadata endpoint returning a CapabilityStatement is used in operational environments to detect server support.

Document Subscription for Mobile (DSUBm)The [Document Subscription for Mobile (DSUBm) version 1.0.0](https://profiles.ihe.net/ITI/DSUBm/index.html) profile describes the use of document subscription and notification mechanisms for RESTful applications. In a similar way to the [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) profile, a subscription is made in order to receive a notification when a document publication event matches the criteria expressed in the subscription.
https://blogger.googleusercontent.com/img/a/AVvXsEgNb_xzQUa7CK-S_zv9nvBFkYWebyHOdjbrF8XqELi7lDIuu7Jx7HBjZPrsjBv0fXiQ7zU2jUgACk3CZK6tjenzkcD7MbBpWPos6gXJdlbbaxMUZNAyeakc_J7oFAY_9R5l5HpVVoaMXq4LTXMYOk0IP88jOeqqW5yZ23kxWYX_5iWmc0NIOoQULtzjsDFb

The DSUBm allows clients to subscribe to specific kinds of changes in the Document Sharing system, such as new documents, updates to folders, and replaced documents. For example, subscribing on a given patient for a new lab report. DSUBm also adds support for MHD clients to get subscriptions about these activities in an XDS environment and adds support to DSUB to enable searching on subscriptions that are not supported in DSUB. A significant portion of the documentation is guidance on assembling these various subscription capabilities across different Document Sharing methods. These are the documented use-cases that drive the solution and show the breadth of support:

- Document Subscription for Mobile application in MHDS Environment
- Document Subscription for Mobile application in MHDS Environment using Folder Subscription
- Document Subscription for Mobile Device in XDS on FHIR Environment
- Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm
- Document Subscription for Mobile Alert System
- Document Subscription for Mobile Device in XDS on FHIR Environment with availabilityStatus update
- Document Subscription for Mobile Device in XDS on FHIR Environment with document metadata update
- SubmissionSet Subscription in a XDS Environment where DSUBm is Grouped with DSUB

This Profile is using FHIR R4 to be consistent with the other IHE Document Sharing  infrastructure and uses the HL7 [Subscriptions R5 Backport](http://hl7.org/fhir/uv/subscriptions-backport/STU1.1/). This enables support in R4, using the newer subscription methodology developed in FHIR R5. The support for FHIR R4 is stronger in the marketplace, with very little interest in FHIR R5. Both IHE and HL7 have received strong feedback from the implementer communities that FHIR R4 will continue to be the focus until FHIR R6 is readily available. Note that there are some trickery being used to utilize this newer subscription methodology in an FHIR R4.

Clients can discover the kinds of subscriptions available [ITI-114], search on current subscriptions [ITI-113], and subscribe [ITI-110]. When a subscription is triggered, a notification is sent [ITI-112]. The other transaction [ITI-111] enables backend infrastructure between the Document Sharing environment and the notification environment.
NotableDowngrade **PCF **to R4 for greater usability. We have found that one can't depend upon a FHIR R4B implementation guide in a FHIR R4 implementation guide and further profile. Given that PCF is intended to be further refined by more advanced use-cases or regional needs, this was creating problems. The only reason we started with R4B was that there was a bug in the FHIR R4 build around an example in Consent that caused an IG build error. This is no longer a problem, so we downgraded PCF to R4.

Bug fixes in **BALP **profiles. There were some observed profiling bugs that were reported by the community (big thank you to all you in the community that report these things). The changes made were to the intended constraint. The changes make the constraint more specific, correct, and better for further profiling.

Bug fixes in **PIXm **profiles. A helpful community comment observed that the PIXm specification was improperly profiling how an error would be returned.

**FormatCode **vocabulary inclusion of status active. Previously only the codes that were deprecated had a status on them. The current vocabulary infrastructure was thus not seeing any active codes. So, all the codes that are not deprecated now have a status of active. This will result in proper valueSet expansions. I am in the process of updating the HL7 valueSet that includes the IHE codes.
Spring QuarterWe looked at FHIR R5 this last quarter. We were not looking to move to FHIR R5, but rather to evaluate the impact if it was needed. We found that some of our Profiles will convert easily, but we also found significant problems with FHIR R5, significant enough that we created HL7 jira tickets requesting that these be fixed before FHIR R6. We will continue this effort with the intent that the effort that we take now will provide more insights to better the FHIR R6 release. We have strong marketplace indications that FHIR R4 will continue to dominate until FHIR R6, specifically that FHIR R5 will only be used for specific isolated use-cases.

We have been looking at the possible impact of the HL7 lead cross-SDO effort on Gender Harmony. IHE, especially ITI, have many Profiles that touch upon the concept of the patient (HL7 v2, v3, CDA, and FHIR) so it is important that we assess the impact. At this time our approach is to look for any problems where our profiling is contra to the Gender Harmony recommendations. We are finding that the impact is mostly an opportunity to inform our reader that when they need to communicate the concepts developed in the Gender Harmony specifications that they MUST use the approaches developed there. This approach helps encourage the correct behavior.

[Scheduling](https://build.fhir.org/ig/IHE/ITI.Scheduling/index.html)-- a vendor agnostic specification providing FHIR APIs and guidance for access to and booking of appointments for patients by both patient and practitioner end users, including cross-organizational workflows. First developed in Argonaut on STU3, the further development has been cooperatively transferred to IHE. The IHE specification is based on [FHIR Version 4.0.1](http://hl7.org/fhir/R4/), and references the [Schedule](http://hl7.org/fhir/R4/schedule.html), [Slot](http://hl7.org/fhir/R4/slot.html), and [Appointment](http://hl7.org/fhir/R4/appointment.html) resources. This workflow profile defines transactions that allow a scheduling client to obtain information about possible appointment opportunities based on specific parameters, and based on that information, allow the client to book an appointment.

Add to DSG, support for JSON Web Signature (JWS). There is market interest in using JSON Web Signatures (JWS) rather than XML-Signature. The use-cases will be the same as in the current Document Digital Signature (DSG), that supports whole document signature. The likely impact will be a new option to support JWS signatures, which will predominantly be a new MIME-TYPE of DSG document object. The JWS will likely use the JAdES profile on JWS for long-term signature, like today is in DSG using XAdES for XML-Signature.
Develop Finance and Insurance workflow. Outside the USA there is interest in a general use Finance and Insurance workflow. This is mostly needed in the developing countries where there isn't an existing model, or where the existing model needs radical changes. The model will take inspiration from the work of [OpenHIE Finance and Insurance Services Workflow](https://guides.ohie.org/arch-spec/introduction/openhie-finance-and-insurance-services-workflows).

For those that want to participate, please contact me. IHE always welcomes new participants.

