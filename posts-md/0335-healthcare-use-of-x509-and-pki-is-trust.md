# Healthcare use of X.509 and PKI is trust worthy when managed

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html
Published: 2011-03-29T15:56:00Z
Updated: 2011-03-29T15:56:21.419Z
Author: John Moehrke

---

In todays [HIT Standards](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__health_it_standards_committee/1271) meeting there is a presentation by the [Privacy and Security Workgroup](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_12811_954179_0_0_18/certification-standards-presenation-03-29-2011.ppt). The presentation includes two topics: "Digital Signature Standard" -- which is really "Digital Certificate Standard" (a typo that keeps coming back; and "Enterprise Level Provider Directories".

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgEDsTiQ3RC2CgnmG6SEXHk7jjgRQXToSBEOvY8eP8DkMpmnjDDghIyDTdw3xBDatskhi7iu833t9LP54-lWOvXOywinS4I-B5lCSYs8kBCtJ92M9i6A1fmWLNLSN3xL8PA5W600hEDrzL9/s1600/CATrustModels.jpg
The discussion on Digital Certificates should look good to the readers of my blog, as it simply says that X.509 digital certificates and certificate management are the right method to build trust for healthcare. I worked hard to get the group to simply recognize that these are already strong standards, and that healthcare does not need anything special from them. They do recognize that a single strong Certificate Authority would be easy, but recognize that multiple trust-roots is likely to be needed.

The group also recognized that both Direct and NwHIN exchange can use the same technology. A point I made in [S/MIME vs TLS -- Two great solutions for different architectures](http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html).

**

**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjxQQYB8q2uQV4mP-rFEW6L_-atuUcpBfOKyShmfL5rwcrtXHWQpSXlGLzytBTF2QSx9dd1YeZwx9cQMVjk8QQpAfG_rqwDJzdztUz53_cgU7uufCpl8CiP9IljlUZkvbIp-Eso9oIu94Ly/s1600/NwHIN_cross-Cert.jpg

What is very exciting is that the group did come to the conclusion that HHS/ONC should take a leadership role in managing certificate trust, specifically recommending that there be a certificate authority that is available for building a Nationwide Health Information Network (NwHIN) that is cross-certified with the Federal PKI Bridge. The good news on this is that the CA that the NwHIN Exchange uses today is cross-certified with the Federal PKI Bridge. So, I think this simply means continued funding and explicit endorsement of this model. This would make managing trust across the nation 'easy'.

As soon as anyone says that managing trust is 'easy' those in the security domain get worried. This worry is well founded as security is hard. One timely and specifically targeting of certificate management is the "[Compromise of SSL Digital Certificates](http://www.eweek.com/c/a/Security/Fake-SSL-Certificate-Incident-Highlights-Flaws-in-DNS-Comodo-CEO-440985/)". This news has gotten some people to question the X.509 PKI model, and even the SSL/TLS protocols. In both of these cases the technology are in no way flawed. The technology is still the best technology available today. What is broken is the way that certificates are managed for Internet based Web-Servers. This broken part is very different between Internet based Web-Servers and the way that HIT Standards expect NwHIN to operate.

1) Default - No Trusted Certificates

- The [recommendation for the Direct Project](http://wiki.directproject.org/Certificate+Pilot+Recommendations+Discussion) is that there are no assumed certificates, that a site explicitly trust certificate roots only when there is known and validated reason to trust.

- In the NwHIN Exchange there is ONLY one Certificate Authority that is 'trusted' by the systems

- In IHE ATNA there is a warning about the need to have a different trust pathway for healthcare than is used for internet web servers (See [IHE ITI 2a:3.19.6.1](http://www.ihe.net/Technical_Framework/index.cfm#IT))

- Essentially for Healthcare Information, there should be a totally independent analysis of 'who should you trust'

2) Reality is that multiple trust-anchors are needed

- Direct fully recognizes this, and [the report out showed this](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_12811_954180_0_0_18/direct-project-03-29-2011.ppt). Indeed it recognizes that sometimes in e-mail communication one trusts specific certificates and not necessarily all certificates issued from a Certificate Authority.

- The participants in the NwHIN Exchange will likely need to have more than the one Certificate Authority in order to support the local connections.

- IHE specifically recognizes both of these as fact. And points to an excellent [white paper from NEMA](http://healthcaresecprivacy.blogspot.com/2011/02/medical-device-security-and-privacy.html)

This is a good start, but does not address the very fact that no matter how carefully one has evaluated 'who should you trust' and mistakes can happen. Thus there needs to be a strong mechanism to deal with mistakes. Certificate Revocation is a mature field for checking if a specific certificate has been revoked. This mechanism is used when a certificate is determined to have been exploited. This mechanism checks with the Certificate Authority to either get a list of certificates that have been revoked or using an online transaction check that a specific certificate has not been revoked.

3) Certificate Revocation mechanism are needed

- Direct didn't fully specify this, but did include it in the[Security Model](http://wiki.directproject.org/Direct+Project+Security+Overview)

- The NwHIN exchange includes certificate revocation

- IHE recommends that systems support both OCSP and CRL mechanisms.

- In all cases a certificate should not be 'trusted' unless it has been fully validated. Full validation does include checking the signature and how it chains to the set of trusted certificates, that the certificate has not expired, and that it is not revoked.

This mechanism is not typically used for root certificates. This is the problem that is being exercised with the current SSL Digital Certificate Compromise, in that there is a Certificate Authority 'Comodo' that had it's infrastructure compromised. Thus there is a need to tell the world that their root certificate needs to be un-trusted. As scary as this situation is, it doesn't happen very often. Given that it doesn't happen very often, there is little energy spent on trying to automate it. Given the breath of 'trust' that all of the copies of Internet Browsers have (the distribution mechanism); this un-trust is a very big problem.

The result is that X.509 and Certificate Management is the right technology for building technical trust for Healthcare. But this does not mean that we can relax and not continuously think about this trust.  We should recognize that the way that Internet Web-Servers is a different management model than we will use in Healthcare. This is the key to why a system that seems broken for Internet Web-Servers should be considered highly secure for Healthcare Information.

Which leads to the second part of the presentation. a topic I covered [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

