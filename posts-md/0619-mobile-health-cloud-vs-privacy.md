# Mobile Health Cloud vs Privacy Regulations

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/09/mobile-health-cloud-vs-privacy.html
Published: 2016-09-23T14:38:00Z
Updated: 2016-09-23T14:38:05.113Z
Author: John Moehrke

---

There is some strong discussion going on at HL7 around privacy concerns, especially now that HL7 FHIR has enabled easy application writing.  The discussion started with an article "[Warning mHealth security fears are opening doors to app and device innovation](http://www.healthcareitnews.com/news/waning-mhealth-security-fears-are-opening-doors-app-and-device-innovation)" summarizing a [study done by Ketchum](https://www.ketchum.com/news/study-shows-1-4-americans-has-emailed-or-texted-photo-medical-issue-their-doctor).  There is concern that applications are being written by people that might not be as mature in the knowledge of how important Privacy is in healthcare.

- There are concerns that new regulations will stifle innovation. I disagree...

- There are recommendations that broader healthcare regulations are needed. I disagree...

- There are concerns that identifiers for patients will be bad for Privacy. I disagree...

- Some indicate that application developers don't care about privacy until a breach puts them in trouble. I disagree...

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgeodJ1gn9isZr7Wfw42_RRGZEGYp62MXMywz6ga_4pIxAN_q_zod4XAYdAdx4DtYHXXOkq0WO580xLjsCJPXGNjM1BoZp1N3KKLth1fk66zz8929rBK412-5dVmpcxUpMPJEe0Rahl4i_6/s1600/Big-Data%253DExposed.png

Let me explain my disagreement... I will also say that I agree with these concerns, just not in broad terms.

This problem of mobile-applications and Privacy is not unique to Healthcare. It is the scope of HL7, so understandable to be focused on it there. I point this out because from a Privacy and Security perspective we are far better off solving the problem together with all domains, than trying to solve it uniquely for healthcare. Healthcare does have some unique issues, like that the data can't be revoked or recalled.

The issue is somewhat unique to the USA, because of the extreme fragmented Privacy regulations. Although we do have HIPAA, GINA, 42-CFR Part 2, and many state augmentations. This patchwork of privacy regulations makes it very hard to understand the requirements, only very large organizations have the legal resources to untangle this all into one concept.
**
Privacy regulations are not important to instruct application writers on how to do the right thing. **

Many application developers want to do the right thing so they gain access to [Privacy-by-Design, and other Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html). These application developers design Privacy into their application, and thus Privacy does not get in the way.

**Privacy regulations are important to deal with the application developers that don't try to honor Privacy; or those that actively thwart Privacy.** Regulations are needed so that bad behavior can be detected, and prosecuted. Don't focus on Regulations to drive the right thing, look to them to prevent the wrong thing. In a perfect world there is no reason for regulations. A perfect world is where everyone wants to do the right thing for their peers, and have full resources to figure out what that right thing is. We don't have a perfect world... yet.

Mobile applications and the cloud are not limited by physical boarders, so they really need to look at the world. The problem that we have in the USA, is the same problem at a global scale. There is a huge patchwork of privacy regulations globally. The solution is the same, put Privacy first. Use [Privacy-by-Design and other Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html). Make your application the best Privacy supporting application, and it will work everywhere (everywhere that governments themselves don't thwart privacy principles)

Build Privacy in from the beginning and it is not hard to do nor will it take away from a good user experience. Hack it on later and it is surely going to be problematic.  Apple is a good example of building Privacy in by design, and they have few (not zero) issues. Where as Facebook is a good example of hacking privacy on later, although they pushed through the hard part and are much better now.

The CBCC workgroup in HL7 is [trying to do their part, they are creating a Privacy Handbook](https://healthcaresecprivacy.blogspot.com/2016/09/hl7-ballotguidance-on-standards-privacy.html) that all HL7 workgroups can use when they create new standards to assure that any Privacy Considerations are handled either in the standard they are creating or explained to the reader of that standard. This same thing is done by W3C, IETF, and OASIS; so we are solving the problem together with those domains.

[If you can't protect the data, then don't collect the data.](https://www.brookings.edu/blog/techtank/2015/09/03/new-cybersecurity-mantra-if-you-cant-protect-it-dont-collect-it/)

Other [Privacy topics covered on these articles.](https://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

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

- [Define](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)[Atom](http://healthcaresecprivacy.blogspot.com/2014/05/atom.html) -- Too many definitions in use today

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Safety vs Privacy](http://healthcaresecprivacy.blogspot.com/2013/04/safety-vs-privacy.html)

- [Privacy Consent State of Mind](http://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [Data Segmentation - now I know where the term comes from](http://healthcaresecprivacy.blogspot.com/2011/10/data-segmentation-now-i-know-where-term.html)

