# Simple FHIR Consent

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/05/simple-fhir-consent.html
Published: 2016-05-29T17:03:00Z
Updated: 2016-05-29T17:03:05.346Z
Author: John Moehrke

---

Much discussion around consent (Privacy) in HL7 FHIR. It seems that much of the seamingly endless circular arguments come down to getting everyone on the same page.

1. HL7 can only produce Interoperability standards. It can't define Policy, Architecture, or Implementations.

2. We thus can't just pick one architecture (e.g. OAuth+UMA) and stop. We must build to fit a reasonable set of architectures.

3. We thus can't jut pick one policy (e.g. patient home) and stop. We must build to fit reasonable a set of policies.

4. We thus can't just pick one implementation (e.g. single server) and stop. We must build to fit a reasonable set of implementations.

5. FHIR should focus on only what systems do today, not what we want them to do.

6. FHIR should put into common extensions those things that we want them to do (e.g. Identified disclosure notification endpoint)

7. Simple is always better

This means that sometimes a specific Policy, Architecture, and Implementation might not need our solution at all. This is likely the case if someone picks the HEART (OAuth+UMA) model, were the current FHIR Consent adds no value since all the consent policy management is handled inside the UMA authority.

**Adrian 'working defintion of consent' **is much like what we have used. I reproduce it here with attribution as I like his structure:

I (Adrian) propose a working definition of consent as:**

- A contract between a person and an institution that describes a policy of the person and a duty of the institution.

- A policy is not an attribute. An attribute can be measured and asserted by a lab or a nurse. A policy can only be asserted by the patient or their custodian - hence, the need for a contract.

- A contract combines a series of terms into one accountable transaction.

- The terms of a consent transaction MUST include:

- An **institution** that carries the duty of interpretation.

- A **subject** - the patient

- A **custodian** who is allowed to assert a policy (the patient or legal guardian of the patient)

- A **resource** (potentially any non-aggregated FHIR resource, including de-identifed person-level resources)

- A **policy** to be interpreted by the institution related to use of the resource (this will become a scope for authorization to access the resource at some future time).

- A **notification** endpoint chosen entirely by the custodian for transparency in how the institution is interpreting the policy to issue each authorization.

- A **signature of the custodian**

- A **signature of the institution** that will issue the authorizations

- A **jusrisdiction** for the contract,

This definition of consent is based on my amateur interpretation of international Agency Law. If we can agree on this, then the role of FHIR in capturing consent would be immensely clearer.

I think this maps well to what I have already created in the [FHIR Consent resource](http://hl7-fhir.github.io/consent.html):
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgbMIbBuSVmHc-vpjpMX6zkutuSalzjimsNn0K9svuO8wFYb0RyNig9X_oGjMTgCkV8zTtfZd-erPIxD90RKfiJsof4Zu_s_4S3H3O93WHeopDUB0VM6ejQvc4QRc6wGoBFC_sbpoqG2zrW/s1600/Consent_uml.png

I think you will find it matches quite well. With a few exceptions that we have not yet thought of (thanks for bringing them up), or things we might put into extensions due to the 80% rule.

That said, we can always improve. I welcome these constructive comments. I welcome suggestions for better name of the Resource (Consent) and better names and definitions for the element names.

I have already realized through discussions with Adrian, Oliver, Rob, Kathleen, and Lloyd that the model I have could be further simplified, extended, and clarified.

First generation FHIR Consent Scope
I would like to assert that we are focused on enabling a reasonable set of policy architectures and policy sets. What we create must degenerates nicely to support environments that want a simple indicator of opt-in, opt-out, none. But we want to go a bit further, we want also to support opt-in with some reasonable exceptions, and opt-out with some reasonable exceptions. Where these exceptions are only those currently implemented: List of objects, List of authors, List of recipients, List of Organizations, List of purposeOfUse, and Date Range. --- This scope is however not properly said so far, but I would be glad to indicate it or a sub-set as the goal.

**Improvement Opportunity:**

1. Simplify Actor to the specific kinds of actors in a consent. using specific elements, not a list with type.

1.a) Be specific about recipients, and allow device to be a recipient. Where recipient is a named identity of something that is given authority under the consent.

2. Simplify the attachment to just one, no need to differentiate between legal and friendly today. Maybe in the future

3. Simplify to remove the rule element. Possibly move it to extension

4. Add exceptions for date-range

5. Make the exception more clear

