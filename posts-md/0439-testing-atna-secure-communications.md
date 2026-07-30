# Testing ATNA Secure Communications

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/03/testing-atna-secure-communications.html
Published: 2014-03-04T17:36:00Z
Updated: 2014-03-06T13:23:51.790Z
Author: John Moehrke

---

I wrote a blog article that [used the Apple "goto fail" problem as an opportunity to stress the need to test both 'happy path' as well as failure-modes.](http://healthcaresecprivacy.blogspot.com/2014/03/testing-governance.html) Grahame further wrote a blog article that [enhanced this discussion with excellent observations and recommendations.](http://www.healthintersections.com.au/?p=1931)

The happy-path is the successful completion of a feature, what you expect to happen, what should happen 99.999% of the time. It is the easy stuff to write tests for. The failure-modes are much harder, as this article will show for what is seen as a simple IHE Profile. Skip to the end to see the conclusion, or read through the derivation...

Writing Tests for failure-modes
The failure-modes are the hard thing to write tests for, and are considered no-fun by many. The failure-modes tests are trying to prove that nothing wrong happens, which is [testing a negative](http://en.wikipedia.org/wiki/Proving_a_negative). It takes a specific type of person to think through all the various failure-modes. This is the kind of person you really wants to make sure you get onto your project, as there are few of them and they are valuable over the long term. These are not specifically negative people, their goal is not always to break things, but they can put themselves into that 'not-happy place' and dream up devious tests. These are critical people to have for Quality. These are critical people to have for Safety, Security, and Privacy; all 'risk domains' that one can only avoid as one can never bring risk to zero.

IHE-ATNA Authenticate Node transaction
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjR5Hhh_y8shTO8HNXqwdK0HvFv6fqNvFEh7T2rdkbqG9AFsTLAQcZ4oNJIF-Ckpd-MN8LDZrUc2pP0nVtC7M-nHS0av4If3PotaxfELqMoc-YB0uVyyJeEuPTKBGmdolnHO81cNMnZWc04/s1600/Slide15.PNGThe secure communications transaction in [IHE-ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) is leveraged by almost every Profile in IHE. Many people think that this is only made up of Transport Level Security (TLS). This is central, but not the only form of secure communications. In fact the name of the transaction should be a hint -- Authenticate Node [ITI-19]. The prime purpose of the secure communications transaction is to authenticate the endpoints of the communications, which was the part that Apple 'goto fail' failed to confirm. In IHE this authentication is 'mutual' authentication as well.

In normal Browser based SSL one only gets to know who the server is, the server never gets to know who the client is. In the case of Internet HTTP Browsers this is not too much of a problem as the access is either to non-sensitive information or information where the human identity is more important than the client machine. In the IHE use-cases the communications are more at the system-to-system communications so it is important to know what 'system' initiated the communications as well as what 'system' is the server. Thus in IHE use-cases mutual-authentication of the endpoints of the communication is critical.

This is mostly done with TLS, forcing client and server authentication. This is a part of the TLS protocol, but not one that is used often. But TLS is not the only solution in the ITI-19 transaction. This transaction also recognizes that for e-mail the end-points can be mutually authenticated using S/MIME; just like was adopted by the USA "Direct Project". The ITI-19 transaction also recognizes that for web-services that WS-Security can be used to do message-level end-to-end security. In both of these alternatives the certificate management is much more difficult, it isn't just a CA-Trust, but also a certificate discovery problem.

Don't build it yourself - Trust your platform
For someone building any of these protocols, the tests are far more intricate. As one can imagine by looking at the Apple 'goto fail' code. I am not going to cover this level of testing. Because I want everyone to utilize their platform for protocols like this. Yes, even in the face of the  Apple 'goto fail' failure, I want you to trust your platform and not try to code these protocols yourself. I do want you to test that the platform is providing you what you need, and this is a proper subset of the total tests. The main reasons to utilize your platform is that protocols (especially security) are hard to write, these protocols are used widely, and if a bug is found it will be resolved and transparently patched. Yes there are many Apple devices that have not yet been fixed, but many have been fixed and more so every day. The platform is more likely to get it right and more capable of fixing it too.

But Verify your platform
Testing that the communications succeed is first. One doesn't even need special tools for this. But one does need to make sure you have success with more than yourself. As with [Connectathon](http://healthcaresecprivacy.blogspot.com/2013/11/what-is-connectathon.html), test with some 'gold standard', and test with 3 peers that have implementations of applications that are as different from yours as possible (testing between three peers that all use the same open-source toolkit is not helpful). [ATNA is tested before and during connectathon](http://na2014.wustl.edu/TechnicalPrep/ATNA.html). This is the happy path.

So, how might we break a secure communications?
I would not put much effort into trying to crack the cryptography. If you have successfully communicated with three peers and a 'gold-standard' then one must 'trust' the algorithm writers and all their cryptoanalysis. This is a level of smarts that is in rarefied air. Yes there are suspicions of these people and their procedures. I find it really hard to believe these stories, it is far easier to break the endpoints, or people at the endpoints, than to try to engineer a bug into a cryptographic algorithm that is not noticed. Even the Apple 'goto fail' is far more likely to be an accident than intentional.

One must make sure you are testing the cryptographic algorithms that you are using. The simple 'happy path' will test the default algorithms, but you do need to force all algorithms that you are accepting. You do know that by default there are multiple algorithms? IHE defines that 'at least' "RSA_WITH_AES_128_CBC_SHA" algorithm ciphersuite is available. IHE does not say that nothing else can be used. This is especially true for TLS, as TLS has real-time negotiations that is intended to pick the 'best' of the available ciphersuites. Which might not be this one. So you need to test ALL combinations. How is this done?

Using a monitoring tool that tells you what ciphersuite was just successfully tested (e.g. wireshark), then go and remove that ciphersuite from the list of acceptable ciphersuites. As you remove them, you know which ones have been successfully tested. When the system no-longer works, you know that the rest have not been tested. The rest might be perfectly good algorithms, but you don't know. You might see a ciphersuite in the list that you think you should keep. If so, then you need to figure out a way to test it. Note that at IHE Connectathon they will only test the RSA_WITH_AES_128_CBC_SHA, so they can stop there, but you likely need to go further.  Note that as you remove ciphersuites your system will be forced to choose worse and worse algorithms. At some point you should decide that these worse algorithms, although tested, are not worthy of keeping.

Should you allow the non-tested ciphersuites? That is a good exercise for a risk-assessment: What is the risk of keeping them in (What could go wrong)? How likely is that to happen? If it did happen how bad would it be? Weigh this against the risk that this ciphersuite might be necessary in production at some point, how likely is that, and how bad would it be? Using a risk-assessment system one can determine if they should keep or un-configure these untested ciphersuites. Most likely it is not helpful to keep them.

Note that your final list of ciphersuites has been carefully selected, and you should re-test often. You should at least test often that your configuration is still set the way you  want it to be set. It is not unlikely that an operating system patch might reset the ciphersuites back to default, and thus untested.

With S/MIME and WS-Security end-to-end secure communications this is somewhat easier as the set of ciphersuites is far more constrained by configuration. This because one must be far better at picking ONE ciphersuite that will work, as there is only one chance (not completely true, but close enough for this high-level testing vs protocol level testing).

Certificate success
There are many 'happy-path' methods for certificate (authentication) to succeed. In IHE two major methods are identified in section Volume 2a:3.19.6.1. The first one where you test that the certificate used has a proper chain to a certificate authority that you trust. The second one where you test that the certificate used is one that you directly trust.  These two modes recognize the scale differences between a large-scale network and a small-scale network. Certificate validation needs often to scale to a very small network of a few interconnected systems, up to a complex nationwide network. The larger scale, the more likely one must out-source trust to a certificate 'authority'. The smaller scale one can 'trust' an administrator to walk around to each system with the certificates of the others. IHE wants both modes to be possible, the one you actually choose is an operational choice. It is possible that both modes are used. In the "Direct Project" they called these 'trust anchors', that is the explicit trusted certs and/or the certificate authorities that you trust.

Note that part of 'happy-path' is also testing the process of getting a certificate. This involves the 'happy-path' of creating a certificate request, communicating that to the certificate authority, and communicating the signed certificate back. Or the self-signing ceremony if that is being used.

Failure-modes
So far I have not covered any failure-modes. I have also not tested fully all the happy-paths. I have only identified a reasonable set of happy-path to test. Yes, this is difficult. But this is easy to automate the re-testing.

This is just a small but reasonable set of certificate failure-modes.

- Certificates that fail the verification.of the signature across the certificate - (Your test bench uses a corrupted certificate)

- Certificates that don't match the private key (This one is hard to do with off-the-shelf test-tools)

- Certificates that are expired (Just keep your test bench in the past, where it thinks things are fine)

- Certificates that are not directly trusted and not issued by a CA you trust

- Certificates that are revoked -- provided you have certificate revocation protocols in place.

- Certificates that are self-signed, when that is unacceptable

- Where the communications is not secured properly, Mutual-Authentication is necessary.

Note that these 'negative' tests do have the 'prove a negative' problem.
 Thus the best you can do is refine these high-level 'negative' tests
into an explicit list of representative negative tests. For example:
using exactly one expired certificate doesn't test all possible expired
certificates, just a representative one; but that one is likely enough.

Often I find people want to make sure the certificate contains the 'subject' which is the 'system' it is claiming to be. For example that a S/MIME certificate has in the certificate the email address of the endpoint, or for TLS that the certificate includes the hostname of the system. These are NOT useful. These will only cause your system to be fragile to legitimate changes. The proof that the system has the private key, and that the certificate is not revoked or expired, is all that is necessary. This is especially true of controlled environments,  legitimately less so true in the great uncontrolled environment of Browsers utilizing the World-Wide-Web.

Changes over time
You will notice that certificates will expire, this is normal too. You need to have "happy-path" tests for those times when a certificate naturally expires. Do you have mechanisms in place to notice when a certificate is about to expire? You should know how long it takes to get a new certificate issued and distributed (manually if using direct certificate validation). Well in advance of the expiration, one needs to get a new certificate issued. You already know that you are testing certificate expiration. So this is a happy-path test that you can replace certificates.

Does your system behave during certificate request phase? During re-issuing a certificate?  Does it handle getting a re-issued (same private/public keys)? Does it handle getting a new certificate (new private/public keys)?

Robustness everywhere
Both happy-path and failure-modes must respond in a robust way, and likely with a touch of audit logging. Most failures need to be recorded in the audit log, but repeated failures should not result in repeated egregious audit log entries. The reason is that the repeatted failure attempts are likely an attack, likely an attack to cause a denial-of-service. Thus by adding extra overhead to record redundant audit log entries is just adding to the 'success' of the attack, meaning you would be adding to the denial-of-service; not protecting from it.

This is an example of robustness, as are the protections on any of the failure-modes. But generally robustness tests are beyond known-misuse. Robustness is the principle of being strong against the attacks you didn't think of.

Conclusion:

Happy-path -- clearly dependent on what "ALL" means to you, the more constrained the more 'reasonable' that continuous testing will be

- Test that certificate issuing works

- Test ALL of your acceptable ciphersuites with a gold-standard and 3 peers

- Test ALL of your acceptable peer certificates

Failure modes -- Listed here as 'negative' tests, which one must refine in your environment.

- Test that your configuration disallows non-approved ciphersuites

- Test that your configuration disallows non-approved certificates

- Test that your configuration disallows corrupted certificates or corrupt CAs

- Test that your configuration disallows expired certificates

- Test that your configuration disallows revoked certificates

- Test that your configuration disallows connections from non-authenticated peer

- All negative tests must be handled efficiently (not susceptible to denial-of-service-attack) and record sufficient facts in audit log for analysis.

**Updated **March 5, 2014 - Added check for corrupted certificate that fail signature check

 Secure Communications

- [Direct addresses- Trusted vs Trustable](http://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html)

- [Identity - - Proofing](http://healthcaresecprivacy.blogspot.com/2012/08/identity-proofing.html)

- [Securing RESTful services](http://healthcaresecprivacy.blogspot.com/2011/09/securing-restful-services.html)

- [IHE Encryption choices](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-encryption-choices.html)

- [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [Meaningful Use Stage 2 :: SHA-1 vs SHA-2](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-sha-1-vs-sha-2.html)

- [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

- [S/MIME vs TLS -- Two great solutions for different architectures](http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html)

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Document Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

