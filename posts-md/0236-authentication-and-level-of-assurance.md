# Authentication and Level of Assurance

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html
Published: 2011-03-02T16:41:00Z
Updated: 2011-03-02T16:41:25.416Z
Author: John Moehrke

---

Level of Assurance (LoA) is a key component of authentication, but what does it mean? The phrase â€˜level of assuranceâ€™ is identifying that with identity and authentication come in many shades of sureness. There are times when a low level of assurance is the right thing, such as an anonymous posting of comments on a blog. There are other times when a high level of assurance is needed, typically because the resource being accessed is very high value or very high sensitivity. There is excellent work from the USA Whitehouse in "[The National Strategy for Trusted Identities in Cyberspace](http://www.whitehouse.gov/blog/2010/06/25/national-strategy-trusted-identities-cyberspace)", that continues to be developed.

To more fully appreciate â€˜Level of Assuranceâ€™ as it relates to Identity and Authentication I provide a breakdown of the different layers where identity and authentication are used.


**How strongly was the individual verified before they were given a specific identity.  **This is classically called â€˜identity proofingâ€™ or â€˜provisioningâ€™.  All identities are assigned based on some level of assurance. There are some identities that are assigned based on no prior identity, where other identities are not assigned without strong methods.
- a common email address on the internet has no identity proofing,

- a passport one must provide two prior government issued identities, a picture, and a criminal check

- Certificate Authority using multiple credentials to identity proof prior to issuing a [Digital Certificate](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)

- A military clearance requires a far more invasive background check. These more invasive identity proofing are going beyond proving that the individual is who they say they are, but also including verification that their past actions support that they are willing to abide by the rules.

- [System or Organizational evaluation against policy](http://healthcaresecprivacy.blogspot.com/2010/02/it-security-problems-continue.html) â€“ This is the critical part behind ATNA, that the identity issuer will verify that the system or organization is indeed the system or organization, but also that there are appropriate assurances that the policies will be enforced including user-level access control and user-level audit controls.

- [Patient Identity](http://healthcaresecprivacy.blogspot.com/2010/04/research-program-aims-to-advance.html) â€“ When organizations match up the identity that each has for a patient they need to have some level of assurance that they are making a proper match. This functionality is sometimes automated in a Patient Identity Cross-Reference system that is using algorithms that are tuned to the local needs (such as how often SSN is available). These identity cross-references do have a measure of confidence.

**How strongly was the individually verified before the current session was started. **Classically what we call authentication. This authentication is to an already established Identity. This is what most people recognize as the user login. This is the step where the concept of â€˜multi-factorâ€™ authentication comes in. Authentication is based on one or more factors: Something you know, something you are (biometrics), or something you have.
- Username and Password â€“ Most common single factor authentication

- Two factor authentication is commonly done through a hardware token and a password/pin.

- Smartcards are also a common two factor authentication.

**Relying Party **â€“ an application or service that uses the authenticated identity to authorize access to a protected resource.
- an EHR application provides a doctor access to a patient chart.

- A Web server provides access to a document drop box

- An e-mail program provides access to the local mail storage

- A nice [Microsoft presentation](http://player.microsoftpdc.com/Session/0099d03d-bbc4-4612-87e1-f7d4da8b8a78) on their offering, but clearly also leveraging SAML and WS-Trust standards

**2nd or more Party** â€“ a service behind the application. This is typically something like a database or service. In healthcare good examples would be a Health Information Exchange or Nationwide Health Information Network.
- An e-mail application using an e-mail service provider â€“ POP3 or IMAP

- Web Applications, such as Twitter or Facebook, using light weight federated Identity technology â€“ Oauth

- A Health Information Network, using [strong and flexible federated identity technology â€“ SAML assertions](http://healthcaresecprivacy.blogspot.com/2010/07/healthcare-use-of-identity-federation.html)

**End-to-End Security **â€“ The data can be proven as being authentic from the original creator of the data all the way to the one using the data.
- NHIN Direct â€“ Using S/MIME specifically targeted to an individual from the individual sender.

- [Document Digital Signatures](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html) â€“ These can be validated by anyone that uses the document to prove that the document is exactly the document that was signed.


In each of these cases there are options on Level Of Assurance. This means that for each of these cases there are different levels of confidence. An excellent discussion of the politics involved in the issues around Healthcare choosing a Level Of Assurance and Authentication Provider is covered by [Steve Gantz in his Blog](http://blog.securityarchitecture.com/2010/11/healthcare-entities-leary-of-new.html)

Overall, we should NOT force a specific Level of Assurance; but rather use identity authentication standards that support communicating the Level of Assurance of that authenticated identity. For this there are standards in X.509 certificates, as well as SAML identity assertions. By mandating only that the Level of Assurance is communicated we are ENABLING the Healthcare services to make informed access control decisions.

