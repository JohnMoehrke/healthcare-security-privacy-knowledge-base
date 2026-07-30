# Meaningful Use clearly does not mean Secure Use

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/01/meaningful-use-clearly-does-not-mean.html
Published: 2010-01-05T13:34:00Z
Updated: 2010-01-05T13:34:28.140Z
Author: John Moehrke

---

We have waited long and hard for the definition of Meaningful Use. We now have the "[Initial Set of Standards, Implementation Specifications, and Certification Criteria for Electronic Health Record Technology](http://www.federalregister.gov/OFRUpload/OFRData/2009-31216_PI.pdf)" Interim Final Rule (IFR), and it is very disappointing. I will let [Keith address the numerous content problems](http://motorcycleguy.blogspot.com/).

The requirements for security in the IFR are useless and dangerous. They don't reference any of the good work of HITSP or the HIT Standards committees. This makes me [wonder why I spend so much time in open consensus development](http://healthcaresecprivacy.blogspot.com/2009/12/observation-on-rest-vs-soap.html). On the one hand any good security plan can claim compliance, but so can someone that uses XOR as an encryption algorithm. In fact I am worried that this will give the impression that there is some form of safe-harbor if an organization meets the IFR yet has not done the risk assessment defined in the HIPAA Security Rule. The IFR does seem to try to not say this, but we all know how well people read the text vs the summaries written about the text.

I was expecting that the definitions in the IFR would be about interoperability and not functional requirements for an EHR supporting Meaningful Use. Turns out that the security requirements are all functional requirements, and not a complete set. CCHIT has far more specific and accurate criteria.  To show a mapping would give credit to the poor wording found in the IFR. Ok, so a close approximation can be drawn and would be educational.  First point of clarification, one must start with the regulation text as that is the normative part. This starts on Page 111. Security _fills _Pages 119-120

- 170.210 (a) - Encryption and decryption of electronic health information

- I think they mean to apply encryption to data at rest and in transit, but this is not clear. The biggest problem here is their lack of standards references, thus anything can qualify as encryption (e.g., XOR with a 128 bit fixed key).

- **SC 06.01.1** - The system shall support protection of confidentiality of all Protected Health Information (PHI) delivered over the Internet or other known open networks via encryption using the Advanced Encryption Standard (AES) and an open protocol such as TLS, SSL, IPSec, XML encryptions, or S/MIME or their successors.

- **SC 06.03 **- For systems that provide access to PHI through a web browser interface (i.e. HTML over HTTP) shall include the capability to encrypt the data communicated over the network via SSL (HTML over HTTPS). Note: Web browser interfaces are often used beyond the perimeter of the protected enterprise network

- **SC 06.06.1** - The system, when storing PHI on any device intended to be portable/removable (e.g. thumb-drives, CD-ROM, PDA, Notebook), shall support use of a standards based encrypted format the Advanced Encryption Standard (AES).

- 170.210 (b) Record actions related to electronic health information

- **SC 02.03** - The system shall be able to detect security-relevant events that it mediates and generate audit records for them. At a minimum the events shall include those listed in the Appendix Audited Events. Note: The system is only responsible for auditing security events that it mediates. A mediated event is an event that the system has some active role in allowing or causing to happen or has opportunity to detect. The system is not expected to create audit logs entries for security events that it does not mediate.

- **SC 02.04** - The system shall record within each audit record the following information when it is available: (1) date and time of the event; (2) the component of the system (e.g. software component, hardware component) where the event occurred; (3) type of event (including: data description and patient identifier when relevant); (4) subject identity (e.g. user identity); and (5) the outcome (success or failure) of the event.

- 170.210 (c) Verification that electronic health information has not been altered in transit

- **SC 06.04 -** The system shall support protection of integrity of all Protected Health Information (PHI) delivered over the Internet or other known open networks via SHA1 hashing and an open protocol such as TLS, SSL, IPSec, XML digital signature, or S/MIME or their successors.

- 170.210 (d) Cross-enterprise authentication

- This one is very confusing. The regulation text is lacking any detail, so I need to refer back to the discussion above. In that discussion they reference IHE XUA (strange how they skipped over HITSP/C19).

- This kind of requirement is missing from CCHIT as CCHIT recognizes that further profiling of SAML is needed beyond XUA/C19. This is spoken of in the IFR comments, but not in the regulation text. The text would allow any method, presumably even a plain text string.

- 170.210 (e)

- **SC 02.03** - The system shall be able to detect security-relevant events that it mediates and generate audit records for them. At a minimum the events shall include those listed in the Appendix Audited Events. Note: The system is only responsible for auditing security events that it mediates. A mediated event is an event that the system has some active role in allowing or causing to happen or has opportunity to detect. The system is not expected to create audit logs entries for security events that it does not mediate.

- **SC 02.04** - The system shall record within each audit record the following information when it is available: (1) date and time of the event; (2) the component of the system (e.g. software component, hardware component) where the event occurred; (3) type of event (including: data description and patient identifier when relevant); (4) subject identity (e.g. user identity); and (5) the outcome (success or failure) of the event.

- **AM 30.06** The system shall have the ability to provide support for disclosure management in compliance with HIPAA and applicable law.

- (and others)

**All of the other SC requirements are also critical**. For example: authenticating both ends of a transmission (SC 06.05) seems to be totally missing, meaning there is no assurance that you are sending PHI to who you think you are sending it to nor is there assurance to them that they are receiving it from who they think is sending it.

The new twist that is found in the IFR is relative to disclosures, and specifically that they expect that a â€˜description of the disclosureâ€™ must be recorded into the disclosure log. Most experts on the audit topic recognize that post-processing of the audit log is what is used to derive the â€˜descriptionâ€™. Post processing is also mostly where the â€˜purpose of useâ€™ is derived which is used to determine if the event is relevant to an accounting of disclosures. It is this post processing that CCHIT had implied in AM 30.06.

Totally absent is Privacy, not even opt-in or opt-out Consent. I think that [BPPC can and should be used to enable OPT-IN](http://healthcaresecprivacy.blogspot.com/2009/10/consumer-preferences-and-consumer.html) in an XDS like RHIO (HIE/HIO). This is not to say that BPPC is the long term solution, but without an OPT-IN ability we will get nowhere on deploying the Health Internet. BPPC is 'good enough', and is a logical path toward something more advanced. HL7 is already working on that more advanced solution, and it is a logical extension to where BPPC is today.

The optimist in me says that 2011 is too soon for anyone to make adjustments in what they had already started, so it is good that one can drive a ocean-freighter through this rule. The pessimist in me says that if people were not on the right track, this rule is going to do NOTHING to help them find the right track. So, for those that need the most guidance, HHS has given you NOTHING.

