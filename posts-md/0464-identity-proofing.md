# Identity - - Proofing

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/08/identity-proofing.html
Published: 2012-08-31T14:13:00Z
Updated: 2012-08-31T17:20:22.034Z
Author: John Moehrke

---

There is much discussion lately about "Identity Proofing". Much of the discussion is around the Direct Project, and the identities to be used with Direct. There is a massive effort to create highly assured identities for Providers, while at the same time there is a real concern that doing this high assurance identity proofing for patients is not necessary and for some not desired. Arien has a fantastically readable blog article on this topic [Identity Assurance for Patients using Direct](http://www.relayhealth.com/news-and-events/blog/Identity-assurance-for-patients-using-Direct.html). I like the model he describes, and have spoken about the same model on my blog multiple times, just not as well written as Arien.

Arien proposes that for Patients the identity proofing is done by the Healthcare Provider on a one-by-one relationship basis, that is that the Healthcare  Provider does their-own proofing and bind what ever identity the patient hands them with the identity they have.  **He is getting an effective in-person proofing**. He is just getting one that the identity-assurance is not transferable to others that use the same identity. This is not his goal, and in my view shouldn't be anyone's goal with these use-cases. I am totally on-board with this solution. This is exactly what happens with Patient Id today, so why should Direct based e-mail addresses be any different. This is also similar to how secure-email has been done prior to Direct choosing that technology [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html).

This identity that the patient provides doesn't need to be otherwise technically bound to the patient as a human, thus an anonymous identity. The anonymous identity is anonymous to those that the patient doesn't need to be fully identified with. For example their PHR (e.g. HealthVault) really doesn't need to know the human attached to the account. They are just making sure that it is always the same human that interacts with it. This is the same thing that Google+, Facebook, and Twitter. Even with Google+ efforts to force 'real identities', they really don't know who the individual is. There are few cases where these types of services really need to know who the user is. They just want to make sure that you are always the same individual. In fact many people I know have multiple Google+, Facebook, and Twitter accounts. One set for work, one for home.

But this does not mean that a process like Arien points out can't be used on a case-by-case basis to bind the real identity that the healthcare provider knows with the anonymous identity that the patient is providing. An anonymous identity is simply one that doesn't it-self describe who the individual is, it is likely a bit of random letters-digits with no demographics backing it. This can be done as a base identity, such as the DonaldDuck example, which is a form of Voluntary-Patient-Identity. Or it can be done using the identity technology, such as SAML has the ability to issue pseudonym-identities that only the IDP knows the linkage.  The important part is that the identity is trusted one-by-one because of a personal relationship, not because of the technology or the chaining-trust. This is a form of in-person-proofing, just a form that is not transferable.

This can go to extremes too, where the patient uses different pseudonyms with different healthcare providers. Thus forbidding the two healthcare providers from determining that they are treating the same patient. A very reasonable and smart thing to do if you are really wanting to do this.  However, it likely would get discovered as Healthcare Providers do tend to identity proof you, but would work for procedures where you pay cash. I would be concerned at how this system can be abused for cases like drug-seeking behavior. That is the patient is hiding his prescriptions, while leveraging the same healthcare problem. Yes, as a security expert I must think about the abuse vectors.

I will note that ultimately a PHR service does receive your identity by way of the medical data that it receives. HealthVault knows well how to bust apart a CDA, DICOM, CCR, etc. Thus although you might not tell them exactly who you are, they know it in the end.

This system should be just as usable for Providers as it is for Patients. There is even evidence that Providers don't want to communicate with identities that they don't personally know. Early HIE efforts in northern CA had trouble getting Providers to share until they realized this, so they organized social events where a hand shake could happen and faces could be seen and ultimately a business card exchanged. Sharing took off (I so wish I had a reference to this, but remember it from a presentation). No technical system could do what human relationships do. Identity-Providers (PKI, OpenID/OAuth, and SAML) are all good solutions when there is a trusted-third-party; all equally good technology.

**This is all enabled by delaying the proofing operation to the human one-on-one relationship. **

The problem I have with anonymous identities is when they are used in a way that is not backed by some in-person binding. When someone trusts an identity without this in-person relationship. When they trust it because someone else said it was good enough. Some would claim that this is the 'scalability' problem with this model, I disagree. It is only a problem when people start trusting the technology rather than the human relationship. But, yes that does have problems with scale. And it is more likely that provider-to-provider is going to be non-human-relationship based, where as provider-to-patient is more likely to have a hands-on relationship.

When the in-person proofing stops happening, usually because someone presumed it already was done, this allows a malicious individual to insert themselves into that break in the system. That malicious individual can claim to be a patient, and cause PHI to be disclosed.  There are well known cryptographic methods to support trust, building a hack just for healthcare is dangerous.

My point is is that we must always think through the miss-usecases with more vigor as we know that the malicious use-cases are large, they have time to think, they have motivation, etc.

**Updated**:

Risk: The identity you intend to send to gets redirected to somewhere else. With Direct this is easily done by attacking the DNS pathway. Either through returning DNS results faster, or blocking real results. Return falsified MX record lookup, so  that my mail-service connects to the wrong target mail-service; and also return falsified CERT records, that are falsified certificates (requiring you to make a cert that chains to something my system trusts). The most important vector is the cert, hence the desire to have a small set of CA roots that are highly reliable, meaning they are trustworthy to only create legitimate certs.  Also requires that we use signing pathways that don't have technical vulnerabilities (such as MD5).  This is the reason most are heading toward a CA centric world. My preferred alternative is to not do certificate distribution using DNS, but  rather through a one-on-one e-mail conversation as I describe [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

**References:**

**
- [Healthcare use of Identity Federation](http://healthcaresecprivacy.blogspot.com/2010/07/healthcare-use-of-identity-federation.html)

- [Federated ID is not a universal ID](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)

- [Authentication and Level of Assurance](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html)

- [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html)

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

**

**
**

