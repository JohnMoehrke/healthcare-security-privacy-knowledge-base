# SHA2 is un-mandated

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/11/sha2-is-un-mandated.html
Published: 2009-11-25T14:21:00Z
Updated: 2009-11-25T14:21:55.786Z
Author: John Moehrke

---

HIT-Standards - Privacy and Security workgroup had selected SHA2 based on the rules and guidance for Federal implementations. I pointed out to the workgroup that SHA2 would have required the use of TLS 1.2 which has very few implementations. I also pointed out that the rules and guidance require SHA2 only for persistent digital signatures, which were not selected for 2011. Therefore HIT-Standards Privacy and Security workgroup has agreed to change their selection to allow for SHA1 with TLS, while encouraging the use of SHA2 for persistent integrity controls.

**More details for those that want more details** :

The selection of SHA2 is due to Federal Agency requirements by the National Institute of Standards and Testing. The [NIST Policy](http://csrc.nist.gov/groups/ST/hash/policy.html) established in March of 2006 results from research showing weaknesses in the SHA-1 algorithms.  The key statement:

> March 15, 2006: **The SHA-2 family of hash functions (i.e., SHA-224, SHA-256, SHA-384 and SHA-512) may be used by Federal agencies for all applications using secure hash algorithms.** Federal agencies **should **stop using SHA-1 for **digital signatures, digital time stamping and other applications that require collision resistance as soon as practical**, and must use the SHA-2 family of hash functions for these applications after 2010. After 2010, Federal agencies **may use SHA-1 only for the following applications: hash-based message authentication codes (HMACs)**; key derivation functions (KDFs); and random number generators (RNGs). Regardless of use, NIST encourages application and protocol designers to use the SHA-2 family of hash functions for all new applications and protocols.

The first miss-understanding is that the vulnerabilities in the SHA1 algorithm does not affect stream use of HMAC-SHA1 which is what is in TLS, so the guidance allows for TLS use of SHA1.

SHA â€” Secure Hash Algorithm â€” is used to detect integrity failures, so another miss-understanding was that this was encryption related, but it is not encryption related at all.

The Implementation problem was most compelling as the general purpose operating systems, web platforms, and browsers that supported TLS 1.2 was very small; thus creating a burden on the healthcare industry. Keith did an [excellent review of this](http://motorcycleguy.blogspot.com/2009/10/hit-standards-recommendations-and-tls.html) and I donâ€™t think anyone found any contrary information.

