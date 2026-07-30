# Privacy Consent State of Mind

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html
Published: 2013-04-26T11:45:00.001Z
Updated: 2013-04-26T11:45:14.533Z
Author: John Moehrke

---

The space of Privacy Consent is full of trepidation. I would like to show that although there are complexity, there is also simplicity. The complexity comes in fine-details. The fundamentals, and the technology, are simple.

Privacy Consent can be viewed as a "[State Diagram](http://en.wikipedia.org/wiki/State_diagram)", that is by showing what the current state of a patients consent, we can show the changes in state. This is the modeling tool I will use here.

I will focus on how Privacy Consent relates to the access to Health Information, that is shared through some form of [Health Information Exchange (HIE)](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html). The [architecture](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)of this HIE doesn't matter, it could be PUSH or PULL or anything else. The concepts I show can apply anywhere,  but for simplicity think only about the broad use of healthcare information sharing across organizations.

There are two primary models for Privacy Consent, referred to as "OPT-IN" and "OPT-OUT".

Privacy Consent of OPT-IN

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhTk-v0cw6XQlIwALiS_gf5xRMS1Es-iVurUG8bWDI2uYEbFKr10WJ6p_s0NonLw11BjVgeQZpY0Aft7VsL-7Vr_DvmTZ6JZBNAolwXw_JHJlKvbpPrzzRVMkMcjWre8xJvleKUlJpshrKv/s1600/Slide1.PNG

At the  left is the diagram for an OPT-OUT environment. One where the patient has the choice to OPT-OUT, that  is to stop the use of their data. This means that there is a presumption that when there is no evidence of a choice by the patient, that the data can be used.

This model is also referred to as "Implicit Consent". The USA HIPAA Privacy Regulation is utalizes this model for Privacy Consent within an organization. It is not clear to me that this HIPAA Privacy Regulation 'Implicit Consent' is expected to be used outside the original Covered Entity. It is a model used by many states in the USA.

The advantages typically pointed to with this model is that many individuals don't want to be bothered with the choice, these individuals trust their healthcare providers. Another factor often brought up is that when health treatment is needed, the patient is often not in good health therefore not well capable of making decisions; this however focuses on legitimate uses and ignores improper uses. Privacy worries about both proper and improper access.

Privacy Consent of OPT-IN
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjHJnSksBdGucKxdfeaU_eoHY3KHdP0isbGFCyuhrJfiE4CXjBQGADR_DjsaRYH6JPm1UXlHxJvZRsTn1appX3HdTHceU9_k0a3TvM2lBlActWxh2k1IKViqYMD95oHL00VQDgOWjSQ4wKx/s1600/Slide2.PNGAt the right is the diagram for an OPT-IN environment. In an OPT-IN environment the patient is is given the opportunity to ALLOW sharing of their information. This means that there is a presumption that the patient does not want their health information shared. I would view it more as a respect for the patient to make the decision.

This model is used in many regions, even within the USA. With an HIE this  model will work for many use-cases quite nicely. Contrasted with the HIPAA Privacy use of Implicit Consent, which is likely a better model for within an organization. The two models are not in conflict, one could use Implicit Consent within an organization, and OPT-IN (Explicit Consent) within the HIE.

Privacy Consent Policy

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjvG1Q7kyu8nyLGsc8ieObGZeAk7lu0nY2H7MgLwrehn8OL8QcakjRY-l6Dt77t6shOLNDm7bAA8YZrqO1D9AyvB-OeA372gFFoUBK0jF5nYrBQQKP6ScAConl_Civ-Doz5d7IyuuxzLEoP/s1600/Slide3.PNG

The above models seem simple with the word "YES" and "NO"; but this is not as clear as it seems. Indeed the meaning of "YES" and the meaning of "NO" are the hardest thing to figure out. It includes questions of "who" has access to "what" data for "which" purposes. It includes questions of break-glass, re-disclosure, and required-government reporting. The "YES" and the "NO" are indicators of which set of rules apply.

The important thing is that there are different rules. The state of "YES" doesn't mean that no rules apply, there are usually very tight restrictions.  The state of "NO" often doesn't truly mean no use at all. There is usually some required government reporting, such as for the purposes of protecting public health.

Privacy Consent: YES vs NO

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhojW1QNkPGFjJiO-pSEyRRQj1JhuOIvIYcrbyn87b4FQ3mQGjTcttREymyEOGXxZV5NWEYTcfJk5-SE_9mCM86qc_19e-aofmjQOrwrO0PVr5buQnqAfVGJaxkOKRFJvHpxyVH34k5W1IU/s1600/Slide6.PNG

The reality of privacy consent is that there will be a number of patients that will change their mind. This is just human nature, and there are many really good reasons they might change their mind. A patient that has given OPT-IN authorization might revoke their authorization. A patient that has indicated they don't want their data to be shared might decide that they now do want to share their data. For example as a patient ages they recognize that they can be best treated if all their doctors can see all the other doctors information.

Thus what seems like a very simple state diagram for OPT-IN or OPT-OUT; one must recognize that they need to support transition between "YES" and "NO".

Privacy Consent of Maybe

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgoVqGChJJSmXmNyMB8BMnvCgKeDv_3P-g923J6Qo8eHiRB9AaHvFhQIyasmB7OhlBpaoKjW-NzHs0al1OG6BTYeQDeBBQg0gHUh2pUNlxQvKQifvhlkdCClf2qtBdrQiZfe84llgPkN8EA/s1600/Slide8.PNG

Lastly, we all recognize that the world is not made up of 'normal' people. There are those that have special circumstances that really require special handling. This I am going to show as another state "MAYBE". This state is an indicator, just like "YES" or "NO", but in this case the indicator indicates that there are patient-specific rules. These patient-specific rules likely start with a "YES" or a "NO" and then apply additional rules. These additional rules might be to block a specific time-period, block a specific report, block a specific person from access, allow a specific person access, etc. These special rules are applied against each access.

Note that the state diagram shows transitions between all three states. It is possible that one goes into the "MAYBE" state forever, or just a while.

Privacy Consent is a Simple State Diagram
I hope that I showed that Privacy Consent is simply state transitions. I really hope that I explained that each state has rules to be applied when a patient is in that state. Implicit (OPT-OUT) and Explicit (OPT-IN) are simply an indicator of which state does one start in, which state is presumed when there is an absence of a patient specific decision. The rules within each state are the hard part. The state diagram is simple.

Other Resources

Patient Privacy controls (aka Consent, Authorization, Data Segmentation)

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [Advanced Access Controls to support sensitive health topics](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html) â€“ a simple solution to sensitive health.

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

Access Control (Consent enforcement)

- [Advanced Access Controls to support sensitive health topics](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html)

- [Policy Enforcing XDS Registry](http://healthcaresecprivacy.blogspot.com/2012/03/policy-enforcing-xds-registry.html)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [Healthcare Access Controls standards landscape](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html)

- [Handling the obligation to prohibit Re-disclosure](http://healthcaresecprivacy.blogspot.com/2011/11/prohbition-of-re-disclosure.html)

- [Access Controls: Policies --> Attributes --> Implementation](http://healthcaresecprivacy.blogspot.com/2011/11/access-controls-policies-attributes.html)

