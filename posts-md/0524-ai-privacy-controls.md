# AI privacy controls

Originally posted: https://healthcaresecprivacy.blogspot.com/2025/02/ai-privacy-controls.html
Published: 2025-02-04T17:49:00.004Z
Updated: 2025-02-04T17:49:43.788Z
Author: John Moehrke

---

AI and privacy are hot topics lately. I have effected some changes in HL7 as well as blog articles about those capabilities that exist. I am also a participant in a few AI initiatives in HL7 and within the VHA. These solutions are most well developed in FHIR, but are fundamental provenance, data tagging, and Consent so can work with most standardized data and datasets.

The main topic areas in AI:

https://blogger.googleusercontent.com/img/a/AVvXsEhH2H4FqXUt-g15Mebnsj_Ft05h7GWv7qJMaBl78xQ9fvkhNbswxqXxNVynapGXw3k8mRuLY2E6LEGYvykha2-ZXQ6zKJuCB8Tj1Vx052SaEdihUrxhuvZ_UbPutqyutIFAT9DxQWcOjh3bqz1h87DlXGzH-c9b7HBkL7Z3zgAwg4sfTglt4Iwb8Aru8KIS

1) Can data be used to train an AI?Given that there are some data that should be authorized to be used to train an AI, how does one indicate rules that enables some data to be used, while forbidding other data to be used to train an AI?

This needs to be done at the whole dataset (e.g. EHR) level, where one might want to forbid some subset of the data from the teaching.

This also is needed at the patient specific Consent level. So that a patient can choose to not have their data included.

 [https://healthcaresecprivacy.blogspot.com/2023/10/teaching-aimlllm-should-be-distinct.html](https://healthcaresecprivacy.blogspot.com/2023/10/teaching-aimlllm-should-be-distinct.html)

2) How to indicate the data that was used to train an AI model?

Once you have an AI Model, it is important to keep track of what data was used to train that AI Model. This enables knowing what data are used to teach the AI, thus if a concern comes up one knows if that concern impacts your AI model or not.

Provenance of the data used to create the AI Model --[https://healthcaresecprivacy.blogspot.com/2024/01/provenance-use-in-ai.html](https://healthcaresecprivacy.blogspot.com/2024/01/provenance-use-in-ai.html)

3) How can the use of "my data" in an AI decision can be controlled?
How the consent can allow/deny that the patients data can be used in a clinical decision on behalf of the patient outcome (no article yet)

- When an AI retrieves patient specific data to enable payment decisions or treatment decisions, those data accesses use a very specific PurposeOfUse. This enables policy to enable or deny that access. The AI accessing the data is independent from a person accessing for payment or clinical purposes.
- PurposeOfUse: PMTDS (when the AI is acting to aid with payment decisions)
- PurposeOfUse: TREATDS (when the AI is acting to aid with clinical decisions)
- If there is no rule that use these PurposeOfUse values, then their parent term (payment or treatment) takes precedence.
- These can be used in a Consent for patient specific rules, or at Permission for an organization rule. Realistically both, as the overriding policy must be stated so that Consent can accept and/or override it.

4) How to indicate data is the output of an AI?

Once an AI is used to produce a decision or recommendation. How is that recorded into the dataset (e.g. EHR) so that future uses know that it came from AI vs came from a Clinician or other professional. This is simply provenance, enabling knowing where data came from.

On how data can be tagged as having come from an AI - [https://healthcaresecprivacy.blogspot.com/2024/09/healthcare-ai-provenance-of-ai-outputs.html](https://healthcaresecprivacy.blogspot.com/2024/09/healthcare-ai-provenance-of-ai-outputs.html)

- Tagging can be at the data resource or element level
- Tagging can be by simple security tag
- Tagging can be full Provenance for more details

An important attribute of the Provenance is to know what version of the AI was used, what Model was used, and what data inputs were given (what portion of the patient's chart was input).

ConclusionWe have a lot more than most people that start to talk about AI think we have. I am sure it is not everything we need, but I want to help encourage the use of the methods we already have before we reinvent the wheel.

