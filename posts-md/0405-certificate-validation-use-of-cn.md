# Certificate validation - use of CN

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/08/certificate-validation-use-of-cn.html
Published: 2016-08-10T21:26:00.001Z
Updated: 2016-08-10T21:26:09.950Z
Author: John Moehrke

---

I got a question of what should be done with the Certificate CN (common name) value. Specifically should a system make sure that the TCP/IP Connection aligns with the CN hostname value?

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjBQkttTVZ7Q_xpKtCBQyH-2xQ3w3y1kGtI4NrFRAR2hyzUjGqcpRkzDchzMbwpk3_5hyphenhyphenpSj5U7MP6J1NZlHJC6MMx29OuSFlZ4x1DS40GmqHhuMODIJ6f0hSVhAcyN9zreaoR_JRnWLMZr/s1600/Slide15.PNG

The short answer is: ignore the Certificate CN; as the TLS authentication mechanism has already done cryptographically secure authentication. Adding any use of DNS to this will only result in false-negatives, meaning it will never add value but will occasionally cause you to reset a perfectly good connection.

Here is the question:

>
I have been trying to understand the certificate requirements in ITI-TF 2,  3.19.6.13 (Other Certificate Requirements) especially:

>
**"The Secure Node shall not require any specific certificate attribute contents, nor shall it reject certificates that contain unknown attributes or other parameters.  ****Note that for node certificates the CN often is a host name, attempting to use this host name provides no additional security and will introduce a new failure mode (e.g., DNS failure). "**

>

This requirement appears vague to me in that though it talks about CN not providing any additional security, it does not state whether we are supposed to consider it during validation or not.
I understand that may be it is up to the implementer, what I would really like to know is whether rejecting a certificate due to host name mismatch ( for e.g My repository is NOT using a certificate with Common Name = machine name/host name) should reject requests from a Client who is using my repository's endpoint (where Common Name is NOT = machine name/host name).

I would like to know how others are dealing with certificate validation and specifically Common Name mismatch errors.
1. What does "shall not require any specific certificate attribute contents, nor shall it reject certificates that contain unknown attributes or other parameters" mean?
   - If as a Secure Node, I want to only allow certificates know to me and reject the rest, is that counted as not meeting  IHE spec?
2. Are we supposed to ignore Common name mismatch errors entirely? And are they supposed to be ignored on the Client side (If I am a Document Source sending a document to a repository) or on the Server side (I am a registry accepting a query from a Document Consumer)?

I will really appreciate any more information on this.

We are trying to encourage everyone to ignore the CN, at least for authentication purposes. The reason is that the cryptographic validation that TLS has already completed is the secure authentication. The TLS authentication has already proven that the remote node has possession of the private key, and that the certificate used is a good certificate, and that the certificate is trusted directly or through a CA, and that the certificate used has not been revoked.

The question points out that their Certificates are not putting hostname into CN. Thus if anyone tries to use the CN as a hostname they will fail a perfectly good and authenticated communications channel. This is clearly not intended or useful. So, this is a specific configuration we want to enable through encouraging not validating the CN.

Further if the CN is a hostname, looking at the CN will not fill any positive authentication function, but might cause a reset of a perfectly good connection due to a failure in the DNS lookup. [DNS is not a security protocol!](https://en.wikipedia.org/wiki/DNS_spoofing)

Even Further; the Internet is getting bigger. The use of IPv4 often must use NAT in some regions. Use of smart clients on mobile devices can utilize multiple IP addresses over a short span of time. The use of IPv6 introduces a much more dynamic environment.

So, ignore the CN found in the Certificate. There is enough you must do to [properly implement Secure Communications](http://healthcaresecprivacy.blogspot.com/2014/03/testing-atna-secure-communications.html), and [avoid poodles](https://healthcaresecprivacy.blogspot.com/2015/01/tls-not-ssl-connectathon-trials-and.html).

Does this mean the CN is useless? Not really, it might be used to differentiate various remote endpoints. It will likely be used in [Authorization decision](http://healthcaresecprivacy.blogspot.com/2015/04/why-mutual-authorized-tls.html). It should be used in the [Audit Log](http://healthcaresecprivacy.blogspot.com/p/topics.html#Audit). It should simply not be used in a reverse-DNS lookup for the purpose of failing a communication channel.

So the reason the technical framework is not more clear; is that we don't want to be overly restrictive and force the CN to be totally ignored. Thus all we can do is encourage with the most common and robust solution.

[Secure Communications](https://healthcaresecprivacy.blogspot.com/p/topics.html#Com)

- [Don't disassemble ATNA, what you are looking for is there.](http://healthcaresecprivacy.blogspot.com/2015/08/dont-disassemble-atna-what-you-are.html)

- [Why Mutual-Authorized-TLS?](http://healthcaresecprivacy.blogspot.com/2015/04/why-mutual-authorized-tls.html)

- [Testing ATNA Secure Communications](http://healthcaresecprivacy.blogspot.com/2014/03/testing-atna-secure-communications.html)

- [Direct addresses- Trusted vs Trustable](http://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html)

- [Identity - - Proofing](http://healthcaresecprivacy.blogspot.com/2012/08/identity-proofing.html)

- [Securing RESTful services](http://healthcaresecprivacy.blogspot.com/2011/09/securing-restful-services.html)

- [IHE Encryption choices](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-encryption-choices.html)

- [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html)

- [Meaningful Use Stage 2 :: SHA-1 vs SHA-2](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-sha-1-vs-sha-2.html)

- [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

- [S/MIME vs TLS -- Two great solutions for different architectures](http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html)

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Document Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

