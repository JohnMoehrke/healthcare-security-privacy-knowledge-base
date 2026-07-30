# Custodian access control decision differences between Clinical and Individual

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/03/custodian-access-control-decision.html
Published: 2020-03-16T14:35:00.001Z
Updated: 2020-03-16T14:35:13.253Z
Author: John Moehrke

---

There is a fundamental difference between access requests for Personally Identifiable Health Data when a PHR requests access vs when a Clinical application or other EHR asks for access.  The difference is keyed off of the Purpose Of Use (PurposeOfUse) in the request. Let me explain.

Too often networks today are single purpose. That is that the HIE is designed for ONE purpose. For example a Health Information Exchange (HIE) that is designed for supporting Treatment. When a network is single purpose, then this simplifies the access control decision. However this does not scale to Purposes beyond Treatment. Thus one needs to carefully design the security tokens in ALL requests so that they declare what Purpose is driving the request for data. This has been built into the IHE security token profiles from the beginning:

- [Cross-Enterprise User Assertion (XUA)](https://wiki.ihe.net/index.php/Cross-Enterprise_User_Assertion_(XUA)) - a profile on SAML for use with SOAP and other network infrastructures like XDS and XCA

- [Internet User Authorization (IUA)](https://wiki.ihe.net/index.php/Internet_User_Authorization) - a profile on OAuth for use with http REST network infrastructures like #FHIR and MHD

It is also built into the [HEART](https://healthcaresecprivacy.blogspot.com/2015/11/heart-profiles-for-review-comment-and.html)specification from the start.

It is being considered to be added to [SMART-on-FHIR](https://healthcaresecprivacy.blogspot.com/2017/05/fhir-oauth-scope-proposal-using-fhir.html), but is not fundamental there. Today a custodian trusting SMART-on-FHIR must presume Purpose from the indirect means. I encourage participation so that this is informed by an active consensus.

Why is PurposeOfUse so important?

It is the first critical attribute because it sets the context for the request and how the data will be used. This vector is critical to business concerns, and also critical to Privacy (e.g. Consent and Authorizations). It is also critical to recording the audit log, that might inform an accounting of disclosures.

How is PurposeOfUse used?

From a Security/Privacy perspective, the fundamental
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjG4JynmUVkBzGMjeT3_99Fz2A2k59jK8nQUMkyu-cYmrbUsip5NdrWFugCWY1SHODHZGRuX-u7ZD3Hk30VDM0c50tDy0ukvm2w7r28BVR4bBFq3Ut5LbN1enUPuyrgM94YdCTLZwQE2Xe9/s1600/Slide3.PNG

difference between an EHR and a PHR with regards to authorization is that a PHR is accessing a patient record onbehalf of that patient, with the data accessible on that PHR only by that patient. Yes the patient can then provide access to others, but it is a assignment action by that patient.  YES one must know that the PHR is trustworthy to be upholding the desires of the Patient. The Patient must be the one responsible for holding the PHR accoutable for upholding their desires. Thus when the Patient wants only themselves to have access, it is the PHR that holds access to only that Patient.

An access by a PHR onbehalf of the patient, would use a PurposeOfUse of [PATRQT](http://build.fhir.org/v3/ActReason/cs.html#v3-ActReason-PATRQT) (Patient Requested). There are some sub-codes that can be used for family, power of attorney and support network; but these are unusual.  Thus a Patient Requested request is explict to the Patient. The Access Control decision can then focus on proving that the USER is the Patient. If the USER is not the Patient, then access Deny. If the USER is the patient, then further checks can be done (for example often lab results are held for some number of hours to allow a clinician to address 'shock' concerns).

vs Treatment

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi3OVkXjj_nMHaJf9QjubM65rYhDQLmaoj6EgYCC6Ybq1x3mq3Pk-nB_j5uHNOyKeJ6bLdS_F6WIefqm6n0O_QAZ_biOu8ZHxLmK7CqwUDwiYFlcCZSeGUCHLKKnjYetXwEqNwonE2Mnqrt/s1600/tagged_duck.JPG

Where as an EHR or clinical application requesting access to data will incorporate the results into the EHR (or clinical application) where role-based-access-control will allow others to access it for Treatment, Payment, and Operations. Under the treatment purposeOfUse the hope is that it is constrained to legitimate relationship (care Team) with appropriate 'safety' exceptions, etc. The reason is that once data has been used by a practicing clinician within an organization, then that data is part of the legal medical record of that organization. That organization has obligations they must uphold around medical records retention and health safety.

Thus when a Treatment PurposeOfUse is asserted, the access control decision knows that the result is not going to be limited to the USER making the request, it is a request on behalf of the ORGANIZATION, and the retention expectation would be for the life of the medical record retention at that organization and the future access controlled by that organization policies. Thus a access control decision to release for Treatment (which should explicitly include Payment and Operations; but often these are implied), must be made based on the ORGANIZATION requesting, not the USER.

The USER, ORGANIZATION, PurposeOfUse, etc... MUST be recorded in audit logs, as the request was triggering by a specific user for a specific purpose.

These are NOT bright lines, they should be more bright than they are. But this is how I get to an understanding that an authorized Treatment PurposeOfUse is onBehalf of the organization requesting; where a Patient Request is onBehalf of THAT patient, not the PHR agent. Yes the PHR agent does need to be trusted, but that trust should be in the hands of the Patient, not in the hands of the custodian making the access control decision to release data.

Note Research and PublicHealth PurposeOfUse are closer to EHR than they are PHR; but I expect them to be project specific within that broad purposeOfUse. Thus my overall statement that PurpseOfUse is critical vector in any request for data from a custodian.

When the custodian is a research data lake, or a PHR, or etc... the same rules apply, that PurposeOfUse is the primary access control vector.

PurposeOfUse is more important than data-link authentication?

No, not really; but that is handled usually automatically at a much lower level. So I presume you didn't get to any access control decision without passing link or message authentication.

GDPR requires PurposeOfUse declaration

[GDPR is very clear that one must declare what purpose](https://healthcaresecprivacy.blogspot.com/2018/05/gdpr-on-fhir.html)is being asked for, and that data released for a given purpose can not be repurposed.

PurposeOfUse is core principle of Privacy
I base these on the [Privacy Principles](https://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html)

PurposeOfUse is not enough.
Many other vectors are important. I am just pointing out that PurposeOfUse is the FIRST vector, the primary vector. See [Sensitive Health Topics](https://healthcaresecprivacy.blogspot.com/2019/02/segmenting-sensitive-health-topics.html), putting the [patient at the center of an HIE](https://healthcaresecprivacy.blogspot.com/2018/04/patient-centered-hie.html), deep article on [Controlled HIE](https://healthcaresecprivacy.blogspot.com/2019/10/controlled-exchange-architecture-models.html), and all other [Privacy topics](https://healthcaresecprivacy.blogspot.com/p/consent.html).

