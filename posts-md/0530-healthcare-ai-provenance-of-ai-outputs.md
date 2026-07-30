# Healthcare AI - Provenance of AI outputs

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/09/healthcare-ai-provenance-of-ai-outputs.html
Published: 2024-09-24T15:52:00.004Z
Updated: 2024-09-24T19:48:44.276Z
Author: John Moehrke

---

AI is the focus of the HL7 Workgroup Plus meeting this week. As I sit in on the presentations, I find that there are some efforts that the Security WG has already put in place that are not understood. So this article will expose some of the things that Security WG has already put in place to support AI.
AI Output ProvenanceFirst up is that there is a concern that any diagnosis, notes, observations, or other content that is created by AI, or assisted by AI, should be tagged as such. With this provenance any downstream use of the data or decisions are informed that the data came from an AI output.

An important aspect of this is to understand the background of the data, the Provenance. This might be a positive aspect, or might be seen as a drawback. The Security WG is not trying to impugn or promote; we are just wanting  to provide the way for the data or decision to be tagged appropriately.

There are two methods.
Provenance TagThere is a data tag that can be applied to any data to indicate that it came from AI.

[AIAST](https://terminology.hl7.org/CodeSystem-v3-ObservationValue.html#v3-ObservationValue-AIAST) - Artificial Intelligence asserted	 --- Security provenance metadata observation value used to indicate that an IT resource (data, or information object) was asserted by a Artificial Intelligence (e.g. Clinical Decision Support, Machine Learning, Algorithm).

This might appear on the top of the FHIR Resource in the .meta.security

           "resourceType" : "Condition",
           "id" : "1",
           "meta" : {
              "security" : [{
                "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
                "code" : "AIAST" }
                ]
              },
           ... other content etc.....
         }

This can also be used using the element level tagging defined in the DS4P - [inline security labels](https://hl7.org/fhir/uv/security-label-ds4p/inline_security_labels.html)
Using this would cover a DiagnosticReport that has one .note element that is the output of an AI analysis of the data. The DiagnosticReport would indicate that there is an inline label, and just that one .note would be tagged as being AI Asserted.

Non-FHIR - The **AIAST **code is available for use elsewhere. Such as in HL7 v2, CDA, DICOM, and IHE-XDS. As a code it is very portable. These other standards include ways of carrying security tags, and thus this **AIAST **code.
Provenance Resourcehttps://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj5waZxuAJ91jawUOoaojGbXm7lulEAU42FUSLGWDrXSgNmK4RaojqNa6cUNJugq0tyojoEYnVcRJh8p2YyZmPZFwWoKONzYCLORt57dv1C_jpEvBEHKsMpUr9jQuHQj_Vys7eMY7uhh7vzrUuP1rda_aYE9-PXPi9KConry33-Uvr4f-FERGCqwqU_HCMR/s560/W3C_Prov.png

The Provenance resource would be used when more than the tag is needed. This Provenance would take advantage of the **AIAST **tag, to indicate that the purpose of this Provenance is to indicate details about the AI Assertion.

The above Provenance Tag might still be useful to use, with the Provance Resource providing the details of the provenance of that assertion.

The Provenance Resource might also use the [target element extension](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-targetElement.html) or [target path extension](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-targetPath.html). to point at the specific elements of the target resource that came from AI Assertions.

The Provenance Resource can also indicate the specific AI algorithm using a Device resource. In this way one can understand the revision of the AI that was used. Possible that if there is then determined to be a problem (bias) with that version of the AI model, one can find all the decisions that were recorded from it. This might also include parameters and context around the use of the AI algorithm.

The Provenance Resource can indicate the data from the patient chart that were considered by the AI algorithm.

The Provenance can also indicate other traceability, such as what portion of the AI model were used.

As with any Provenance, the other elements can be filled out to provide details on when, why, where.
AI use of ProvenanceAI will often look at a patient record to determine a NEW diagnosis or write a new note. These interactions by AI should be aware of data that has the **AIAST **tag, so that the AI can distinguish data that has been entered as new, from data that was derived by previous AI use. This is often referred to as â€œmodel collapseâ€ or â€œfeedback loops.â€ One possibility is that AI will ignore any data or data elements previous authored by AI.

