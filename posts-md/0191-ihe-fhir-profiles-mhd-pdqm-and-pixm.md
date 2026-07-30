# IHE #FHIR profiles - MHD, PDQm, and PIXm

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/06/ihe-fhir-profiles-mhd-pdqm-and-pixm.html
Published: 2016-06-03T14:45:00.002Z
Updated: 2016-06-15T17:51:59.567Z
Author: John Moehrke

---

The IHE IT Infrastructure committee has a few profiles on #FHIR. They just published [new revisions](http://us1.campaign-archive2.com/?u=a75e449ea24da34a9a89ed37a&id=a55bfc983a&e=f71f998cbe)  (see below) that have aligned on DSTU2, formerly on pre-DSTU2 versions. They have also[just published for Public Comment a new set of supplements](http://healthcaresecprivacy.blogspot.com/2016/05/public-comment-period-for-ihe-advanced.html). All of these are aligned with DSTU2. When STU3 finishes ballot and publishes reconciled version, then IHE will adjust all of these to STU3.

FYI: HL7 dropped the "D" from DSTU to get STU. The old was "Draft Standard for Trial Use", which people pointed out includes both he word "Draft", and also "Trial Use". This was discussed as redundant. The word "Draft" also left people believing that the specification was Pre-Ballot. Yet what they have has gone through many formal and informal ballot processes Further IHE profiles at this stage of maturity are listed as "Trial Use".  So the next ballot and the result of that ballot will be called "Standard for Trial Use" - STU.

IHE will likely also need to get these 'profiles' integrated into the new [FHIR registry of Profiles](http://www.fhir.org/). This is an evolving thing right now, but I predict that soon there will be a registry and publication mechanism available where these IHE profiles could be published more visible to the FHIR community - See [FHIR Foundation](http://www.fhir.org/node/2). Right now, there are no FHIR [StructureDefinition](http://hl7-fhir.github.io/structuredefinition.html)for these as these profiles don't constrain FHIR by much, and they are written so that the IHE actors are robust to the FHIR resources not being constrained at all.  This is an intermediate step, not a long term strategy. Long term needs to fit into the FHIR [ImplementationGuide](http://hl7-fhir.github.io/implementationguide.html)and [conformance](http://hl7-fhir.github.io/conformance.html)-- See [Grahame's blog today on how Profiles fit within Conformance.](http://www.healthintersections.com.au/?p=2527)

_

IHE IT Infrastructure Technical Framework Supplements Published for Trial Implementation
The IHE IT Infrastructure Technical Committee has published the following Technical Framework Supplements for trial implementation as of **June 2, 2016**:

- Appendix Z on HL7 FHIR

- Mobile Access to Health Documents (MHD)

- Patient Demographic Query for Mobile (PDQm)

- Patient Identifier Cross-reference for Mobile (PIXm)

These profiles may be available for testing at subsequent IHE Connectathons. The documents are available for download at [http://ihe.net/Technical_Frameworks](http://ihe.us1.list-manage.com/track/click?u=a75e449ea24da34a9a89ed37a&id=fbbb2851e0&e=f71f998cbe). Comments on all documents are invited at any time and can be submitted at [ITI Public Comments](http://ihe.us1.list-manage.com/track/click?u=a75e449ea24da34a9a89ed37a&id=46243a389a&e=f71f998cbe).

