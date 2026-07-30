# IHE produces Profiles using FHIR R4  for core functionality

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/03/ihe-produces-profiles-using-fhir-r4-for.html
Published: 2019-03-11T13:37:00.001Z
Updated: 2019-03-15T15:59:05.198Z
Author: John Moehrke

---

Released from IHE is an update of 5 Profiles that represent a basic API to health data. The subset of IHE profiles that leverage HL7Â®FHIRÂ® Release 4. The remainder of the IHE profiles that leverage HL7Â® FHIRÂ® are expected to be upgraded to FHIRÂ® Release 4 later in 2019. IHE published the following updated supplements for trial implementation as of March 6, 2019

- IHE Appendix Z on HL7Â® FHIRÂ® - Rev. 2.1

- Mobile Access to Health Documents (MHD) with XDS on FHIRÂ® - Rev. 3.1

- DocmentReference (DocumentEntry)

- DocumentManifest (SubmissionSet)

- List (Folder)

- Binary (the document)

- Mobile Care Services Discovery (mCSD) - Rev. 2.1

- Organization

- Location

- Practitioner

- PractitonerRole

- HealthcareServices

- Patient Demographics Query for Mobile (PDQm) - Rev. 2.1

- Patient

- Query for Existing Data for Mobile (QEDm) - Rev. 2.1

- AllergyIntolerance

- Condition

- DiagnosticReport

- Encounter

- Immunization

- Medication

- MedicationRequest

- MedicationStatement

- Observation

- Procedure

- Provenance

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1AAR7GxtWgv5Lh8r-DE_Fk0Sirm9pTD7PE1XdLpy8axQP-YsQmKbl0OWUcPIMkqFIXuVFjZvISi1sNZIUyAfY12C81n-PZRSkz65yZ4EwemvxZwIg2kA6Q3_qYm5F1NAJ-XJduYqKzKLk/s1600/mXDE-decompose.png

This subset is consistent with the Argonaut and [US-Core](https://www.healthit.gov/hitac/committees/us-core-data-interoperability-task-force) subset of FHIR, yet does not include US specific constraints.   The combination of  these IHE profiles with US-Core could be a powerful focus of an IHE Connectathon "Projectathon". A [Projectathon](https://www.ihe-europe.net/testing-IHE/projectathons) is when local constraints are added to IHE Connectathon testing.

Related to these 5 is the Mobile Cross-Enterprise Document Data Element Extraction (mXDE) which works with these profiles to provide an added value service.

The profile contained within the above document will be formally tested at the USA IHE Connectathon. The document is available for download at [https://www.ihe.net/resources/technical_frameworks](https://www.ihe.net/resources/technical_framework).

Updated:

I understand the target HHS/ONC regulation is 170.315(g)(7), 170.315(g)(10), and 170.315(g)(11). What ONC now calls the [ARCH](https://www.healthit.gov/isa/api-resource-collection-health-arch).

