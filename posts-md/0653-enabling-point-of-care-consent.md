# Enabling Point-Of-Care Consent

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/01/enabling-point-of-care-consent.html
Published: 2017-01-25T14:51:00.001Z
Updated: 2017-01-25T14:51:54.018Z
Author: John Moehrke

---

Gathering [Privacy Consent](https://healthcaresecprivacy.blogspot.com/2016/08/consent-process.html) is never easy. A Patient, when they are healthy, has no interest in giving Consent for future actions. Mostly because they don't want to admit they might get sick in the future. Secondarily because they don't want to do unnecessary paperwork. Realistically, they just want healthcare to work, and not get in the way of them getting the best treatment. This is why many exchanges are moving toward an 'implied consent' that allows a patient to explicitly withdraw their authorization, but in the absence of any action by the Patient the data would be shared for "Treatment" purposes. This default behavior is only applied to "Treatment", not "Research" or other.

That said,[Consent](https://healthcaresecprivacy.blogspot.com/2016/08/vectors-through-consent-to-control-big.html) is still sometimes needed. It might be needed because the organization uses a Default of not sharing. It might be because the patient has sensitive health topics that require explicit consent to release. It might be because the patient has Withdrawn their authorization, but now wishes to enable one provider organization access for a visit, careplan, or episode of care.

Given XDS and XCA interactions that are often used in an Health Information Exchange (HIE), or a National Health Information Exchange (NHIE); there is no standards/profiled way to enable a

point-of-care consent gathering workflow. So today, if Consent is not already captured, and needed, then data access is blocked. Today the patient must go to the custodian organization and fulfill their consent workflow needs. This might be easy, through a web tool or phone call, but no matter how easy it is difficult when the Patient is not feeling well.

Consent Negotiation
So... there is a need to enable negotiation between a Custodian that needs a consent, and the Requesting organization that is at the Point-Of-Care... This is the problem that [CareQuality](http://carequality.wikispaces.com/) is trying to enable. My understanding is that much of this comes from the experience of Epic in their CareEverywhere system. This is getting designed in CareQuality now. The approach should become a standard that anyone can use, hopefully through IHE XDS/XCA/XUA.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjrgE4NvotIGGuxtP3yb0WXmSh41mX1LzcIalQ9Hpt4lwcepIo85tMNALgf_aNFskPyZ2BjAiipTdJ_2ZB_dhKysdXP92flrAbQQD0SGJScbJ4rjwuY-w2p7qUXE9p5Ix6d0Leu7RI4jgiv/s1600/CareQuality_PointOfCare_Flow_20161220_png.pngThe basics are shown in the following interaction diagram. It starts with a normal XCPD or XCA request. The Responding Gateway will check if Authorization(AuthZ) is already enabled. In this case everything is okay, except that a Consent is needed. I say 'everything else is okay' because one needs to make sure the requesting organization is authorized to even ask, and are authorized to get point-of-care consent.

The new thing, highlighted in YELLOW, is that the Responder can inform the Requester that getting specific consent types would allow more information to be exposed. This can be detected by the Requesting organization, it is also backward compatible so that a Requesting organization that doesn't know about this new capability can continue as today with no data available. A Requesting organization can look at the policy choices offered, it can get one of them from the patient, it stores the result locally, and tries the same transaction again with an Assertion that they have achieved the specific consent. The Responding gateway would now see the Assertion and allow disclosure of the data according to the asserted policy. From that point forward that partner would include this Assertion in all requests, and the Responder would continue to disclose under that policy.

Closing the Loop

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEidheWiXXyyWjfCxt9MpThctqloIaij9A8QNiNpEX2MKXodWm2SJpKGgbwiqiAeFjMmplzCU8pYRjbti1XhY-Tcal1UPG-14JEkZ-eeZZhrxmwpyNPIhOZwZLJWh-G2CAajdCvdysYZRDg_/s1600/CareQuality_PointOfCare_HighLevel_20160124_png.png

This works on a Partner-by-Partner basis. This also relies on the Partner that gets a consent to maintain that consent onbehalf of the Responding organization.

An augmentation being discussed is to somehow get the Consent paperwork back to the Responding organization. This might be through the exchange, this might be by postal mail or FAX.  CareQuality is going to enable a the exchange based pathway, through adding additional elements to indicate that the paperwork is available online. This additional element might be false to begin, and change to true a day or a week later.

It also easy to Query for consent documents. The Provider X might set a timer and query each day until it appears.

Once this is received by the Responding organization it is possible for that organization to record the consent and have it affect ALL partners. This is not part of the CareQuality system, but rather is a potential policy decision a Responding organization could make.

This is a developing system, so it is not fully defined. I expect it to continue to develop this winter and spring. I would hope it is then brought to IHE for standardization next year.

Past articles on [Patient Privacy controls (aka Consent, Authorization, Data Segmentation)](https://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

- [Basic Consent - a necessary first step](https://healthcaresecprivacy.blogspot.com/2016/08/basic-consent-necessary-first-step.html)

- [Aiding Online Informed Consent using Social Commentary](https://healthcaresecprivacy.blogspot.com/2016/08/aiding-online-informed-consent-using.html)

- [Consent Process](https://healthcaresecprivacy.blogspot.com/2016/08/consent-process.html)

- [Controlling Big-Data feeding frenzy with Privacy Consent Authorization](https://healthcaresecprivacy.blogspot.com/2016/08/controlling-big-data-feeding-frenzy.html)

- [Vectors through Consent to Control Big-Data Feeding frenzy](https://healthcaresecprivacy.blogspot.com/2016/08/vectors-through-consent-to-control-big.html)

- [Consent Basis in Controlling Big-Data Feeding frenzy](https://healthcaresecprivacy.blogspot.com/2016/08/consent-basis-in-controling-big-data.html)

- [Privacy Constraints in Controlling Big-Data Feeding Frenzy](https://healthcaresecprivacy.blogspot.com/2016/08/privacy-constraints-in-controlling-big.html)

- [electronic Privacy Consent -- Patient choice](http://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html)

- [Privacy-by-Design Data-Analytics Platform on FHIR](https://healthcaresecprivacy.blogspot.com/2016/07/privacy-by-design-data-analytics.html)

- [Simplified #FHIR Privacy Consent Directive resource](https://healthcaresecprivacy.blogspot.com/2016/05/simplified-fhr-privacy-consent.html)

- [Consent given to authorized representative](https://healthcaresecprivacy.blogspot.com/2016/04/consent-given-to-authorized.html)

- [Patient ID is critical to Enabling Privacy](https://healthcaresecprivacy.blogspot.com/2016/04/patient-id-is-critical-to-enabling.html)

- [electronic Privacy Consent -- Patient choice](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html)

- [BPPC is not just for XDS/XCA](http://healthcaresecprivacy.blogspot.com/2016/02/bppc-is-not-just-for-xdsxca.html)

- [Consent to grant read access to a specific types of FHIR Resources](https://healthcaresecprivacy.blogspot.com/2016/04/consent-to-grant-read-access-to.html)

- [How to set the ConfidentialityCode](http://healthcaresecprivacy.blogspot.com/2015/07/how-to-set-confidentialitycode.html)

- [Strawman on Consent Directive](http://healthcaresecprivacy.blogspot.com/2015/05/strawman-on-consent-directive.html)

- [Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html)

- [Break-Glass on FHIR](http://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir.html)

- [Healthcare Patient Consent -- Lessons learned from Creative Commons](http://healthcaresecprivacy.blogspot.com/2014/08/healthcare-patient-consent-lessons.html)

- [Enabling Patients to Delegate Healthcare Information Access Authority](http://healthcaresecprivacy.blogspot.com/2014/02/enabling-patients-to-delegate.html)

- [Define](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)[Atom](http://healthcaresecprivacy.blogspot.com/2014/05/atom.html) -- Too many definitions in use today

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Safety vs Privacy](http://healthcaresecprivacy.blogspot.com/2013/04/safety-vs-privacy.html)

- [Privacy Consent State of Mind](http://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [Data Segmentation - now I know where the term comes from](http://healthcaresecprivacy.blogspot.com/2011/10/data-segmentation-now-i-know-where-term.html)

