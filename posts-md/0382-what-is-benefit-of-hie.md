# What is the benefit of an HIE

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html
Published: 2012-03-15T14:17:00Z
Updated: 2012-03-15T14:17:19.162Z
Author: John Moehrke

---

I got this question and it kind of hit me as a surprise. I forget that not everyone understands what it is that I am trying to enable through all of the work on Health Information Exchanges (HIE). I am far more focused on developing the standards to enable Privacy and Security on Health Information Exchanges than I am at fully understanding the use-cases that it enables. However during the development of HIE standards we do use some general purpose use-cases that I think are indicative of the kinds of things that they enable.

There are discussions of the advantages from a [much higher level](http://www.accenture.com/us-en/Pages/insight-making-case-connected-health.aspx). On the economic benefit, I think this is not going to turn out to be as big as many think it will be. I suspect that there will be a small number of tests that won't be re-ordered. Fresh lab results are too important. On the quality benefit, I think this is also not going to turn out to be as big as many think it will be. Quality will be driven through more transparency, which will come from HIE but also many other things.

I am very excited by any advance in HIE deployment, for example the  [NwHIN Exchange](http://healthcaresecprivacy.blogspot.com/2012/02/nwhin-exchange-impressive-success.html) is a fantastic effort. The fact that the [big Healthcare Providers](http://healthcaresecprivacy.blogspot.com/2012/03/huge-hie-care-continuity-consortium.html) are using the same standards yet pushing operational success faster is clear there is something important. I think this kind of a nationwide exchange has advantages that others don't have, but other exchanges are also fantastic efforts. I also think that it is great that there are smaller Regional exchanges like those represented by the [REC effort of ONC](http://healthit.hhs.gov/portal/server.pt/community/hit_extension_program/1495/home/17174), and point-to-point exchanges like those enabled by the [Direct Project](http://wiki.directproject.org/). I am even for patient initiated exchanges such as a PHR like HealthVault, or even simply using removable media like USB-Memory sticks and CD-ROM.

**Putting the Patient at the Center:**
Why do I like all of these? It is because they are putting the Patient at the CENTER of Healthcare. It is enabling historic information to be available to make current or future treatments to be better. This is the core answer that I have to the question. My goal is to get information flowing. Yes, as a Security and Privacy advocate I want it only going where it should go. There are so many ways that historic information can be used to enable better care. Even knowing the specific details of your current treatment enables you to be a better patient. So I am excited at any effort to get information flowing.

That said, I would prefer that the best quality, fullest details, and most authoritative information flow. I have worked hard to be a part of open and transparent standards development that has resulted in the XD* family of Health Information Exchange profiles from IHE. I call this a family of profiles because there are both multiple profiles needed beyond one of the core XD* profiles to make a fully functional HIE; but also because there is a consistency across the [XD* family](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)that allows for the most re-use. For example there is profiles in XDS for building a regional HIE (Like the REC), profiles in XCA for building a nationwide exchange that is a federation of regional exchanges, profiles in XDR and XDM for building point-to-point or peer-to-peer exchanges such as the Direct Project, and profiles in XDM for exchanging electronic copies of health information on CD-ROM or USB-Memory. By using these profiles one can easily convert from one HIE architecture to another, which was shown in the Direct project. This comes from a common patient centered metadata model for describing documents, and the relationships between documents. This is the message in the IHE white paper on the topic [Building HIE using IHE Profiles](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)

**What is enabled by HIE that a doctor can't do today:**
First, anything is possible today. An HIE simply makes it more effective and efficient. Which for some means that they are enabled to do something they can't do today as it is prevented or made too hard. Putting the Patient at the center enables:

- Doctor has access to historic information that was not created by that doctor

- Patient is referred to a specialist, delivering electronic versions of the documents enables better care by the specialist

- Onset of a new condition, where some prior conditions may be relevant

- Open Referral, where the patient is allowed to choose the specialist that they go to.

- Highly mobile patient. Either winter-summer migration, work related travel, migrant worker, etc.

- Urgent care, I am not going to say emergency as that typically is handled through direct observation and measurement to stabilize the patient. But once the patient is stabilized there is going to need to be a record made of the treatment that the patients GP would be interested in, and there might need to be a treatment plan put in place or a referral.

- Patient with many medical conditions. helping to keep track of the overlap between the different conditions.

- Patient with complex condition that take many years and many treatments and many specialists

An article I wrote, [Directed Exchange vs Publish Discover](http://healthcaresecprivacy.blogspot.com/2010/10/directed-exchange-vs-publishdiscover.html), a while back is written more as a defense of the Exchange over the Direct model; but really the point I was making is that they both enable very useful use-cases, just not to the same degree. You can see from the article that there are multiple things that are enabled that directly affect the patient.

**Privacy and Security are core**
Getting back to Privacy and Security. I know that we can secure these exchanges, I know that we can give patients some controls TODAY, [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html). The way to do this is to start with simple yet broadly applicable controls. These controls can then be refined over time to enable more fine-grained controls. If specific individuals want or need these fine-grained controls, then they might need to wait to take advantage of the benefits of HIE. I want to enable those that can benefit with high-level controls. I want to get going now, not just to help those patients that can benefit today, but to also work out the concept of HIE, to encourage creative uses of the information to make the patient experience better.

