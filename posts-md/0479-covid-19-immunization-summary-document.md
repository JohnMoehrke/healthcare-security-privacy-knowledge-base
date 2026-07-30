# COVID-19 Immunization Summary Document - use-case analysis

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/03/covid-19-immunization-summary-document.html
Published: 2021-03-02T19:25:00.008Z
Updated: 2021-03-02T20:01:48.968Z
Author: John Moehrke

---

I am noticing that the healthcare standards community are doing a good job of leveraging the standards we have, vs creating something new... BUT I think the COVID-19 vaccine use-case is significantly different in a very important way.

I have not been engaged in any specific project, but know of many. So it is possible that some of them are thinking about the point I bring up here.

I am hearing some promote that the [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/index.html) should be used for the proof that individuals would present to show that they have received COVID-19 vaccine.  It is very true that this document does include a [Immunizations Section](http://hl7.org/fhir/uv/ips/StructureDefinition-Immunization-uv-ips.html). It is good that the Interop standards community wants to use standards.

http://hl7.org/fhir/uv/ips/IPS_composition.png

The purposeOfUse threat environmentBUT, the IPS is designed to support "Treatment" purposeOfUse. When the request is coming from a Treatment organization, or some organization that is authorized for Treatment purposeOfUse; then the full IPS is the right solution.

However when the need is for getting physical access to an event, or to Fly, or take a Train, or etc.. These are not Treatment purposeOfUse. The are to support Public Health ([PUBHLTH](http://hl7.org/fhir/v3/ActReason/cs.html#v3-ActReason-PUBHLTH)), or a new purposeOfUse value that is not today in the vocabulary.

So, when the purposeOfUse is public health, then it is inappropriate to expose anything other than what is minimally necessary for that public health use. So IPS can not have the required Medication Summary, Allergens and Intolerances, or the Problem List. These are not appropriate to expose to the kinds of people that the COVID-19 vaccine proof audience. The recommended and optional sections should also not be populated. I might even suggest that the Header information should also be degraded as much as possible.

The Content ProfileAlthough the IPS has what is needed, it has too much. We can leverage what it does have, but likely need to further constrain too:

* Composition should include only elements needed by this PurposeOfUse. Likely just the government issued identifier.

* Only one section for Immunizations -- use the Immunization profile found in the IPS implementation guide.

* Only Immunizations that are relevant to COVID-19 (some valueSet can express this subset)

* might further constraints be needed on the Immunization to eliminate privacy risk?

Lets call this the "COVID-19-Immunization-Summary-Document" (C19ISD)

YES, it is [a "D" Document.](https://healthcaresecprivacy.blogspot.com/2021/02/when-is-document-not-document-but-still.html) Even though we have degraded the Composition, there is likely information there that is important... and...(see next section)

Digital SignatureThe Document would be covered by the IHE specification for Document Digital Signature. Thus the digital signature is covering the header and immunization details. This is why the Document is a Document.

The TransportThere should be no surprise that I will recommend that the Document Sharing solution be used for Transport. But there is important profiling here too.

* Trust-Framework -- there is still a need for a trust framework. It is simply not the same as we use for Treatment. It is designed the same, and uses the same standards. It is just much broader. It would leverage organizations like airline industry, event planning industry, etc. The reason to get into the Trust-Framework might be easier, but is still needed.

* Digital-Signature support. There would need to be a Certificate Authority issuing certificates for Digital-Signatures. This would be a subset of organizations, those that are authorized to publish these COVID-19-Immunization-Summry-Documents (C19ISD). There should be infrastructure to support certificate revocation checking. And would be a good idea to have a service that can check the digital signature and just return success/failure./

* All authorized access would be based around Public Health purposeOfUse.

* All accesses will be logged, so that abuse can be investigated

* Patient lookup should only be by government issued identifier. No ability to lookup by name, phone number, etc... Not sure what the actual constraints are, but want to start constrained.

* Given a patient identity, the Document Sharing query would be for the latest IPS. Yes, I said you would ask for the latest IPS. BUT because your purposeOfUse is Public Health; you will get the degraded COVID-19-Immunization-Summary-Document

* Note that the DocumentEntry (DocumentReference) would be marked with security labels indicating the appropriate PurposeOfUse of Public Health, and the confidentiality of  [Moderate](http://hl7.org/fhir/v3/Confidentiality/cs.html#v3-Confidentiality-M)

Advanced use of Document Sharing AssociationsNot critical, but simply good to think about.... In Document Sharing there are "Associations" between various Document Entries. These are different kinds of links. If we consider that this COVID-19-Immunization-Summary-Document (C19ISD)  is a degraded International Patient Summary (IPS); and the Document Registry service can support request for PurposeOfUse of Public Health and also Treatment; then there could be a Document Entry for the full fidelity IPS with a "Transforms" association link to the C19ISD document. Then the system need only look at what they are authorized to receive in order to give them the full IPS or the C19ISD.

UPDATEIt was pointed out to me that this C19ISD might also need to have a constrained lab-results section for COVID-19 lab results that might indicate COVID-19 negative.

