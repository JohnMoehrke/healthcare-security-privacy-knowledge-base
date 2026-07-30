# Identity Proofing and Authentication -- Patient vs Provider

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/10/identity-proofing-and-authentication.html
Published: 2012-10-27T18:02:00.001Z
Updated: 2012-12-29T01:54:13.658Z
Author: John Moehrke

---

The HIT Policy Privacy and Security Tiger team is going to be looking into[Patient identity credentials](http://www.healthit.gov/buzz-blog/meaningful-use/patient-engagement-objectives-meaningful-stage-2/)

Misuse/Fraud ID Proofing (including re: attributes, in-person, online and delegated registration) Authentication (including re: attributes and online challenges, two-factor authentication, credentialing, third-party authentication) Usability (including workability of solutions, complexity for patients)

I am a member of the HIT Standards Privacy and Security workgroup, so I eagerly await this testimony  GE Healthcare has been invited and will speak to the experience with the Patient Portal that is part of our Centricity EHR product. I will leave this  testimony stand alone.

From my perspective I look at this with RISK in mind. I certainly hope that 2-factor authentication is not needed by patients. I, as a patient, would be very annoyed by that, and it is simply not justified.  [Healthcare Providers are different](http://healthcaresecprivacy.blogspot.com/2012/07/trusted-identity-of-physicians-in.html), and I could get behind a multi-factor effort there for specific workflows (use-cases).

The difference is that a patient only has access to their own data, thus a failure exposes only ONE individual. Where providers have access to a very large number of patient data, one might say ALL possible patients. Thus a failure on provider is high risk. The Risk profile for Healthcare Providers and others using an EHR are clearly higher, but so are the ability of their environment to sustain more complexity. Note that I am not saying that ONE individual exposure is acceptable, I am saying that the risk profile is simply different and thus should be assessed.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiPvFciC3Mmf7lL0dp3_0Gti1uQ0tUa6T0uHCw9fNC6TjGf8h_gc8KtWKDPiBBbqQzBNW6AwAWlSroGfJubsXEh4hLwDzTS2R-hWi1v5Lf3VAvF84_1i8aMSr3cDMWnk1FmMw8Ex-SIYm19/s1600/basicRiskMap.PNG

I would like to see a risk profile put together on Patient Identities, as well as Provider Identities. This would look at the use-cases of these identities and misuse-cases. By putting together realistic Threats one can do realistic Impact assessment and Likelihood assessments. The Impact value is the most likely to be different, as I stated above. Without understanding the use-cases, misuse-cases, and risks; I fear that fear is all that will  be used to justify very expensive solutions.

I want to make sure that whatever is presented as â€˜current stateâ€™; and that the healthcare industry continue to pursue the NSTIC efforts currently underway (for which I am participating). I want healthcare to NOT do something special, thus non-standard.

UPDATE: The [GE testimony to the HIT Standards committees is published](http://www.healthit.gov/sites/default/files/11_29_12_sepulvedatestimony.pdf).

User Identity and Authentication

- [Level setting on Level of Assurance](http://healthcaresecprivacy.blogspot.com/2012/09/level-setting-on-level-of-assurance.html)

- [Advanced Access Controls to support sensitive health topics](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html) â€“ a simple solution to sensitive health.

- [Direct addresses- Trusted vs Trustable](http://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html)

- [Identity - - Proofing](http://healthcaresecprivacy.blogspot.com/2012/08/identity-proofing.html)

- [The Emperor has no clothes - De-Identification and User Provisioning](http://healthcaresecprivacy.blogspot.com/2012/08/the-emperor-has-no-cloths-de.html)

- [What User Authentication to use?](http://healthcaresecprivacy.blogspot.com/2012/06/what-user-authentication-to-use.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [Healthcare use of Identity Federation](http://healthcaresecprivacy.blogspot.com/2010/07/healthcare-use-of-identity-federation.html)

- [Federated ID is not a universal ID](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)

- [Separation of Layers: Security Error Codes](http://healthcaresecprivacy.blogspot.com/2011/04/separation-of-layers-security-error.html)

- [Authentication and Level of Assurance](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html)

