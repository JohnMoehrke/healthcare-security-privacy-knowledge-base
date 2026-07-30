# Consent about AI

Originally posted: https://healthcaresecprivacy.blogspot.com/2026/02/consent-about-ai.html
Published: 2026-02-11T17:10:00Z
Updated: 2026-04-30T12:58:48.906Z
Author: John Moehrke

---

There are various use-cases where a Patient might consent or dissent to various uses of AI.

- A patient might consent to use of AI for clinical decision support
- A patient might deny use of their data for training of AI.
- A patient might consent to use of their data in de-identified form for training of AI.

Given the Consent model, the Patient might be indicated in a Consent authorizing either:

- Generically allowing or denying AI by PurposeOfUse
- Specifically allowing or denying a specific AI by referencing the Device resource for that AI.

PurposeOfUsehttps://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html#purposeofuseThe most clean method is to use the PurposeOfUse as the basis for the provision in the Consent. This allows the Consent to be independent of the specific AI system or model, and thus not require updates as new AI systems or models are developed. The PurposeOfUse can be used to indicate the reason for the AI access, such as MLTRAINING for training of AI, or TREATDS for clinical decision support.

Further we look to [PurposeOfUse Vocabulary](https://terminology.hl7.org/ValueSet-v3-PurposeOfUse.html) to indicate what the reason the AI is giving for accessing data. For example, the PurposeOfUse of MLTRAINING is defined for when an AI is looking to train on data. The PurposeOfUse of TREATDS is defined for when an AI is looking to provide clinical decision support, or PMTDS when AI is looking to provide analysis for payment decisions.

The use of PurposeOfUse does require that any accesses the AI does, or an agent feeding the AI, must use the given PurposeOfUse code when accessing data. This is a trust model that the AI or the agent feeding the AI will accurately indicate the PurposeOfUse when accessing data. However, this is a common trust model used in many other aspects of healthcare data access and thus is not unique to AI.

Allow AI for ML Traininghttps://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html#allow-ai-for-ml-training* provision.type = #permit
* provision.purpose[+] = $purposeOfUse#MLTRAINING
Consent example: [Allow ML Training](https://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/Consent-AllowMLtraining.html)

Deny AI for ML Traininghttps://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html#deny-ai-for-ml-training* provision.type = #deny
* provision.purpose[+] = $purposeOfUse#MLTRAINING Consent example: [Deny ML Training](https://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/Consent-DenyMLtraining.html)

Allow AI for Clinical Decision Supporthttps://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html#allow-ai-for-clinical-decision-support* provision.type = #permit
* provision.purpose[+] = $purposeOfUse
#TREATDS Consent example: [Allow AI for Clinical Decision Support](https://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/Consent-AllowCDS.html)

Deny AI for Clinical Decision Supporthttps://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html#deny-ai-for-clinical-decision-support* provision.type = #deny
* provision.purpose[+] = $purposeOfUse#TREATDS Consent example: [Deny AI for Clinical Decision Support](https://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/Consent-DenyCDS.html)

Specific AI Systems or Modelshttps://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html#specific-ai-systems-or-modelsFor this we look to current identification of [AI as a FHIR Device resource](https://build.fhir.org/ig/HL7/aitransparency-ig/StructureDefinition-AI-Device.html). This Device would be indicated in a Consent when a specific AI system or model is identified in a Consent.provision.agent.reference with a permit or deny provision.

This model requires that all access by an AI are attributed to the FHIR Device describing the AI. This might not be the case given how the AI is orchestrated. This model also is fragile as a new model or software would be a new Device, and thus would require a new provision in the Consent to indicate consent or dissent for that new AI.

Allow a specific AI for a specific purposehttps://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html#allow-a-specific-ai-for-a-specific-purposeIn this case there is simply a provision indicating that the AI is permitted. There is no purposeOfUse indicated, but that could be an additional restriction. There is no other restrictions on the kinds of actions or the kinds of data, but those could also be additional restrictions.

* provision.type = #permit
* provision.agent.reference = Reference(Device/AIdevice) Consent example: [Allow specific AI for specific purpose](https://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/Consent-AllowSpecificAIforSpecificPurpose.html)

Limitations on AI Accesshttps://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html#limitations-on-ai-accessIn the FHIR Permission there is a concept of a "limit" which is limits placed on a permit provision. Where the limit might be an obligation or refrain, might be a specific additional data tag, or might be explicit removal of data elements. I have made an extension to replicate this "limit" concept so that it can be used on a Consent.provision. A "limit" should never be allowed to expose data where that limit can't be enforced. Specifically meaning that the recipient of the data must be trusted to enforce the obligation or refrain indicated. [PermissionRuleLimit Extension](https://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/StructureDefinition-permissionRuleLimit.html)

In FHIR R6 one could have a Consent that holds the provisions as a Permission resource, and thus the limits capability is available.

Allow AI for ML Training on De-Identified Datahttps://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html#allow-ai-for-ml-training-on-de-identified-data* provision.type = #permit
* provision.purpose[+] = $purposeOfUse#MLTRAINING
* provision.modifierExtension[limit].extension[control].valueCodeableConcept = $obligation#DEID  Consent example: [Allow ML Training on De-Identified Data](https://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/Consent-AllowMLtrainingOnDeIdentifiedData.html)

Conclusionhttps://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html#conclusionThe above examples are showing simply how a Consent.provision iteration can carry permit and deny to indicate consent or dissent for AI. The examples are not exhaustive, and there are many other combinations of provisions that could be used to indicate consent or dissent for AI. The examples are also not indicating any specific data elements that are being allowed or denied, but those could be added as additional restrictions on the provision.

The reader should be able to take a quilted Consent that has various provisions indicating consent or dissent for various clinical use (TPO) and add in provisions indicating consent or dissent for various AI use-cases, and thus have a single Consent that indicates the patient's preferences for both traditional clinical use and AI use.

The above examples are available in a [draft IG on Consent About AI](https://build.fhir.org/ig/JohnMoehrke/ConsentAboutAI/branches/main/ai.html). That IG might further refine and improve beyond this blog article.

ðŸŽNote, this is one of those projects I do pro bono but would love if someone would care enough about it to contract with me. [Sustaining the Work That Sustains Trust: Why Iâ€™m Seeking Support for Some of My Standards Efforts](https://healthcaresecprivacy.blogspot.com/2026/01/sustaining-work-that-sustains-trust-why.html)

