# Healthcare: Fail Open vs Fail Closed

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/03/healthcare-fail-open-vs-fail-closed.html
Published: 2013-03-19T11:35:00.004Z
Updated: 2015-12-21T19:58:49.218Z
Author: John Moehrke

---

One of the specific sensitivities we have in healthcare when thinking through Privacy and Security is the issue of what happens during failures of the â€œaccess control infrastructureâ€.  For example when a natural disaster takes out some component of the security layer, such as User-Authentication.

In industries like Banking, this is very simple, they â€˜fail-closedâ€™. That is they tell you that the computers are not working, so come back tomorrow. The delay in providing you  banking services is acceptable relative to the unacceptable potential that providing inappropriate services would have. They view this as an overall risk assessment harmonizing various business risks.

https://c1.staticflickr.com/5/4004/4393298503_f183db3865_z.jpg

There is a different model of â€˜fail-openâ€™, that is to allow access when there is a failure. An example is that emergency-exit doors will open in an emergency, and there is ramifications to using these doors when there is no emergency. This is a weak example of fail-open, but I use it as illustrative. The idea in fail-open is to allow something that under normal conditions would not be allowed. Another example is the â€˜break-glassâ€™ functionality that protects a fire-alarm button, or fire-extinguisher. One must â€˜break-glassâ€™ to get to these tools, but normally one canâ€™t use them. Note that these use-cases are also related to human safety. Not all fail-open are related to human safety, but human safety is a large body of the use-cases that call for fail-open.

Many healthcare use-cases should fail-closed as well. In fact I think there are far MORE use-cases in healthcare that should fail-closed than people think there are. That is that too many times I hear people saying that in healthcare all â€˜treatmentâ€™ use-cases should be considered to be overwhelmingly safety over privacy. This generalization is incorrect. The generalization in healthcare should start with the same presumption of fail-closed without overwhelming justification to fail-open.

The cases where healthcare should use fail-open are few, but important. These use-cases are those related to safety of the provider and patient. That is to say when the failure to provide services will cause more damage to the provider or to the patient than the possible security or privacy breach. This is not a trivial decision. What is important is that there needs to be overwhelming evidence that a fail-open decision is the right decision, otherwise the default action should always be to fail-closed.

Some examples where overwhelming evidence is available: For example where a wide scale disaster causes a facility wide emergency-mode. An example is a natural disaster. Where there is an administrative decision that the needs of the local population care are overwhelmingly in favor of any possible abuse that might happen without control. These are cases where the health information might be broadly viewable, these are cases where creation of specific orders are allowed broadly, such as simple prescriptions; yet other orders, such as reconstructive surgery might be forbidden.

Another example that is often used is when the healthcare provider has some professional judgment reason that they feel is overwhelmingly important to their treatment. This is often seen as a â€œbreak-glassâ€ workflow. Or seen as this is a case where a doctor can override a patient privacy restriction. Often times this comes with required justification text to be written by the doctor. This often is constrained to view for a short period of time. Note that patient opt-out needs to consider if overrides should be allowed or not, there are indeed some patients that would rather die than have information exposed, when they are well informed this might be acceptable.

A similar example is when the system making the query is unable to provide a user-assertion that is good-enough. For example the user canâ€™t be 2-factor authenticated because the fingerprint reader is broken, but is authenticated using lesser means. The system querying is highly authenticated using system-level-authentication (ATNA). This system level authentication could be evidence that the conditions are good enough. This is a judgment, not a general rule.

In all of these fail-open cases, an audit log covers recording details so that after things settle down and normal mode is returned that someone can be sure that the overwhelming evidence was indeed in place. If the overwhelming evidence was not in place, then the individual should be punished according to the organizations policy.

Other Information

User Identity and Authentication

- [IHE efforts in RESTful security](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)

- [Identity Proofing and Authentication -- Patient vs Provider](http://healthcaresecprivacy.blogspot.com/2012/10/identity-proofing-and-authentication.html)

- [Level setting on Level of Assurance](http://healthcaresecprivacy.blogspot.com/2012/09/level-setting-on-level-of-assurance.html)

- [What User Authentication to use?](http://healthcaresecprivacy.blogspot.com/2012/06/what-user-authentication-to-use.html)

- [Authentication and Level of Assurance](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html)

Patient Privacy controls (aka Consent, Authorization, Data Segmentation)

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

Access Control (Consent enforcement)

- [Advanced Access Controls to support sensitive health topics](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html)

- [Policy Enforcing XDS Registry](http://healthcaresecprivacy.blogspot.com/2012/03/policy-enforcing-xds-registry.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [Handling the obligation to prohibit Re-disclosure](http://healthcaresecprivacy.blogspot.com/2011/11/prohbition-of-re-disclosure.html)

- [Access Controls: Policies --> Attributes --> Implementation](http://healthcaresecprivacy.blogspot.com/2011/11/access-controls-policies-attributes.html)

Audit Control

- [Simplifying Security Audit Standards](http://healthcaresecprivacy.blogspot.com/2013/01/simplifying-security-audit-standards.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html)

- [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

- [ATNA audit log recording of Query transactions](http://healthcaresecprivacy.blogspot.com/2011/12/atna-audit-log-recording-of-query.html)

- [ATNA + SYSLOG is good enough](http://healthcaresecprivacy.blogspot.com/2011/12/atna-syslog-is-good-enough.html)

