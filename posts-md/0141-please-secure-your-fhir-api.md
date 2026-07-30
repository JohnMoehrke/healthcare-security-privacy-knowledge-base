# Please secure your #FHIR API and Apps

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/12/please-secure-your-fhir-api.html
Published: 2021-12-07T17:15:00.004Z
Updated: 2021-12-07T18:49:40.814Z
Author: John Moehrke

---

Just updated the FHIR core spec [Security and Privacy Module](http://build.fhir.org/secpriv-module.html)with a simple message, yellow highlight for the new text:

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjRUcSXDdrYzqKgzQjhs4eQNUDhUEDW64SiCIbpQK9THZ7XKCJFEEI1d1fR8sT9KL95afyZ-YRYn_674J6Qak5epQSkkP7t6_kbqRJYnn4ToOy577C75y-xB66KjgqlNTuhrsfTFK_9j4fF/s32/secpriv.jpg

> 6.0.3 Security http://build.fhir.org/secpriv-module.html#securityFHIR is focused on the data access methods and encoding leveraging existing Security solutions. Security in FHIR needs to focus on the set of considerations required to ensure that data can be discovered, accessed, or altered only in accordance with expectations and policies. Implementation should leverage existing security standards and implementations to ensure that:

- All communications can be encrypted to prevent unauthorized access.
- No information leaks when errors occur
- No active script content can be injected into narrative resources
- Full audit trails can be constructed and used to detect anomalous access patterns

For general security considerations and principles, see [Security](http://build.fhir.org/security.html). Please leverage mature Security Frameworks covering device security, cloud security, big-data security, service-to-service security, etc. See [NIST Mobile Device Security](https://nccoe.nist.gov/projects/building_blocks/mobile_device_security) and [OWASP](https://www.owasp.org/). These security frameworks include prioritized lists of most important concerns.

Recent evidence indicates lack of implementer attention to addressing common security vulnerabilities emphasized by [OWASP top 10 API](https://owasp.org/www-project-api-security/). Reviewing the [OWASP Top Ten](https://owasp.org/www-project-top-ten/)and [OWASP mobile top 10](https://owasp.org/www-project-mobile-top-10/) and ensuring those vulnerabilities are mitigated is important for good security.

The [Security Checklist](http://build.fhir.org/security.html)also added two new items

> 12 [When using OAuth](http://build.fhir.org/security.html#oauth)  - Consider the draft [Best-Current-Practice for OAuth](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-security-topics)

> **13. Security / Privacy Event Reporting ** - Consider legal obligations and ethical obligations to provide a means for Security and/or Privacy Event Reporting such as security vulnerability, or breach.

---------------------------------  Revised to add these notes -----------------------------

Not on the FHIR standard, because it is a bit too prescriptive for HL7. These are the highest takeaways from the past month:

- Bad API security

- Take initiative, hack your own API before someone else does.
- Resource-Server MUST enforce authorization tickets, don't just trust that a valid ticket is authorizing the request being made --

- OWASP -API5:2019 Broken Function Level Authorization
- OWASP -API1:2019 Broken Object Level Authorization

- Don't assume any level of trust, always check tokens on EVERY transaction
- Don't allow hardcoded API keys
- And my personal favorite, log events AND audit the logs - OWASP -API10:2019 Insufficient Logging & Monitoring
- Look to CyberSecurity experts, there are many. There are many tools.

- HITRUST.org - they do have a useful cross-reference, and are risk based.

- Security / Privacy Event Reporting

- One method of advertising HOW to contact your security people -- [https://securitytxt.org/](https://securitytxt.org/)
- An alternative using DNS -- [https://dnssecuritytxt.org/](https://dnssecuritytxt.org/)
- Great community effort, including policy templates, somewhat more oriented towards researchers:   [https://disclose.io/](https://disclose.io/)
- Guidance from [CERT on Coordinated Vulnerability Disclosure](https://vuls.cert.org/confluence/display/CVD/The+CERT+Guide+to+Coordinated+Vulnerability+Disclosure)
- Guidance from [USA Department of Homeland Security](https://cyber.dhs.gov/bod/20-01/)-
- [First.org guidance on MultiParty vulnerability coordination](https://www.first.org/global/sigs/vulnerability-coordination/multiparty/)
- ISO 27000 compliance [ISO 29147/2018](https://webstore.ansi.org/standards/iso/isoiec291472018) and  [ISO 30111/2019](https://webstore.ansi.org/Standards/ISO/ISOIEC301112019)
- A commercial product (Luta) maturity model for vulnerabilities  [https://www.lutasecurity.com/vcmm](https://www.lutasecurity.com/vcmm)
- a bit on bug bounties, which can be a very useful technique, but one must have a mature baseline in place:   [https://bugbountycoi.org/framework/](https://bugbountycoi.org/framework/)

- OAuth Best Practice

- [OAuth 2.0 Security Best Current Practice](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-security-topics)
- OAuth 2.0 [- Security Considerations](https://datatracker.ietf.org/doc/html/rfc6749#section-10)
- [TLS Best Current Practice](https://www.ietf.org/rfc/bcp/bcp195.html)

