# Access Controls around the PCAST use-cases

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/03/access-controls-around-pcast-use-cases.html
Published: 2011-03-25T03:09:00Z
Updated: 2011-03-25T03:09:54.628Z
Author: John Moehrke

---

John Halamka posted [Use Cases for Health Information Exchange](http://geekdoctor.blogspot.com/2011/03/pcast-use-cases.html) discussed by the [PCAST Workgroup](http://healthit.hhs.gov/portal/server.pt/community/pcast_workgroup/3354/home/21741). Keith did a fantastic job of[laying out the IHE profiles that support these use-cases](http://motorcycleguy.blogspot.com/2011/03/ihe-support-for-pcast-use-cases.html). I could add a few tweeks to Keiths details, but I think they are good enough for now.https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgPO8omzDCwTCr9OqrZ5oW0hp5rZG0xPzBeA9DsWlxY72IjDJo-3atKJ-HIGotPY8G2mCCw3avthMFqNerTrg3NTjXtXMxm8aQrQ0MFKi4uqDopjOgAf4wdf_eZOKgRPeOTHuXpDrjYUT7i/s1600/DEAS_security_arch.JPG

What I want to cover is my concern with the way [people are perceiving that PCAST](http://geekdoctor.blogspot.com/2011/03/pcast-security-model.html) wants to combine the Metadata about the Patient and Clinical Content; with the Access Control information.

The Diagram that [John Halamka includes in his blog](http://mycourses.med.harvard.edu/ec_res/nt/B924855F-A022-4C6D-86CF-7F270542E1A7/DEAS_security_arch(V3).pdf)shows 10 interactions. Some of these interactions are retrieving clinical information, some are retrieving security information. I am not going to repeat the details here, they can be found on John Halamka's blog.

-----------------------------------------------------
My first observation is that this model is very much like the failed [Digital Rights Management](http://en.wikipedia.org/wiki/Digital_rights_management) industry has tried to propose for Music, Video, and such. I am very clear that I think that DRM as it is implemented today is a failed solution (See: [Healthcare should join OASIS Privacy Management Reference Model (PMRM)](http://healthcaresecprivacy.blogspot.com/2010/07/oasis-members-form-privacy-management.html). That is not to say that there might not possibly be ways to make it work in the future. I do however see some major problems with using DRM in healthcare.

The promise of DRM:

- DRM promises to provide that any object that is protected by DRM will be protected all the way to the ultimate use, and thus be protected against any uses in the middle or secondary uses beyond the intended use.

- DRM promises to give the Patient a strong expressive policy language that allows the patient to indicate the appropriate uses and the obligations around those appropriate uses (such as must now save a copy, or can't print).

- DRM promises that if the Patient changes their mind, these changes can be retroactively applied to all copies of the object. This is because all accesses to the object must be mediated by the Rights Authority.

- _I am sure there are others_

These all sound very good to Patients. BUT, the reality of DRM is:

- This model requires a SINGLE Rights Management authority that 'knows all'.

- This Single Right Management authority is a single-point-of-failure

- This Single Rights Management authority understands only ONE authority

- Where in healthcare there is arguably equal rights between the Patient who the data is about, and the Doctor who created the data and is held medically responsible for the accuracy

- This Single Rights Management authority is today - Proprietary

- Yes, there are standards for the envelop policy

- Yes, they use standards based encryption

- But the Key-Management and the method used to unlock the data is proprietary

- Where DRM has been used, it has been cracked within HOURS

I will repeat, I don't think that the promises of DRM could never work for Healthcare. I am just saying that the current state-of-the-art is proprietary and has a bad single-point-of-failure.

This is not my opinion alone (this text lifted from [Wikipedia section on impossible-task](http://en.wikipedia.org/wiki/Digital_rights_management#Impossible_task)):

> [Bruce Schneier](http://en.wikipedia.org/wiki/Bruce_Schneier) has written about the futility of digital copy prevention and says it's an impossible task. He says "What the entertainment industry is trying to do is to use technology to contradict that natural law. They want a practical way to make copying hard enough to save their existing business. But they are doomed to fail."[[76]](http://en.wikipedia.org/wiki/Digital_rights_management#cite_note-75) He has also described trying to make digital files uncopyable as being like "trying to make water not wet".[[77]](http://en.wikipedia.org/wiki/Digital_rights_management#cite_note-76) The creators of [StarForce](http://en.wikipedia.org/wiki/StarForce) also take this stance, stating that "The purpose of copy protection is not making the game uncrackable - it is impossible." [[78]](http://en.wikipedia.org/wiki/Digital_rights_management#cite_note-77)

> http://en.wikipedia.org/wiki/Digital_rights_management#cite_note-77Both the [Association for Computing Machinery](http://en.wikipedia.org/wiki/Association_for_Computing_Machinery) and the [Institute of Electrical and Electronics Engineers](http://en.wikipedia.org/wiki/Institute_of_Electrical_and_Electronics_Engineers) have historically opposed DRM, even going so far as to name [AACS](http://en.wikipedia.org/wiki/Advanced_Access_Content_System) as a technology "most likely to fail" in an issue of [IEEE Spectrum](http://en.wikipedia.org/wiki/IEEE_Spectrum).[[79]](http://en.wikipedia.org/wiki/Digital_rights_management#cite_note-78)
------------------------------------------------------------

My Second observation is that any good Security Model will separate the Security Layer from the Content. Indeed this is what IHE has done in the profiling of the Web-Services "Security" layers in the IHE-ATNA + IHE-XUA; as independent from the Query and Metadata layer in XDS, XDR, XDM, XCA, XCPD, PIX, PDQ; and the Content Layers in all the various Document Content profiles such as XPHR, XDS-MS, XDS-SD, etc.

An important part of the IHE design is that it is totally agnostic to the Document Content, it can carry IHE defined content just as well as it can carry content that you would never see IHE ever define. I can take this to an extreme to say that the IHE XD* transactions can indeed even carry content that is wrapped in a DRM wrapper.

Just as important is that the IHE design is totally agnostic to the actual policies that would be enforced. We have taken great care to assure that all transactions can be rejected because of an access control rule. There is NOTHING that MUST be allowed. This enables policies that might allow everything, but also enables all colors of policies between everything and nothing. This allows us to leverage a large body [Healthcare Access Controls standards](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html).
http://wiki.ihe.net/images/d/d7/XDS-Actor-Transaction-b.jpg

The design is also very sensitive to the way that Healthcare Information is created and used today. The model for XDS has ONE Registry (that can be federated through XCA). **This Registry knows ONLY the metadata** about the documents that have been published. It does NOT have access to the clinical data. **There are MANY Repositories**, and likely very close to the document source if not the actual document source (e.g. EHR). The vision was that each healthcare providing organization would likely want to keep control of their clinical data (documents) right up till the time they are used. This means that the original **publisher controls the clinical data for the life of the data**, it is not given up to the Central Registry. This said, it is also recognized that once data has been copied to the Document Consumer, there is a copy at the Document Consumer. This may seem unwanted, but because of Medical Records Retention Regulations this is necessary.

And finally, there is NOTHING in the architecture that says that Document Sources, Document Repositories or Document Consumers must be a Healthcare Providing Organization. A standalone PHR could very well be a Document Source, Document Repository and Document Consumer. In this way the PHR would be a full participant in an Health Information Exchange (HIE).

All of the transactions shown can have access controls enforced on the client, server, or both. I speak of this a little bit in [Access Controls on Clinical Decision Support](http://healthcaresecprivacy.blogspot.com/2011/03/access-controls-on-clinical-decision.html). I know that I need to expand on this more fully in a post later.
----------------------------------------------------------------
I am very concerned about interpretations of the PCAST report that are overly specific and overly prescriptive (See also previous post: [Data Objects and the Policies that Control them](http://healthcaresecprivacy.blogspot.com/2011/01/data-objects-and-policies-that-control.html)). I caution those looking at PCAST to look at it as a set of principles. Apply these principles to the currently available solutions using a **transparent and open evaluation.**

