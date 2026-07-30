# Interoperability will never be perfect - not even FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/07/interoperability-will-never-be-perfect.html
Published: 2016-07-04T20:26:00.001Z
Updated: 2016-07-04T23:27:48.298Z
Author: John Moehrke

---

I just finished a fantastic book "[In the Land of Invented Languages: Adventures in Linguistic Creativity, Madness, and Genius](https://www.amazon.com/Land-Invented-Languages-Adventures-Linguistic/dp/0812980891/ref=sr_1_1?s=books&ie=UTF8&qid=1467660975&sr=1-1&keywords=in+the+land+of+invented+languages)" by Arika Okrent.

https://images-na.ssl-images-amazon.com/images/I/514M1D0d7VL._SX322_BO1,204,203,200_.jpg

This book was recommended by Grahame Grieve. I don't have evidence he recommended it, but I am sure it was Grahame. I wondered why he would have recommended such an obscure book. I may have figured out why, but I might have completely over blown the thought.

This book covers the concept of invented languages, as distinguished from languages that we all use in normal conversation. These normal conversation languages have evolved naturally.

Where as Invented languages have a purpose to exist. It is this purpose that guides their creation. The majority of these purposes are because of the author wanting to eliminate all the human failings of language. Inaccuracy, cumbersome, duplication, etc... Or simply the tower-of-babble problem.  Some tried to focus on mathematical structure and strictness, some focused on vocabulary, some focused on written form, some focused on graphical form. Some focused on being as simple as possible.

Thousands of languages have been invented and all of them have completely failed. I will throw my interpretation of why they failed, because it is impossible to align all the vectors that one must optimize and make perfect. Some tradeoff must be made.

Second, languages that are used get further molded by the users of the language (most visible is that language will end up with various dialects that drift further and further apart).  No creator of a language can forbid this dialect problem. Note very interesting perspective on this topic at the very end of the book regarding Klingon.

I am not going to try to summarize the whole book. It is a fantastic read.

All this said, even the author doesn't recommend we stop trying to invent new languages. The message is to try hard, but expect you will need to adjust.

Interoperability
I would apply the concepts from this book to Interoperability. I think this is what we are now trying to do with [FHIR](http://hl7-fhir.github.io/index.html). I think the [FHIR Principles](http://wiki.hl7.org/index.php?title=Fundamental_Principles_of_FHIR) (not just the 80% rule, which is so woefully defined and much maligned), is the front line mechanism to help prepare us to create something as good as we possibly can. Where the FHIR mechanism of [extension](http://hl7-fhir.github.io/extensibility.html)enables us to be ready to adjust to future needs. There are other mechanisms the FHIR core team is trying to put into place to frame future deviations to be as graceful as possible.

This also applies to our healthcare vocabulary, we should not obsess over each word we invent. It will be used or it will not. If it is used it is either because it was well defined at the start, or because there is evolved agreement. If it is evolved agreement, then we need to update the dictionary. Just like we do with human-language dictionaries. We need to expect that words will change their meaning overtime. We don't like this in Interoperability, but happens. We need to be ready to adjust.

This also applies to the way that Resources are used in larger workflows. This includes the formal kind of workflow that FHIR is trying to define a Workflow resource for. But this also includes informal or adhoc use of multiple Resources for some end. Meaning we shouldn't expect everything to fit nicely into a "Workflow" that can be automated. Workflow must also be ready to adjust.

Postel's Law
We can design a good Interoperability Standard, but we must recognize that when it is put into use things change. Postel's Law, the [Robustness Principle](https://en.wikipedia.org/wiki/Robustness_principle), will have us be very specific in what we say (send); and very liberal in what you accept (as valid) from others. This rule is very important in Interoperability, not just in Healthcare Interoperability. It is the fundimental reason why the Internet exists, because it is central to early implementations of TCP/IP, SMTP, and later HTTP/HTML.

Some of my other blog articles on this

- [FHIR - Input Validation](https://healthcaresecprivacy.blogspot.com/2016/04/fhir-input-validation.html)

- [Testing - governance](http://healthcaresecprivacy.blogspot.com/2014/03/testing-governance.html)

- [Constrained Vocabulary and Schema are good and needed - But Robustness must rule the longitudinal HIE](http://healthcaresecprivacy.blogspot.com/2014/01/constrained-vocabulary-and-schema-are.html)

- [Vocabulary Standards make poor User Interfaces](http://healthcaresecprivacy.blogspot.com/2013/09/vocabulary-standards-make-poor-user.html)

- [XDS/XCA testing of Vocabulary Enforcement](https://healthcaresecprivacy.blogspot.com/2011/11/xdsxca-testing-of-vocabulary.html)

