# CyberSecurity recommendation

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/03/cybersecurity-recommendation.html
Published: 2024-03-21T13:30:00.002Z
Updated: 2024-03-21T13:30:50.213Z
Author: John Moehrke

---

My top recommendation is to look to experts in **that **field. I mostly participate in healthcare standards organizations such as HL7, IHE, and DICOM. These standards organizations focus on health informatics interoperability, they are not experts in [CyberSecurity](https://en.wikipedia.org/wiki/Computer_security). These healthcare standards always recommend that you use standards developed by appropriate standards organizations. See the [2023 HL7 Cyber Security Event](https://healthcaresecprivacy.blogspot.com/2023/09/hl7-cyber-security-event-recordings.html)with all recordings available now. My [HL7 FHIR Security and Privacy Education](https://healthcaresecprivacy.blogspot.com/2022/11/hl7-fhir-security-privacy-tutorial-vegas.html) track.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGO3TW_EPJhoO9NaOjdHwmUAJKmYiw3JvMWTPOXHY2LPnsUIvWmxXj3kwH7XPOAa0683WfOZZBtkCYLCvcvdhHJRG8iXtaeBgHA03DlzP5IX_edru1jNltjdqa6qItu3D6uBqwqpGnUW90eLHh-b0coYZQ6H6ukfJwbcCs2T6zlrd-2GA24dNfx62-MQ/s200/Big-Data=Exposed.png

My second top recommendation is to make it very clear that Security (and Privacy, and Safety) are [risk domains](https://en.wikipedia.org/wiki/Risk). Meaning that you must manage them according to risk, not a checklist. A checklist can help you be comprehensive in your analysis, but it can't help you determine the actual risk, and it can't decide for you what level or risk you are willing to accept. I [covered risk in a blog article 12 years ago](https://healthcaresecprivacy.blogspot.com/2012/03/how-to-apply-risk-assessment-to-get.html), and it is still relevant.

- I prefer [NIST Cybersecurity Framework (CSF)](https://www.nist.gov/cyberframework) because it is free, and it is very readable. This is a high-level roadmap for managing comprehensive cybersecurity **risk.  **It can be used by large and small organizations.
- I know that some are forced to use [ISO 27001 and 270002](https://www.iso.org/standard/27001). I am okay with these, but accessibility to ISO specifications is a big problem. This is international specification, so is seen as appropriate everywhere outside the USA. There is a large number of consulting firms that can help with the implementation of this.
- In the USA the [HITRUST](https://hitrustalliance.net/) organization, although expensive, has a crosswalk of all the cybersecurity frameworks; and a methodology to record evaluation and decisions. This would be my recommendation if an organization didn't have experts on staff and needed to get started.

HITRUST and NIST are just as applicable outside the USA, but I also recognize that some see anything with a USA focus to be bad for use outside the USA.

- For specific things like a FHIR or even a SOAP interface, is where I would add the prioritization and clarity that [OWASP](https://owasp.org)brings.

Of course, we leverage other standards by security experts including [IETF](https://www.ietf.org/)(https, tls, s/mime, oauth, certs), and [W3C](https://www.w3.org/)(signatures, prov, p3p, soap), [ETSI](https://www.etsi.org/)(XAdES, PAdES, JAdES), [NIST](https://www.nist.gov/publications)(AES, SHA), etc.
**What is your recommendation?**

PS, sorry about the AI authored answer a few weeks ago - [Give me a cyber security check list for FHIR RESTful API Systems](https://healthcaresecprivacy.blogspot.com/2024/03/give-me-cyber-security-check-list-for.html), but you will note it is similar.

