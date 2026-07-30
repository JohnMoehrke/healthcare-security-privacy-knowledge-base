# Performance vs Privacy

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/08/performance-vs-privacy.html
Published: 2014-08-19T18:33:00.005Z
Updated: 2014-08-21T20:43:24.779Z
Author: John Moehrke

---

Sadly this week we hear about a HUGE breach of Patient Identities. This did NOT NEED TO HAPPEN!!!

What happened? Community Health Systems (CHS) pulls ALL identities from their partners so as to do patient cross-reference matching. This results in a Centralized Identity Knowledge database, that was not protected well enough. There are better deployment architectures that I will explain.

>
200 Hospitals Hit Affecting 4.5 Million Patients (August 18, 2014) Tennessee-based

http://i2.cdn.turner.com/money/dam/assets/140818022109-community-health-systems-hacking-620xa.jpg
[CNN Money](http://money.cnn.com/2014/08/18/technology/security/hospital-chs-hack/)

Community Health Systems (CHS) says that intruders accessed its system over a three-month period earlier this year, compromising patient names, addresses, and Social Security numbers

(SSNs) of 4.5 million people. The company maintains that medical and financial information was not affected. CHS operates more than 200 hospitals in 29 US states. The company claims that the attacks emanated from China. Information in CHS's Securities and Exchange Commission

- [http://www.darkreading.com/community-health-systems-breach-atypical-for-chinese-hackers/d/d-id/1298095](http://www.darkreading.com/community-health-systems-breach-atypical-for-chinese-hackers/d/d-id/1298095)?

- [http://www.bbc.com/news/technology-28838661](http://www.bbc.com/news/technology-28838661)

- [http://bits.blogs.nytimes.com/2014/08/18/hack-of-community-health-systems-affects-4-5-million-patients/](http://bits.blogs.nytimes.com/2014/08/18/hack-of-community-health-systems-affects-4-5-million-patients/)

- [http://www.computerworld.com/s/article/9250464/About_4.5M_face_risk_of_ID_theft_after_hospital_network_hacked?taxonomyId=17](http://www.computerworld.com/s/article/9250464/About_4.5M_face_risk_of_ID_theft_after_hospital_network_hacked?taxonomyId=17)

- [http://www.theregister.co.uk/2014/08/18/hospital_chain_claims_chinese_hackers_stole_45_million_user_details/](http://www.theregister.co.uk/2014/08/18/hospital_chain_claims_chinese_hackers_stole_45_million_user_details/)

- [http://www.forbes.com/sites/katevinton/2014/08/20/data-breach-bulletin-chinese-hackers-allegedly-steal-4-5-million-patient-records/](http://www.forbes.com/sites/katevinton/2014/08/20/data-breach-bulletin-chinese-hackers-allegedly-steal-4-5-million-patient-records/)

- [http://mashable.com/2014/08/18/hackers-steal-millions-records-hospital/](http://mashable.com/2014/08/18/hackers-steal-millions-records-hospital/)

- [http://www.theledger.com/article/20140818/NEWS/140819308](http://www.theledger.com/article/20140818/NEWS/140819308)

- [http://www.washingtonpost.com/blogs/wonkblog/wp/2014/08/19/health-care-data-breaches-have-hit-30m-patients-and-counting/](http://www.washingtonpost.com/blogs/wonkblog/wp/2014/08/19/health-care-data-breaches-have-hit-30m-patients-and-counting/)

- [http://money.cnn.com/2014/08/18/technology/security/hospital-chs-hack/](http://money.cnn.com/2014/08/18/technology/security/hospital-chs-hack/)

There are two models of patient record locator service (RLS). That is, how do I learn of all the locations that have patient data for the specific patient I am interested in.  This is more important today where patients have had many home cities, patients travel on business and pleasure, and specialty healthcare practices are easy to get specialist care. The two models of location discovery are very different and carry very different Privacy impacts.

Federated Identity Knowledge Discovery:
If Privacy was most important, a Federated Identity Knowledge Discovery model would be used. This is the model that IHE has defined for Cross-Community Access exchanges (XCA). The Cross-Community Access (XCA) is the model defined for federating multiple regional exchanges. The XCA model defines  the XCPD Profile, as explained by [Karen earlier in my blog](http://healthcaresecprivacy.blogspot.com/2012/03/basics-of-cross-community-patient.html).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgZDmFXhpVvkSPqfcENx3WVQs6BNSd6H5qPoH1IV15SfDWbBNRwXxkrjgjuz_VlTb4v5teK8YP1wl_VWzgkImwE4ZqYvcOtw3QKkOubIMsZ5qebALchjEkJBeIeUC8INhAxmCyWMMSaFqwa/s320/IHE-Cross-Community_2011-09-15-735949.png

That is a model where one discovers the locations that have data on a given patient when you need to know. This model does not try to pre-coordinate patient identities as the identities are created and updated. This model, when the patient is seeking care, asks everyone if they know of the specified patient. As such this model does mean the answer might take a long time to come back, and might be missing some locations that didn't respond in time or didn't have enough data to make an exact match.

The failure to match due to not enough information isn't unique to this model, but this model does make these failures more likely as the match does need to be made quickly.

The failures to match can also be detected as the patient can indicate the various locations they know of, and if the results seems to be missing those locations more refined query can be done. In this case the refinement would be based on the patient knowledge of how they were known at the time they were cared for in that location.

The bigger problem with Federated Identity Knowledge Discovery is that the response time is potentially many minutes long, and really is not deterministic as to when one has all the responses from everyone.

Centralized Identity Knowledge
The second model is to centralize all knowledge about the patient. This is the model that IHE has defined for use with in an XDS Health Information Exchange.  The solution that IHE defines for a regional exchange. Note that not all regional exchanges should use XDS, one can actually make a federation exchange using XCA within a region. So you could use the above model. However within a region one often has many instances of the Patient visiting multiple sites within that region. So the benefits of Centralized Identity Knowledge might be worth the risk.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhpzqbtPqD5ih3V-v7SE06-a2sCNsRbSXGJoHSwXqunWPdYBFBTAaYT9QUvT9_u7hRv-60liLQM4AzhJrfzVB_qTmK6FZ3WXvkddwFB9qSmc9VenQRNHJSWtJTOpH1pWXzFDy6UHfNIJF-9/s200/20061126-712992.png

The Centralized Identity Knowledge model leverages HL7 â€œADTâ€ â€“ Admit, Discharge, Transfer. Which is actually more than just those three verbs. In the Centralized Identity Knowledge model we use the IHE Profiles of PIX and PDQ. In these models whenever a new patient identity is created somewhere, knowledge of that patient identity is forwarded to some central authority. Similar when that patient is registered at a site, discharged, transferred. Similar when mistakes in the identity are corrected, including Merge or Link events. All of these actions on the Patient Identity are forwarded to the central authority. This central authority is receiving identity information from ALL of the sites participating in the Health Information Exchange,  and will do a match of identity as it receives the identity knowledge.

This model, can also involve humans when the matching algorithm detects a potential match. The human can do some research and fix the match as needed. So this model is often seen as more accurate. Less prone to False-Positive and False-Negative matches.

One advantage of this is that it is easy for hospitals to simply copy their ADT feed and send it to the Centralized Identity Knowledge store. The hard processing is centralized.

The biggest advantage of the Centralized Identity Knowledge is that the â€œCross-Referenceâ€ is known well in advance of someone needing to know. So a Patient Record Location Service call is very quick and deterministic. This model is best when Performance is most important. We hear much about how unlikely Doctors are to wait a few seconds.

The Privacy disadvantage is that ALL patients are known in a centralized database. This is regardless of if the information is needed ever. Think about a patient that never has moved, always sees the same doctor, never needs the HIE service. Thus a breach of this database breaches ALL Centralized Identity Knowledge.

On the positive side, the Centralized Identity Knowledge is just identities, no medical information is needed in this database. However that is not to say it doesn't also get centralized.

Patient Centric
There is another model, and that is that the Patient mediates all information flow. This is the model where the patient is the only one that knows who all have interacted with them. This is where the patient provides all the information. This is also the model where the system totally fails if the patient is in an emergency situation. The patient can also better hide information they donâ€™t want to share, which is a privacy benefit, but a potential risk to patient safety and quality of care.

Conclusion
I hear of new exchanges being put together that choose to use the Centralized Identity Knowledge method. Their excuse is that it is faster, which it is. They also point out that it is easier to get quality results, which is somewhat true.

**Privacy Matters**. It is important to consider Privacy and Security up front. They are way too often left to an after-thought. It is when they are left to an after-thought that they become burdensome and are seen as nothing but trouble. When one considers Privacy and Security up front, they can be enablers of workflows and most importantly things that make the Patient happy.

Is waiting a bit longer for a query to happen, followed with a discussion with the patient really that hard for Healthcare Provider -- Professionals?

Nationwide Health Exchange ([HealtheWay](http://www.healthewayinc.org/)).
I will note that the Federated Identity Knowledge Discovery is the model that is used by the NwHIN-Exchange, now known as [HealtheWay](http://www.healthewayinc.org/). Thus this breach did NOT come from here, and couldn't.

[Patient Identity Resources](http://healthcaresecprivacy.blogspot.com/p/topics.html#PID)

- [PDQm - Patient Demographics Query for Mobile API](http://healthcaresecprivacy.blogspot.com/2014/07/pdqm-patient-demographics-query-as.html)

- [Policy needs to get out of the way of good Patient Identity management](http://healthcaresecprivacy.blogspot.com/2013/12/policy-needs-to-get-out-of-way-of-good.html)

- [HIE Patient Identity problem](http://healthcaresecprivacy.blogspot.com/2013/04/hie-patient-identity-problem.html)

- [Identity Proofing and Authentication -- Patient vs Provider](http://healthcaresecprivacy.blogspot.com/2012/10/identity-proofing-and-authentication.html)

- [Patient Identity Matching](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [The Basics of Cross-Community Patient Discovery (XCPD)](http://healthcaresecprivacy.blogspot.com/2012/03/basics-of-cross-community-patient.html)

- [NwHIN-Exchange use of XCPD for Patient Discovery](http://healthcaresecprivacy.blogspot.com/2012/03/nwhin-exchange-use-of-xcpd-for-patient.html)

- [Direct addresses- Trusted vs Trustable](http://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html)

Updated August 21 -- added an introduction, graphic from CNN Money, and more links to articles.

