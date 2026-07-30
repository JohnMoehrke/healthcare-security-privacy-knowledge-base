# ONC to test re-identification of protected data

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/01/onc-to-test-re-identification-of.html
Published: 2010-01-12T15:15:00Z
Updated: 2010-01-12T15:15:38.612Z
Author: John Moehrke

---

I am very interested in this effort by ONC, but not expecting much from it given the scope. This is a needed first step that should continue to analyze the topic.

There has been many efforts to define how to de-identify data, including the famed 18 identifiers in HIPAA for healthcare data. HITSP has identified a set of anonymization constructs ([C25](http://wiki.hitsp.org/docs/C25/C25-1.html), [C87](http://wiki.hitsp.org/docs/C87/C87-1.html), and [C88](http://wiki.hitsp.org/docs/C88/C88-1.html)) and a construct for creating/managing pseudonyms ([T24](http://wiki.hitsp.org/docs/T24/T24-1.html)). These all were developed using the model defined in ISO Health Informatics -- Pseudonymization, Technical Specification ISO/TS 25237. This is a globally defined standard that brings together many of the the best thinking on the topic and many of the best practices. I have tried in all work that I have had touch with to be very clear that de-identification can only lower the risk, it can not remove the risk. The best use of de-identification is to have a very specific intended use and to remove all attributes that are not necessary for that intended use. I have outlined much of this problem in prior blog post:

[De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html)

There have been many proofs that this kind of data is re-identifiable in some capacity through the cross-correlation with other publicly available databases. Most of these have identified a well-known individual and found their data in the data set. They have not attempted to re-identify a complete data-set. This isn't that bad of a simplification as the risks of re-identification usually stem from an attacker wanting to know something about a specific individual. [Latanya Sweeney, Ph.D](http://privacy.cs.cmu.edu/people/sweeney/), is a well known luminary on the topic and the good news is that she has been brought into HIT-Policy.

What has been missing is a quantitative analysis that would identify some scale for just how easy or hard this re-identification is, or how completely the re-identification is.We know just how long it takes to 'crack' encryption algorithms like DES and AES. Having a quantifiable rating for de-identification algorithms would be very helpful.

> The Office of the National Coordinator for Health IT wants to test what it would take to re-identify personal health information that has been scrubbed of the digital identifiers  that link it to an individual person. [More](http://www.govhealthit.com/newsitem.aspx?nid=72876)

