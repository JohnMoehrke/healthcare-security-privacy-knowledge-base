# Meaningful Use Encryption - passing the tests

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/10/meaningful-use-encryption-passing-tests.html
Published: 2010-10-20T01:14:00Z
Updated: 2014-08-05T18:43:38.196Z
Author: John Moehrke

---

**Updated August 2014 -- This article seems to be popular for some reason, well beyond the usefulness it brought back in 2010. Please refer to the [MU](http://healthcaresecprivacy.blogspot.com/p/topics.html#MU)topic, or [Secure Communications](http://healthcaresecprivacy.blogspot.com/p/topics.html#Com) topic for fresh information.**

The topic of encryption continues to be a hot one with the Meaningful Use certification.The criteria are mostly clear, but how they will be tested continues to be confusing. I have blogged on this before: [Meaningful Use Security Capabilities for Engineers](http://healthcaresecprivacy.blogspot.com/2010/08/meaningful-use-security-capabilities_03.html) and [Meaningful Use Certification issue with Encryption of data-at-rest.](http://healthcaresecprivacy.blogspot.com/2010/09/meaningful-use-certification-issue-with.html) But these blog posts leave some more current details out.  The good news is that from what I can tell they (ONC, NIST, and the certifying bodies) have gotten more reasonable.

- **Â§170.210 (a) - Encryption and decryption of electronic health information**

- **Â§170.210 (c) Verification that electronic health information has not been altered in transit**

and   ** **

- **Â§170.302 ****(u) General encryption. Encrypt and  decrypt electronic health information in accordance with the standard  specified in Â§170.210(a)(1), unless the Secretary determines that the  use of such algorithm would pose a significant security risk for  Certified EHR Technology. **

- **Â§170.302 **** (v) Encryption when exchanging electronic health  information. Encrypt and decrypt electronic health information when  exchanged in accordance with the standard specified in Â§170.210(a)(2). **

The first item (a) is simply calling out the encryption algorithms. This simply says that encryption algorithm that is recognized by FIPS 140-2 Annex A is good enough. This means that one must use either AES or 3DES. I would recommend AES, but know that there are still some platforms in use that might be stuck with 3DES.

The second item (c) is simply calling for SHA1 to be used to protect data from unauthorized modification.

Item (a) and (b) are referenced in the encryption items that are being tested. Where (c) is referenced less

**Â§170.302 ****(u) General encryption... **

From what I can tell (u) is being interpreted much as I have been posting before, [use of portable encryption such as Secure ZIP or portable S/MIME file](http://healthcaresecprivacy.blogspot.com/2010/09/meaningful-use-certification-issue-with.html).

The [NIST test procedure here is short](http://healthcare.nist.gov/docs/170.302.u_GeneralEncryption_v1.0.pdf). It does make clear that the EHR vendor identifies the "test data". We did receive clarification that this as NOT asking for the EHR database or backend servers to be encrypted. This might not be a bad solution, but it is one that needs to be carefully deployed as this could introduce new risks.

The test data is expected to be exported and encrypted all by the EHR being tested. From what I understand CCHIT is being more strict about this needing to be integrated, where the other certifying bodies might be allowing external capability.

**Â§170.302 **** (v) Encryption when exchanging... **

This item should be very simple. It should be a case where the EHR vendor simply says that they have TLS or VPN capability available for their customer to use on network interfaces. For example the interface for submitting prescriptions, lab requests, lab results, etc. This is what my read of the comments in the regulation. Unfortunately comments in the regulation don't mean anything.

I have heard that some certifying bodies might be simply asking for the network protocols used and doing simple verification. So the tester would ask the EHR vendor to explain the algorithms used. The vendor says that they have TLS with AES and SHA1. They demonstrate this with some network sniffer, like wireshark, showing the network traffic as looking like random noise.

The problem with this is that the NIST test[Encryption when exchanging electronic health information](http://healthcare.nist.gov/docs/170.302.v_EncryptionHIE_v1.0.pdf) don't completely agree with this reading of (v). The NIST test seems to be asking for the same functionality tested in (u). So I would be prepared to re-use the test you have for (u), and show that when this portable-encrypted-package is transmitted over TLS that the TLS also encrypts. Thus resulting in double encryption.

**Conclusion**

I don't know everything. I am struggling with everyone else. I would be glad if anyone who has had an experience was to comment on this blog. I think it is better if we all share experiences. This is not a good place to get secretive. The idea that the certifying bodies need to be so secretive is rather counter to an open process. I don't mind comments from anonymous, or you could have me summarize as anonymous information.

