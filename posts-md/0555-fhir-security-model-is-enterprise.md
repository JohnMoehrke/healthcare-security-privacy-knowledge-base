# FHIR Security model is enterprise centric

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/04/fhir-security-model-is-enterprise.html
Published: 2017-04-13T14:29:00Z
Updated: 2017-04-13T14:29:01.923Z
Author: John Moehrke

---

NO!  This is a false understanding. [FHIR has no security model](https://healthcaresecprivacy.blogspot.com/2016/10/tutorial-on-fhir-security.html). [And this is a good thing](https://healthcaresecprivacy.blogspot.com/2015/10/fhir-security-initiatives.html).

FHIR is designed first and most important as a data model with a few expected interaction models (REST, Messaging, Document). There is expectation that [many security models exist](https://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html), and application of those security models does not impact the most important priority of getting the data model correct. This is especially exercised with REST, but is not limited to REST. REST is just used as a most likely first interaction model, and one that is understood to drive for a good transport agnostic data model.

There are [many workgroups working on specifications for how to apply OAuth to FHIR REST,](https://healthcaresecprivacy.blogspot.com/2015/10/fhir-security-initiatives.html)but these are not fundamental to FHIR, they are alternatives. There are various variations of OAuth as well, those that might be [more Patient centric](https://healthcaresecprivacy.blogspot.com/2015/11/heart-profiles-for-review-comment-and.html), those that might be more enterprise centric, and those that might be [cross-enterprise centric](https://healthcaresecprivacy.blogspot.com/2012/11/ihe-iua-internet-user-authentication.html). There are work on [OAuth scopes](https://healthcaresecprivacy.blogspot.com/2016/01/fhir-oauth-scope.html). There are others that are working on pure mutual-authenticated-TLS for [organization to organization](https://healthcaresecprivacy.blogspot.com/2016/11/is-iua-oauth-useful-in-service-to.html). There are others looking toward SOAP. There are others applying security to the packaging so that it can travel by many transports with end-to-end security. Others are looking to [smart-contracts in blockchain](https://healthcaresecprivacy.blogspot.com/2017/03/healthcare-blockchain-use.html). Others just focused on [enabling Privacy](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html). Others [tagging data so that rules can be applied](http://healthcaresecprivacy.blogspot.com/2015/07/how-to-set-confidentialitycode.html). All enabled by the very fact that FHIR is not bound to one security model. This is an important fact.

I am sorry that it seem to FHIR is bound to an enterprise OAuth security model. I suspect this impression comes from the most visible project -- [SMART-on-FHIR](https://smarthealthit.org/)... which is enterprise centric. SMART-on-FHIR is a fantastic project, very important, and the one that really has the necessary engagement to 'make it real'. That said, these other projects are also doing good work. Not all projects have, or could have, the marketing power that SMART has...

[FHIR has many security models](https://healthcaresecprivacy.blogspot.com/2016/10/tutorial-on-fhir-security.html), [while having none](https://healthcaresecprivacy.blogspot.com/2015/01/fhir-security-do-not-worry.html).

See [all my articles on FHIR.](https://healthcaresecprivacy.blogspot.com/p/fhir.html)

