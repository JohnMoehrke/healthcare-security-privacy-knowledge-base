# Healthcare needs to watch and learn from the cascade of security failures

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/12/healthcare-needs-to-watch-and-learn.html
Published: 2010-12-08T17:17:00Z
Updated: 2010-12-08T17:17:15.666Z
Author: John Moehrke

---

Wikileaks is the [big news today](http://www.nytimes.com/2010/11/29/world/29cables.html). This blog article has NOTHING to do with WikiLeaks, but has everything to do with using the event which are associated with WikiLeaks today as a useful use-case to analyze in the context of Healthcare Security and Privacy.

It scares me that someone might think that exposing PHI on WikiLeaks would be an appropriate way to â€˜exposeâ€™ a healthcare abuse. As much as the current exposure of the diplomatic cables has resulted in mostly embarrassing gossip, exposing PHI would be far more dramatic. The methods that WikiLeaks seems to use donâ€™t give me any comfort that exposure of PHI might not happen. I hope that it would not. But this is not what I want to cover here.

I want to look at the security failures upstream of what we are seeing on WikiLeaks. I think there are very useful lessons to learn.

**Data Classification: **I [understand](http://www.slate.com/id/2276188/) that originally the Diplomatic Cables were classified â€˜confidentialâ€™ or â€˜top secretâ€™ at one point. Which was later considered too restrictive, so they were re-classified to â€˜secretâ€™. This re-classification clearly was a key to the exposure of these cables, as about 3 million people have â€˜secretâ€™ clearance. This re-classification was felt necessary to give more access, which might have been the right thing.

It is my understanding that when data gets re-classified there should be new assessment of the data that might result in some information being blinded. I donâ€™t think that this would have removed the gossip, but do wonder why such a bulk of data was either (a) originally classified wrong, or (b) so easily reclassified without recourse. I want to point out clearly, that I am still strongly for Data Classification and totally agree that there needs to be functionality for re-classification (up or down). It simply seems like sloppy process was used in this case.

What we can learn, is something we are struggling with in healthcare. That Data Classification is a rather blunt instrument, it doesnâ€™t work very well to support fine-grained access controls. But it is a start, and better than no Segmentation.            See: [Data Classification - a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

**Access Controls: **The re-classification gave access to a broader range of individuals. It is not clear why this was necessary. I will not try to figure out if [this specific user](http://topics.nytimes.com/top/reference/timestopics/people/m/bradley_e_manning/index.html?scp=1-spot&sq=Bradley%20Manning&st=cse) should have access to this specific set of data. What I do wonder though is why this user also had the permissions necessary to export the reports, and put them on a non-secured storage. People are very creative, and I suspect this individual was creative enough to have overcome many Access Controls. Military or Diplomatic secrets would seem to need many layers of protections. Either they existed or this individual is more creative than most.

**Audit Controls: **The main failure that bothers me the most is that either no Security Audit Logs were produced that indicated that someone was viewing/copying THOUSANDS of documents, or that no one was watching the log. Even an automated program could have triggered easily when a hundred documents were viewed from the same place.  See [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html) And [ATNA and Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

> There has been a lot of press speculation that all of the documents, starting with the helicopter attack video, have come from the same source, a young U.S. Army intelligence analyst, who has been arrested. If that is the case it looks like access to vast databases of secret U.S. government documents was rather broadly available and access was not reasonably logged. None of the documents released to date have been marked top secret so, maybe, the database had some level of data segregation. **But, if news reports are accurate, no log was kept of access to the database or, if such a log exists, it was not regularly reviewed, since suspicion was directed at the analyst by a person outside the U.S. military. [More](http://www.computerworld.com/s/article/9198860/WikiLeaks_is_not_the_actual_problem?source=CTWNLE_nlt_security_2010-12-01)**

Security and Privacy are not simple, they require checks and balances.

