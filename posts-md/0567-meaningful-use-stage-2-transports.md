# Meaningful Use Stage 2 : Transports

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-transports.html
Published: 2012-09-04T22:00:00.001Z
Updated: 2012-09-05T14:22:02.446Z
Author: John Moehrke

---

There are two perspectives

1) The Transport standard is clear. It is Direct. Everything else said in the regulation about transports is optional and therefore meaningless.

2) There is still the problem of the (b) Transport, which pulls in (b)+(c) and also (a)+(b)

**Simple View â€“ Minimum work to get Certified**

There is no question what is minimally required, it is the Direct Project.  So, test to this and be done. This is the easiest way to get through certification and get your CEHRT stamp.

Note that just because the Direct Project is the only required Transport, does not mean that it is the only Transport that can be used. I heard Steve Posnack reiterate this on many of the webinars. The CMS rule doesn't differentiate between transports, it is more concerned with content and outcomes (AS IT SHOULD BE).

The Direct Project is a pointed message, but not necessarily without issues, here are a bunch of my blogs

- [Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/minimal-metadata.html)

- [Direct addresses- Trusted vs Trustable](http://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html)

- [Implementation Guidelines for State HIE Grantees on Direct Infrastructure & Security/Trust Measures for Interoperability](http://healthcaresecprivacy.blogspot.com/2012/07/implementation-guidelines-for-state-hie.html)

- [Can Direct messages be "delegated/forwarded?"](http://healthcaresecprivacy.blogspot.com/2012/07/can-direct-messages-be.html)

- [Testing your XDM implementation](http://healthcaresecprivacy.blogspot.com/2012/05/testing-your-xdm-implementation.html)

- [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

**Problems in Extended Transports**

Lets just say that you don't like doing Minimum work for Certification, or that  you want to go above-and-beyond, or that your EHR is so far from supporting Direct that you need alternatives. On the last topic, sorry but you must support Direct. The problems with the Transports other than Direct is simply, confusion.

http://wiki.directproject.org/file/view/Karen

I cover these problems in detail in [Karen's Cross or just Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html). The Diagram at the right is informative, it is Karen's Cross. The **GREEN arrows** are the (a) transport, Direct. The **BLACK arrows** are the (c) transport, Secure SOAP. The **RED arrows** are the (b) transport, a proxy service that converts (a) to (c) and (c) to (a). The (b) transport is not a transport and thus canâ€™t be called upon as a transport. Add to that that the MU2 specification always grouped the (b) transport with either (a) or (c) and one has something that simply doesn't compute. I guessed that ONC really just wants the [Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/minimal-metadata.html), but am not sure. I think they are actually asking for CEHRT to somehow certify that they can work in an operational environment where someone else provides the (b) proxy service. The use of the (b) proxy service is an operational aspect that should have been placed upon the CMS side.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj8tnt86uzlSBDfORM3A36HcX8j7YyYk7LSTDQSepo1ak4ONG7p7HAbzu5LrnUdBSONQ0KiRsqYv1norOQq9EV-3vdt7HpGBGdmvJ_ffg09wMX8i9R6gevtjVAme6_I8GqcwvFUm5u7wmPN/s1600/IHE_and_ONC_Secure_Transport_20120904.png

Besides the [Karen's Cross or just Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html) issue, one can just look at the (c) transport and treat it as I outlined  in [Meaningful Use Stage 2 -- 170.202 Transport](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-170202-transport.html). Essentially the Secure SOAP stack is simply the lower half of all of the SOAP based profiles found in IHE. ONC has chosen to chop horizontally, where IHE builds vertically. This is shown in the eye chart to the left, which is  not intended to be readable. Either way you slice it you have a secure SOAP transport stack that is carrying some SOAP content.

Thus it matters little if you use any of the [Data Sharing](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html) profiles from IHE (XDR, XDS, XCA) or the Patient Management profiles from IHE (XCPD, PIXv3, PDQv3). What does matter is that you MUST be using [ATNA secure communications](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html), and [XUA user assertions](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html). YES the IHE profiles are the parent of the NwHIN-Exchange specification and are compatible. It is not that I work hard to propagate my view of the world, I work  hard to keep divergence from happening when it is not necessary. I am very willing to entertain necessary divergence, and have lots of evidence that I support Direct.

**But what about Encryption and Hashing?**The MU2 requirement gets specific about Encryption and Hashing, but donâ€™t worry.

>
Â§170.210(f) Encryption and hashing of electronic health information. Any encryption and hashing algorithm identified by the National Institute of Standards and Technology (NIST) as an approved security function in Annex A of the FIPS Publication 140-2 (incorporated by reference in Â§ 170.299).

This Encryption and Hashing requirement is important but not hard to meet. The important part is that proprietary encryption is unacceptable, old encryption algorithms are unacceptable. Modern encryption (AES and SHA) are acceptable.  The use of FIPS Publication 140-2 allows HHS and CMS to benefit from the intelligence community assessment of cryptographic algorithms, thus moving up automatically when the intelligence community does. The use of Annex A rather than the core FIPS 140-2 specification allows for relaxed rules around certification, this doesnâ€™t change the technical aspect but it does greatly reduce the invasive code inspection requirements of actual [FIPS certification](http://en.wikipedia.org/wiki/FIPS_140-2). The [Annex A is very short](http://csrc.nist.gov/publications/fips/fips140-2/fips1402annexa.pdf), 6 pages long. The summary: Encryption AES or 3DES; Hashing SHA1, or higher;

All of the Transports include fully security as part of the specification, so they are by definition already compliant with the Encryption and Hashing requirements.

- **Direct **â€“ S/MIME authenticated using X.509 Certificates/Private Keys, Encrypted with AES128 or AES256, and Hashed with SHA1 or SHA256.

- **Secure SOAP** â€“secured with Mutual-Authenticated-TLS using X.509 Certificates/Private Keys, Encrypted with AES, and hashed with HMAC-SHA1, for more details see: [Moving to SHA256 with TLS requires an upgrade](http://healthcaresecprivacy.blogspot.com/2009/11/sha2-is-un-mandated.html).

- **Secure SOAP** â€“ End-to-End - This is in IHE ATNA, but not in MU2 â€“ There is an option to use WS-Security end-to-end security, but this requires also an update of common SOAP stacks and is administratively harder to achieve. Risk Assessment needs to drive the cost benefit.

- **Secure HL7 v2** â€“ There is no mention of this dirty little secret, but all of those HL7 v2 requirements in the regulation would also need to meet the Encryption and Hashing requirement. The solution here is to use the Mutual-Authenticated-TLS as is used in the Secure SOAP stack. Many toolkits support this, but not all of them. At IHE Connectathon we run into people who have forgotten to test this, they usually get going quickly.

- **Patient Engagement - Secure Messaging** â€“ There is no guidance on what Secure Messaging is, and I think this is the right solution. But whatever is used for Secure Messaging must also meet the Â§ 170.210(f) requirements. Given that the requirements are just focused on Encryption and Hashing; this is easily met with a typical HTTPS web-portal.

- **Data at Rest â€“ End-user device encryption**. -- Okay this isn't a transport, but whatever solution used to protect data at rest, it must also meet the Encryption and Hashing requirements. A good commercial solution or even the solutions built into operating systems cover this. What they donâ€™t cover is KEY MANAGEMENT. If you donâ€™t protect the key then it doesn't matter how well encrypted.

**Summary:**

The transport to certify is clear, just get Direct done somehow. If you canâ€™t do direct, then you are going to struggle with trying to figure out what is going to be required of you. The Test Tools will likely answer this eventually. There certainly is nothing clear today to start developing toward. Stick with XDR, which is a subset of XDS. This solution is highly reusable.

