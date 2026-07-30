# Enabling Patients to Delegate Healthcare Information Access Authority

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/02/enabling-patients-to-delegate.html
Published: 2014-02-05T14:49:00Z
Updated: 2014-02-05T14:49:00.302Z
Author: John Moehrke

---

In the USA there is interest in defining goals to improve Patient ability to delegate personal representatives, specifically regarding accessing through the internet to the patient's healthcare information.:

>
The Health IT Policy Committeeâ€™s Privacy and Security Tiger Team is
considering potential privacy and security policy issues that could
arise when a family member, friend or legal designee is given access to
patient information through the Certified EHR Technology
â€œview/download/transmitâ€ (V/D/T) capabilities. [More from the HealthIT.Gov Blog](http://www.healthit.gov/buzz-blog/privacy-and-security-of-ehrs/seeking-input-personal-representatives/)

Here is my perspective given the current state of Privacy and Security standards and policy:

Set a Privacy Authorization Horizon Goal
I think that HHS/ONC needs to set a clear horizon that includes a reasonable yet powerful concept of what controls a patient should have regarding delegation and accessibility. However this horizon should be seen as something achievable in 12-15 years. This should be a detailed horizon that privacy advocates can agree with. This should meet the needs of special interests. This should be internationally friendly. This should  embody what Privacy really means. [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

Define Stepping Stones to that Horizon
Backing back from that there should be a set of reasonable stepping stones that get us to that horizon. Each step should include a spec benefit over the previous step. [Privacy Consent State of Mind](http://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html). Each step should be expected to be 'state-of-the-art' for at least three years. Too small of a step and there is going to be resistance, too large a step and there will similarly be resistance.   Many facilities will find it easy to hit these stepping stones, and might choose to take two steps; but the majority as a whole (median) would find each step reasonable and useful. The reason to have a detailed horizon is to make sure that we all agree to the destination and that by whatever pathway taken end up in the same place. Without a detailed horizon we will have very unclear results, some might say we will get no results without a clear horizon.

I think the biggest problem HHS/ONC has is the various state laws/regulations, and the various  levels of special health topics. This makes it very hard to have an initiative driven at the federal level. Which might mean that at best they can set guidelines for technology, and not practice. It is not likely they can, through this horizon, get harmonization of regulations over the 10-15 years; but it might be a side benefit of having a well-defined horizon that is privacy advocate approved and internationally acceptable.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEguGwYzgMfV9yjJmujvboBNjzu1IiAy_1jyyQJLMGIaype23dGGJEuI4w2TYIRX3PTBKe71qE6ZLzVXX-p4dFLTfdkdd3sko7o5ak2bSYNgi-TIGAMfNxmjpr3NxwfYyjSyNMDxX75FbIjs/s1600/Slide5.PNG

Simple is a good place to start
I expect the first step to be very blunt authorizations that use paper to authorize electronic access to all data, a proxy. Clearly would need to recognize state and federal rules that force the issue. These forced exceptions are handled at a high-level policy and thus don't need special call out in patient-by-patient authorization rules. This first step addresses cases where delegation of rights is rather complete: Like medical guardian, deceased, parent of minor.  This first step would not support cases where the delegator has some medical conditions or medical history that they want to keep from the delegate. This needs to be made clear is a horizon desire, but not a first step goal. This first step is not unlike the blunt 'consent' for patient treatment, so it is similar except the 'authorization' is to a non-provider for assistance with care decisions. This 'authorization' would be similar to the blunt authorization the patient gives to others for business reasons, like insurance payment from automobile accident.

Break-Glass must be written into Consent Authorization Policies
Often I hear about 'break-glass'. This MUST be build into the policy. This is not an afterthought. The policy must be very clear what access is allowed and what is not. Inside this detail is the specifics about what kinds of glass is allowed to be broken, and what kind of cleanup will be done when the glass is broken. [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

Quilting the details from different perspectives

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFgpC_TpQVi8EV9GMM2cc-52rMn8DSHSa1_MmA5N2LZwHhRwjUSkk1jVKvNDW8lJeHWsx4wpBaRiTr6vB63uzSE6wZnXGtuFTA7FqRw4Oga_5I4KE6meHHIxXXmQJfV0vvLpsQjT0xXBn5/s1600/tagged_duck.JPG

I think the second step is to allow the patient to segment data by some vector. I am not sure what is the most reasonable vector but by this second step this capability should become more clear:

- date-of-service. That is to identify a date range that is either authorized or not authorized. This doesn't differentiate between kinds of data, but would typically be able to segment specifically sensitive episodes of care.

- broad categories of data. Discharge Summary, History & Physical, Consultation Reports, ER Reports, Lab Reports, EKG, AIDS/HIV Test/treatment, Alcohol/Drug abuse, Mental Health, Development Disabilities, Team Conference Reports, Therapy Evaluations, X-Ray Reports, X-Ray Films.

Likely another functionality is to put limitations on the purposes for which the data could be used: Further medical care, Application for insurance, Disability determination, legal investigation, vocational rehab, payment of claims, or for the patient own consumption.

Electronic Authorizations will take many years

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEinpI3mM4yRzfKytr1L5bhQPNWGRTdPJ4IhEqiXhK7JzV_4W4-FBIEJQeb0WIKE4s0GYuEmba5nKOM2HzdeyeIjj-yQTBMd_Cc0y8XAHz3PW6dFi1egYheC7D30wLIOZKE-afUBX0nV4Sjp/s1600/image001-711546.pngThird step is when electronic authorizations happen. In my view this cannot happen for at least 10 years from now. There are efforts like NSTIC that are helping create a framework for trusted identities in cyberspace, but going from having a trusted identity to legally binding authorization is a big step. This is an important point to be made.There is much to be done before this is fully available: not just standards but policy and social change.

One functionality that I often hear as needed is where the patient can identify those individuals that shall NOT have access to the data. Writing rules in the 'negative' seems easy, enforcing negative rules is very hard. Especially if the negative rule is preventing someone that is very motivated and very capable.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiZ7Lz6bEHvUKKWLDy6c1vGGv1Xce8VuBskkagq_3hthaRiSbVa0uuLsynAKe-IQMTuqdeFASGuRexlwuNzXTRzjWexFIcTkexd_4x-zv-L38PWD5KJO1ChLVVQ9hClr7-_aGo-xxxAkkRO/s1600/InkSignature.JPGPaper is not always a bad thing
This doesn't mean that the paper authorizations from before are not electronically enacted, they should be. These previous stepping stones should take the paper authorization form, after proper manual processing for legal purposes are converted into electronic 'tokens', such as [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html) (IHE-BPPC), that are acted upon automatically using an access control rules engine, such as XACML.  All the logic that controls the release should be automated, just the step of getting authorization should start purely paper based. The act by the patient of authorizing access doesn't happen very often, so it won't gain that much from automation. Yet failing to capture the authorization properly can do damage, it can offer attackers the ability to set their own rules.



Some Providers will be ahead of the curve
I will note that I went to my healthcare provider patient portal today and found that they have an online a mechanism where I could see the records of those that have been delegated to me. [I feel BlueButton advancement](http://healthcaresecprivacy.blogspot.com/2014/02/i-feel-bluebutton-advancement.html). To authorize this delegation of rights does require paperwork, that I can download and print from this portal. My children are old enough that we don't have automatic access anymore. https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgbOMowxzeDpA9BZmkODTIY3BsHo1uMIDQek92w3pMxyeBvJZc8mnIdtig4FSeASn0gkKCeAHTscsyI2Wl6A5wCjPtrp_zXpNgM0K2xrWucIo0UXc4KIKGpnCIP9P-k_NhhNnGYb1CGSenY/s1600/myBlueButtonUI.pngMy youngest is in a age range that Wisconsin has some specific restrictions around. My oldest is beyond 18. We have not done any paperwork to gain access. This tells me that delegation in a broad sense is likely to be authorized by old-style-paper, but enabled electronically.  My electronic access now includes the ability to download my medical summary (blue-button) in CCD format as part of an XDM bundle. This XDM bundle can be non-encrypted or encrypted. Rather nice experience. I think my experience is more advanced than those of my peers in other states.

Resources:

Patient Privacy controls (aka Consent, Authorization, Data Segmentation)

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Safety vs Privacy](http://healthcaresecprivacy.blogspot.com/2013/04/safety-vs-privacy.html)

- [Privacy Consent State of Mind](http://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html)

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [Data Segmentation - now I know where the term comes from](http://healthcaresecprivacy.blogspot.com/2011/10/data-segmentation-now-i-know-where-term.html)

Access Control (Consent enforcement)

- [Healthcare access control scope constraints on OAuth tokens](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)

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

Audit Control

- [IHE-ATNA and HL7-FHIR.SecurityEvent -- recording a Disclosure](http://healthcaresecprivacy.blogspot.com/2013/09/ihe-atna-and-hl7-fhirsecurityevent.html)

- [Simplifying Security Audit Standards](http://healthcaresecprivacy.blogspot.com/2013/01/simplifying-security-audit-standards.html)

_

