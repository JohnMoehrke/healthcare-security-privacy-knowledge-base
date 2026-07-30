# Regulatory coexistence of Direct and Exchange

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/12/regulatory-coexistence-of-direct-and.html
Published: 2011-12-15T00:47:00Z
Updated: 2011-12-15T01:46:35.045Z
Author: John Moehrke

---

This would be a fantastic outcome, but making regulation is a messy process. In the [blog post "Standards are not Optional"](http://www.healthit.gov/buzz-blog/from-the-onc-desk/standards-optional-2/) Doug Fridsma talks about "Optionality" in standards including that data standards for HIE building blocks "need to be unambiguous and have very limited (or no) optionality." This seems to tip the hat toward continued mandate for Direct and no recognition for Exchange.

In Fridsma's blog the use of "no optionality" is being applied in a very specific way. John Halamka likes to point out that when alternatives are part of a regulation, the result is that the vendor community must support all alternatives. Thus a this-or-that is actually a this-and-that. Thus an "or" is actually an "and". This is a good lesson to learn, as it really should get policy makers to think about what they are asking for. If they include optionality in regulation, they are actually mandating both. Meaning they are really not providing optional paths.

However optionality is a word that can be used in a different way, that should not be seen as a negative. Such as the "Consolidated CDA" is the basics of a document that must be fully specified a specific way without question; but if (optionality) you have Y or Z information you may (more optionality words) put them in the same document in this specific (not optional encoding) way. This extra information (Y or Z) is optional, but it isn't optional in the same way as is being reference with the OR-means-AND phrase. This extra information (Y or Z) is optional because it may or may-not have been captured or be relevant to the current context. It is optional because it is not minimally necessary for the broad use of the document; but if you have it then it is not optional on how to encode it. This is understood by most who are involved with standards daily, but confusing to those that look at it only once a month.

Note there is this kind of optionality built into the [Direct specification](http://wiki.directproject.org/Applicability+Statement+for+Secure+Health+Transport). Inside the Direct specification (see 2.1 Health Content Containers) it indicates that if you can send the Document content inside an XDM zipped formatted package, then you SHALL. Meaning that sending the document without the XDM zipped package is minimally required, but if you can send it with the packaging and metadata defined by IHE XDM then you must do it that way.

I believe that ONC is struggling with how to handle Direct vs Exchange. They had the big struggle between the [Powerteam and the community pushback](http://healthcaresecprivacy.blogspot.com/2011/08/hit-standards-committee-nwhin-vs-direct.html). They really want to push 'either', but know that the OR-means-AND rule; forces even the littlest vendor or organization to implement both. They are not worried about the big guys (big vendors or big organizations). The big guys have money, resources, and IT knowhow. So they struggle with how to mandate ONE, while making sure that the other is operationally acceptable. Given their focus on helping the little guy vs not caring about the big guy; they are more likely to continue to only mandate Direct. There is little question that for the little guy that Direct is the best stepping stone. But as [Doug Fridsma points out in his blog](http://www.healthit.gov/buzz-blog/from-the-onc-desk/standards-optional-2/):

>
The Modular Specifications project has identified two ways to transport information and has created more modular, substitutable specifications. Utilizing Direct specifications as the foundation, the project has created a Secure Transport specification based on SMTP and S/MIME and XDR and XDM Conversions. A second approach leverages Exchange specifications as a basis, and a Web services approach has been specified as SOAP over HTTP. From the multiple transport standards, two building blocks are now part of our standards portfolio.

I might point out that they have more in-common that not [One Metadata Model - Many Deployment](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html)[Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html)

I think a reasonable outcome of Stage 2 Meaningful Use is that Exchange be considered as an acceptable standard to receive endorsement and funding. I don't think Exchange will receive anything more than that. ONC does understand that regional health information exchanges did _miss-_understand their old directive to use "Direct" means "Not Exchange". So to get this message converted to "**Direct is minimal, Exchange is acceptable**" would be a good outcome. To get Exchange listed as 'preferable' would be extraordinary.

In the mean time, there are plenty of regional Health Information Exchanges, and consortium of very large organizations, going forward with the Exchange specifications. They are doing this because it is the right thing for them to do, and being one of the 'big guys' just proving that they don't need father ONC to tell them what to do. In doing this they are proving the technology, and [developing the policies](http://healthcaresecprivacy.blogspot.com/2011/09/draft-affinity-domain-policies.html).

