# Why Mutual-Authorized-TLS?

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/04/why-mutual-authorized-tls.html
Published: 2015-04-26T17:09:00.002Z
Updated: 2015-04-27T15:09:50.517Z
Author: John Moehrke

---

The IHE-ATNA Profile only calls for "Mutual-Authenticated-TLS", where I have asserted that you really need Mutual-Authorized-TLS. I am not changing the IHE-ATNA perspective. From an Interoperability perspective one is using the TLS to Mutually Authenticate. This is the concern that is addressed through Interoperability Profiling. This is all that Profiling can address, in that the Interoperability layer defines how the two sides authenticate each other. This is enough from an Interoperability perspective, but is not the end of the story.

Updated: To be clear, I am not recommending a change to IHE-ATNA, it is fine the way it is and what it provides is foundational to what I am describing. What I am describing is that use of IHE-ATNA Secure Communications is not sufficient, as a 'bad-guy' could potentially be authenticated but not authorized. This is especially true if one uses a truststore like the ones found in Browsers. So what I am describing is that each endpoint must also functionally do Access Control decisions, aka Authorization.

The reason one Authenticates something is to prove that the Identity claimed is indeed the Identity of the one claiming that Identity. But knowing an Identity is just part of the story.



Why does the Server need to check if the Client is Authorized?
An
 Authorized Client is one that is allowed to do the task that it is
asking to do. This authorization is based on an Identity that has been
Authenticated. An Identity that is not Authenticated is one that can be
spoofed easily. So you see that the Authorization is dependent on the
Authentication which is dependent on the Identity.

Servers need to
 differentiate communications from partners that they should talk to,
from all the attackers that they should not talk to. This is rather obvious in the context of a Cloud
 hosted Server. As that Server is on the internet, and thus every
attacker on the internet could be attacking. There are many proofs that
any machine placed on the internet will be attacked within a few
minutes.

The Server is often 'serving' up data or functions for Clients to use. Thus the Server is protecting that data from improper access. Cat videos need not be protected, but healthcare information and healthcare functionality really do need to be protected from improper access. Often times the server will use the identity in a simple Role-Based-Access-Control decision: Does this user possess roles that possess Permissions to this kind of access to this specific resource?

The basics are that the Server needs to protect itself, and this is done with Authorization decisions based on client identity authentication.



Why does the Client need to check if the Server is Authorized?
The Client
must be sure that it has actually gotten connected to the Server it
intended to get connected to. So the risk is that the Client will get
attached to the wrong Server. Worst case is that the Client gets
connected to a malicious Server. In this case the Client may be
controlled to expose healthcare information to the attacker, or to
falsify information into the hospital environment. This happens in the environment where a human is using a Browser, as the human is expected to do the authorization of the server step themselves. This however fails quite often, see [phishing](http://en.wikipedia.org/wiki/Phishing).

These attacks are
harder to achieve. The vulnerability is that the client attaches to a Server that
 is not the right server (spoofing, tampering, repudiation, disclosure,
and denial-of-service). The attacker would likely be a skilled
and motivated attacker.  But the attacks are not that hard to
achieve, and we have seen examples where this kind of attack has
happened.

For example the attacker could ['spoof' the DNS](http://en.wikipedia.org/wiki/DNS_spoofing),
 thus giving the Client a wrong IP address to connect to; thus causing
the Client to connect to their malicious Server. The attacker could [cause routers to route](http://en.wikipedia.org/wiki/Route_poisoning) the communications to their malicious Server.

Where node-to-node Authentication is Authorization
There
 is a degenerate form where the truststore on both ends of the
communications contain only identities that are Authorized. Thus the
Authentication step, accomplished by the TLS layer, is sufficient. This
is not a violation of the above assessment. It is simply moving the
Authorization step to the configuration of the truststore, rather than
leaving it in real-time as part of the communications channel
establishment. This degenerate form simply is not scalable, and is much
harder to manage.



Authorization as an Interoperability Concern
Yes, there are some protocols that cover Authorization. This can be done using SAML, a claim of authorization can be communicated within a SAML assertion. More directly OAuth, is 'Authorization', and not authentication, although one gets authentication by way of the authorization claims. I am not trying to downplay these, but rather focus on the IHE-ATNA model. This does not mean one model is better than the others, just different. I am simply not covering anything but IHE-ATNA in this blog article. See other articles for other topics.



Blog Articles on  [Secure Communications](http://healthcaresecprivacy.blogspot.com/p/topics.html#Com)

- [Testing ATNA Secure Communications](http://healthcaresecprivacy.blogspot.com/2014/03/testing-atna-secure-communications.html)

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

