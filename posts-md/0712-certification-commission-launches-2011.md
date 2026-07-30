# Certification Commission Launches 2011 Certification

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/10/certification-commission-launches-2011.html
Published: 2009-10-10T18:44:00Z
Updated: 2009-10-10T18:44:27.926Z
Author: John Moehrke

---

[CCHIT](http://cchit.org/)has [started their new certification](http://www.cchit.org/get_certified/open_ambulatory), targeting Meaningful Use -- they hope. They clearly did adjust their criteria to the [HIT-Standards Privacy and Security](http://healthcaresecprivacy.blogspot.com/2009/09/hit-standards-meaning-of-s-selections.html) selections.

I don't see ANY updates to the privacy specifications. This is consistent with the [HIT-Standards Privacy and Security](http://healthcaresecprivacy.blogspot.com/2009/09/hit-standards-meaning-of-s-selections.html) requirements around waiting on CAP143 and TP30 (BPPC), but I am disappointed that Consumer choice continues to be delayed even though simple consents can be supported today including: Implied Consent, Opt-In, Opt-In-Time-Limited, Opt-Out, and Opt-Out-with-Break-Glass. I didn't find these in the Advanced Interoperability Test Plan either.

They were going to try to add "Advanced Security" but I don't see this as a standalone set of requirements yet.

**New in security in 2009:**

-  **S****C02.01** â€” Configurable inclusion or exclusion of audit events

- They have tried this before, the idea is that an organization implementing the EHR should be able to make policy decisions where they decide not to save some security events simply because they donâ€™t have a process to analyze them

- **SC02.03** â€” Use ATNA

- Wonderful idea. Not sure how useful this is to small non-connected EHR; but it is very important for EHR that is connected to an HIE

- **SC02.07** â€” Audit Reports/Exports using ISO 8601 date/time stamps

- I thought this was already in there. The point of this one is that analysis of audit logs usually requires combining audit events from many systems. The date/time that events happened is the one thing that can be sure to be common in all audit logging systems, and is critical to putting together the overall analysis

- **SC06.06** â€” [Data at rest should be encrypt-able](http://healthcaresecprivacy.blogspot.com/2009/09/encryption-now-mandatory.html) using 3DES or later

- I tried to explain that this is typically NOT controlled by the EHR vendor, but rather is a open choice of the provider organization. The provider organization can choose transparent-harddrive-encryption and purchase encrypting-USB-Memory devices. It is also unfortunate that they said 3DES here and didnâ€™t use language such â€œor its successorâ€, as now one must implement both 3DES and AES even though no one should select 3DES if AES is available.

- **SC06.07** â€” Configurable Log-on message

- This supports warning the user (potentially malicious user) that their actions are confidential and are tracked. This type of a thing has been critical in getting convictions of hackers, or actually the lack of this kind of a message has been used by hackers to indicate that they didnâ€™t know what they were doing was wrong.

**New in Security in 2011** (This is where they guessed based on current HIT-Standards selections):

- **SC03.11.1** â€” passwords either hashed with SHA2 or encrypted with AES

- This is recognizing that the SHA1 hashing algorithm and 3DES encryption algorithms have been deprecated, their successor is SHA2 and AES

- **SC03.14 **â€“ Kerberos

- looks like CCHIT took HIT-Standards seriouslyâ€¦ [This requirement will likely not continue in HIT-Standards](http://healthcaresecprivacy.blogspot.com/2009/09/kerberos-required-in-2011-then.html)

- **SC03.15 **â€“ IHE-EUA

- Same thing as Kerberos

- **SC06.01.1 **â€“ use of AES for network security

- This is another instance of replacing 3DES with AES

- **SC06.04.1 **â€“ use of SHA2 for network security

- This is another instance of replacing SHA1 with SHA2

- **SC06.06.1** â€” use of AES for data at rest

- This is another instance of replacing 3DES with AES

-  **SC06.08 **â€“ Pseudonum capability

- There is a nice long discussion but no standard referenced so it is impossible for me to figure out what would qualify as meeting this, or WHEN it would be needed.

- **SC06.09** â€” Protection of the EHR executable

- At least I think this means that they want a way that the EHR can do a self validation to confirm that the EHR executable are authentic. I am not clear what risk this is trying to fill.

- **SC06.10** â€” use of ISO25237 for pseudonyms

- WHAT? That ISO specification is not a technical specification, it is a high level discussion of the concepts of pseydonymization (which includes pseydonyms and anonymization). I have no idea how to apply this to an EHR, it can only be applied to an organization.

- **SC06.11 **â€“ non-repudiation according to ASTM guidance

- WHAT? This ASTM standard is again a guide to organizations on the overall concept of non-repudiation. I am sure this is taken out-of-context from the HIT-Standards privacy and security list, where all the HITSP specifications were exploded out to their component parts. Taken out of context this ASTM standard does no one any good. Further HIT-Standards put digital signatures into the 2013/2015 timeframe because of the onerous PKI requirements to support digital signatures with unclear benefits.

