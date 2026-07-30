# Tutorial on #FHIR #Security

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/10/tutorial-on-fhir-security.html
Published: 2016-10-15T14:21:00Z
Updated: 2016-10-15T16:24:48.377Z
Author: John Moehrke

---

Nice recorded [tutorial by Pascal Pfiffner on FHIR Security](https://vimeo.com/168736133) from an application developer perspective. I understand from Rene that this was written based on my outline in the article [FHIR Security and Privacy - tutorial outline](https://healthcaresecprivacy.blogspot.com/2016/03/fhir-securityand-privacy-tutorial.html)

Some more details and emphasis...

One question that was asked was about Business-to-Business.

Pascal answered this fantastically. I want to add emphasis as it is something that people that hear about OAuth will misunderstand. Most tutorials will cover how to use OAuth with a human-user. OAuth is not limited to human users. OAuth can make security tokens about an application. So OAuth can be used. An alternative is to use mutually-authenticated-TLS, where the client system is authenticated using PKI using the client side authentication built into TLS. This is what is commonly used in DICOM, XDS, and older HL7. It is just as useful in FHIR.

Rene has asked for further information is on IUA:
IUA is 99% just pointers at use of OAuth 2.0. The only 'profiling' that IHE did was to provide some well-defined elements for some well-needed user attributes. This is really the only thing that IHE defined. So if a purposeOfUse is going to be declared, a specific element in the JSON would hold purposeOfUse. So that the relying party (service) can extract them out and use them in service-side access control decisions and audit logging. The list of elements is the same list of elements we have in XUA. Which is also an option, that is to have our OAuth token encapsulate your XUA SAML token... (unlikely).

See [Internet User Authorization: why and where](https://healthcaresecprivacy.blogspot.com/2013/06/internet-user-authorization-why-and.html)

FHIR Scopes
What people likely want to learn is how to deal with OAuth 'scope". This is not part of IUA. This is really something that has not yet been seriously discussed. SMART has their view, HEART is struggling. The SMART list is very rudimentary and I see real issues with some of it. Pascal does a good job of explaining he SMART scopes.

IHE is feeling that scopes need to be defined in the profile where the data is defined. That is to say that IUA is agnostic of the grouped data profile (MHD, PDQm, PIXm, mACM, mATNA, etc). It is really up to those other profiles to define reasonable scope values. That is it seems more logical that MHD would define the document-sharing scopes of interest, while PDQm defines the patient lookup scopes of interest. This scope effort has not yet happened, primarly due to lack of implementation experience.

See [FHIR Oauth Scope](https://healthcaresecprivacy.blogspot.com/2016/01/fhir-oauth-scope.html)

Reference my other articles on [mHealth (FHIR)](https://healthcaresecprivacy.blogspot.com/p/topics.html#FHIR)

- [Extending the FHIR standard to handle provenance](https://healthcaresecprivacy.blogspot.com/2016/07/extending-fhir-standard-to-handle.html)

- [IHE #FHIR profiles - MHD, PDQm, and PIXm](https://healthcaresecprivacy.blogspot.com/2016/06/ihe-fhir-profiles-mhd-pdqm-and-pixm.html)

- [MHD - Why use of FHIR Contained?](https://healthcaresecprivacy.blogspot.com/2016/06/mhd-why-use-of-fhir-contained.html)

- [electronic Privacy Consent -- Patient choice](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html)

- [Consent given to authorized representative](https://healthcaresecprivacy.blogspot.com/2016/04/consent-given-to-authorized.html)

- [FHIR Security and Privacy - tutorial outline](https://healthcaresecprivacy.blogspot.com/2016/03/fhir-securityand-privacy-tutorial.html)

- [Consent to grant read access to a specific types of FHIR Resources](https://healthcaresecprivacy.blogspot.com/2016/04/consent-to-grant-read-access-to.html)

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

- [Define](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)[Atom](http://healthcaresecprivacy.blogspot.com/2014/05/atom.html) -- Too many definitions in use today

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

- [The Magic of FHIR](http://healthcaresecprivacy.blogspot.com/2012/09/the-magic-of-fhir.html) â€“ The HL7 movement toward REST resources, away from v3 and v2

- [IHE Mobile access to Health Documents - Trial Implementation](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html)

-

https://www.blogger.com/null

