# Tutorial Links

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/07/tutorial-links.html
Published: 2021-07-15T19:00:00Z
Updated: 2021-07-15T19:00:02.227Z
Author: John Moehrke

---

Having [completed the HL7 FHIR Security and Privacy tutorial,](https://healthcaresecprivacy.blogspot.com/2021/06/fhir-security-privacy-tutorial.html) I have found that there are links in my presentation that might be useful to itemize in a more web friendly way. Some people can't go to google presentation, some struggled with quickly typing them in. So here are the links from my presentation.

The presentation slides are at [http://bit.ly/FHIR-SecPriv](http://bit.ly/FHIR-SecPriv)

I always edit them there, so any improvements made over time will appear. So using that link you will always get the current slides.

HL7 does have [recordings of this weeks presentation](https://www.pathlms.com/hl7/courses/33689). Those that signed up, have access to these recordings. Those that did not sign up can pay to get access.

The FHIR core specification has the following main security pages

- [Security and Privacy Module](https://draft.blogger.com/#)
- [Security Principles](http://hl7.org/fhir/security.html)
- [Security Labels](http://hl7.org/fhir/security-labels.html)
- [Signatures](http://hl7.org/fhir/signatures.html) Discussion
- [Signature](http://hl7.org/fhir/datatypes.html#signature) Datatype
- [Consent](http://hl7.org/fhir/consent.html) Resource
- [Provenance](http://hl7.org/fhir/provenance.html) Resource
- [Audit Event](http://hl7.org/fhir/auditevent.html) Resource

IETF Best Current Practice for

- TLS -- [BCP 195](https://tools.ietf.org/html/bcp195)
- HTTP -- [BCP 56](https://tools.ietf.org/pdf/bcp56.pdf)
- OAuth -- not yet assigned a number, but [draft available](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-security-topics)

SMART-on-FHIR presentation at November 2020 DevDays - [https://youtu.be/2QENYKqF78U?t=2157](https://youtu.be/2QENYKqF78U?t=2157)

- Presentation at [http://bit.ly/smart-fhir-tech](http://bit.ly/smart-fhir-tech)
- [https://docs.smarthealthit.org/](https://docs.smarthealthit.org/)
- New version of SMART-on-FHIR draft [http://build.fhir.org/ig/HL7/smart-app-launch/](http://build.fhir.org/ig/HL7/smart-app-launch/)

IHE profile on OAuth for business to business http REST

- [Internet User Authorization (IUA)](https://profiles.ihe.net/ITI/IUA/index.html)

Current real-world security failure

> [Here](https://www.eldiario.es/tecnologia/fallo-web-sanidad-madrid-deja-descubierto-datos-rey-miles-personas_1_8114359.html)is a security hole found in the Spanish COVID Vaccine Credential system that exposes personal demographics (might be more). Likely because there is no access control check if you are providing an id. Creative use of an API must always be considered in a system design.

My personal project to develop a [Basic AuditEvent Implementation Guide](http://build.fhir.org/ig/JohnMoehrke/BasicAudit/branches/main/index.html)

My mapping [between IHE-BPPC and FHIR Consent](https://healthcaresecprivacy.blogspot.com/2019/11/fhir-consent-mapped-with-bppc.html)

HEART - [alternative Consent as a Service using OAuth/UMA](https://openid.net/wg/heart/)

Draft efforts to create a [Permission resource in FHIR (future)](https://confluence.hl7.org/display/SEC/FHIR+Permission)

FHIR Data Segmentation for Privacy [Implementation Guide](https://build.fhir.org/ig/HL7/fhir-security-label-ds4p/)

FHIR Validated Healthcare Directory [Implementation Guide](http://build.fhir.org/ig/HL7/VhDir/)

Multiple-Servers with one proxy - Presentation given by Grahame Greve at November 2020 DevDays - Presentation available at [https://youtu.be/stFGtk-YKPQ](https://youtu.be/stFGtk-YKPQ)

Ongoing Discussion:

- [https://chat.fhir.org Security & Privacy Stream](https://chat.fhir.org/#narrow/stream/179247-Security-and.20Privacy)
- [HL7 Security Workgroup](https://www.hl7.org/Special/committees/secure/index.cfm)

- FHIR Security call on Mondays 12 noon eastern

