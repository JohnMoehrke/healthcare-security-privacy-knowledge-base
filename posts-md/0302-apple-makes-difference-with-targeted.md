# Apple makes a difference with targeted use of Differential Privacy

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/06/apple-makes-difference-with-targeted.html
Published: 2016-06-29T14:47:00.001Z
Updated: 2016-06-29T14:47:40.126Z
Author: John Moehrke

---

Amazing [news](http://appleinsider.com/articles/16/06/24/apples-differential-privacy-in-ios-10-is-opt-in-limited-to-four-use-cases)this [week](http://www.theverge.com/2016/6/17/11957782/apple-differential-privacy-ios-10-wwdc-2016)from Apple on their use of [Differential](http://blog.cryptographyengineering.com/2016/06/what-is-differential-privacy.html) [Privacy](https://techcrunch.com/2016/06/14/differential-privacy/). They didn't invent [Differential Privacy](https://www.cis.upenn.edu/~aaroth/Papers/privacybook.pdf), they are not the first to use [De-Identification](https://healthcaresecprivacy.blogspot.com/p/topics.html#DEID), but they seem to have thought about this. We can't yet tell how well they thought about this, as the details are not clear. That is, they are still not being Transparent.

I am not an Apple fanboy, I think they get far too much credit and buzz. I don't think this is their fault, they are masters of marketing, and they never claim to have created something no-one else has. What they do very well is take technology that is just slightly behind bleeding edge, letting someone else get most of the cuts and blood, and the critical thing, they use it in a way that provides really good value. It is this that I am very much a fanboy for apple, they know how to pivot the work of others into a bigger value for their customers.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQfaxeU6EJWMLANeyol1-yC2yfjMiMNqkmdz4uY5h7dhEGGwR2ausquliM4ig06kJTF8qneN597upte7DaOfTm2Z98fDdbLiywVc_7efflYVaHQbrt8Abg5obsBTs6EiMa3SoGR_UE2E6s/s1600/De-ID_Process.pngDifferential Privacy is another case of this value-adding exceptional execution.   Specifically...

From the information that is known, it appears they understand [Privacy Principles](https://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy) and [De-Identification](https://healthcaresecprivacy.blogspot.com/p/topics.html#DEID). They have identified a small number of use-cases where they could add value if they could get data about how people are using their product and the internet; yet they want to respect Privacy. So they find this concept in Differential Privacy, apply it in a distributed way so that they can gather trends without gathering specific actions.

Key here is that they have a very well defined set of use-cases. This is the most [important step of any De-Identification](https://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html) (the broader process). If you don't have well defined use-cases, then you can not make the risk tradeoffs. It is only through really understanding what your use-cases need, that you can determine.

More specifically you must understand what your use-cases DO NOT need. In the Apple case, they don't need the identity of the user or phone; they don't even want a pseydonym for them. The have made other very important tradeoff decisions on what they DO NOT need. They show great restraint at eliminating all data they simply don't need. This is driven by [good process governance, and a strong understanding](https://healthcaresecprivacy.blogspot.com/2015/02/is-it-really-possible-to-anonymize-data.html) of your use-cases.

Then for the data they do need they look at what kind of fuzziness their use-case can survive. This is were Differential Privacy comes in. They determine that they can take some noise in their data. It is this noise that hides true identity in that data. Differential Privacy is a de-identification mechanism that adds random noise to some data. This random noise distorts the data, but over the whole data-set his random noise doesn't detour the trends. It might hide small trends, but it doesn't hide large trends. That is a large enough 'signal' (trend across the whole population) will still be visible.

And just to prove that Apple understands all of the [Principles of Privacy](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html); they make this data gathering, with all the protections they have engineered into it, something the end-user (lay person) gets to [choose if they want to report](http://www.recode.net/2016/6/24/11967188/apple-data-collection-ai-opt-in-differential-privacy). This not only is a fantastic recognition of the complete picture of Privacy Principles, but addresses something that many big-data projects totally fail at. These big-data projects probably have done as good of a 'technical' job, but they fail on being Transparent, and providing Choice; thus they fail at the "Perception" risk.

There are many questions open, like will they purge the data on a regular basis so as to prevent the data from building big-enough to become identifiable? With their intended use-cases, this would also be a very useful risk-reduction without loss of function.

The BEST blog article on Differential Privacy and how Apple likely is applying it comes from Mathew Green - on his blog [A Few Thoughts on Cryptographic Engineering](http://blog.cryptographyengineering.com/) - in the article [What is Differential Privacy?](http://blog.cryptographyengineering.com/2016/06/what-is-differential-privacy.html)

My articles on [De-Identification, Anonymization, Pseudonymization](https://healthcaresecprivacy.blogspot.com/p/topics.html#DEID)

- [De-Identification for Family Planning](http://healthcaresecprivacy.blogspot.com/2015/12/de-identification-for-family-planning.html)

- [FHIR does not need a deidentify=true parameter](http://healthcaresecprivacy.blogspot.com/2015/06/fhir-does-not-need-deidentifytrue.html)

- [NIST seeks comments on De-Identification](http://healthcaresecprivacy.blogspot.com/2015/04/nist-seeks-comments-on-de-identification.html)

- [Is it really possible to anonymize data?](http://healthcaresecprivacy.blogspot.com/2015/02/is-it-really-possible-to-anonymize-data.html)

- [PCAST - Big Data: A Technological Perspective](http://healthcaresecprivacy.blogspot.com/2014/07/pcast-big-data-technological-perspective.html)

- [De-Identifying free-text](http://healthcaresecprivacy.blogspot.com/2014/06/de-identifying-free-text.html)

- [De-Identification: process reduce risk of identification of entries in a data-set](http://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html)

- [Fake it properly](http://healthcaresecprivacy.blogspot.com/2013/02/fake-it-properly.html)

- [De-Identification - Data Chemistry](http://healthcaresecprivacy.blogspot.com/2013/05/de-identification-data-chemistry.html)

- [Guidance Regarding Methods for De-identification of Health Information](http://healthcaresecprivacy.blogspot.com/2013/05/de-identification-data-chemistry.html)

- [The Emperor has no clothes - De-Identification and User Provisioning](http://healthcaresecprivacy.blogspot.com/2012/08/the-emperor-has-no-cloths-de.html)

- [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html)

- [Redaction and Clinical Documentation](http://healthcaresecprivacy.blogspot.com/2010/08/redaction-and-clinical-documentation.html)

