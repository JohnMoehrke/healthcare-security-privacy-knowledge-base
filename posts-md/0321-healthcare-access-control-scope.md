# Healthcare access control scope constraints on OAuth tokens 

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html
Published: 2013-09-26T13:52:00Z
Updated: 2013-09-26T13:54:32.080Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgctCCPTpqAUmoXR8IjVdb-e5oXis1ycclW-MLNpxvQhh3G0hqOC8dXAO1wvNe4DYYgpl7tLBQA7ofITsGukb5_bXhH6OYKRR4ZuL8qrNlqeGXET6tMn7moCuyegoVPu4YYacqHLa29lo1Z/s1600/image006-744130.png

Healthcare is rushing toward using [RESTful specifications of healthcare objects.](http://healthcaresecprivacy.blogspot.com/2013/08/time-to-kindle-fhir-it-needs-ballot.html)The prime defining is being done by HL7 FHIR. Something I am very actively involved in. [Protecting these resources, Security and Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html), is looking to use [OAuth given some of it's advantages over other systems](http://healthcaresecprivacy.blogspot.com/2013/06/internet-user-authorization-why-and.html). The [IHE IUA](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_IUA.pdf) profile defines how an OAuth  token would carry additional attributes to enable server side access control decisions. What the profile does not include is how the scope is set inside the  OAuth token.

 A scope constraint is a common concept in OAuth and SAML, that is that the token is issued only for a specific subset of information. This subset of information is the 'scope'.

For example how does one request a token for just patient "[John Moehrke](https://plus.google.com/111566682979991899107)". This is likely to be more implementation dependent than IHE can profile. Meaning that there might be a different way to do this for FHIR, DICOM, Continua, and others. Because the resources are slightly different. For example the link "[John Moehrke](https://plus.google.com/111566682979991899107)" is a URL that could be considered a scope restriction to information about the  identity pointed to. But this URL is specific to Google+, and may not be the same URL as "[John Moehrke](https://twitter.com/johnmoehrke)" in the context of Twitter.

 Note this example is not pointing toward any specific rule, just pointing toward the identity of the patient for which the requester wants to have access to. The OAuth service makes the  decision on if this is a legitimate and authorized scope. If the user has access rights to that scope, then that scope would be included in the OAuth token. If the user does not have the access rights to that scope, then the token is not issued. So this discussion is not about making the decision, it is about how does one describe the scope that you are willing to be constrained to, in a consistent and interoperable way.

 Interesting scope concept that Josh Mandel speaks about in his pilot implementation at the FHIR connectathon. Specific comment from [Josh at 5:53](http://vimeo.com/75166686#t=352) in the [overall connectathon report-out-video](http://vimeo.com/75166686). -- Put the FHIR  URL that identifies the specific Patient you are asking about, thus any queries using that token will be constrained by the Resource service to that specific Patient records. For example the OAuth token scope on that patient would be seen as an implied patient query parameter (regardless of the query parameters provided).

This would be too specific for IHE IUA profile, but would be a very useful FHIR profile of the IHE IUA profile. Note this could certainly be done just as well with SAML (aka the [IHE-XUA profile](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)).

 Access Control (Consent enforcement)

- [Advanced Access Controls to support sensitive health topics](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html)

- [Policy Enforcing XDS Registry](http://healthcaresecprivacy.blogspot.com/2012/03/policy-enforcing-xds-registry.html)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [Healthcare Access Controls standards landscape](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html)

- [Handling the obligation to prohibit Re-disclosure](http://healthcaresecprivacy.blogspot.com/2011/11/prohbition-of-re-disclosure.html)

- [Access Controls: Policies --> Attributes --> Implementation](http://healthcaresecprivacy.blogspot.com/2011/11/access-controls-policies-attributes.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

