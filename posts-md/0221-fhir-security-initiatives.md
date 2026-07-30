# FHIR Security initiatives

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/10/fhir-security-initiatives.html
Published: 2015-10-15T20:50:00.002Z
Updated: 2015-10-15T20:50:27.330Z
Author: John Moehrke

---

I am asked how someone can get engaged with developments in Privacy/Security around FHIR. I am very happy that people want to help. I am especially encouraging to anyone that has either coding experience, or deployment experience; as I find that too many people engaged in Privacy/Security around FHIR are coming from the theoretical perspective. This is a good perspective, but not sufficient to give us practical solutions. What we need today is practical solutions, that are on the trajectory of a theoretical horizon.

[HEART](https://openid.net/wg/heart/)â€“ where I think bleeding edge work is being done. This group is initiated by the OAuth / OpenID Connect / UMA communities.      There are some key people involved from healthcare, more people are always welcome.      There are participation from Patient advocates as well.      It has taken input from various Healthcare initiatives including SMART, and Argonaut.      They will be starting with simple things, but eventually want to show how a patient can interact using UMA to authorize others to gain access to their PHR. The drawback at this point is that this seems to be rather USA centric and FHIR centric, although I don't think that is the goal of the community.

[IHE](http://www.ihe.net/)â€“ Internet User Assertion ([IUA](http://wiki.ihe.net/index.php?title=Internet_User_Authorization)) -       This is a simple profile of OAuth2/OpenID-Connect.       There is some work underway to improve on this initial specification. Taking on some of the lessons learned from SMART, and regional deployments.      This is focused tightly on just the interaction necessary to enable protected API use.       This includes DICOM and FHIR. So it is not specific to FHIR, but can be used with FHIR.       This specifies three levels: Bearer token, JWT token, and SAML encapsulated.

[IHE](http://www.ihe.net/)also has a Basic Patient Privacy Consent (BPPC) profile, and there is a proposal for developing an advancement that can carry coded exceptions or additions.

[SMART](http://smarthealthit.org/), -- This group has developed, among other things, a specification for OAuth based solution for authorized applications and the users using the applications. I understand that this is further being developed now under [Argonaut](http://argonautwiki.hl7.org/index.php?title=Main_Page/Implementation)Project. It is very FHIR  centric.

[HL7](http://hl7.org/) [Security WG](http://www.hl7.org/Special/committees/secure/index.cfm)      -- I am co-chair of this workgroup. This workgroup maintains the FHIR AuditEvent and FHIR Provenance resources; as well as the security guidance pages.      This workgroup maintains security-tagging within the FHIR Resource header. So that each resource can be tagged with security (privacy) relevant tags that can be used in the Access Control decision, and can carry Obligations to a recipient. This workgroup cooperates with the CBCC workgroup on Privacy matters

[HL7](http://hl7.org/)[CBCC WG](http://www.hl7.org/Special/committees/homehealth/index.cfm) -- This is the workgroup that is working on Patient Privacy Consent.  They have a CDA implementation. They are now working on a FHIR specification.      The FHIR specification is currently a Profile upon Contract.

see also my blog topic on [mobile](http://healthcaresecprivacy.blogspot.com/p/topics.html#mHealth)security and [FHIR Security: Do (Not) Worry (start worrying now).](http://healthcaresecprivacy.blogspot.com/2015/01/fhir-security-do-not-worry.html)

