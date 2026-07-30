# MHD - Why use of FHIR Contained?

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/06/mhd-why-use-of-fhir-contained.html
Published: 2016-06-14T14:58:00.001Z
Updated: 2016-06-15T17:51:36.209Z
Author: John Moehrke

---

I was asked why [MHD](https://healthcaresecprivacy.blogspot.com/2016/06/ihe-fhir-profiles-mhd-pdqm-and-pixm.html)has the requirements to contain a provider and patient in [document reference](http://hl7-fhir.github.io/documentreference.html).  Why is that necessary?

The containment of Provider and Patient are ONLY for very specific reasons. Some are driven by XDS constraints; but even those constraints are driven by reasonable use-cases.

Patient is the easiest to explain: If one doesn't fill out [.sourcePatientInfo](http://hl7-fhir.github.io/documentreference-definitions.html#DocumentReference.context.sourcePatientInfo), then there would be no contained Patient resource. The .subject is expected to be a non-contained Patient reference. It might be in the bundle, but it isn't contained in the DocumentReference. The reason for this is that the use-case for [.sourcePatientInfo](http://hl7-fhir.github.io/documentreference-definitions.html#DocumentReference.context.sourcePatientInfo) is to hold what the patient was known as at the time that the DocumentReference was created. Where a non-contained Patient reference is something that is kept up-to-date. So over-time the details pointed to by .subject will drift from the historic.    In a pure FHIR environment, with a service that does implement versioning (not a requirement of all servers), one could just pin [.sourcePatientInfo](http://hl7-fhir.github.io/documentreference-definitions.html#DocumentReference.context.sourcePatientInfo) at a specific version of a Patient. This might work, or might not. Meaning there is no guarantee that versioning is supported, or that all possible changes will respect the versioning (e.g. Merge). So by using contained, we assure the data stays unchanged. By using contained, we keep the semantics that are found in XDS. This is discussed in section 3.65.4.1.2.2 -- although I assumed the readership knows XDS well.

Practitioner is contained for similar reason, but really the reason is almost completely XDS focused. The MHD Profile indicates that the [.author](http://hl7-fhir.github.io/documentreference-definitions.html#DocumentReference.author) element will hold a Practitioner that is contained. This because Practitioner resource has all the elements that XDS wants in the .author element, so don't give us other types of resources like Organization, Device, Patient, or RelatedPerson. And contain it because in XDS the .author is static in the Registry.  In a pure FHIR environment I would not expect containment, as FHIR servers would be more dynamic without loosing use-case functionality. It is marked as required to be contained because in XDS the registry maintains 'the' information it was given and there is no way to change it (except for Metadata Update which is highly experimental). Thus like with [.sourcePatientInfo](http://hl7-fhir.github.io/documentreference-definitions.html#DocumentReference.context.sourcePatientInfo), it is expected to be factual at the time of registration and is not expected to change over-time.  The fixing in time factor is not as critical for .author use-cases; and one might argue that use-cases would likely like it to not be fixed in time. However the information in .author is also not likely wrong, and thus not likely helped by revisions.

In both cases these are a bit more of a soft requirement, more to set expectations for the Document Consumer to expect them to be contained rather than to tell them to fail if they don't find them contained. More to tell Document Sources to put them in as Contained so as to make it easier on XDS environments.  There is simply not a normative word (SHALL vs SHOULD) that expresses this concept. Although [RFC 6919 does have "Shall but we know you won't", or better yet "OUGHT TO"](https://tools.ietf.org/html/rfc6919).

[mHealth (FHIR)](https://healthcaresecprivacy.blogspot.com/p/topics.html#mHealth)

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

-

