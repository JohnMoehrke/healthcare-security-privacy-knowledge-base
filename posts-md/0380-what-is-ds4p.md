# What is DS4P? 

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/02/what-is-ds4p.html
Published: 2019-02-20T13:37:00.002Z
Updated: 2019-02-20T15:21:43.863Z
Author: John Moehrke

---

Privacy advocates continue to push for better support of Privacy. The goal is to have easy and implementable systems that enable a Patient to control where, when, and to whom their data is accessible. When the data are all considered equal in the eyes of Privacy, they can all be covered by simple rules of "Permit all access...", or "Deny all access..."

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg6UrOSNHHAhiYsOcnd4rW9FSXFR7TjaYeWSZ7KDe6K5EOSx4hNlIKU45SSh-3COFvyzVOxmCmJ2RZXGzLytMN8slJuAapgLQA08kCYXGEZlM362bpShysbun4lPrGkF-VlbAdI3tAOB8Em/s1600/Slide6.PNG

This would result in a much more simple world of yes or no. Or at least the consent rules would be more focused on the where, when, and to whom.

Note that we must start with the stepping stone of this more simple set of rules. It is not an end goal, but it is an important stepping stone. It enables data use for those without sensitive topics, while it does force those that have sensitive topics to either permit access and take on the ramifications, or deny access and take on the ramifications of data not being available. This is unacceptable, hence why it is not a goal.

Sensitive health topics

Healthcare is not simple. I am not going to say that other domains are simple, because many other domains are similarly complex (military, social, politics ...). So the next concepts are not all that special in healthcare.

Healthcare data contain some topics that have various sensitivities. Exposing these sensitivities to the wrong organization or person might damage the Patient. This damage might be social stigma. This damage might be financial (denied life insurance). This damage might manifest in physical violence.

Some data are themselves sensitive: Lab results showing positive tests for sexually transmitted disease, Genetic results showing higher likelihood for a hard to treat condition, Diagnosis of substance abuse.

Some episodes of care indicate sensitive topics even when there is no data recorded: Patient received psychotherapy treatment, patient was treated for substance abuse.

Some data are only sensitive in specific context. Best example  is that Sickle Cell diagnosis has historically been used to exclude people from serving in the military. That is to say that volunteers that really wanted to serve in the military would be denied if they had a Sickle Cell diagnosis. I understand this is no longer the case. But you can understand how a medical diagnosis could limit what you are allowed to do.

Some data might be marked as less sensitive so that it can be made more widely available. An example might be a document specifically assembled as an "Emergency Data set", a critical set of data with minimal facts useful in an emergency. Similar to a medical alert bracelet that announces to all that you are highly diabetic, this data would be anonymously accessible. The point of a medical alert bracelet is to address only the emergency portion of treatment, where stabilization of the emergency is the goal, where doing the wrong thing could make things worse. I expect most Emergency Data Set data are printed on a card carried on the patient, or available at a service the patient designates. But I bring up "less sensitive" as just as legitimate use of DS4P as more sensitive topics.

Sensitivities are hard

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi3OVkXjj_nMHaJf9QjubM65rYhDQLmaoj6EgYCC6Ybq1x3mq3Pk-nB_j5uHNOyKeJ6bLdS_F6WIefqm6n0O_QAZ_biOu8ZHxLmK7CqwUDwiYFlcCZSeGUCHLKKnjYetXwEqNwonE2Mnqrt/s1600/tagged_duck.JPG

Healthcare data tends to be scientific facts. The sensitivity of that fact may not be obvious or a one-to-one relationship. That is to say that a medically trained individual can look at three seemingly unrelated facts and draw a conclusion that is a new fact derived from those three. This was the case often in HIV, where the diagnosis of HIV was not recorded, but where some lab results combined with some specific prescription drugs would be clear to a medically trained individual that the patient was HIV positive. None of the facts alone was a strong indicator of HIV positive status, only the combination.

Sensitivities change over time. A specific lab result might not be considered sensitive, but months later medical knowledge realizes that kind of a lab result is an indication of a medical condition that is considered sensitive. Thus what was originally a normal lab result, should now be treated as a sensitive health condition. It can also happen that a sensitive result may become less sensitive, although I expect this to be rare.

How data are tagged with specific kinds of sensitivity labels is the topic of [my next article...](https://healthcaresecprivacy.blogspot.com/2019/02/segmenting-sensitive-health-topics.html)

Conclusion

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiGHlKsYTTOS5J8WKu8IPROnoYVXaDdbsMFcpwhxdS5G_HoR45PKkue8w4N4xXl7hwD4egu20Pb4gxRkoPv3SezIq8dmVBzX19Zf5B78l6hmZf5ydr73e5OI4k_euYASLxXkwcdG53Xv6W4/s1600/Slide8.PNG

So, this is why the health database can't be simply treated as a "Permit all access..." or "Deny all access.." It is important that any organization that has health data must start with gross Permit and Deny capability. Which is what we have been stressing for the last 10 years. DS4P is indicating the next step beyond that yes/no level of consent, to a more conditional level of consent.

The goal of DS4P is to enable privacy policies to have different Permit/Deny rules for these lesser or more sensitive health topics. Thus "Data Segmentation" is the concept of being able to differentiate one kind of sensitive health data from another kind of health data, segmenting one from the other. With the goal that the variously segmented data can have different Privacy rules applied.

[Break-Glass](https://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir.html)is one example where sensitive health topics might be blocked, but available if the medical professional has determined they are in a treatment situation and have medical safety reasons to override the blocking rules.

Alternatives:
Some would indicate that if the patient is the only one communicating their data, then the patient can choose what data gets exposed. This is not wrong, but is not complete. There are data flows that are not supported by patient mediated exchange.   But even in these cases the Patient might need help deciding which of their data is an indicator of a sensitive health topic.

[See my other articles on Privacy](https://healthcaresecprivacy.blogspot.com/p/consent.html)

- [Modes of patient centric communication](https://healthcaresecprivacy.blogspot.com/2018/08/modes-of-patient-centric-communication.html)

- [Basics of Healthcare Data access rights in USA](https://healthcaresecprivacy.blogspot.com/2018/08/basics-of-healthcare-access-rights-in.html)

- [Privacy and Security Considerations for the use of Open APIs for Patient Directed Exchange](https://healthcaresecprivacy.blogspot.com/2018/07/privacy-and-security-considerations-for.html)

- [GDPR on FHIR](https://healthcaresecprivacy.blogspot.com/2018/05/gdpr-on-fhir.html)

- [IHE Perspective on EU GDPR](https://healthcaresecprivacy.blogspot.com/2018/04/ihe-perspective-on-eu-gdpr.html)

- [Privacy is not dead, but does need reinforcement](https://healthcaresecprivacy.blogspot.com/2018/03/privacy-is-not-dead-but-does-need.html)

- [Patient Centered HIE](https://healthcaresecprivacy.blogspot.com/2018/04/patient-centered-hie.html)

- [Apple should have a HEART](https://healthcaresecprivacy.blogspot.com/2018/02/apple-should-have-heart.html)

- [HIE Future is Bright - stepping into 2018](https://healthcaresecprivacy.blogspot.com/2017/12/hie-future-is-bright-stepping-into-2018.html)

- [Remedial FHIR Consent Enforcement](https://healthcaresecprivacy.blogspot.com/2017/09/remedial-fhir-consent-enforcement.html)

- [#FHIR and Bulk De-Identification](https://healthcaresecprivacy.blogspot.com/2017/09/fhir-and-bulk-de-identification.html)

- [Consent to deny Sharing for Treatment and Emergency Break-Glass](https://healthcaresecprivacy.blogspot.com/2017/05/consent-to-deny-treatment-and-emergency.html)

- [Stop using OPT-IN and OPT-OUT](https://healthcaresecprivacy.blogspot.com/2017/04/stop-using-opt-in-and-opt-out.html)

- [Enabling Point-Of-Care Consent](https://healthcaresecprivacy.blogspot.com/2017/01/enabling-point-of-care-consent.html)

- [Basic Consent - a necessary first step](https://healthcaresecprivacy.blogspot.com/2016/08/basic-consent-necessary-first-step.html)

- [Consent Process](https://healthcaresecprivacy.blogspot.com/2016/08/consent-process.html)

- [How to set the ConfidentialityCode](https://healthcaresecprivacy.blogspot.com/2015/07/how-to-set-confidentialitycode.html)

- [Privacy Principles](https://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html)

- etc...

