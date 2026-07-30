# HIT Standards - Meaning of S&P selections

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/09/hit-standards-meaning-of-s-selections.html
Published: 2009-09-15T13:32:00.001Z
Updated: 2009-09-15T14:11:24.522Z
Author: John Moehrke

---

I represent HITSP on the HIT Standards Privacy and Security Committee. As part of this I help the group understand the specifications from HITSP. This is not always simple, as many have pointed out the various levels of indirection built into HITSP both simplify yet obfuscate. So, I have been asked often to explain exactly what did the Privacy and Security Committee mean?

For the most part they have simply looked at the HITSP standards selections and indicated where along a roadmap the standards are likely to be mature enough to be measured at the Provider, aka Meaningful User. Some of the Privacy and Security standards from HITSP are very mature, well implemented, and super critical to keeping healthcare information secure and protect patients privacy. Some of them are equally immature and unimplemented, although functionally very important. The committee added some additional standards because they felt it important to fill an area that HITSP had not yet been asked to fill.

The exceptions are:

- Need to add more more cyphers to T17. This means that right away everyone must implement TLS Version 1.2 and SHA-2. This is a significant upgrade from what IHE has been saying for a long time. It is not inconsistent, as IHE simply says that at minimum one must have TLS_RSA_WITH_AES_128_CBC_SHA. HIT Standards is saying that you must also support TLS_RSA_WITH_AES_128_CBC_SHA256.

- Need to support EUA (Kerberos) in first year, although it will not be sufficient in later years. The discussion clarifies that if you don't have an enterprise-user-authentication then do it with Kerberos, yet if you have one stick with it.

- Somehow need to support use of AES for data-at-rest. There is no standards to point at besides AES, but the committee couldn't come to say nothing about the risk. So the best we could do is point at NIST SP800-111

- Delay TP20 until last years because of standards development followed by implementation lag. The expectation is that access control is implemented, just not using the standards selected in TP20. In spirit there is strong support and need for TP20 conceptually, but the reality of the standards maturity and lack of implementations simply mean the requirement to use these standards is later.

- Delay BPPC style consent till 2013. I am not sure how privacy is managed before then. The NHINs have already implemented basic BPPC (yes I just said "basic BPPC", which means opt-in/out only).
- Delay use of digital signatures till 2015 when it is expected that use-cases will eventually justify the overhead of PKI
- Add S/MIME security in 2015. I am not sure at all why this one is delayed, but then again HITSP hasn't touched the subject directly either. For the most part HITSP has chosen to consider e-mail as a commonly implemented infrastructure that they do not need to further profile, so HITSP simply says to use secure email.

The HITSP set is below. bold/italics indicates an exception above

- CAP119 â€“ Communicate Structured Document
- CAP120 â€“ Communicate Unstructured Document
- CAP143 â€“ Managing Consumer Preferences & Consents
- SC108 â€“ Access Control
- SC109 â€“ Security Audit
- SC112 â€“ Healthcare Document Management
- T17 â€“ Secure Communications Channel
- T64 â€“ Personnel White Pages
- C19 â€“ Entity Identity Assertion
- C26 â€“ Nonrepudiation of Origin
-  T24 â€“ Pseudonymize
- C25 â€“ Anonymize (for Biosurveillance and Quality)
- C87 â€“ Anonymize Public Health Case Reporting Data
- C88 â€“ Anonymize Immunizations and Response Management Data

