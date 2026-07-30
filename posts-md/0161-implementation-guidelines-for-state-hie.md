# Implementation Guidelines for State HIE Grantees on  Direct Infrastructure & Security/Trust Measures for Interoperability

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/07/implementation-guidelines-for-state-hie.html
Published: 2012-07-31T19:10:00Z
Updated: 2012-07-31T19:10:09.209Z
Author: John Moehrke

---

ONC has released to the HIE Grantees a [statement on securing Direct](http://www.statehieresources.org/wp-content/uploads/2012/07/State-HIE-Implementation-Guidelines-for-Direct-Security-and-Trust_7-2012.pdf). The document starts:

>
ONC has found that many Health Information Service Providers (HISPs) are deploying Direct in a way that proactively enables exchange within a given HISPâ€™s boundaries while not offering mechanisms or supporting policies that enable exchange with other HISPs.  Such limitations effectively block providers using different HISPs from exchanging patient information.  In effect, HISPs are creating â€œislands of automation using a common standard.â€

Are they really surprised that it is easier to get trust working within the space that your organization controls, and it is hard to make trust work with others? Yes, Trust is hard; I might add that keeping trust is even harder.

>
To address these challenges, some HISPs have begun using DURSA-like agreements to enable providers using different HISPs to exchange Direct messages.  Once an agreement is executed, HISPs allow their respective users to seamlessly exchange messages.  Unfortunately, such peer-to-peer legal agreements are expensive and time-consuming to implement and are cumbersome to monitor and enforce.  They are not a realistic long-term basis for scalable trust.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEixz6SDEQze3ADGlEFq0YVyb3VXAKAxZTCYaVYlJy4rCfwGFnVi35up7e-vl1eIfHOGYERBxR_hTzF-vQ6xk9dp1aRXZjr405OhpVhFAf5v45MkFUiV5r8cw1g-MFfvd8ew_R95kgMklGxj/s1600/N-factoral-connections.JPG

Again, this is the logical next step. Some form of business-to-business agreement is a well matured way to build trust. The NwHIN DURSA is a good model, it is not that hard to read too.  Clearly this is not scalable, even if there were only a few HISP providers. But then again there really is no alternative. At least no alternative until there is a centrally managed DURSA trust exchange.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEifWMXqCviflM14RAhtGmOpMtqM1bBAgRTI0B0BvyYdq8NUkL69xq7_DxBisvo-DkMK5_WL2H4NpPsIw93ybdECWKRwVlfkSvWjnjhIjxJXQBRc34w6zKliGNxIyVIg_Iqi5PHTMJo9KdB-/s1600/Strong-central-core.JPGWait, isnâ€™t that what the NwHIN-Exchange does? Why build something new? I will note that although logically this makes it look like there is a central infrastructure, this is not the case. This is a trust relationship where there is a central broker of trust that is virtually in the center. The conversations still go peer-to-peer without the central broker of trust knowing about day-to-day communications. This is an important concept to grasp that confuses many. Too often I have found that people think that the NwHIN-Exchange has some central servers that know everything that happens, an intermediary. This is simply not true. There is no central core, just central governance.

The document then goes into a set of common policies that they say HISPs and CAs should adhere to. **Worrisome word, â€˜shouldâ€™. **

The recommendations are mostly right out of the existing DURSA agreements, essentially moving these business-to-business agreements into a template for a business-to-business agreement.  However the items they list are not sufficiently detailed.

- Who is responsible for publishing certificates? The protocols are outlined in Direct and S&I; but responsibility to publish is missing. The protocol specification canâ€™t say who is responsible for publishing, but a governance really should.

- A HISP that manages private keys MUST protect them, this is not a â€˜well they should probably do a risk assessment if they feel like it might be something that they might want to someday doâ€™. This is not a â€˜shouldâ€™ requirement, it is a MUST. Further, this model really angers me.

- A HISP that manages a trust anchor MUST publish their certificate policies. This item should be in the CA/RA category, not the HISP one. But my point is that a trust anchor MUST publish their certificate policy

- Their certificate criteria force only cross-certified with the Federal Bridge Certification Authority. This is likely where things are going, but forcing this is really forcing the hand of much of the Direct community. Not just the HISP community, but also any large organization that thought they were going to be issuing certificates for their employees.

- The certificate policy also forbids PATIENTS from participating. All the work spent to make sure we had a protocol that was accessible to patients is being washed away in business priorities. This is becoming far more bureaucratic than the NwHIN-Exchange. I could be optimistic and believe that this use-case is the one called for with (8), where users can directly trust a certificate that is otherwise not trusted.

- Last mile encryption â€“ this is a nice statement, but the last mile must also be mutually authenticated as well. We canâ€™t allow non-authenticated users to access information. We canâ€™t allow a trusting user to be miss-directed to a phishing site. Mutual-Authentication is the answer here. It doesnâ€™t need to authenticate the user using TLS client side certificates; but it must authenticate them somehow that meets requirements. The HISP services must be very clearly authenticated as being that specific HISP service; not just any web-server on the internet or even [any SSL protected web-service on the internet](http://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html). This last mile is not easy, hence why I suggest there is no last mile â€“ that S/MIME truly be end-to-end by putting a fully capable e-mail application on the doctors desktop. But this is not favored because there is no HISP business needed, and some see this as a way to make jobs and increase healthcare costs.

- The CA/RA needs to be forced to publish CRL and/or OCSP for certificate revocation checking. They should also be given the responsibility to publish their certificate policy.

This is actually a good start, but it is not in any way ready for execution.

Also:

- [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

- [S/MIME vs TLS -- Two great solutions for different architectures](http://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html)

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

- [Healthcare is not secure - trust suffers](http://healthcaresecprivacy.blogspot.com/2012/03/healthcare-is-not-secure-trust-suffers.html)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [HIE/HIO Governance, Policies, and Consents](http://healthcaresecprivacy.blogspot.com/2012/01/hiehio-governance-policies-and-consents.html)

