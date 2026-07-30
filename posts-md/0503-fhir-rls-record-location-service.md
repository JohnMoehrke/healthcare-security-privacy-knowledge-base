# FHIR RLS - Record Location Service 

Originally posted: https://healthcaresecprivacy.blogspot.com/2025/09/fhir-rls-record-location-service.html
Published: 2025-09-29T14:01:00.006Z
Updated: 2025-09-29T14:24:47.557Z
Author: John Moehrke

---

I was asked

> Does an IG for such a thing exist (FHIR RLS)?  I was wondering if IHE did this?  Part of MHD?



        Not fully. IHE has [PDQm](https://profiles.ihe.net/ITI/PDQm/index.html), which has most of what is needed,  but no one has brought federation to IHE to solve. PDQm supports a FHIR way to do Patient Identity resolution. It supports a few models

- Demographics to identity
- Identifier to identity
- Fuzzy match to identity
- Search to identity

The result is one of more Patient Identity. Some of them might be already correlated to the same individual, some may be alternatives. This is common support for a RLS.

What is missing is an indication of the community that the given identity exists within. When using [MHD](https://profiles.ihe.net/ITI/MHD/index.html) the assumption is that your MHD Document Responder can figure this out on the backend. This the PDQm + MHD client doesn't need to know. This gap is being discussed now.
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjCCpi7cxAy2aY598lGm5LY42tPexU3AP0Yeb9RTK3PDcpxgOULErcOOK4vqGiaYvg5cUtvhe0ah4IERZNwvNuAgQEe6Aiyu-K_wCpWGSwlGM4Nj008eni10DRwIb2HjkWL7OmEbn-M10W7eg4fkRX0k9qztHeeuF53JHZkLHx6lRD2pri8Nat9UOqGHoPd/s2048/1000000385.png

The second thing that is missing is some mechanism for the PDQm server to seek out partners that might have identity matches. This mechanism is not defined today in [IHE XCPD](https://profiles.ihe.net/ITI/TF/Volume1/ch-27.html), so might not need to be said for FHIR. I expect some may want that.

The third thing, that is needed, is a way to translate a community identifier to network communication mechanism. This is available in mCSD. This mechanism can work like it would for XCA, listing XCA gateways; or could be more Internet based simply listing FHIR endpoints.

There is a very good white paper from Grahame in HL7 on [Intermediaries](https://confluence.hl7.org/spaces/FHIRI/pages/175608456/FHIR+Intermediary+White+Paper+Work+item+Gemini). This multiple levels of services is a vision like what [IHE has with XCPD+XCA](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html), but for full access to FHIR services. There are some solutions proposed, but no further solution defined. HL7 didn't want to work on it as it is not core, so plan was to have IHE work on it with backing from HL7. The problem is that although the problem was presented to IHE IT-Infrastructure, not enough interest in working on it came forward. Thus, a gridlock.

These struggles, there is [XCPD](https://profiles.ihe.net/ITI/TF/Volume1/ch-27.html), which is not FHIR, but would work to find identity at community, lookup in mCSD to find, the FHIR servers.

