# Forged Google Cert and such - Fighting FUD

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/09/forged-google-cert-and-such-fighting.html
Published: 2011-09-02T16:43:00.002Z
Updated: 2011-09-02T16:43:38.075Z
Author: John Moehrke

---

Nothing new here, more failure of the Internet Browser CA community and the model of root certificate trust that the Internet chose to deploy so-many years ago. This is very truly a big problem in the Internet Browser world. I have covered this before - [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html). But I know that this kind of event causes widespread Fear, Uncertainty and Doubt (FUD). I want to help contain the FUD to the scope where it should be applied -- Internet Browsing.

This problem has nothing to do with the model of secure communications promelgated by IHE ATNA. Some will think that we are ok because of the use of Mutually-Authenticated TLS (or WS-Security, or S/MIME) -- Authenticating not just the server, but also the client. This is not the case, although it does protect against man-in-the-middle and some of the other negotiation vulnerabilities known in TLS.

The reason why we are in better shape is that operationally we are building an independent trust network from the internet browser trust network. In the internet trust network deployed for browsers, they (the nebulous Internet community) had to cut corners. Back when this was done, it was the right thing to do. But when we are building Healthcare Information Exchanges (HIE) we should be careful to build the PKI trust network. Yes, this is difficult, but the things we are protecting are important, and current technology is far more capable than the technology back when the Browser corners were cut. Trust is hard work. We have the opportunity to do it right, and cutting corners is a bad idea.

We MUST require that all certificates be fully validated at reasonable intervals -- Ok, this is not said this nicely everywhere, but it should be more clear. Some will note that it is just "reasonable intervals", this reasonable interval needs to be assessed based on the risk and cost of validation specifically the cost of doing the certificate revocation checking part of validation.

To be more actionable:

- Every use of a certificate MUST validate the certificate signature validates, date/time ranges are valid, and that the certificate chains to a trusted root. This is all local math, and is typically already done by your toolkit (Trust Store). There is little reason not to do this.

- Every use of a certificate should validate the 'use' of the certificate and the 'use' of the certificates in the chain (Key Usage, and Basic Constraints). For example if the certificate is being used for S/MIME, then it must indicate that it is issued for that purpose. This failure was the root of one of the vulnerabilities a few weeks ago, where Apple was found to not be validating that the certificate was being used properly. In that case a certificate was issued (signed) by a certificate that was not authorized to issue certificates. Meaning that the certificate chain should have been seen as invalid. This is listed independently because the certificate trust-store doesn't know why you want to use a certificate, so it doesn't validate the 'use'.

- Revocation checking should be done on a reasonable basis. This applies to end certificates, but also all the certificates in a trust chain. This would cause many network transactions to check the revocation status. This is an expensive operation, but there are ways to make it reasonable. You can use a CRL file that is pulled on a reasonable basis while each use of a certificate is validated against the CRL cached locally. This model puts the overhead back into simply math.  Because this is not done for browser based PKI, it typically is not automatically done in your toolkit, so poke around and figure out how to get it done.

Note that this needs to scale as well. There are very clear cases where risks are high and online revocation is necessary, but there are also cases where risks are mitigated by many other layers of security and revocation  checking is not as urgent (could be done only at configuration).

**So the solution is simply good clean PKI - checking the certificates, the chain, and revocation. **This is all part of the standards and the technology. It is simply not part of the trust model used in Internet Browsers.

Of course all the other good security stuff too. The ends of any secure conversation do need to be secure themselves. The ATNA philosophy puts this as an operational requirement to check before any node is declared a 'secure node' and issued a certificate. Said another way if a remote system has a certificate that validates then it is a 'secure node'. If it is not, then it is an operational failure.

See Also

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [Designing a Secure HIE](http://healthcaresecprivacy.blogspot.com/2010/02/it-security-problems-continue.html),

- [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [Medical Device Security and Privacy](http://healthcaresecprivacy.blogspot.com/2011/02/medical-device-security-and-privacy.html) - White paper on Certificate Management for Machine Authentication

- [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html)

- [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

- [Authentication and Level of Assurance](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html)

- [S/MIME vs TLS -- Two great solutions for different architectures](http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html)

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

http://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html

