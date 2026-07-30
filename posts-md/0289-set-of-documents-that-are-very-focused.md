# Set of documents that are very focused #FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/03/set-of-documents-that-are-very-focused.html
Published: 2021-03-02T13:51:00.002Z
Updated: 2021-03-02T13:51:27.488Z
Author: John Moehrke

---

I outline in the[last article that a Document Sharing "document" does not need to be a "Document".](https://healthcaresecprivacy.blogspot.com/2021/02/when-is-document-not-document-but-still.html) I propose that there might be a set of documents that are very focused on specific concepts, or Document sections. I think we have a ready structure for this in the current[International Patient Summary (IPS).](http://hl7.org/fhir/uv/ips/index.html) This is a real Document, but it is made up of sections that are interesting on their own. So, I suggest that we take the sections of the IPS and declare a way for that section to be made available as a  "document" in Document Sharing.

Here is the [diagram from IPS](http://hl7.org/fhir/uv/ips/ipsStructure.html),  the BLUE (header) stuff is already handled by the DocumentReference (XDS DocumentEntry)., so each of the Red, Orange, and Green blocks could be a standalone "document".

http://hl7.org/fhir/uv/ips/IPS_composition.png

 Which is simply a Bundle of type searchSet holding the information profiled for that section.

And those sections are already defined. This is an excerpt from[section 5.3](http://hl7.org/fhir/uv/ips/ipsStructure.html#list-of-profiles)

> Following are the profiles that have been defined for each section. (R) denotes a required section (i.e. must be present in an IPS), (S) denotes a recommended section, the others are optional:

>
- Medication Summary (R) [ [Medication Statement (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-MedicationStatement-uv-ips.html) | [Medication (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Medication-uv-ips.html) ]
- Allergies and Intolerances (R) [ [Allergy Intolerance (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-AllergyIntolerance-uv-ips.html) ]
- Problem List (R) [ [Condition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Condition-uv-ips.html) ]
- Immunizations (S) [ [Immunization (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Immunization-uv-ips.html) ]
- History of Procedures (S) [ [Procedure (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Procedure-uv-ips.html) | [Organization (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Organization-uv-ips.html) | [Device (performer, observer)](http://hl7.org/fhir/uv/ips/StructureDefinition-Device-observer-uv-ips.html) ]
- Medical Devices (S) [ [Device Use Statement (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-DeviceUseStatement-uv-ips.html) | [Device (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Device-uv-ips.html) ]
- Diagnostic Results (S) [ [Observation (Results)](http://hl7.org/fhir/uv/ips/StructureDefinition-Observation-results-uv-ips.html) | [DiagnosticReport (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-DiagnosticReport-uv-ips.html) | [Organization (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Organization-uv-ips.html) ]Laboratory results [ [Observation (Results: laboratory)](http://hl7.org/fhir/uv/ips/StructureDefinition-Observation-results-laboratory-uv-ips.html) | [Specimen (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Specimen-uv-ips.html) | [Media observation (Results: laboratory, media)](http://hl7.org/fhir/uv/ips/StructureDefinition-Media-observation-uv-ips.html) ]
- Radiology results [ [Observation (Results: radiology)](http://hl7.org/fhir/uv/ips/StructureDefinition-Observation-results-radiology-uv-ips.html) | [Device (performer, observer)](http://hl7.org/fhir/uv/ips/StructureDefinition-Device-observer-uv-ips.html) | [Imaging Study (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-ImagingStudy-uv-ips.html) | [Practitioner (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Practitioner-uv-ips.html) ]
- Pathology results [ [Observation (Results: pathology)](http://hl7.org/fhir/uv/ips/StructureDefinition-Observation-results-pathology-uv-ips.html) | [Specimen (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Specimen-uv-ips.html) | [Media observation (Results: laboratory, media)](http://hl7.org/fhir/uv/ips/StructureDefinition-Media-observation-uv-ips.html) ]
- Vital Signs [ [Vital Signs](http://hl7.org/fhir/R4/vitalsigns.html) ]
- Past history of illnesses [ [Condition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Condition-uv-ips.html) ]
- Pregnancy (status and history summary) [ [Observation (Pregnancy: EDD)](http://hl7.org/fhir/uv/ips/StructureDefinition-Observation-pregnancy-edd-uv-ips.html) | [Observation (Pregnancy: outcome)](http://hl7.org/fhir/uv/ips/StructureDefinition-Observation-pregnancy-outcome-uv-ips.html) | [Observation (Pregnancy: status)](http://hl7.org/fhir/uv/ips/StructureDefinition-Observation-pregnancy-status-uv-ips.html) ]
- Social History [ [Observation (SH: alcohol use)](http://hl7.org/fhir/uv/ips/StructureDefinition-Observation-alcoholuse-uv-ips.html) | [Observation (SH: tobacco use)](http://hl7.org/fhir/uv/ips/StructureDefinition-Observation-tobaccouse-uv-ips.html) ]
- Functional Status (Autonomy / Invalidity) [ [Condition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Condition-uv-ips.html) | [Clinical Impression](http://hl7.org/fhir/R4/clinicalimpression.html) ]
- Plan of care [ [Care Plan](http://hl7.org/fhir/R4/careplan.html) ]
- Advance Directives [ [Consent](http://hl7.org/fhir/R4/consent.html) ]

So we just need (a small Implementation Guide written)

- A formatCode defined for each of the above.
- A constrained DocumentReference to make sure that it is covering all that is in the  Blue section of the IPS. Mostly this is just a use of the [IPS Composition profile](http://hl7.org/fhir/uv/ips/StructureDefinition-Composition-uv-ips.html)applied to the [DocumentReference (see FHIR core mapping between Composition and DocumentReference)](http://hl7.org/fhir/composition-mappings.html#fhirdocumentreference).
- Additional requirements on DocumentReference based on the [Composition.section details for that type of content.](http://hl7.org/fhir/uv/ips/profiles.html)  This likely sets the typeCode, classCode, etc.
- The Bundle profiled. I propose a search set Bundle, but am not sure that is the right Bundle type. I prefer it as that type of a bundle is well supported today, and realistically this whole concept could be seen as a search result.
- Define if this is only available as a On-Demand? Should this allow snapshot, or forbid? Is there a Transforms relationship to the full IPS, or is that through referenceIdList?

The result is about 15 new document types. Thus if one only wants to get the immunizations, they only need to pull the immunizations. The IPS is there if you want it, this is not an attempt to degrade the need or concept of a Document. This is simply to recognize that sometimes (most?) there is just a need for a section, not the whole summary.

Who is with me?

