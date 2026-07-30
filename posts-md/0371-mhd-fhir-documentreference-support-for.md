# MHD (FHIR DocumentReference) support for Repositories and Communities

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/08/mhd-fhir-documentreference-support-for.html
Published: 2017-08-02T17:38:00Z
Updated: 2017-08-03T17:53:28.944Z
Author: John Moehrke

---

The MHD profile is a RESTful API for Document exchange. One use is to use it as a more simple API for discovery and use of Document in a Document Sharing environment such as XDS or XCA. The MHD profile shows this in abstract terms, but abstract diagram does not show a complexity that implementers will be faced with. I have taken those diagrams, and cut them to show only the Document Consumer side. I have also augmented them to show the reality.

XDS and XCA Reality is multiple
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg8lL-IQ75SPlZ-n0fiFtDlhusv2M0-Z6fkxxhffsbIkkqUPWPeiU3yhLsnXhC52kQkgJ8qaGrwrAstSt-i9cNEQ4Q7dYNDWHyuvxukSLV7qgUzvoazTFCuC40KfKjrdgCZfc-Fw7D4Ssxx/s1600/Slide2.PNG
The reality is, that within an XDS [Affinity Domain](https://healthcaresecprivacy.blogspot.com/2017/05/clarification-of-affinity-domains.html), there will be many Document Repositories, each will have their own "**repositoryUniqueId**". The [XDS model](https://healthcaresecprivacy.blogspot.com/2014/03/health-information-exchange-centralized.html) allows for multiple Repositories to support environments where each authoring system wants to hold onto their documents until they are Retrieved for use. In XDS, a Document Consumer must know both the **documentUniqueID **and the **repositoryUniqueId **in order to do a ITI-43 Retrieve Document Set-b transaction.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhA0CyW8N64k7ga-7b5DHTSXWlp1wp9EWGvKCboWZ_ercp8mh-Vg4hWI4EiikzKatZD-teHlu7H_6I34IJ1L0O2ClcAPBKkcC21MgRudGVzLvE_cAwzqTSvK2lM2DE-TuEbcLwPdwhaCKS1/s1600/Slide3.PNG

Similarly XCA is a "Federation" of "Communities", and thus there are many Communities. Therefore reality in XCA, is that the **documentUniqueId**, **repositoryUniqueId**, and **homeCommunityId **is needed in order to do a ITI-39 Cross Gateway Retrieve. Note that ITI-39 has a degenerate form that s ITI-43, which can also carry the homeCommunityId. This all recognizes that in XCA one must know which community holds the document, and possibly what repository within that community (Another deployment model where a Community is an XDS Affinity Domain).

Where does the **repositoryUniqueId**, and **homeCommunityId **go in the DocumentReference Resource?
I have been asked this question multiple times. There is no place in DocumentReference for these two values. This is intended, and there is no need to add an extension.

The MHD Document Consumer never needs to know these two values. They are not helpful to evaluating the metadata. All the metadata that is necessary is in DocumentReference.

However when a MHD Document Consumer requests a document, the MHD Document Responder must know these values in order to appropriately execute the ITI-43 or ITI-39. So where does the Document Responder get these values?????

Parameter Solution
One possible solution is that the MHD Document Responder encoded them into the URL used for the document Retrieve transaction.....   Let me explain...

The Document Responder is in complete control of the DocumentReference.content.attachment.url. It can put any valid URL into this element. The MHD Document Consumer is told it must simply execute a GET using that URL.

So, one could use a ["?" Query String](https://en.wikipedia.org/wiki/Query_string)

**[base-url]/MHD_RetrieveDocument/?repository=&community=**

**
**

**Long Identifier Solution**

Elliot suggests a different solution that might fit better a 100% MHD solution, that has better round-trip consistency between the MHD Provide Document Bundle [ITI-65] transaction and the Retrieve Document Set [ITI-43]. This solution does keep with using "Binary" for the document bits. This solution just strings along the various unique identifiers in sequence.

**[base-url]/Binary/ + "_" +  [+ "_" + ]**

**
**

During the Provide transaction there would be no homeCommunityId, or it would be very unusual.

Other Solutions
Other solutions are possible. With this solution everything that a Document Responder needs is handy, thus the DocumentResponder does not need to reference internal data. Holding internal data in a server is an alternative, but requires the DocumentResponder be stateful.

Security Considerations
The URL should not be interpreted as authorization. That is the Document Responder, and any services behind the Document Responder, needs to do authorization checks on every access request. One must be robust to a client manipulating the URL to point at different documentUniqueId, repositoryUniqueId, and homeCommunityId.

Conclusion
There is no need for extensions, no need for these values to be in the DocumentReference for MHD to work properly. However some software/system design is needed to make a working DocumentResponder. The solution I offer is just one possibility. One that I think is elegant.

Questions, Comments, and Criticism welcome.

**UPDATES Since original post:**

- Thanks to Elliot for pointing out my failure on "#" fragment.... I changed it to "?"

- Thanks to David for recommending against use of "Binary" as unnecessary and possibly confusing

- Thanks to Elliot who convinced me to formally recognize his "_" solution given that it is likely more consistent with FHIR RESTful model.

