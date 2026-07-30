# Published White Paper from the Health IT Symposium

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/published-white-paper-from-health-it.html
Published: 2012-03-26T13:35:00Z
Updated: 2012-03-26T13:35:23.664Z
Author: John Moehrke

---

The summary report of the [Health Information Technology Symposium of August 2011](http://sphhs.gwumc.edu/abouttheschool/events/healthinformationtechnology) is now [published on their site](http://www.gwumc.edu/sphhs/healthit/HITSymposium2011.pdf). Their 5 observations:

>
OVERALL KEY IDEAS WERE TO IDENTIFY THE FOLLOWING:

1.   Major issues associated with trust, privacy and security, governance, standards, patient matching, and patient choice;

2.   Methodology to incentivize for healthcare quality and efficiency;

3.   â€œOtherâ€ tools that can be used to facilitate quality and efficiency in health care. (i.e. open source, semantic, Health Information Technology Innovation and Development Environment (HITIDE), Data Element Access System (DEAS), etc.);

4.   Mechanism to develop a national-level program that will assist with development of standards across governments (federal and state) and other public-private partnerships; and

5.   Methodology to address a â€œculture of excellenceâ€ focusing on the patient. The hope is that the appropriate organization (public or private) adopts these ideas and continues to improve the efforts and initiative associated with health care within the United States.

This is about discussing a strategy for the overall principles identified in the PCAST report.  They still donâ€™t address how we move from a highly-decentralized and highly-competitive environment to this nirvana where all data is available to everyone in just the right form for their use. This end-goal sounds wonderful, but there needs to be some reasonable steps along the way that each provide more benefit than the cost of the change, yet each is small enough to be executed by thousands of healthcare provider organizations, thousands of payers, and thousands of organizations looking for other benefit. This seems to me to be the failing of these visionary utopian positions. I offer stepping stones to this vision...

http://www.imd.org/uupload/IMD.WebSite/MicroSites/emba/images/galleryImages/EMBA_start_up_competition_996x446.jpg

I worry that these visions are being thought up in a way that would benefit the visionaryâ€™s own personal life. Yes they are thinking of them-selves as a patient. What they are not thinking of is that they are far more mobile than the average person. Most people stick relatively close to the same place. Yes they have emergencies while away. Yes they move around the country chasing work or loved ones. Yes they need specialist care outside their home area. But these movements donâ€™t require the fine-grained data manipulation being called for in PCAST. These use-cases can move the data to the organization currently treating and process it there.  Yes we need fine-grained access, just not through a central database or even federated query. Consistent API locally or regionally would work for most patients.

http://images.sciencedaily.com/2006/03/060303113802.jpg

I think it would be useful for these visionaries to think about a design for a global system. That then puts their personal experience closer to the personal experience of the average citizen relative to USA movements. In fact, I would like to see the USA learn from experiences elsewhere. I saw no mention of experiences that other countries have learned, both good and bad.

So, why doesnâ€™t each healthcare provider have an API that allows the â€˜plug-and-playâ€™ that the report and symposium call for? Because each organization has invented their own database schema and user-interface; customized for their needs. This customization is a result of creativity, the solution proposed tells them to be less creative, offering to them that later they can be more creative. This is like telling a 2 year-old to eat their broccoli so that they can later get cake; it never goes over well especially with brats who have been able to do whatever they want up to that point. We need a well thought out plan to make small and positive course corrections. Each step must be better, with clear ROI.

Something that I never saw said in the paper or any of the other discussion around PCAST is how all of this Health IT would affect â€œMalpracticeâ€ (liability), both positive changes and negative changes. I suspect that this unstated issue is at the center of much of the reluctance to change. Providing access to the data allows second-opinions, these second-opinions might be truly finding a mistake or they might be drilling simply for some basis to file legal action. Today we put much faith, trust, and worship into the position of Doctor.

I would like to promulgate that the Document exchange model in XD* is consistent with the PCAST report. That the use of a big object, Document, is an evolutionary tradeoff â€“ a stepping stone. We start today with documents, that are easier to define, manipulate, and control. This does not mean that we donâ€™t ever have an exchange that allows manipulation at the attribute level, who knows what the future holds. Where the DEAS is the XDS Document-Stored-Query transaction. The only difference is that XDS is document based. We choose an object size that is reasonable today. I laid this out for Privacy and Security, but not for the whole system [http://healthcaresecprivacy.blogspot.com/2011/03/trust-and-pcast-model.html](http://healthcaresecprivacy.blogspot.com/2011/03/trust-and-pcast-model.html) This seems to be what they are saying on Page 8, and seems to be part of the conclusion on page 14, and in a few of the sessions.

The discussion of â€œwho is best positionedâ€ found on pages 21-22 is interesting. It is interesting to see the criticism of HITSP being long and complex documents, while today the S&I Framework is doing that all over again. I was asked to review just the use-case document for Data Segmentation for Privacy, I couldn't get through the 68 pages. This is just the use-cases, 68 pages. I just gave up and gave in. Is there no way to learn from our mistakes? Each of these organizations are made up to show success through page count, not change.

The best quote I found in the document is from Page 23 on barriers to adopting Health IT â€œOn page 60 of the PCAST report, it mentioned that it would cost between $20 and $40 million to develop standards for Interoperability. Overall, the participants of this session thought this cost range was a guess and therefore agreed that the PCAST report did not do a good job in analyzing all costs involved.â€

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkhPYfSqCnYl_tRPv7n9dLeO9U0-bgqHVVNZBypuvkmipZMPzBHTDjZuPB4Tad5DFXcdlxtGZ7NFoPJy14bdGTkCQXzFNd_rB5wz6ERdsQAjNnVoNLuTvT3Lv_ksTgpjdttcAYwyxvaoq4/s1600/Slide17.PNG

Overall the report seems to indicate that there is some perspective on reality. I would still like to see some vision of the stepping stones, rather than so much focus on the horizon. I think that the XD* family of profiles are the core of the stepping stones as described in the [IHE paper on building Health Information Exchanges](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html).

