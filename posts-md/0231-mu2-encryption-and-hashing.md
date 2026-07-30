# MU2 - Encryption and Hashing

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/10/mu2-encryption-and-hashing.html
Published: 2012-10-15T15:04:00Z
Updated: 2012-10-15T15:11:16.824Z
Author: John Moehrke

---

The MU2 requirement gets specific about Encryption and Hashing.

>
Â§170.210(f) Encryption and hashing of electronic health information. Any encryption and hashing algorithm identified by the National Institute of Standards and Technology (NIST) as an approved security function in Annex A of the FIPS Publication 140-2 (incorporated by reference in Â§ 170.299).

This Encryption and Hashing requirement is important but not hard to meet. The important part is that proprietary encryption is unacceptable, old encryption algorithms are unacceptable. Modern encryption (AES and SHA) are acceptable. The use of FIPS Publication 140-2 allows HHS and CMS to benefit from the intelligence community assessment of cryptographic algorithms, thus moving up automatically when the intelligence community does. The use of Annex A rather than the core FIPS 140-2 specification allows for relaxed rules around certification, this doesn't change the technical aspect but it does greatly reduce the invasive code inspection requirements of actual [FIPS certification](http://en.wikipedia.org/wiki/FIPS_140-2). The [Annex A is very short](http://csrc.nist.gov/publications/fips/fips140-2/fips1402annexa.pdf), 6 pages long.

**The summary: **

- Encryption AES or 3DES;

- Hashing SHA1, or higher;

- Authentication is totally missing in MU2, although RSA is included in FIPS.

Most of the Transports include fully security as part of the specification, so they are by definition already compliant with the Encryption and Hashing requirements.

- **Direct **â€“ S/MIME authenticated using X.509 Certificates/Private Keys, Encrypted with AES128 or AES256, and Hashed with SHA1 or SHA256.

- **Secure SOAP** â€“secured with Mutual-Authenticated-TLS using X.509 Certificates/Private Keys, Encrypted with AES, and hashed with SHA1 (HMAC-SHA1). This specification also indicates that the user identity be provided using SAML assertions -- This is the same requirements that IHE has for XDR, XDS, XCA, etc...  through IHE-ATNA and IHE-XUA profiles.

- **Secure HL7 v2** â€“ There is no mention in MU2 of this dirty little secret, but all of those HL7 v2 requirements in the regulation would also need to meet the Encryption and Hashing requirement. The solution here is to use the Mutual-Authenticated-TLS as is used in the Secure SOAP stack. Many toolkits support this, but not all of them. At IHE Connectathon we run into people who have forgotten to test this, they usually get going quickly. As indicated above the low bar is just 3DES and SHA1; IHE starts with AES and SHA1.

- **Patient Engagement - Secure Messaging** â€“ There is no guidance on what Secure Messaging is, and I think this is the right solution. But whatever is used for Secure Messaging must also meet the Â§ 170.210(f) requirements. Given that the requirements are just focused on Encryption and Hashing; this is easily met with a typical HTTPS web-portal. This will only be server authentication, but the user would be authenticated and thus it is up to the user to use a trustable machine. Typical HTTPS will also include encryption and hashing of sufficient strength -- 3DES and SHA1

- **Data at Rest â€“ End-user device encryption**. -- Okay this isn't a transport, but whatever solution used to protect data at rest, it must also meet the Encryption and Hashing requirements. A good commercial solution or even the solutions built into operating systems cover this. What they donâ€™t cover is KEY MANAGEMENT. If you donâ€™t protect the key then it doesn't matter how well encrypted. Please leverage good solutions that were developed by specialists.

- Note that the best solution that is MU2 compliant is to NEVER save PHI onto the client workstation. This simply stops the risk at the root. This is not always easy, but is the best.

- The Operational environment should be able to leverage transparent hard-drive encryption.

**More details on advanced topics**

- Secure SOAP â€“ End-to-End security - This is not in MU2 â€“ In IHE there is an option to use WS-Security end-to-end security, but this requires also an update of common SOAP stacks and is administratively harder to achieve. Risk Assessment needs to drive the cost benefit. This model also suffers from the same problem Direct has in that to send something you must discover the endpoints Digital Certificate before you start the conversation. Where as TLS does the discovery inline as part of the protocol negotiation.

- [Moving to SHA256 with TLS requires an upgrade](http://healthcaresecprivacy.blogspot.com/2009/11/sha2-is-un-mandated.html).

- [Direct addresses- Trusted vs Trustable](http://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html)

- [Identity - - Proofing](http://healthcaresecprivacy.blogspot.com/2012/08/identity-proofing.html)

- [Securing RESTful services](http://healthcaresecprivacy.blogspot.com/2011/09/securing-restful-services.html)

- [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [Meaningful Use Stage 2 :: SHA-1 vs SHA-2](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-sha-1-vs-sha-2.html)

- [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

- [S/MIME vs TLS -- Two great solutions for different architectures](http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html)

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Document Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html)

http://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html

