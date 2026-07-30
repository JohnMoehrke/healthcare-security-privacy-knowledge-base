# Controlling AI in Healthcare

Originally posted: https://healthcaresecprivacy.blogspot.com/2025/12/controlling-ai-in-healthcare.html
Published: 2025-12-10T23:06:00.004Z
Updated: 2025-12-10T23:06:34.517Z
Author: John Moehrke

---

AI must be controlled. That is to say that AI accessing data and making data is a privileged activity. It is not uncommon during the early days of a new technology for that technology to be uncontrolled. It is not uncommon for Security to be seen as There are three specific moments when AI needs to be controlled. \

- when the AI is trained on a dataset,
- when the AI is used to make treatment decisions (e.g. on a given Patient),
- when the AI is used to make payment decisions (e.g., on a given Patient)

Teaching

Teaching an AI/ML/LLM with dataset needs to be controlled to prevent ingestion of data that is not authorized to be used for this purpose. With this use-case, HL7 has identified a specific PurposeOfUse that would be used to indicate this teaching/training purpose - MLTRAINING. With this code a few things can be done:

https://blogger.googleusercontent.com/img/a/AVvXsEh_uKz3O97o68uP4fZUJfBhYuWcyhqnqIfgUM8XRu-Cv-4ztAhxhd2qdAJ0aLZTEl4W0rN-fS9jUs9ZyJh6IAPWoWYG-jtLxtM_M0XMiadZUpJ-4W-VQhRuAQhnXpLFDa7eQ94Kd0Hq2c5kuMjKE2Era0FPNPbOw1Nq_G7fzwCcPjKLeGzpflaw81j3rRy8https://blogger.googleusercontent.com/img/a/AVvXsEh_uKz3O97o68uP4fZUJfBhYuWcyhqnqIfgUM8XRu-Cv-4ztAhxhd2qdAJ0aLZTEl4W0rN-fS9jUs9ZyJh6IAPWoWYG-jtLxtM_M0XMiadZUpJ-4W-VQhRuAQhnXpLFDa7eQ94Kd0Hq2c5kuMjKE2Era0FPNPbOw1Nq_G7fzwCcPjKLeGzpflaw81j3rRy8https://blogger.googleusercontent.com/img/a/AVvXsEihKC4m3xMCR4IYqJztLr8HB0QTcoHTsnkxj9sUa6udGgyIyoGD5x6OPIviUVUJFeXoypwKJtAubWHwTd1geRtVtwVsSZQnmrBv044F4smLimUMrC6iRPkA3E0XurSF4Tye-4OpfZImeVFEY8-uSfUc6vbD1RPBKKGzkQ6v5Yz4ASFJVi9xeKRURkDoj-sj

When the training is done, the authorization request is for MLTRAINING PurposeOfUse. Thus, the access control will either permit or deny such a PurposeOfUse, and the authorization would be audited as such. This PurposeOfUse would not be given to Agent that is not authorized to use this PurposeOfUse. Thus, this PurposeOfUse can't be used by other actors.

A Dataset can be marked as forbidden for MLTRAINING PurposeOfUse, which would make that Dataset unavailable for training. This, in theory, could be done down to the data artifact basis.

There is a standard in the general AI world that I helped create to tag datasets with Provenance and Authorizations including the license that would need to be followed if the data are to be ingested by an AI/ML/LLM. The [Data & Trust Alliance](https://dtaalliance.org/) has published this [Data Provenance Standard](https://github.com/Data-and-Trust-Alliance/DPS/blob/main/specification.md), that is elaborated on [here](https://www.dtaalliance.org/work/data-provenance-standards).

Patient based Consent on TeachingThis MLTRAINING PurposeOfUse could be leveraged in a Patient specific Consent. This would enable a Patient to indicate that they do not want THEIR data used to teach an AI. This would mean that the Access Control is more fine-grain, in that each datum pulled from the database must be checked to see if the given subject of the data (the Patient) has authorized, or did not deny authorization for AI to learn from their data.
https://blogger.googleusercontent.com/img/a/AVvXsEi2UHzthjK1S-6pfYKE83sBByQqQpqXdpsBxTca2UBb5m5rMLabsE-Sqgi2OgARQGdMIq24EtvWPxmZ3CfD6Bt27TN9OcWw9_FJa8Wa7-bwgydSBP50dLXNqteD05YaRYij_o6FNo8JM4G0icqmZKVvMMT0RJVggTa3GbjwjKZhhoeEZ8Ra8SDTIcArrGzm

Treatment DecisionsThere are other PurposeOfUse when the AI is used during treatment (TREATDS) or payment (PMTDS) decisions. These PurposeOfUse are specific to the outcome, and are therefore distinct so that business rules or Patient Consent can allow one but not the other. They would otherwise work rather similar.

The most likely use-case is one where Patients get to indicate that they do or do-not want AI used in making Clinical Decisions (or Payment Decisions). This is diagrammed below where each Patient has a Consent with a term around PurposeOfUse of TREATDS of go or no-go; and that is used by the AI System authorization to allow the AI to make decisions, and thus look at historic patient data.

https://blogger.googleusercontent.com/img/a/AVvXsEhPhDRnxPEG2Lz_8RvLuv3mJhT02kzwJAGipXjPZhVRWzsKV4b2c4YbaZTwRzUhJwlc8d6roFwY_OqRLQ08F8XEbV0SHFJqXAP9Wz8p2hwmO7UIbyySVBbDggsB0NGxiaL5fm1WV1xwlHAcII47W_PgO-rHnK-_a564xAnLwx7MgKdpMyttiV2Noyw3Jl6F

ConclusionThese PurposeOfUse already are defined for these purposes. There may be other PurposeOfUse codes that need to be defined, this is a good exercise for discussion. The above scenarios are also not the only ones, and indeed these scenarios might not be the most likely or most useful ones. My point in this article is to show that we (Security WG) have done some thinking and developed some standards codes.

