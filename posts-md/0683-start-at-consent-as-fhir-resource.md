# Start at Consent as a FHIR Resource

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/05/start-at-consent-as-fhir-resource.html
Published: 2016-05-16T15:07:00.001Z
Updated: 2016-05-16T15:07:19.832Z
Author: John Moehrke

---

Last week I posted about [the stalemate on Consent](http://healthcaresecprivacy.blogspot.com/2016/05/fhir-consent-as-resource-or-profile.html), Grahame [challenged me to complete it](https://chat.fhir.org/#narrow/stream/implementers/topic/Consent.20Directive) by the end of the week. This week I put a proposal forward. I have taken the examples that have been presented to the HL7 CBCC committee, and created a [Consent resource.](http://hl7-fhir.github.io/consent.html)I did take as much of the Contract resource as was [needed by these examples,](http://hl7-fhir.github.io/consent-examples.html) however I customized them specifically for [Consent](http://hl7-fhir.github.io/consent.html). This also means many elements are not needed.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhkj40asnszxQdPy3GGgiU4IieQLyuM1sY2Id3SEZtAN7LLYa9EHPbZQ9g24_FLcz1s6NdlmA-ZObAyiwzL_YuraepUIeAv6ay5m4KHmT2QGI7Q5eBeNknE5XVc-G0A0TPXdqIiugqPL4pu/s1600/ConsentStateDiagram-Delegate.png

I also simplified many elements to just those that our [examples](http://hl7-fhir.github.io/consent-examples.html)need. This does not mean that we won't need to bring back these elements, but rather that they are not needed by the examples.

This is the critical '[Agile](https://en.wikipedia.org/wiki/Agile_software_development)' method that I was wanting to use, vs the method of building everything that might ever be needed by an infinite set of imagination. This Agile methodology is a bit more than is required by the [FHIR Principles,](http://wiki.hl7.org/index.php?title=Fundamental_Principles_of_FHIR) but is very much a good methodology to assure the focus on [implementations](http://wiki.hl7.org/index.php?title=Fundamental_Principles_of_FHIR#FHIR_prioritizes_implementation)and the [80% rule](http://wiki.hl7.org/index.php?title=Fundamental_Principles_of_FHIR#FHIR_keeps_complexity_where_it_belongs) is adhered to.

The important part is that we are hearing from those on the outside (you are all welcome to come inside) that what we have done is too hard to understand, too hard to use, and confusing.

This means that if someone thinks something is missing, they first must describe an example, possibly showing how it can't be encoded today and how they think the model should be improved. This will result in incremental improvement and advancement of the model.

Note I also renamed 'term' to 'except' as the way we are using it in Consent is to list the exceptions to the rule at the base of the consent. Thus it is not all the terms, just the exceptions. This works for both Positive and Negative Consent - Opt-IN with exceptions (exceptions are things not allowed); and OPT-OUT with exceptions (exceptions are things that are allowed).

So, I present the FIRST DRAFT (yes, I expect many improvement opportunities)

This is [Consent](http://hl7-fhir.github.io/consent.html)Resource

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh1b7QRpmqj1c2FBMg3URROm1C5q4J0dQhvzYW0ISqkvM_ZvjHcZFFQL1zL0WTK5Ysto4vDCuuhUtOD-4TY8KkPcYr2w3SrSAGrQ3VhXNq60xx1woNQY-__oAG3TrTomZSHOqqzdbIfK4oW/s1600/Consent_uml.png

Vs [Contract](http://hl7-fhir.github.io/contract.html)Resource

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgMjr55ozBOBbVgjD5jAV-6kD6UhiE3_JYPjunNU5lQmH1fvHnc4C3xptXAZwK-p6A_x9z7Na8jhK5aS39VRI3uLTgSXT9_LkYStLti4n4B8zGSNQJxzVk0Z411irKistTXJzR1s29ZH5m9/s1600/Contract-uml.png

6.7.3https://www.blogger.com/nullGeneral Model http://hl7-fhir.github.io/consent.html#6.7.3

The following is the general model of Privacy Consent Directives.

There are context setting parameters:

- Who - The **patient**

- What - The **topic** - all or specific resources are listed

- Where - The **domain** and **authority** - what is the location boundary and authority boundary of this consent

- When - The **issued** and **applies** - When was this captured and over what timeframe does it apply

- How - The **actions** and **actor** - What actions are covered, what actors are covered. (such as purposes of use that are covered)

There are set of patterns.

- No consent: All settings need a policy for when no consent has been captured. Often this allows treatment only.;

- Opt-out: [No sharing allowed for the specified domain, location, actions, and purposes](http://hl7-fhir.github.io/consent-example-Out.html);

- Opt-out with exceptions: No sharing allowed, with some exceptions where it is allowed. Example: [Withhold Authorization for Treatment except for Emergency Treatment](http://hl7-fhir.github.io/consent-example-Emergency.html);

- Opt-in: Sharing for some purpose of use is authorized [Sharing allowed for Treatment, Payment, and normal Operations](http://hl7-fhir.github.io/consent-example.html); and

- Opt-in with restrictions: Sharing allowed, but the patient may make exceptions (See the Canadian examples).

For each of these patterns (positive or negative pattern), there can be exceptions. These exceptions are explicitly recorded in the **except **element.

6.7.4https://www.blogger.com/nullRealm specifics http://hl7-fhir.github.io/consent.html#6.7.4

6.7.4.1https://www.blogger.com/nullUS Realm sample Use-Cases http://hl7-fhir.github.io/consent.html#6.7.4.1

Five categories of Privacy Consent Directives are described in the Office of the National Coordinator for Health Information (ONC) Consent Directives Document released March 31, 2010, and include the following US-specific â€œCore consent optionsâ€ for electronic exchange:

- No consent: Health information of patients is automatically includedâ€”patients cannot opt out;

- Opt-out: Default is for health information of patients to be included automatically, but the patient can [opt out completely](http://hl7-fhir.github.io/consent-example-Out.html);

- Opt-out with exceptions: Default is for health information of patients to be included, but the patient can opt out completely or allow only select data to be included;

- Opt-in: Default is that no patient health information is included; patients must actively [express consent](http://hl7-fhir.github.io/consent-example.html) to be included, but if they do so then their information must be all in or all out; and

- Opt-in with restrictions: Default is that no patient health information is made available, but the patient may allow a subset of select data to be included.

6.7.4.2https://www.blogger.com/nullCanada Realm sample Use-Cases http://hl7-fhir.github.io/consent.html#6.7.4.2

The following scenarios are based on existing jurisdictional policy and are realized in existing systems in Canada. The default policy is one of implied consent for the provision of care, so these scenarios all deal with withdrawal or withholding consent for that purpose. In other jurisdictions, where an express consent model is used (Opt-In), these would examples would contain the phrase "consent to" rather than "withhold" or "withdraw" consent for.

- Withhold or withdraw [consent for disclosure of records related to specific domain](http://hl7-fhir.github.io/consent-example-notLab.html) (e.g. DI, LAB, etc.)

- Withhold or withdraw [consent for disclosure of a specific record](http://hl7-fhir.github.io/consent-example-notThis.html) (e.g. Lab Order/Result)

- Withhold or withdraw [consent for disclosure to a specific provider organization](http://hl7-fhir.github.io/consent-example-notOrg.html)

- Withhold or withdraw [consent for disclosure to a specific provider agent](http://hl7-fhir.github.io/consent-example-notThem.html) (an individual within an organization)

- Withhold or withdraw [consent for disclosure of records that were authored by a specific organization](http://hl7-fhir.github.io/consent-example-notAutor.html) (or service delivery location).

- Combinations of the above

6.7.4.3https://www.blogger.com/nullNon Treatment Use-Cases http://hl7-fhir.github.io/consent.html#6.7.4.3

Also shown is an example where a [Patient has authorized disclosure to a specific individual for purposes directed by the patient](http://hl7-fhir.github.io/consent-example-grantor.html) (possibly not a treatment case).

