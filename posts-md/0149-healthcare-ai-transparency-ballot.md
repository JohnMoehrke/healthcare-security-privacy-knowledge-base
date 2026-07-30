# Healthcare AI Transparency ballot

Originally posted: https://healthcaresecprivacy.blogspot.com/2025/12/healthcare-ai-transparency-ballot.html
Published: 2025-12-10T14:34:00.002Z
Updated: 2025-12-10T14:34:55.388Z
Author: John Moehrke

---

Healthcare use of AI needs to be Transparent, clearly labeling and attributing when patient data was created or influenced by AI. This is the goal of a new [Implementation Guide going to HL7 Ballot really soon](https://hl7.org/fhir/uv/aitransparency/2026Jan/index.html). This Implementation Guide will also be the [focus of an HL7 FHIR Connectathon testing track in January](https://confluence.hl7.org/spaces/FHIR/pages/391652113/2026+-+01+AI+Transparency+on+FHIR).

The guide is designed for health IT developers, clinicians and institutions that use AI (including generative AI or large language models) to generate or process health data. It provides a common format so downstream systems and human users can see what data came from AI â€” when, how, and by which algorithm. This helps them judge whether AI-derived data are reliable, appropriate, or need further review.

Key features include:

- Tags or flags on FHIR resources (or individual data elements) to mark AI involvement.
- Metadata about the AI tool: model name and version, timestamps, confidence or uncertainty scores.
- Documentation of human oversight (for example, whether a clinician reviewed or modified AI outputs).
- Traceability: which inputs (e.g., clinical note, image, lab result) were fed to the AI, and how outputs were used to produce or update health data.https://blogger.googleusercontent.com/img/a/AVvXsEgYSYo8FidrFfKQ7Rbup8JmCm3SaFq9zI2dMTfVD301K3a6BsKr4X_LlQ_rZFUDHvdf07NYB2JmTHIaiBJe15V2QskPXz8RV3lPn3rJ7KXE0czEnj6GeBsDX8RwpuHwDihaxXmiwz2qUBPzFHgXll0BjFSIwSWFvyQ9qAtyiBShVuLn-YvSmrGmitmMvRnX

For stakeholders â€” such as patients, clinicians, and health-system administrators â€” the main benefit is transparency. Users can tell whether data was AI-generated or human-authored, which supports trust, safety, and informed use of AI in care.

And when the AI model or prompt is found to produce unsafe recommendations, then this transparency indications can be used to find potential problems that can then be reexamined.

AI will be used, and attribution to that use will help us deal with the data in the future.

