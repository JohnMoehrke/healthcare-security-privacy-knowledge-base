# IHE ITI on FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/05/ihe-iti-on-fhir.html
Published: 2017-05-01T15:34:00.003Z
Updated: 2017-05-06T11:25:14.652Z
Author: John Moehrke

---

https://hl7.org/fhir/assets/images/fhir-logo-www.png

IHE ITI has a set of profiles on FHIR existing in Trial Implementation today. These were written against FHIR DSTU2. These have been updated to STU3, now in ballot for members of the [ITI Technical Committee to comment and vote on](https://groups.google.com/forum/#!topic/ititech/u9B1oWbeA0A).  Details and access to the ballot drafts of these documents is available from the [ballot](https://groups.google.com/forum/#!topic/ititech/u9B1oWbeA0A).

- Mobile access to Health Documents (MHD)

- [DocumentReference](http://hl7.org/fhir/STU3/documentreference.html), [DocumentManifest](http://hl7.org/fhir/STU3/documentmanifest.html), [List](http://hl7.org/fhir/STU3/list.html), [Patient](http://hl7.org/fhir/STU3/patient.html), [Practitioner](http://hl7.org/fhir/STU3/practitioner.html), [Binary](http://hl7.org/fhir/STU3/binary.html), [OperationOutcome](http://hl7.org/fhir/STU3/operationoutcome.html), [Bundle](http://hl7.org/fhir/STU3/bundle.html)

- Using FHIR FMM 1-5

- Also added some options to recognize XDS-on-FHIR

- Mobile Alert Communication Management (mACM)

- [CommunicationRequest](http://hl7.org/fhir/STU3/communicationrequest.html), [Communication](http://hl7.org/fhir/STU3/communication.html), [OperationOutcome](http://hl7.org/fhir/STU3/operationoutcome.html), [Bundle](http://hl7.org/fhir/STU3/bundle.html)

- Using FHIR FMM 2-5

- Patient Demographics Query for Mobile (PDQm)

- [Patient](http://hl7.org/fhir/STU3/patient.html), [OperationOutcome](http://hl7.org/fhir/STU3/operationoutcome.html), [Bundle](http://hl7.org/fhir/STU3/bundle.html)

- Using FHIR FMM 5

- Patient Identifier Cross-Reference for Mobile (PIXm)

- [operations](http://hl7.org/fhir/STU3/operations.html), [Parameters](http://hl7.org/fhir/STU3/parameters.html), [OperationOutcome](http://hl7.org/fhir/STU3/operationoutcome.html), [Bundle](http://hl7.org/fhir/STU3/bundle.html)

- Using FHIR FMM 5

- Add RESTful Query to ATNA

- [AuditEvent](http://hl7.org/fhir/STU3/auditevent.html), [OperationOutcome](http://hl7.org/fhir/STU3/operationoutcome.html), [Bundle](http://hl7.org/fhir/STU3/bundle.html)

- Using FHIR FMM 3-5

- Appendix Z on HL7 FHIR

- Various reusable guidance and specification

- Mobile Security Considerations

The IHE ITI Technical Committee is also working on new profiles using FHIR. These will be further discussed in later articles.

- Mobile Care Services Discovery (mCSD)

- Including Healthcare Provider Directory (HPD) capability

- [Organization](http://hl7.org/fhir/STU3/organization.html), [Location](http://hl7.org/fhir/STU3/location.html), [Practitioner](http://hl7.org/fhir/STU3/practitioner.html), [PractitionerRole](http://hl7.org/fhir/STU3/practitionerrole.html),  [HealthcareServices](http://hl7.org/fhir/STU3/healthcareservice.html), [Binary](http://hl7.org/fhir/STU3/binary.html), [OperationOutcome](http://hl7.org/fhir/STU3/operationoutcome.html), [Bundle](http://hl7.org/fhir/STU3/bundle.html)

- Non-Patient File Sharing (NPFS)

- Sharing and Management of Files that are not associated with a patient

- For example: Stylesheets, configuration, policy definitions, workflow definitions

- [DocumentReference](http://hl7.org/fhir/STU3/documentreference.html), [Binary](http://hl7.org/fhir/STU3/binary.html), [OperationOutcome](http://hl7.org/fhir/STU3/operationoutcome.html), [Bundle](http://hl7.org/fhir/STU3/bundle.html)

- Access to Document-extracted Data-elements (ADD)

- Formerly: Patient Centric Element Location

- This is a profile that combines XDS/MHD and QEDm to describe how a Document Sharing environment can provide more fine grain access (Resource) to data shared as documents.

- This profile does rely on creative systems engineering to decompose the documents into the FHIR resources. This might leverage CDA-on-FHIR, or some other methodology. This methodology is not specified.

- What is specified is that the fine grain details must have [Provenance](http://hl7.org/fhir/STU3/provenance.html) pointing at the Documents from which the data came. This enables a consumer to retrieve using XDS or MHD the document from which the fine grain details came from.

The IHE ITI and PCC are working jointly on one as well:

- Query or Existing Data for mobile (QEDm)

- supporting Resource level access such as allergies, problems, medications, etc

- [Observation](http://hl7.org/fhir/STU3/observation.html);  [AllergyIntolerance](http://hl7.org/fhir/STU3/allergyintolerance.html);  [Condition](http://hl7.org/fhir/STU3/condition.html) (Problem);  [Procedure](http://hl7.org/fhir/STU3/procedure.html);  [Encounter](http://hl7.org/fhir/STU3/encounter.html);  [DiagnosticReport](http://hl7.org/fhir/STU3/diagnosticreport.html);  [MedicationRequest](http://hl7.org/fhir/STU3/medicationrequest.html);  [MedicationStatement](http://hl7.org/fhir/STU3/medicationstatement.html);  [Medication](http://hl7.org/fhir/STU3/medication.html);  [Immunization](http://hl7.org/fhir/STU3/immunization.html)

- [Provenance](http://hl7.org/fhir/STU3/provenance.html), [OperationOutcome](http://hl7.org/fhir/STU3/operationoutcome.html), [Bundle](http://hl7.org/fhir/STU3/bundle.html)

IHE ITI is also working on one non FHIR Profile

- Remove Metadata and Document (RMD)

- This is a profile on XDS for administrative ability to remove metadata entries and remove documents

Lastly [IHE Document Digital Signature (DSG) Profile approved for Final Text](https://healthcaresecprivacy.blogspot.com/2017/04/ihe-document-digital-signature-dsg.html)

