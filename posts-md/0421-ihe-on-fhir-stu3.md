# IHE on FHIR ... STU3

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/08/ihe-on-fhir-stu3.html
Published: 2017-08-29T15:25:00.002Z
Updated: 2017-08-29T15:35:53.621Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhCt5eop0Hqnlx-rTTUxlJNn6Rof7OLxVQERk09WCK8Dq-KcgvJf6ONJyg1CGfPg4sd7JAejY9KfiYfRbxIIawrJd3Y-RTyw28t2F6Ye8asnRPUw9QWgxidEcZXJ4ssetDw_1Bhwuo9rP8q/s1600/IHE_process_flowchart.jpg

Integrating the Healthcare Enterprise (IHE) has been busy creating Profiles that leverage the new and exciting FHIR specification. The concept of [Profiling in IHE](http://ihe.net/IHE_Process/) has been around for just about 20 years. The concept of Profiling is not IHE invention, I first encountered it back in the 1980s with the original set of Internet Protocols. See the [IHE FAQ for some nice description of what/who IHE is](http://ihe.net/FAQ/).

IHE publishes their profiles on [http://www.ihe.net](http://www.ihe.net/)

IHE subset of Profile on FHIR can be found on the [IHE wiki FHIR list](http://wiki.ihe.net/index.php/Category:FHIR)

An IHE Profile is equivalent to a FHIR Implementation Guide. They take a specific use-case, define Actors, define Transactions, and define Options; From this a set of interoperability constraints are defined for each Actor within that Profile.

These constraints can be coded as a FHIR set of conformance resources. For now, if a FHIR Conformance resource is available it will be published on the [IHE FTP site in the Implementation Material.](http://wiki.ihe.net/index.php/Implementation_Material) There are efforts within IHE to modernize beyond an FTP site, and to provide more complete FHIR conformance publication on a FHIR Profile Registry.

IT Infrastructure (ITI) domain
The IT Infrastructure profiles are published on the [IHE Technical Framework web site](http://ihe.net/Technical_Frameworks/#IT) and described on the [IHE Wiki](http://wiki.ihe.net/index.php/Profiles#IHE_IT_Infrastructure_Profiles)

- [Mobile access to Health Documents (MHD)](http://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents) a profile on DocumentReference and DocumentManifest to provide a HTTP REST and Mobile application friendly API for the usecases profiled in XDS, XDR, and XCA. The MHD profile may be used as an API to these Document Sharing infrastructures, or may be used alone.

- [Patient Demographics Query for Mobile (PDQm)](http://wiki.ihe.net/index.php/Patient_Demographics_Query_for_Mobile_(PDQm)) a profile of the FHIR Patient resource for simple lookup and reference. Following the functionality requirements profiled in PDQ (HL7 v2), and PDQv3 (HL7 v3)

- [Patient Identifier Cross-reference for Mobile (PIXm)](http://wiki.ihe.net/index.php/Patient_Identifier_Cross-Reference_for_Mobile_(PIXm)) an operation profile for retrieving just cross-referenced identifiers for a given patient

- [RESTful Query to ATNA](http://wiki.ihe.net/index.php/Audit_Trail_and_Node_Authentication) a profile on AuditEvent for query and reporting.

- [Mobile Alert Communication Management (mACM)](http://wiki.ihe.net/index.php/Mobile_Alert_Communication_Management(mACM)) a profile on Communication for alert notifications

- [Mobile Care Services Discovery (mCSD)](http://wiki.ihe.net/index.php/Mobile_Care_Services_Discovery_(mCSD)) provides a RESTful interface to discover Care Services: Organization, Location, Practitioner, and Health Services

- [Mobile Cross-Enterprise Document Data Element Extraction (mXDE](http://wiki.ihe.net/index.php/Mobile_Cross-Enterprise_Document_Data_Element_Extraction) accesses data elements extracted from shared structured documents

- [Non-patient File Sharing (NPFSm)](http://wiki.ihe.net/index.php/Non-patient_File_Sharing_(NPFSm)) provides a RESTful interface enable sharing of non-patient files such as clinical workflow definitions, domain policies, and stylesheets

Companion

- [Internet User Authorization (IUA)](http://wiki.ihe.net/index.php/Internet_User_Authorization) a profile of OAuth for use with HTTP REST access

Patient Care Coordination (PCC) domain

Patient Care Coordination profiles are published on the [IHE Technical Framework](http://ihe.net/Technical_Frameworks/#pcc), and described on the [IHE wiki](http://wiki.ihe.net/index.php/Profiles#IHE_Patient_Care_Coordination_Profiles).

- [Clinical Mapping (CMAP)](http://wiki.ihe.net/index.php/Clinical_Mapping) supports mapping to and from clinical terminologies

- [Guideline Appropriate Ordering (GAO)](http://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_Suppl_GAO.pdf) Supplies a mechanism by which EHR and departmental systems can evaluate orders to determine whether these orders conform to guidelines.

- [Reconciliation of Clinical Content and Care Providers (RECON)](http://wiki.ihe.net/index.php/Reconciliation_of_Clinical_Content_and_Care_Providers) Provides the ability to communicate lists of clinical data that were reconciled, when they were reconciled and who did the reconciliation using CDAÂ® constructs and FHIRÂ® Resource attributes

- [Dynamic Care Planing](http://wiki.ihe.net/index.php/Dynamic_Care_Planning) (DCP) Profile provides the structures and transactions for care planning, sharing Care Plans that meet the needs of many, such as providers, patients and payers.

- [Dynamic Care Team Management](http://wiki.ihe.net/index.php/Dynamic_Care_Team_Management) shares information about a patient's care teams

- [Query for Existing Data for Mobile (mQED)](http://wiki.ihe.net/index.php/Query_for_Existing_Data_for_Mobile) queries for clinical data elements, including observations, allergy and intolerances, conditions, diagnostic results, medications, immunizations, procedures, encounters and provenance

Radiology Imaging (RAD) domain
Radiology Imaging profiles are published on the [IHE Technical Framework](http://ihe.net/Technical_Frameworks/#rad), and described on the [IHE wiki](http://wiki.ihe.net/index.php/Profiles#IHE_Radiology_Profiles).

- [Standardized Operational Log of Events (SOLE)](http://wiki.ihe.net/index.php/Standardized_Operational_Log_of_Events) stores and retrieves logs of operational events (patient arrives, scan complete, etc)

Quality, Research, and Public Health (QRPH) domain

- [Mobile Retrieve Form for Data Capture (mRFD)](http://wiki.ihe.net/index.php/Mobile_Retrieve_Form_for_Data_Capture) describes the exchange of context data to allow a seamless form launch with supporting clinical context

- [Vital Records Death Reporting (VRDR)](http://wiki.ihe.net/index.php/Vital_Records_Death_Reporting) defines a Retrieve Form for Data Capture (RFD) content profile that will specify derivation of source content from a medical summary document. by defining requirements for form filler content and form manager handling of the content

Pharmacy

The Pharmacy group is working toward a Profile, but it is not yet fully developed.

