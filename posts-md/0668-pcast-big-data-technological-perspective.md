# PCAST - Big Data: A Technological Perspective

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/07/pcast-big-data-technological-perspective.html
Published: 2014-07-02T15:31:00Z
Updated: 2014-07-02T15:31:07.583Z
Author: John Moehrke

---

The USA White-house "[President Council of Advisors on Science and Technology (PCAST)](http://www.whitehouse.gov/administration/eop/ostp/pcast)" has produced an interesting paper on "[Big Data: A Technological Perspective](http://www.whitehouse.gov/sites/default/files/microsites/ostp/PCAST/pcast_big_data_and_privacy_-_may_2014.pdf)". It is a worthy read, and I think much of it is rather level-headed and good advice to the President.  I highly recommend reading it. It is a nice layout for a college level course in big-data privacy.

USA Centric viewpoint is bad:
It however is extremely USA centric. This is to be expected, it is being written by PCAST. This is however that USA centric thinking that lead the NSA and FBI to do things that are not internationally friendly, especially privacy. Thus now the USA based businesses are not looked at by the international community as an appropriate place to store or to allow to manage their data. This short-sighted viewpoint is killing the USA market for big-data. I think this is the most important policy change that must happen. The USA government must behave better, especially regarding international perspectives. The USA can be both Friendly to Privacy, and Friendly to Business. These two are not in conflict.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj8pbLZiO7kqi4B13sfL-NbmsSIxpiaZwAH62ZQ-BcAmrZuSJBSsyLGC_EINBvFv7gorG0vQrepg5z2hj1dic37FK6hoOwtuGwTv8GPOcNX980RHuRl_fqErEQM4ACSZWDJhYkSUTrIJuUz/s1600/Big-Data=Exposed.pngData Collection:
The paper argues

>
Recommendation 1. Policy Attention should focus more on the actual uses of big data and less on its collection and analysis.

That there should not be regulations on data collection, that it is improper use of data that should be regulated. I agree with the outcome of this statement, but not the means. The outcome is that regulation is needed to punish poor use of data. This follows the principle I have [explained on regulations](http://healthcaresecprivacy.blogspot.com/2012/11/effective-cybersecurity-regulations.html), regulations need to be written to the outcome not the technology. Note their Recommendation 2 is specifically on the topic of regulating outcomes, not the technology.

What I don't like about Recommendation 1 is that is it presumes that all data that is collected will be perfectly protected. I don't see how anyone can presume that any data is going to be perfectly protected. There are breaches of data all the time.  The Recommendation totally ignores all the unintended-use caused by a breach. I ague this happens more than the other uses.

This Recommendation 1 is implicitly guided by the concept that although we might not have a use for the data we are collecting today, there might be a use for it in the future. If we don't collect it now, it won't be there in the future. Storage space for unnecessary data is cheap.  I understand this business intent. I just think that the risks to exposure are higher than the future benefit of undefined use.

I would simply augment Recommendation 1 to guide for gathering the minimum data that is necessary for the intended use.

De-Identification is good when used right:
I have already commented on the topic of [De-Identification and anonymization](http://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html), even for [free-text](http://healthcaresecprivacy.blogspot.com/2014/06/de-identifying-free-text.html). This is a case where the report outright says that De-Identification should not be used as it is too easily defeated, especially where **data fusion** is applied.

>
Anonymization is increasingly easily defeated by the very techniques that are being developed for many legitimate applications of big data. In general, as the size and diversity of available data  grows, the likelihood of being able to reâ€identify individuals (that is, reâ€associate their records with their names) grows substantially. While anonymization may remain somewhat useful as an added safeguard in some situations, approaches that deem it, by itself, a sufficient safeguard need updating.

I don't think that this concept is in conflict with what I say. In the case of the PCAST report, they are taking the perspective that data should be allowed to be gathered in full fidelity where it is highly protected. If one is going to highly protect it, then it doesn't benefit from the reduced risk that de-identification brings. To this point I agree. It is far better to protect the original data, than to expose the data that are poorly de-identified.

I do however think that there are 'uses' of data where de-identification is appropriate. Even if simply as a data reduction technique. That is to use the de-identification process to eliminate data elements that are not necessary for the intended use of the resulting data set.  This elimination of data elements ends up with a smaller data-set, more concentrated on the needed elements. The lower risk is an added benefit.

In all cases where de-identification is used; one must consider the residual risk of the resulting data-set. Unless that data-set is empty, then there is some residual risk.

Conclusion:

Overall I like this paper. It has some depth that is nice to have. I encourage a full read of the paper, as the executive overview doesn't cover everything . The above observations are not surprising given that there are three representatives from Google on the team that wrote this paper. I am surprised at the lack of many of the other big-data perspectives.

References to Blog articles:

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Safety vs Privacy](http://healthcaresecprivacy.blogspot.com/2013/04/safety-vs-privacy.html)

-  [De-Identifying free-text](http://healthcaresecprivacy.blogspot.com/2014/06/de-identifying-free-text.html)

- [De-Identification: process reduce risk of identification of entries in a data-set](http://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html)

- [De-Identification - Data Chemistry](http://healthcaresecprivacy.blogspot.com/2013/05/de-identification-data-chemistry.html)

- [Guidance Regarding Methods for De-identification of Health Information](http://healthcaresecprivacy.blogspot.com/2012/11/guidance-regarding-methods-for-de.html)

- [The Emperor has no clothes - De-Identification and User Provisioning](http://healthcaresecprivacy.blogspot.com/2012/08/the-emperor-has-no-cloths-de.html)

- [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html)

- [Redaction and Clinical Documentation](http://healthcaresecprivacy.blogspot.com/2010/08/redaction-and-clinical-documentation.html)

- [Effective (Cybersecurity) Regulations - focus on What, not How.](http://healthcaresecprivacy.blogspot.com/2012/11/effective-cybersecurity-regulations.html)

