# Web API security as foundation for #FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/06/web-api-security-as-foundation-for-fhir.html
Published: 2020-06-16T12:53:00Z
Updated: 2020-06-16T12:53:28.608Z
Author: John Moehrke

---

I am a standards geek, and as such I am a strong advocate for standards developed and maintained by experts in their field. HL7 and IHE are where I focus my personal standards development. In the space of things that are special in Health IT.

I resist when projects are brought to IHE or HL7 that want a standard developed or a profile developed in a technology space that is foundational to Healthcare, but where the specialization for healthcare is not needed. The following are some pointers to "Standards" that healthcare should use as is. This is not to say that there could be no specialization for healthcare, but rather that the fundamentals of these standards need to be followed first before anything special for healthcare is ever needed.

Web API Security --[OWASP Top 10 Web Application Security Risks](https://owasp.org/www-project-top-ten/#)
- Injection. Injection flaws
- Broken Authentication.
- Sensitive Data Exposure.
- XML External Entities (XXE).
- Broken Access Control.
- Security Misconfiguration.
- Cross-Site Scripting XSS.
- Insecure Deserialization.
- Using Components with Known Vulnerabilities.
- Insufficient Logging & Monitoring.

[OAuth 2.0 Security Best Current Practice](https://oauth.net/2/oauth-best-practice/)
This document describes best current security practice for OAuth 2.0.
 It updates and extends the OAuth 2.0 Security Threat Model to
 incorporate practical experiences gathered since OAuth 2.0 was
 published and covers new threats relevant due to the broader
 application of OAuth 2.0.

[IETF Best Current Practice](https://tools.ietf.org/html/rfc1818)in security
- [BCP038](https://tools.ietf.org/html/bcp38) Network Ingress Filtering: Defeating Denial of Service Attacks which employ IP Source Address Spoofing
- [BCP046](https://tools.ietf.org/html/bcp46) Recommended Internet Service Provider Security Services and Procedures
- [BCP061](https://tools.ietf.org/html/bcp61) Strong Security Requirements for Internet Engineering Task Force Standard Protocols
- [BCP072](https://tools.ietf.org/html/bcp72) Guidelines for Writing RFC Text on Security Considerations
- [BCP106](https://tools.ietf.org/html/bcp106) Randomness Requirements for Security
- [BCP136](https://tools.ietf.org/html/bcp136) Secure Connectivity and Mobility Using Mobile IPv4 and IKEv2 Mobility and Multihoming (MOBIKE)
- [BCP140](https://tools.ietf.org/html/bcp140) Preventing Use of Recursive Nameservers in Reflector Attacks
- [BCP188](https://tools.ietf.org/html/bcp188) Pervasive Monitoring Is an Attack
- [BCP194](https://tools.ietf.org/html/bcp194) BGP Operations and Security
- [BCP195](https://tools.ietf.org/html/bcp195) Recommendations for Secure Use of Transport Layer Security (TLS) and Datagram Transport Layer Security (DTLS)
- [BCP199](https://tools.ietf.org/html/bcp199) DHCPv6-Shield: Protecting against Rogue DHCPv6 Servers

etc...

