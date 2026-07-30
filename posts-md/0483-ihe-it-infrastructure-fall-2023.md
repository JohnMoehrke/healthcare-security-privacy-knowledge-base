# IHE IT-Infrastructure Fall 2023

Originally posted: https://healthcaresecprivacy.blogspot.com/2023/11/ihe-it-infrastructure-fall-2023.html
Published: 2023-11-07T14:56:00.002Z
Updated: 2023-11-27T13:29:18.028Z
Author: John Moehrke

---

The IHE IT-Infrastructure committee has approved four milestones; sIPS, NPFS, DSUBm, and PDQm match alternative. This winter quarter will be a lighter load, recognizing the holidays: Patient Scheduling, prospective look at FHIR R5/6, and evaluating impact of Gender Harmony.

This article is published before these are formally published, so I include a (will be at) link that likely won't be proper until later in November.

(updated to clarify the [links](https://profiles.ihe.net/ITI/index.html)and add YouTube [presentation](https://www.youtube.com/@IHEIntl/videos)links)

Sharing IPS (sIPS)Formal Publication -- [https://profiles.ihe.net/ITI/sIPS](https://profiles.ihe.net/ITI/sIPS)

This Implementation Guide was out for Public-Comment and is now ready for Trial-Implementation.

The Sharing of IPS (sIPS) IHE Profile provides for methods of exchanging the [HL7 International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips), using [IHE Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) but does not modify the [HL7 IPS](http://hl7.org/fhir/uv/ips) specification.
https://blogger.googleusercontent.com/img/a/AVvXsEiPpiYYhUcK5l1-Am_Qr4hiY0QcudX_eKrSD0lGlRxEa_lY98SrpWN-DBYT1mnJ4uNg0A8ktV71CeVZ27loxGWQ_rsK_b-gHFkFGAmofsbmYSVlQfQ2cYmfWckvQ_yielwRri-HjHoYefVma0OttRv-FORS3wUnoDvfLwcG4hhECOmreb3fiNt8d6hyCSlX

The [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips) content,
as defined in the [ISO 27269](https://www.iso.org/standard/79491.html) data model specification, utilizes IHEâ€™s [document sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) infrastructure including cross-community, HIE, direct exchange models, and more. It has been designed specifically to remove barriers to adoption, by leveraging architectures that are currently implemented, well-established, and robust.

The sIPS Profile provides implementation guidance to vendors and implementers and joins a growing suite of IPS standards artefacts contributed by a variety of [Standards Development Organizations (SDOs)](https://international-patient-summary.net/) and coordinated by the [Joint Initiative Council for Global Health Informatics Standardization (JIC)](http://jointinitiativecouncil.org/).
https://blogger.googleusercontent.com/img/a/AVvXsEjsExCBjlAKEtms-8xE_behSPqSD0_mHXzt7hlxu2DWvQYNJgXzsWNMWGCUrdthEyTIqLF7WgwoOtTZczfxWeziHV5GgqacDRhDYi3eAyop2vxr5Bx21C-cUpr6IbJZ7VDFre7S0TPjX7FHT-Ycnrr7W_Li8Q80-nqKvEzmXqcvXU9v40uAOJ43J1HZde9-

YouTube presentation, [long](https://youtu.be/DX33OZDeNIs?si=SF0lSo_bg3EEOt72), and [short](https://youtu.be/xBbzExgb0ck?si=oCGx3znkSfujiKdU).

Non-Patient File Sharing (NPFS)
Formal Publication -- [https://profiles.ihe.net/ITI/NPFS](https://profiles.ihe.net/ITI/NPFS)

This Implementation Guide was converted from PDF form into the Implementation Guide form and is now transitioning to Trial-Implementation again.

The Non-Patient File Sharing (NPFS) Profile defines how to share non-patient files such as clinical workflow definitions, domain policies, and stylesheets. Those files can be created and consumed by many different systems involved in a wide variety of data sharing workflows.https://blogger.googleusercontent.com/img/a/AVvXsEj2cfiygWjATl0zTVNHi_dGNOIrdwq3ZCoFSll7IYsnq5uSfbFWxc4lHG8WldFQI2P22PQnuQUGIPUf_E___kGaFCuN7eYL2bZgJ9nLd08-U-vBNP2mp2mQUTV72F6WUXziORWghp3VD_uCOH7piR8MR0J_jFl9JQ3rhEpTt5F97uyYc0t78GogdW-m8JS-

YouTube [presentation](https://youtu.be/kmtlnTWvW90?si=sfKdYF3VAN10KWue).

Document Subscription for Mobile (DSUBm)Public-Comment -- [https://profiles.ihe.net/ITI/DSUBm/1.0.0-comment](https://profiles.ihe.net/ITI/DSUBm/1.0.0-comment)

This Implementation Guide is going to Public-Comment as a new specification that provides for subscriptions and notification mechanisms to Document Sharing publications.

The Document Subscription for Mobile (DSUBm) profile describes the use of document subscription and notification mechanisms for RESTful applications. In a similar way to the [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) profile, a subscription is made in order to receive a notification when a document publication event matches the criteria expressed in the subscription.

This profile can be applied in a RESTful-only environment as [MHDS](https://profiles.ihe.net/ITI/TF/Volume1/ch-50.html#50) but it can also be used with different non-mobile profiles as [XDS.b](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html) and [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html). This profile intends to grant the same functionality as the [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) profile and its supplements regarding Document subscription but also adding some other functionalities (e.g. Subscription Search).https://blogger.googleusercontent.com/img/a/AVvXsEgktMhg-q03yUNMgKPsrrmZXCcyaKVj0SJ_esH8AXHFKsUUh-ENs6Y6yqJjaRSPFnJzQ-H-6TM2XJ3ezVpMkx2tA97-ij3YE6s9ZlLQUKl0DOAMqYJPwCgc_8oivPxy0l1gLhQCMW8oEWdls8xHyVBcttQC_PTJG1aMObROq0BW-SzW6pDKErJbL2vm_w9m

YouTube [presentation](https://youtu.be/1YD8S7Fm0Wc?si=_BPmif5zO_gtk23s).
Patient Demographics for Mobile (PDQm)Public-Comment -- [https://profiles.ihe.net/ITI/PDQm/3.0.0-comment](https://profiles.ihe.net/ITI/PDQm/3.0.0-comment)

This Implementation Guide is going to Public-Comment with a new alternative for looking up a Patient using the FHIR $match operation.

Patient Demographics Match is used by the Patient Demographics Consumer to request that the Patient Demographics Supplier identify Patient records that match the demographics supplied in the request message. The request is received by the Patient Demographics Supplier. The Patient Demographics Supplier processes the request according to its internal matching algorithm and returns a response in the form of demographics information for the matching patients.

https://blogger.googleusercontent.com/img/a/AVvXsEhjJANfFYXTgTmHsiF5DF3xfXzQU3BicpTqw0GdO7WU-BZ9Z6Du3m0i4nP7gZI0jTPzRJ82dKJ0DKUxU94udsjaAuradzMV0htLsjHsyYfr3M6m6I_gaxm_-jiuyO6e4DoMABCYJNItmJ1LCMmp4eJkzSjXz8vWK6TCtx_V-oMWvURgbOb3ohSvpldGgqaZ

YouTube [presentation](https://youtu.be/LoXdXwgKlRI?si=fK8HK3hR46r_l477).

Winter QuarterThe winter quarter we will continue working on:

- [Scheduling](https://build.fhir.org/ig/IHE/ITI.Scheduling/index.html)-- a vendor agnostic specification providing FHIR APIs and guidance for access to and booking of appointments for patients by both patient and practitioner end users, including cross-organizational workflows. This specification is based on [FHIR Version 4.0.1](http://hl7.org/fhir/R4/), and references the [Schedule](http://hl7.org/fhir/R4/schedule.html), [Slot](http://hl7.org/fhir/R4/slot.html), and [Appointment](http://hl7.org/fhir/R4/appointment.html) resources. This workflow profile defines transactions that allow a scheduling client to obtain information about possible appointment opportunities based on specific parameters, and, based on that information, allow the client to book an appointment.
- Evaluating FHIR R5 to improve FHIR core for R6 -- The workgroup will look at what it might take to convert the current set of FHIR R4 implementation guides to R5, with the goal to uncover concerns with FHIR core that IHE should recommend be remediated in FHIR core R6. There is no intention by IHE to publish these FHIR R5 implementation guides as market demand is very low.
- Evaluating the impact of Gender Harmony on IHE Profiles -- HL7 has published a set of implementation guides covering the Gender Harmony use-cases including HL7 v2, CDA, and FHIR. The workgroup will be evaluating the potential to update existing IHE Profiles to add these capabilities.

