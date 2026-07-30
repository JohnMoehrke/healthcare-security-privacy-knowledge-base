# Meaningful Use Stage 2 - Transports Clarified

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-transports_9.html
Published: 2012-09-10T02:36:00.001Z
Updated: 2012-09-10T02:36:17.263Z
Author: John Moehrke

---

I got the answer to the question I have been hoping to ask. The question I asked is: What does ONC think they have specified with the three transports, with the options of (a)+(b) or (b)+(c)? For more detail on how this question comes about see my blog articles: [Meaningful Use Stage 2 : Transports](http://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-transports.html), [Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/minimal-metadata.html), and [Karen's Cross or just Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html). Essentially I wanted to ask the question so that I can understand the desired state. Once I know the desired state then I can help get clarification.

The good news is that the **ONC goal is a very reasonable and very progressive**. The goal is to recognize that basic Direct transport is a good start, but that it is insufficient to support more complex and robust workflows. They recognize that there are many Exchanges using XDR/XDS/XCA including CCC, [Connecticut](http://healthcaresecprivacy.blogspot.com/2012/01/hiehio-governance-policies-and-consents.html), [Texas](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html), and NwHIN-Exchange. Thus they want to encourage, through naming specific options, EHR vendors to reach beyond the minimal e-mail transport down the pathway of a more robust interaction. I speak of this stepping stone approach in a couple of blog posts so I am happy about this. [Stepping stone off of FAX to Secure-Email](http://healthcaresecprivacy.blogspot.com/2012/03/stepping-stone-off-of-fax-to-secure.html), [What is the benefit of an HIE](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html), and [HIE using IHE](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html).

http://wiki.directproject.org/file/view/Karen

I am not going to fully define Karen's Cross, but the whole [Karen's Cross](http://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html) specification recognizes that although one might be able to take an inbound Direct message that is not in an XDM content package, and invent hard-coded metadata for the XDR outbound link; that if the inbound Direct message comes in with XDM content packaging then it comes in with exactly the metadata that the XDR outbound transaction needs. Note that an inbound XDR that needs to be converted to Direct is easy, the XDR content is just encapsulated in XDM and sent over Direct.

Which does remind everyone that Direct does require that you support receiving XDM content; which minimally means you  have the ability to read a ZIP file, and display the INDEX.HTM file that will be on the root of the  ZIP file. Really easy, and almost hard to make not work.

So what ONC wants to encourage is the sending of Direct messages** with the XDM content packaging**. This is a part of the Direct specification, but is in there with conditions that make it only required IF your sending system has the ability to send using the XDM content packaging. So, ONC came up with the first **option [(a)+(b)] to encourage the use of XDM content packaging with the Direct specification**.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkhPYfSqCnYl_tRPv7n9dLeO9U0-bgqHVVNZBypuvkmipZMPzBHTDjZuPB4Tad5DFXcdlxtGZ7NFoPJy14bdGTkCQXzFNd_rB5wz6ERdsQAjNnVoNLuTvT3Lv_ksTgpjdttcAYwyxvaoq4/s1600/Slide17.PNG

The third option - what they call (b)+(c) - is trying to encourage the use of XDR with the specific secure SOAP stack. They could have done this with simply XDR+XUA+ATNA, because that is what the interoperability specificaiton turns out to equal. I would say that the Secure SOAP Transport -- (c) -- is indeed more constrained than ATNA and XUA; as it does force only TLS and has some vocabulary bindings.  The advantage of using including the (c) as a standalone transport, sets the stage for future transports such as a secure HTTP/REST (e.g. RHEx); and by being just a secure SOAP stack they encourage experimentation with XCA/XCPD.

So we now know that the testing for (a)+(b) would be testing the Direct Transport using XDM content packaging; and the testing for (b)+(c) would be testing XDR with mutually-authenticated-TLS and XUA user assertions. This is a good path that I can help ONC get clarified. The diagram above is originally from EHRA and has been used by IHE. I have co-written the [IHE white paper on this topic and presented](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)along with Karen Witting. This is a fantastic result, now the hard part of getting ONC written FAQ; and test plans that hit the right things.

