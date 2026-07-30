# Segmenting Sensitive Health Topics

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/02/segmenting-sensitive-health-topics.html
Published: 2019-02-20T15:21:00Z
Updated: 2019-02-20T15:21:02.986Z
Author: John Moehrke

---

In my [last article](https://healthcaresecprivacy.blogspot.com/2019/02/what-is-ds4p.html) I outlined the need to recognize that health data have various kinds of sensitivity, which informs various types of Privacy rules of access, to support the goal of Privacy. Thus [Data Segmentation for Privacy (DS4P).](https://healthcaresecprivacy.blogspot.com/2019/02/what-is-ds4p.html) Here I am going to explain some current thinking of how an Access Control Enforcement engine can tell sensitive data from normal health data.

Access Control is broken into various parts. One part makes an access control decision. This is made based on possibly many vectors. Please read this article on [Vectors through Consent to Control Big-Data Feeding frenzy](https://healthcaresecprivacy.blogspot.com/2016/08/vectors-through-consent-to-control-big.html). It explains that some data is sensitive simply because of who authored it (Betty Ford Clinic), which is clear by looking at the author element.

The problem I point out in the last article is that differentiating sensitive data from normal data is not easy.

Back 20 years ago, there seemed to be an expectation that when a clinician recorded some fact, they would also tag that fact with a sensitivity tag.  Thus when an access request was made these tags could be inspected by the access control engine to determine if the data could be accessed by the individual requesting access. The reality is that this tagging at authoring by the clinician was unreasonable and never done. The reality of the time was also a more simple time.

Thus there are large databases of longitudinal data that has never been assessed if it is sensitive or not. How would one enforce Data Segmentation for Privacy (DS4P) if there is no way to identify what data needs to be segmented?

Security Labeling Service

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi3OVkXjj_nMHaJf9QjubM65rYhDQLmaoj6EgYCC6Ybq1x3mq3Pk-nB_j5uHNOyKeJ6bLdS_F6WIefqm6n0O_QAZ_biOu8ZHxLmK7CqwUDwiYFlcCZSeGUCHLKKnjYetXwEqNwonE2Mnqrt/s1600/tagged_duck.JPG

Thus the Security Labeling Service (SLS) was born. This service does what the name indicates:  given a bunch of data, it applies security labeling.

The capability might be gross or fine-grain:

- Only identify the overall Confidentiality Assessment. Is the data normal health data, or is it Restricted?

- Only identify the various sensitive kinds of data within the data. The data has indicators of sexually transmitted disease, substance abuse, etc..

- Identify which fragments of the data are sensitive. The data is not modified, but enough information is given to identify the fragments. For example a FHIR Bundle might be assessed, and a list of Resources within the bundle might be identified with specific tags.

- Tag fragments of the data with sensitivity. The data is modified with the tags. Such as updating the FHIR resources .meta.security value.

There are likely more, but this subset seems foundational.

The SLS might operate on a single observation, a Bundle of Resources, a CDA document, a FHIR Bulk Data blob, or a whole database.

How does the SLS work?

The reason to create the concept of the SLS was to isolate the hard work of determine the sensitivity from the Access Control Decision and Enforcement. Thus us privacy and security experts were explicitly invoking the [Hitchhikers Guide to the Galaxy](https://en.wikipedia.org/wiki/The_Hitchhiker%27s_Guide_to_the_Galaxy):  "[Somebody else's problem field](https://en.wikipedia.org/wiki/Somebody_else%27s_problem)". Which means, I don't know how it works....

One idea is that the SLS just has a list of terms it looks for

One idea is that the SLS leverages Clinical Decision Support is used

One idea is that Natural Language Processing is used

One idea is that Big Data and Machine Learning is used

I am sure someone would indicate the Blockchain is used

Most likely many methods are used. It depends on the needs of the organization, data, and patients.

To modify the data or not

I tend to not want the Security Labeling Service (SLS) to modify the data. Mostly because the kind of function I want out of the SLS is simply to identify the sensitivity kinds. These sensitivity kinds of data are not typically exposed to end users or recipient organizations. They are just used by the Access Control Enforcement to determine if the data should be allowed to be accessed, blocked, or modified. Thus any changes to the data would happen by the Access Control Enforcement, not the SLS.

There is a camp that combines Access Control Enforcement and SLS into one service. I think this is simply combination. Thus this situation is explicitly the combination of Access Control Enforcement and Security Labeling Service into one thing; not a new kind of Security Labeling Service (SLS).

When to Scan?

A model is to scan the data when it is created/updated, and save the assessment made at that time with the data. This model is optimizing for doing the assessment as minimal as possible. But this model can end up with an incorrect tag as the concept of sensitivity changes over time.

This model could be enhanced by scanning the whole database again when sensitivity policies change. This likely can be done with a low priority thread, so would have minimal impact.

The advantage of predetermining the sensitivity is that one could then do queries that include queries of these sensitivity tags. This might be useful, or might be seen as an invasion of privacy.

I tend to place the SLS at the point of Access Control Enforcement. I prefer this as the nature of health data sensitivity is very contextual. The sensitive topics change over time, the nature of the sensitivity changes over time. The context of the request might also affect the decision.

It is possible that the SLS is invoked by the Access Control Enforcement, and it is intelligent enough to notice that the data is already pre-assessed, thus just returning that pre-assessment without doing any work.

This would benefit from knowing how old that pre-assessment is. The age might be encoded as a custom security tag, for example a tag that simply indicates when the assessment was done, likely the policy version that was used. Another method might be to look for Provenance of the prior SLS update.

Provenance of SLS update

When a SLS is used to update a Resource, a Provenance record could be created. This Provenance record would indicate the .agent is the SLS, the .policy is the specific policy the SLS used, and the date of the update. When the SLS is used to do a batch inspection of a large body of Resources, only one Provenance record would be needed, with a very large .target element pointing at all those that were assessed. I think it should be all those assessed, not just those that were updated.

Conclusion
So the SLS role is to somehow tag the data with kinds of sensitivity it represents, so that access control enforcement can support Data Segmentation for Privacy.

Here is a sample of how this is engaged

- Some access request is made -- Client ID, User ID, Roles, PurposeOfUse

- Gross access control decision is made --> Permit with scopes

- Data is gathered from FHIR Server using normal FHIR query parameter processing --> Bundle of stuff

- Bundle of stuff is examined by SLS. SLS looks for sensitivity topics, tagging data with those sensitivity codes (e.g. HIV, ETH, etc)

- Access Control Enforcement examines output of SLS relative to security token/scope to determine if whole result can be returned, or if some data needs to be removed.

- Access Control Enforcement sets each bundled Resource .meta.security with ConfidentityCode (R vs N), removing the sensitivity codes.

- Access Control Enforcement determines 'high water mark' ConfidentityCode to tag the Bundle.meta

- Access Control Enforcement may set other Bundle.meta.security values such as Obligations based on the Access Control Decision (e.g. Do-Not-Print)

- Bundle of stuff is returned to requester

[FHIR Chat stream on this topic](https://chat.fhir.org/#narrow/stream/179166-implementers/topic/data.20segmentation.20for.20privacy)

