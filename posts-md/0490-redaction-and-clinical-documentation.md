# Redaction and Clinical Documentation

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/08/redaction-and-clinical-documentation.html
Published: 2010-08-11T13:21:00Z
Updated: 2010-08-11T13:21:29.850Z
Author: John Moehrke

---

I seemed to touch a nerve yesterday in my blog about  [Data Classification -  a key vector enabling rich Security and Privacy controls.](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html) A minor part of this blog was a few paragraphs where I laid out a way to produce related documents that would have different Data Classifications. The main goal was to show that documents could be transforms that have lesser content thus resulting in a lesser sensitivity. IT seems that I hit a nerve ([Data Classification, Redaction and Clinical Documentation](http://motorcycleguy.blogspot.com/2010/08/data-classification-redaction-and.html))  in [Keith Boone](http://motorcycleguy.blogspot.com/), who I always defer all CDA discussions to. But, like Keith yesterday, who said he defers discussions of Security and Privacy to me, then goes on to make statements about Security and Privacy; I will do similar.

My post yesterday was about the original author making privacy informed decisions to post a second document that is a logical transform of their original document. This surely could be assisted by technology, but I was not trying to say that this would be automatic. I am, just like Keith, concerned with CDA documents that are built by an automated process without a clinical human involved.

I am not going to claim that there is no use for a CDA document or an automated transform of a CDA document. Seems to my non-clinician mind that knowing something is better than knowing nothing; especially if you are well informed that what you are given is less than total knowledge. The Author of a document is a very important part of the metadata on or in a document. Surely an automatically generated document needs to be authored by the computer that generated the document.

I have seen a [presentation Dave Riley did at OSCON on the CONNECT](http://www.youtube.com/watch?v=r_XohDSQ44M)project where I heard of a [Redaction Service](http://developer.connectopensource.org/display/CONNECTWIKI/Redaction+Engine%20%20). I looked into this Redaction Service, and it turns out to be exactly that service that Keith and I are worried about. It claims to be able to automatically apply privacy rules to strip out sensitive content. I applaud the CONNECT project for trying, but I am very worried that the risks of this approach are not being made fully clear. These risks are no just Privacy risks, but clinical risks, safety risks, integrity risks, and other. I certainly hope that the resulting CDA document is authored by the CONNECT Redaction Service and does NOT indicate that it is authored by the original author. It is clearly a NEW document.

