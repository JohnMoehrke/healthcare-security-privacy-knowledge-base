# FHIR Security and Privacy - tutorial outline

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/03/fhir-securityand-privacy-tutorial.html
Published: 2016-03-04T12:07:00Z
Updated: 2016-03-04T13:13:26.693Z
Author: John Moehrke

---

Rene asked for an outline of Security topics for FHIR for an upcoming tutorial he is giving.

The easy answer is go read all my blog articles under the [#FHIR topic](http://healthcaresecprivacy.blogspot.com/p/topics.html#FHIR)

The second easy answer is to point at the [FHIR security](http://hl7-fhir.github.io/security.html) pages.

I find it interesting is that I answered this same question back in January 2013.. I didn't notice this until after I completed the list below and was confirming I hit all my blog articles. Not much has changed in 3 years. [http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html](http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html)

The outline of the main topics to be covered:

- With [HTTP REST](http://hl7-fhir.github.io/http.html)interaction model for FHIR, it is designed to leverage any security model that HTTP includes. That is to say that HTTP interaction model has a set of security models that are transparent to the data-model contained in the HTTP transaction.

- With messaging, you should be able to use http security, it is just not as obvious.

- We encourage use of HTTPS. Servers should enforce this as appropriate to their environment.

- We encourage the use of Federated Identity for Authentication

- Most likely OAuth 2.

- Profiles of [OAuth  2  exist from IHE (IUA), HEART, and SMART](http://healthcaresecprivacy.blogspot.com/2015/10/fhir-security-initiatives.html). They are all about the same.

- Equally useful is SAML, which might be more friendly to the Enterprise use-cases.

- The most important part is to recognize that this is totally independent but totally supporting of the FHIR specification.

- We encourage use of the [AuditEvent](http://hl7-fhir.github.io/auditevent.html)for recording whenever a security/privacy relevant event happens. (This is different than a provenance record). All actors should record AuditEvents from their perspective, it is through these various perspectives that security audit log analysis sees unusual events and thus starts an investigation.

- We encourage use of the [Provenance](http://hl7-fhir.github.io/provenance.html)for recording persistent record of provenance of any create or update transaction. There is also [provenance built right into some FHIR Resources](http://hl7-fhir.github.io/w5) when it is so fundamental to the operation of that Resource. (This is different than an audit log) This is important to Security and Privacy; but also to Medical Records integrity.

- All resources have a['meta' element](http://hl7-fhir.github.io/resource.html) that can hold [security-labels](http://hl7-fhir.github.io/security-labels.html) (inclusive of privacy labels). These tags are used in an "Attribute Based Access Control" scheme. That is to say that an Access Control engine will use these meta tags to inform the decision that it makes; and can place tags into meta to inform any downstream Access Control engine (decision or enforcement).

- Some meta tags are '[obligations](http://hl7-fhir.github.io/v3/SecurityControlObservationValue/index.html)'; when in a trust relationship one party that trusts another party can communicate obligations which are constraints or actions the receiving party is obliged to carry out. When no trust relationship exists, obligations are of no value.

- [Access Denied](http://healthcaresecprivacy.blogspot.com/2016/02/guidance-on-http-access-denied.html) must, like in any standard, be carefully managed so as to give appropriate information but not give away important information. Sometimes it is best to tell the client that their query was perfectly accepted but that no results are available, sometimes one tells the client [403 or 404](http://hl7-fhir.github.io/security.html#http), etc..

- There are efforts underway to create a [Privacy Consent Directive](http://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html) modeled in FHIR. This is a [profile on Contract resource](http://hl7-fhir.github.io/pcd/pcd.html). This is intended to record the facts of a consent. This includes the various rules that would need to be enforced by the Access Control engine.

- There are efforts underway to show how to use [UMA to enable Patients](http://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html) to control access to their managed data. This is an extension on OAuth for the purposes of "User Managed Access" (UMA).  This should complement the Privacy Consent Directive.

- There are efforts underway to define [OAuth 'scope' values](http://healthcaresecprivacy.blogspot.com/2016/01/fhir-oauth-scope.html). This is not an obvious science as the way that FHIR data-model is defined is not an logical set of access control restrictions.

There are a few other topics on my blog, but not much.

- [electronic Privacy Consent -- Patient choice](http://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html)

- [MHD in action -- XDS on FHIR](http://healthcaresecprivacy.blogspot.com/2016/02/mhd-in-action-xds-on-fhir_25.html)

- [Guidance on HTTP Access Denied](http://healthcaresecprivacy.blogspot.com/2016/02/guidance-on-http-access-denied.html)

- [Break-Glass on FHIR solution](http://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir-solution.html)

- [FHIR Oauth Scope](http://healthcaresecprivacy.blogspot.com/2016/01/fhir-oauth-scope.html)

- [HEART profiles for review, comment, and approval](http://healthcaresecprivacy.blogspot.com/2015/11/heart-profiles-for-review-comment-and.html)

- [Building a MHD Client before MHD is DSTU2 aligned](http://healthcaresecprivacy.blogspot.com/2015/11/building-mhd-client-before-mhd-is-dstu2.html)

- [IHE updating FHIR Profiles to align with DSTU2](http://healthcaresecprivacy.blogspot.com/2015/11/ihe-updating-fhir-profiles-to-align.html)

- [Break-Glass on FHIR](http://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir.html)

- [FHIR Security initiatives](http://healthcaresecprivacy.blogspot.com/2015/10/fhir-security-initiatives.html)

- [How to set the ConfidentialityCode](http://healthcaresecprivacy.blogspot.com/2015/07/how-to-set-confidentialitycode.html)

- [FHIR does not need a deidentify=true parameter](http://healthcaresecprivacy.blogspot.com/2015/06/fhir-does-not-need-deidentifytrue.html)

- [What is MHD beyond XDS-on-FHIR?](http://healthcaresecprivacy.blogspot.com/2015/03/what-is-mhd-beyond-xds-on-fhir.html)

- [MHD Connectathon Results](http://healthcaresecprivacy.blogspot.com/2015/01/mhd-connectathon-results.html)

- [FHIR Security: Do (Not) Worry](http://healthcaresecprivacy.blogspot.com/2015/01/fhir-security-do-not-worry.html)

- [FHIR Full Steam Ahead](http://healthcaresecprivacy.blogspot.com/2014/01/fhir-full-steam-ahead.html)

- [Define](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)[Atom](http://healthcaresecprivacy.blogspot.com/2014/05/atom.html) -- Too many definitions in use today

- [Healthcare access control scope constraints on OAuth tokens](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)

- [mHealth Identities using trusted intermediary](http://healthcaresecprivacy.blogspot.com/2013/09/mhealth-identities-using-trusted.html)

- [getting to mHealth solutions - real People](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-real-people.html)

- [getting to mHealth solutions - Users](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-users.html)

- [Internet User Authorization: why and where](http://healthcaresecprivacy.blogspot.com/2013/06/internet-user-authorization-why-and.html)

- [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html)

- [Privacy and Security in Designing an mHealth Application](http://healthcaresecprivacy.blogspot.com/2013/03/privacy-and-security-in-designing.html)

- [mHealth Solution](http://healthcaresecprivacy.blogspot.com/2013/04/mhealth-solution.html)

- [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/04/mhealth-solution.html)

- [IHE efforts in RESTful security](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)

- [IHE mHealth Hackathon](http://healthcaresecprivacy.blogspot.com/2012/11/ihe-mhealth-hackathon.html)

- [The Magic of FHIR](http://healthcaresecprivacy.blogspot.com/2012/09/the-magic-of-fhir.html) â€“ The HL7 movement toward REST resources, away from v3 and v2

- [IHE Mobile access to Health Documents - Trial Implementation](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html)

