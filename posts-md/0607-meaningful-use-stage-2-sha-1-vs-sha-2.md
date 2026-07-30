# Meaningful Use Stage 2 :: SHA-1 vs SHA-2

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-sha-1-vs-sha-2.html
Published: 2012-03-29T19:47:00Z
Updated: 2012-03-29T19:52:51.663Z
Author: John Moehrke

---

The Meaningful Use Stage 2 Certification NPRM asks about the use of SHA-1 vs SHA-2.

My short answer is: I agree with the current Meaningful Use Stage 2 decision to stick with SHA-1

Although the life of SHA-1 is shorter than SHA-2; the expected use of the hashing algorithm in Meaningful Use Stage 2 for EHR technology is sufficiently covered by SHA-1.

**The longer details:**The specific text in the preamble is well written, and captures the specific concerns.

>
The certification criterion at Â§ 170.314(d)(8) is consistent with the recommendation and recommended certification criterion by the  HITSC for the 2014 Edition EHR certification criteria.  The capability to detect changes to an audit log has been removed from this proposed  certification criterion and added to  the proposed certification criterion for â€œauditable events and  tamper resistanceâ€ at Â§ 170.314(d)(2).  The  adopted certification criterion at Â§ 170.304(b)  specifies that EHR technology must be able to create a message  digest in accordance with the  standard specified at Â§ 170.210( c).  The adopted standard is: â€œA hashing algorithm with a  security strength equal to or  greater than SHA-1 (Secure Hash Algorithm (SHA-1))â€¦must be  used to verify that electronic health information has not been altered.â€  After consultation with NIST, we understand that the strength of a hash function in digital signature applications is  limited by the length of the message digest and that in a growing number of circumstances the  message digest for SHA-1 is too short for secure digital signatures  (SHA-2 produces a 256-bit  message digest that is expected to remain secure for a long period of time).  We also understand that certain operating systems and applications upon which EHR technology may rely use SHA-1 and do not or cannot support SHA-2 at the present time.  Thus, we request public comment on whether we should leave the standard as it currently reads or replace SHA-1 with SHA-2.

**Some Regulation References:**

- Â§170.210(c) - A hashing algorithm with a security strength equal to or greater than SHA-1 (Secure Hash Algorithm (SHA-1) as specified by the National Institute of Standards and Technology (NIST) in FIPS PUB 180-3 (October, 2008) must be used to verify that electronic health information has not been altered

- Â§170.314(d)(8) Integrity. (i)  Create a message digest in accordance with the standard specified in Â§ 170.210(c). (ii) Verify in accordance with the standard specified in Â§ 170.210(c) upon receipt of electronically exchanged health information that such information has not been altered.

**First:**I am not sure there is any references left to Â§170.210(c). Which seems to question keeping it in there at all.

**Second: **The uses of a SHA-1 algorithm that the Meaningful Use Stage 2 is calling for are sufficiently covered by the use of SHA-1. A deployment today of EHR technology using only SHA-1 will still be quite safe for a decade or more. This is mostly because the uses of SHA-1 that are being called for in Meaningful Use Stage 2 are of the type that are not going to be weakened.

Specifically the use of SHA-1 is in things like the â€œ[Â§170.202 transports](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-170202-transport.html)â€, yes it is in the transports today to [use SHA-1 everywhere](http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html). The point I have here is that the use of SHA-1 in the transports is to prove that the communication did not get changed during the transfer. These transfers take minutes in most cases, might take days for the Direct transport (secure e-mail). The point is that the receiver checks the integrity right away, so there is no opportunity to falsify the integrity checks.

The second place where SHA-1 would be used is in the secure messaging with patients. This will either use the Direct project (see above), or far more likely will use a Web Portal. With the requirements to secure the communications this Web Portal will use common HTTPS, just like we use with many sensitive web sites like banking. HTTPS commonly uses SHA-1, so it meets the criteria. Like the â€œtransportsâ€ discussion, the integrity checks is done right away, so no opportunity to falsify the communications.

**Third:**They point out that there is concern in the cryptographic community that SHA-1 is potentially not strong enough for digital signatures.  This point is well said. The problem is that all cryptographic algorithms eventually succumb to either a vulnerability that is discovered or simply [Mooreâ€™s-law](http://en.wikipedia.org/wiki/Moore) of computer advancement. The point is also very specific to [digital signatures](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html). These two points are important to keep together. It is only when one has something like a Digital Signature that this concern should become important. A Digital Signature is something that needs to last for dozens or more years. A Digital Signature would be applied to documents where there is high value in proving that they had been signed by someone for a specific reason. It is only with a Digital Signature that one has a high enough value to falsification to leverage the vulnerabilities in SHA-1.

But, there is no call for Digital Signatures in Meaningful Use Stage 2. I might predict that by Meaningful Use Stage 3 we might have legitimate use of Digital Signatures for workflows like: Confirming provenance integrity on documents communicated through the patients PHR, Proving signing authority for prescription drugs including narcotics, and legal agreements such as Patient Privacy Consents. But today these are not called for, and I think it is right that they are not yet called for. I would encourage the use of Digital Signatures for these, but the value doesnâ€™t overcome the cost today; especially not enough to mandate that everyone in the USA use them.

The most real of these is already covered by the DEA rule on [Electronic Prescription of Controlled Substances](http://www.deadiversion.usdoj.gov/ecomm/e_rx/faq/faq.htm).

**Forth:**

The last factor is that SHA-1 is commonly available in operating systems and tools today, SHA-2 requires technology changes that would cost Healthcare industry greatly. I have covered this in the past around the earlier proposed[mandates for SHA-2](http://healthcaresecprivacy.blogspot.com/2009/11/sha2-is-un-mandated.html). These conditions have changed, but Healthcare is still a slow moving industry.

**
**

**Conclusion:**If anything they could change Â§ 170.210(c) from being specific to SHA-1, and be consistent with how they handled Encryption. Simply state that the Integrity algorithm needs to be one specified in FIPS 180-3. This would be effectively the same as we have today, but puts the algorithm specification in the hands of FIPS where it should be.

Update: added the Forth factor.

