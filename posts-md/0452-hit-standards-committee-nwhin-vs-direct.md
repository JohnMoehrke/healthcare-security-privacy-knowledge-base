# HIT Standards Committee NwHIN vs Direct maturity chart

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/08/hit-standards-committee-nwhin-vs-direct.html
Published: 2011-08-19T22:36:00.001Z
Updated: 2012-03-29T21:33:39.248Z
Author: John Moehrke

---

The view of HIT Standards maturity and adoption is one of the things that HIT Standards Committee has discussed this week. This is fantastic update since the original that I [blogged about in July](http://healthcaresecprivacy.blogspot.com/2011/07/healthit-standards-maturity-vs-adoption.html). Please see the John Halamka summary of the [HIT Standards August Meeting](http://geekdoctor.blogspot.com/2011/08/august-hit-standards-committee-meeting.html) for all the things that happened. The specific section was what Dixie presented.

>
Dixie Baker presented the [preliminary recommendations](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_12811_955291_0_0_18/NwHINPT_PrelimResults_8_17_11.ppt) for building blocks that support data exchange in both "push" and "pull" models.   The key innovation in Dixie's work is the process for reviewing existing standards for appropriateness, adoption, maturity, and currency.

The stated charge of this PowerTeam is:

>
â€œUsing the NwHIN Exchange and Direct Project specifications as primary inputs, recommend a modular set of transport, security, and content components (â€œbuilding blocksâ€) that can be selectively combined and integrated to enable the trusted exchange of content in support of the meaningful use of electronic health record (EHR) technologyâ€

I commented strongly during the first presentation of these charts in July, and[blogged about it](http://healthcaresecprivacy.blogspot.com/2011/07/healthit-standards-maturity-vs-adoption.html). I would like to believe that it was my blog that caused a 'PowerTeam' to be created to re-examine it. This PowerTeam met on the 11th (3 members if I remember correctly), where I again provided very detailed comments online. I was contacted directly understand and resolve these comments. I also participated in some NwHIN-Exchange meetings where comments were developed and delivered to the PowerTeam. Ultimately trying to provide evidence that the NwHIN-Exchange specifications were more mature than they were being portrayed.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiwkV1LnchoIi1SE7z0sm6A64M8AyS3K7ECiie7LYMqTRJIj79Cp80l1jGpN7xXKgncz0r2HjOpInZq7kbTyqKLpuecSLe9hI88u692seyj5LHZ7QnftcK6QMfyYjaHqQJeZ3nHvAifEWzu/s1600/NwHINPT_PrelimResults_8_17_11.png

So, on the 17th I expected the slides to be perfect. Well they are better. In fact I think they might be as good as can be expected at this time. I think that further adjustment can only be influenced by a new group of people, that is not Vendors or Consultants. I can't even fault ONC for this fact. ONC should be skeptical of  'facts' that come from Vendors and Consultants.  They want and deserve facts from Hospitals and National/Regional/Local Health Information Exchanges.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjGJB6ZLWiW1QIniFR4PJSp4PbZFVBJ3VjnA7D2NI3S6HwU0k3popm8zVv_L_qCJMmd_BYJHn0YqAiQQsTedrkZJq05g6UM01JGOk9h-b2eMO3Uu_TmCGSwYF_ZrtYEZDFoauExtBesREml/s1600/hitpc-standards-update-07-06-11-slide24.png

I expected that when John Halamka first introduced this chart that the purpose was to show that Direct was more mature and better accepted than Exchange. It turns out that many members of the NwHIN-Exchange and CONNECT have been providing strong comment and evidence in support of Exchange. The EHRA has also provided input in their [White paper on Health Information Exchange types](http://www.himssehra.org/docs/20110629_EHRA_TransportFramework_Final.pdf). The result is that the charts now shows that they are almost dead even. However the FACA committee is still taking as more authorative the â€˜opinionâ€™ of a few members over â€˜factsâ€™ provided by outsiders.   Ultimately more adjustments will be made. Ultimately the decision will be, and should be, that both specifications need to be endorsed. More implementer's of NwHIN-Exchange need to speak up.

I don't like their feeling that they get to â€˜eliminateâ€™ or â€˜reconsiderâ€™ specifications. The existence or continued â€˜considerationâ€™ will be based on market need, not the opinion of 3-4 people. I am not saying that (from page 12 - not shown here) the access consents or HIEM are good specifications, they are not. However in the case of the Web Services Registry as suboptimal, better alternatives are not yet available; they are in the works and will eventually replace (UDDI).

The NwHIN-Exchange folks were very upset at where Authorization Framework landed, as it is critical for Query/Retrieve patterns. They will surely continue to push a better evaluation of this. There is a perception by a few that the Authorization Framework is much harder than it actually is. The specifications mentioned in the 'consider' category are content or uses; so shouldn't have been evaluated.

**I have been asked why XDS isn't included - **XDS has never been a part of NwHIN-Exchange. The NwHIN-Exchange is about federating local/regional exchanges into a nationwide exchange. This federation is the role of XCA. There has never been any hint of how one might build a local/regional exchange. However as you likely observed, the XCA Query and Retrieve transactions are derived (by IHE) from the XDS Query and Retrieve transactions. Thus a system that knows how to interact with XDS, knows how to interact with XCA. This is a design principle of XCA.  So this is normal, and expected.

What is lost in the chart is that XDR is a common thread between Direct and Exchange. The XDR protocol is being heavily used in Exchange, especially by SSA. The XDR protocol holds a special place in the Direct project as well, as it is tangentially endorsed through the specification that shows how to[bridge Direct and XDR](http://wiki.directproject.org/XDR+and+XDM+for+Direct+Messaging). Thus â€œDocument Submissionâ€ should be recognized as XDR and re-assessed to mature.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkhPYfSqCnYl_tRPv7n9dLeO9U0-bgqHVVNZBypuvkmipZMPzBHTDjZuPB4Tad5DFXcdlxtGZ7NFoPJy14bdGTkCQXzFNd_rB5wz6ERdsQAjNnVoNLuTvT3Lv_ksTgpjdttcAYwyxvaoq4/s1600/Slide17.PNG
From EHRA [White paper](http://www.himssehra.org/docs/20110629_EHRA_TransportFramework_Final.pdf)

Of note, from an EHR perspective, if you support XCA Query/Retrieve and XDR PUSH; you fully support XDS. This does not mean that you have XDS infrastructure, that is a big operational aspect. But it does mean that if you have tested your EHR against XDR and XCA that you are XDS compliant. The advantage of XDS is that it identifies a set of services that would be hosted centrally as high-availability; allowing clinics to be off-line at night and weekends. There should be a white paper from IHE on how to make a Regional Health Information Exchange using the XDS family (PIX, PDQ, ATNA, XUA, BPPC, CT, and maybe more). This all does tie nicely into the need for [One Metadata Model - Many Deployment Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html)

**The only aggravating** thing in the whole presentation (page 9-11) is that for every NwHIN-Exchange specification is an alternative of REST or Direct (which I disagree is possible); while the Direct specifications do not include the alternative of XDR (which is proven as being an alternative).

**Conclusion**

This is a huge improvement, so much so I have very little that I would request be changed. The biggest recommendation is to get those implementing NwHIN-Exchange to speak up. Surely there are NwHIN-Exchange partners that can show real results. I know of large providers and regional health information exchanges that are planning on using the NwHIN-Exchange independent of the NwHIN-Exchange. These positive uses of NwHIN-Exchange need to be brought forward.  I have expressed my knowledge and opinion; it has been recognized and influenced as far as it is going to.

