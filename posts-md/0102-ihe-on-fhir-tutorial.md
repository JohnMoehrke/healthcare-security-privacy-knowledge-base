# IHE on FHIR tutorial

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/04/ihe-on-fhir-tutorial.html
Published: 2018-04-10T13:10:00Z
Updated: 2018-04-10T13:11:29.026Z
Author: John Moehrke

---

I will be giving a face-to-face tutorial on the topic of "IHE on FHIR" at both

- [HL7 Workgroup meeting in Cologne, May 12-18](https://www.hl7.org/events/working_group_meeting/2018/05/?ref=banner)

- [FHIR Dev Days in Boston, June 19-21](https://www.fhirdevdays.com/)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj6GKw1RMDEIb7jsc0r-NE2oTqvG60Yk6yUfu3NtBmpXgRgom1DqK8WJADrzstHphQaKnZmU5l8HdLAjtMr1dtReRu1fWESHsl21pqK4i4ppJ_AItNuASyN0tht5QrQX_t_4N2QNo0GSocY/s1600/IHE-on-FHIR-logo.png

So, if you are in Europe, sign up for the tutorial at [HL7 workgroup meeting](https://www.hl7.org/events/working_group_meeting/2018/05/?ref=banner).  If you are in the USA, sign up for the tutorial at [FHIR Dev Days.](https://www.fhirdevdays.com/)

There is a difference in time available to me. At the FHIR Dev Days I will need to focus only on the [IHE Profiles available from IHE that leverage FHIR](http://wiki.ihe.net/index.php/Category:FHIR). Where as at the HL7 meeting I will also be able to discuss the overall [relationship between HL7 and IHE](https://healthcaresecprivacy.blogspot.com/2018/02/maturing-fhir-connectathon-without.html) and the [IHE Profiles available from IHE that leverage FHIR](http://wiki.ihe.net/index.php/Category:FHIR).

Here are the IHE profiles that leverage FHIR today...

- IT Infrastructure

- [Add RESTful Query to ATNA](http://wiki.ihe.net/index.php/Add_RESTful_Query_to_ATNA) - where a query on FHIR AuditEvent interrogates all of the audit log recorded in [Audit Trail and Node Authentication](http://wiki.ihe.net/index.php/Audit_Trail_and_Node_Authentication) Audit Repository

- [Internet User Authorization](http://wiki.ihe.net/index.php/Internet_User_Authorization) - defines a plugable basic OAuth interaction to enable app and user authorization. Intended to be enhanced based on use-case analysis.

- [Mobile access to Health Documents (MHD)](http://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD)) - defines a FHIR interface to an XDS/XCA environment, in a way that can also be used standalone. Degenerate form is equivalent to Argonaut document access.

- [Mobile Alert Communication Management(mACM)](http://wiki.ihe.net/index.php/Mobile_Alert_Communication_Management(mACM)) - defines a way to send short unstructured text alerts to a human using CommunicationRequest resource

- [Mobile Care Services Discovery (mCSD)](http://wiki.ihe.net/index.php/Mobile_Care_Services_Discovery_(mCSD)) (including HPD) - defines a comprehensive Provider Directory including Organization, Location, Services, and Practitioners.

- [Mobile Cross-Enterprise Document Data Element Extraction](http://wiki.ihe.net/index.php/Mobile_Cross-Enterprise_Document_Data_Element_Extraction) - defines a method of access to data element level data (FHIR) given shared documents (XDS)

- [Non-patient File Sharing (NPFSm)](http://wiki.ihe.net/index.php/Non-patient_File_Sharing_(NPFSm)) - defines a method of managing and publishing non-patient files like style-sheets, policy, and configurations

- [Patient Demographics Query for Mobile (PDQm)](http://wiki.ihe.net/index.php/Patient_Demographics_Query_for_Mobile_(PDQm)) - defines equivalent functionality to PDQ, simple query on Patient resource

- [Patient Identifier Cross-Reference for Mobile (PIXm)](http://wiki.ihe.net/index.php/Patient_Identifier_Cross-Reference_for_Mobile_(PIXm)) - defines equivalent functionality to PIX, operation to request patient identifiers given only an identifier.

- PCC

- [Query for Existing Data for Mobile](http://wiki.ihe.net/index.php/Query_for_Existing_Data_for_Mobile) (QEDm) - supports queries for clinical data elements, including observations, allergy and intolerances, conditions, diagnostic results, medications, immunizations, procedures, encounters and provenance by making the information widely available to other systems within and across enterprises.

- [Clinical Mapping](http://wiki.ihe.net/index.php/Clinical_Mapping) (CMAP) - supports the need of systems to translate codes from one terminology to another to support exchange of information between different systems.

- [Dynamic Care Planning](http://wiki.ihe.net/index.php/Dynamic_Care_Planning) (DCP) - provides the structures and transactions for care planning, sharing Care Plans that meet the needs of many, such as providers, patients and payers.

- [Dynamic Care Team Management](http://wiki.ihe.net/index.php/Dynamic_Care_Team_Management) (DCTM) -  provides the means for sharing care team information about a patientâ€™s care teams that meet the needs of many users, such as providers, patients and payers

- [Reconciliation of Clinical Content and Care Providers](http://wiki.ihe.net/index.php/Reconciliation_of_Clinical_Content_and_Care_Providers) (RECON) - profile provides the ability to communicate lists of clinical data that were reconciled, when they were reconciled and who did the reconciliation using CDAÂ® constructs and FHIRÂ® Resource attributes.

- [Point-of-Care Medical Device Tracking](http://wiki.ihe.net/index.php/Point-of-Care_Medical_Device_Tracking) (PMDT) - provides definition for a mobile Device.

- [Remote Patient Monitoring](http://wiki.ihe.net/index.php/Remote_Patient_Monitoring) (RPM) - provides means of reporting measurements taken by Personal Healthcare Devices in a remote location

- [Routine Interfacility Patient Transport](http://wiki.ihe.net/index.php/Routine_Interfacility_Patient_Transport) (RIPT) - provides means of updating a Transport team with critical and necessary medical information on a patient to be transported

- Radiology

- [Standardized Operational Log of Events](http://wiki.ihe.net/index.php/Standardized_Operational_Log_of_Events) (SOLE) - uses AuditEvent to record business events so that business intelligence have quality data to analyze.

- Pharmacy

- [Uniform Barcode Processing](http://wiki.ihe.net/index.php/Uniform_Barcode_Processing) (UBP) -  describes a way to send the information contained in a barcode and in return receive the parsed content of that barcode in the form of a FHIR resource instance - a medication, a device, a patient, or staff.

- [Mobile Medication Administration](http://wiki.ihe.net/index.php/Mobile_Medication_Administration) (MMA) - defines the integration between healthcare systems and mobile (or any other) clients using RESTful web services. This allows connecting EHRs with smartphones, smart pill boxes, and other personal or professional devices.

- QRPH

- [Mobile Retrieve Form for Data Capture](http://wiki.ihe.net/index.php/Mobile_Retrieve_Form_for_Data_Capture) (mRFD) - provides a method for gathering data within a user's current application to meet the requirements of an external system

- [Vital Records Death Reporting](http://wiki.ihe.net/index.php/Vital_Records_Death_Reporting) (VRDR) - defines a mRFD content profile that will specify derivation of source content from a medical summary document. by defining requirements for form filler content and form manager handling of the content.:

I have succeeded to get the [IHE Profiles](https://wiki.ihe.net/index.php/Category:FHIR) listed on the [FHIR.org registry of Implementation Guides.](http://www.fhir.org/guides/registry) This is a manual step today, but will likely continue to be a manual step to assure that what gets published has passed the IHE Governance for being listed.

See my [other articles on FHIR](https://healthcaresecprivacy.blogspot.com/p/fhir.html)

