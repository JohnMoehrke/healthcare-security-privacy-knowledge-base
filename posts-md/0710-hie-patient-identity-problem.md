# HIE Patient Identity problem

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/04/hie-patient-identity-problem.html
Published: 2013-04-01T15:20:00.001Z
Updated: 2013-04-01T15:20:13.965Z
Author: John Moehrke

---

I will assert, [yet again](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html), that the Patient Identity problem that HIEs are having is not technical. The technical standards are clear and used quite a bit ([PIX, PDQ, XCPD](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html)). The problem is in policy, where there are many different policies in use today. These policies define what a source organization is allowed to divulge, and when they can divulge something. These policies define the parameters of the matching algorithms regarding false-positive, false-negative, and risk tolerance to keeping readable attributes vs hashes. Often times the policy problem is rooted in misunderstandings of the regulation.

The biggest disconnect I have seen is simply that all the organizations involved donâ€™t have the same set of attributes to the same level. For example one of the big problems seen is that the SSN matching is made almost useless because the some organizations only knows the last 4 digits. One of the other factors that we will see emerge even more is that the organizations today never worried about external matching so they donâ€™t have the ability to now ask for, or record, more information. Some have suggested that the patient could/should provide a voluntary ID such as the patientâ€™s â€˜directâ€™ address. The existing systems donâ€™t know where to save this, and they donâ€™t know how to include it in a matching request. The Interop standards (PIX, PDQ, XCPD) handle these just fine, they are simply 'other' external identifiers.

These items are very much what the security world would view as â€˜[provisioning level of assurance](http://healthcaresecprivacy.blogspot.com/2012/10/identity-proofing-and-authentication.html)â€™. That is how sure is the cross-reference. In this way this overlaps very well with the greater NSTIC effort.

The hardest policy to get agreement on is to what extent is a request for location of records (just the indication that a location has records, not an indication of what kind of records), is a â€˜disclosureâ€™ that is â€˜acceptable or notâ€™ especially when the request is made under the workflow of â€˜treatmentâ€™. This is an important policy to allow, as one must first get a [positive cross-reference before one can ever know if the consents have been granted](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html). Surely if there is no positive consent then no match should be made, but if there is any fraction of a positive consent (including [emergency override allowed](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)) then a match needs to be allowed. Of course all matches need to be recorded and reported on an accounting of disclosure (something always forgotten).

This is one of the main reason why [PIX/PDQ/XCPD](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html) are totally different steps than Query for information ([XCA, XDS, MHD](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)).  This is not to say that a cross-reference match should not be considered a privacy concern, but rather to recognize that for specific PurposeOfUse (Treatment) might justify some risk. Where this risk is managed, not totally unmanaged. Where the impact of this risk is controlled to just cross-reference. The hard part is that some viewpoints of policy totally forbid even this level of disclosure. Some negotiation seems to be logical.

And, yes I totally agree that patients that want nothing to do with this should not have even this level of exposure happen. As I indicated above a â€˜[opt-out-completely](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)â€™ is indeed an exclusion. Sensitive topics, also [well segmented](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html). I only look to this first step cross-referencing to be appropriate when there is some form of possible positive communication possible.

I do think that this is a reasonable thing for [NSTIC to look at](http://healthcaresecprivacy.blogspot.com/2012/11/thankful-and-hopeful-for-healthcare.html). However it is a somewhat of a very different problem from the original intention of NSTIC. This is likely why you see organizations solving this problem behind closed doors.

Patient Privacy controls (aka Consent, Authorization, Data Segmentation)

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [Data Segmentation - now I know where the term comes from](http://healthcaresecprivacy.blogspot.com/2011/10/data-segmentation-now-i-know-where-term.html)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

- [What is the benefit of an HIE](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html)

- [HIE using IHE](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)

- [Identity Proofing and Authentication -- Patient vs Provider](http://healthcaresecprivacy.blogspot.com/2012/10/identity-proofing-and-authentication.html)

