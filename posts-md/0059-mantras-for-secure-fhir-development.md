# Mantras for Secure FHIR Development

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/12/mantras-for-secure-fhir-development.html
Published: 2021-12-10T14:44:00Z
Updated: 2021-12-10T14:44:05.047Z
Author: John Moehrke

---

This morning I presented to the India FHIR-Connectathon on the topic:

Mantras for Secure FHIR Development

The slides are [available in google slide desk](https://docs.google.com/presentation/d/1YvJ_zESBbs-5w45gtVFHmlgPpVCS4N6iQU96WEnRx_g/edit?usp=sharing). Summarized below ---

Alissa Knight -- White Hat Hackerhttps://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiPpsf5bGBDhx7rrc1bKDQjknnUXSdYp540GAgGquO91vf3wt4aW1dLNM0BHTQATSv1a8hn4KPdTG1x__tW3JpgFUVTlNpnJzUHazY7U_1TNrd47_yDTAe27a27nnElXNClVYJnhEFEDvj5/s851/page6.png

https://approov.io/for/playing-with-fhir/
> [The New Healthcare Ecosystem will depend on FHIR APIs, but are They Secure?](https://approov.io/for/playing-with-fhir/)

[My reaction](https://healthcaresecprivacy.blogspot.com/2021/10/security-of-fhir-implementations.html)

- EHRs are doing a good job of securing their FHIR implementations
- FHIR is good and worthy
- There is room for improvement in some implementations
- There are included recommended improvements.

[Grahameâ€™s reaction](http://www.healthintersections.com.au/?p=3068)

- The report explicitly notes that no vulnerabilities were found or are documented in the EHR FHIR implementations themselves.
- Nevertheless, lots of vulnerabilities were found. All of them are very basic house-keeping stuff well covered in the [OWASP top ten risks](https://owasp.org/www-project-top-ten/).

**Media Hype**

- Many media outlets did not get the facts right at all. Or even the impressions
- Donâ€™t trust the media, read the report

Basic failure to secure

> - Resource-Server not enforcing scopes in the OAuth token

- Change the URL by the attacker (change the Patient id parameter)
- Given a read-only token, able to change data (change a medication of another patient)

- Client/Server architecture where all data is sent to the Client

- A Patient Engagement Appâ€¦ the client was being used by a Patient on the Patients computer

- Resource-Server not validating tokens

- Intercept a legitimate client app request, extract out the OAuth token, put that token into a request from your hacking client - so enforce timeouts and refresh cycles

- Clients with hardcoded API keys in the app

- Not hard for a hacker to decompile your app and find keys

Hack yourself before someone else does it for you
>
- Your API or App will be attacked, better that you prepare
- Look to cybersecurity experts - this is both a skill and an attitude
- There are recommendations like from OWASP - [https://www.owasp.org/](https://www.owasp.org/)

- [OWASP top 10 API](https://owasp.org/www-project-api-security/)
- [OWASP mobile top 10](https://owasp.org/www-project-mobile-top-10/)

- Donâ€™t assume tokens are valid, donâ€™t assume token authorizes the request
- Audit Logging of everything, and regularly inspect the logs for deviations
- Provide a way for Vulnerabilities to be reported

- Methods: [https://securitytxt.org/](https://securitytxt.org/), or [https://dnssecuritytxt.org/](https://dnssecuritytxt.org/), or [https://disclose.io/](https://disclose.io/)
- Expect issues to be reported, and be prepared (first response matters!)

- OAuth and TLS have Best Current Practices written by experts

Questions are welcome

