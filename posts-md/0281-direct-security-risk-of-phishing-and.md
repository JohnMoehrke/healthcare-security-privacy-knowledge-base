# Direct: Security risk of PHISHING and SPAM

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/12/direct-security-risk-of-phishing-and.html
Published: 2011-12-21T17:45:00.001Z
Updated: 2011-12-21T18:13:20.721Z
Author: John Moehrke

---

I am trying to find people who have experience with encrypted e-mail and using Directories to publish certificates. Standards are wonderful, but experience is equally important. While talking to people about their experience with publishing digital certificates in LDAP directories, I have to explain the [Direct project](http://wiki.directproject.org/) use. I am explaining this to IT people who run directories or run mail servers.  It goes a little like this:

>
My use-case is for encrypted e-mail. More specifically it is for using encrypted e-mail between hospitals/clinics by doctors. In order to make this happen, one doctor must be able to â€˜discoverâ€™ the certificate of the other doctor. So I am on a workgroup trying to define how the USA would do this. Specifically we are recommending each hospital would have a limited LDAP directory exposed for this purpose. It only need contain the email address and certificate for each individual they allow to receive encrypted e-mail.

For which my security conscious peer responds:

>
Nice. Publish everyoneâ€™s email address and their public cert. phishing encrypted style. Good luck detecting the phish till itâ€™s ***way*** too late.

The implied message here is that if the e-mail is encrypted to a certificate owned by an end-user; then the IT at the organization canâ€™t look at the content and reject it because they see PHISHING or SPAM patterns. This is what many mature email servers have been doing to limit the amount of SPAM or PHISHING that end-users see. I know that I receive little spam or phishing email, yet my email address is well known and published in lots of places. I compare with others, and am very happy with the IT support given to me at GE. This is impossible if the IT department canâ€™t look at the message because it is encrypted.

Note that both the DNS-Cert and the LDAP model of publishing Certs would present this problem.

I do have a good answer:

>
Yup, the risk is known; and managed:  The sender must sign the message too, and it must be signed with a certificate that chains to a trusted root (trust root that are managed, NOT like browsers). So, unsigned messages are discarded, or the phish-er will be highly identified by their e-mail signature

This is indeed the solution that we put into the Direct Project [risk assessment](http://wiki.directproject.org/Threat+Model+-+Simple+SMTP). The following is from this risk item in the risk assessment as the comments:

- the judgment of the receiving user can determine if the information should be trusted or not.

- Many will choose to simply discard all non-secured as potentially SPAM.

I am worried that some will forget this risk, and not treat un-signed email special. If you forget this risk, and you publish your email address in a directory or in DNS; then **you will be discovered** and targeted by SPAM and PHISHING attacks. If your certificate is there; then the attacker can further encrypt the SPAM or PHISHING attack so that your IT department canâ€™t protect you.

**The inbound signature MUST be validated. **
See:

- [Directed Exchange vs Publish/Discover Exchange](http://healthcaresecprivacy.blogspot.com/2010/10/directed-exchange-vs-publishdiscover.html)

- [NHIN-Direct Privacy and Security Simplifying Assumptions](http://healthcaresecprivacy.blogspot.com/2010/05/nhin-direct-privacy-and-security.html)

- [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

- [S/MIME vs TLS -- Two great solutions for different architectures](http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html)

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

