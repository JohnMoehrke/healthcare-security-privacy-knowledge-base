# Availability of Consent Documents and their rules

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/06/availability-of-consent-documents-and.html
Published: 2010-06-30T15:21:00.001Z
Updated: 2010-07-02T18:28:28.814Z
Author: John Moehrke

---

On the [HIT-Policy Tiger team](http://healthit.hhs.gov/portal/server.pt?open=512&mode=2&objID=2833&PageID=19421) meeting yesterday there was a wonderful presentation of some of the leading work in OASIS and HL7. This is emerging work that I am very excited about and very actively engaged with. I am not convinced that this work is ready for prime-time today, but will be in a few years. Fortunately this maturity was eventually discussed and exposed.

There was a question asked about how the Access Control engine gets access to the specific rules that a patient has agreed to in their consent. As part of this question there was statements that access to this Consent Content would include a laundry list of things that the patient wants hidden, such as "I don't want knowledge of my HIV Positive status known outside direct care team". This is an important point that policy content would expose that the patient might have some of these medical conditions.

One would hope that policy language is not as explicit as my example above, but rather would have groups of policy fragments that would be turned on/off universally across the whole population of patients in a policy-domain (region). Meaning that the patient is offered a common checklist that they use to express their interests. It is hoped that the patient finds enough expressibility in this set of checklists. It does not mean that this set of checklists ultimately make the results not-sensitive, but by everyone in a policy-domain making the same set of decisions there will be enough use of the policy fragments to make it less obvious that a patient is sensitive to HIV.

But even if checklists of policy fragments are used, there will be cases where a patient will want slightly different policies, and we all hope that there is a future where full expressible policy could happen (I figure 100 years should be enough). In this full expressible policy the patients special (non-checklist) rules could be directly encoded.

So, ultimately we do expect that the consent content could become sensitive. It might be because of a checklist selection of a policy fragment or could be because of expressed rules.

The solution was not discussed on the meeting, although the important topic was discussed a few hours earlier in the meeting. Consent Documents, especially those that contain sensitive topics, should leverage the very same segmentation capability that is used to isolate clinical content that has sensitive topics. In this way, only those that have the rights to have access will get access. Indeed if the Consent Document only contains rules that an access control service would understand then there should be a confidentialityCode that isolates these documents to only access control services.

I would further indicate that we often think of segmentation only in the context of the different levels of 'sensitive' clinical topics. This is too limited of a viewpoint of segmentation. Segmentation must also be very clear when a content (document) contains things like policy-rules/attributes that might be considered sensitive in some way (another topic is those content that contain financial identifiers). The other direction is also important for segmentation, we have often brought up the 'emergency data set' as needing to have a segmentation (confidentialityCode) that makes this data very widely accessible.

Reference blog article: [The   meaning of Opt-Out](http://healthcaresecprivacy.blogspot.com/2010/03/meaning-of-opt-out.html), [Opt-In,     Opt-Out.... Don't publish THAT!](http://healthcaresecprivacy.blogspot.com/2009/10/opt-in-opt-out-dont-publish-that.html),   [Consent    standards are not just for consent](http://healthcaresecprivacy.blogspot.com/2010/03/consent-standards-are-not-just-for.html), [Consumer    Preferences and the Consumer](http://healthcaresecprivacy.blogspot.com/2009/10/consumer-preferences-and-consumer.html), and [RHIO:    100,000 Give Consent.](http://healthcaresecprivacy.blogspot.com/2009/12/rhio-100000-give-consent.html)

Related Articles

- [VA, DOD advance work on consent technologies](http://www.govhealthit.com/newsitem.aspx?nid=74122)

- [blog Consenting Technologies](http://www.thehealthcareblog.com/the_health_care_blog/2010/07/consenting-technologies-.html)

