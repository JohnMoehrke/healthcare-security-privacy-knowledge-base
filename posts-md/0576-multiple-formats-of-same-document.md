# Multiple formats of the same Document content

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/03/multiple-formats-of-same-document.html
Published: 2017-03-03T14:24:00Z
Updated: 2017-03-03T17:51:29.939Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiTFrcgdTHYETyuVl-wKhEyTE4uadzJ2-y8PGezXbHiqZJXyOMvrlzMzc2LnnP_VU3tRpoxtfoZSiNo-aQhe8SNUqjQIDbmVdC4_h7AtkAQKXL5WJ8ZwJ4Z45y0ji_7uX9hrUa7Ow7CKt21/s1600/Slide2.PNG

I propose that â€œThe most technically advancedâ€ document format be considered the Prime, with all of the other formats considered Transforms (XFRM) from that prime document.  Thus if the Document Source can create a C-CDA 2.1; then that becomes the prime. Yet if a Document Source only can create a C32 and PDF, then the C32 would be the prime. In this way, regardless of if the secondary formats were actually derived from that prime document, they would be Registered as if they were. This enables a Document Consumer to follow the XFRM link to the Prime without needing to understand all the formats presented. The Document Consumer can also follow the XFRM links down to all the â€˜equivalentâ€™ formats to discover those to choose from.

details.....
Now that C-CDA 2.1 is emerging, the following situation becomes more prominent. The situation is that the same content could be encoded in various document format types.

- How do you publish in XDS/XCA a set of documents that cover the same content but are different in their encoding format?

- How do Content Consumers perceive when they find a set of documents that seem to cover the same content but are different encoding format?

- How do we prevent miscommunication, or misinterpretation, or worse duplicate attribution.

Various document encoding formats:**
**

specification

year

mime-type

format

C-CDA 2.1

2015

text/x-hl7-text+xml

urn:hl7-org:sdwg:ccda-structuredBody:2.1

C-CDA 1.1

2013?

text/x-hl7-text+xml

urn:hl7-org:sdwg:ccda-structuredBody:1.1

CCD

2007

text/xml

urn:ihe:pcc:xphr:2007

C32

2007

text/xml

urn:ihe:pcc:xphr:2007

CDAR2 structured

2005

text/xml

CDAR2 unstructured

2005

text/xml

urn:ihe:iti:xds-sd:pdf:2008

FHIR Document

2017

application/fhir+xml

application/fhir+json

PDF - rendered view of C-CDA using publishers stylesheet

2001

application/pdf

XDS-I

2005

application/dicom

CCR

2005

application/x-ccr

Bluebutton text

2013

text/plain

**
**

As you can see, C-CDA 2.1 is not really special, but it happens to be the thing that has just released and C-CDA 1.1 are laying around. As proof, FHIR Documents will re-open this discussion. Especially with the [CDA-on-FHIR](http://wiki.hl7.org/index.php?title=C-CDA_on_FHIR) efforts.  Thus although C-CDA 2.1 isnâ€™t special, it is a nexus today.

 Example using a Discharge Summary:
As an example of a document that might need to be published in multiple formats is a Discharge Summary for an Episode of Care. This use-case is the most clear as to why the very same content might be made available in multiple formats. Other document types are also possible.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEij9PQKXYOCTm1-otUsqcqlM9GQruyOSmJsgeJVa4HmOaYT-kd8sECtSbRfzC8Quz8wNSsZKa-X_0mn5c2Iz_8X9GTj12hoDfClpigi7JLZxADN2ecPrAig-iq64jnmYtW0jYs1eZiLM75G/s1600/Slide3.pngWhy publish multiple formats?
The main reason to publish multiple formats is for the benefit of various Document Consumer systems. Given a Health Information Exchange, or Nationwide Health Information Exchange, there will be a variety of capabilities and use-cases for the hundreds-thousands of various Document Consumers. Some of these Document Consumers might not be updated at each revision of the C-CDA specification, thus they can only consume an older format.

All this for the benefit of the Document Consumer, but it creates a problem for the Document Consumer too. How do they know that the very same content is represented in the different formats, vs that the different formats are actually about different content? Ideally they would have some way of discovering this short of retrieving all documents and comparing them.

A user should not be bothered by making a choice between various encoding formats, all for the same content. It would be best if the Document Consumer could automatically pick the â€˜bestâ€™ format. This pick, might be:

- simply because that Document Consumer only supports one format. Example might be an old piece of software that can only consume C32 (aka XPHR).

- might be because a Document Consumer is able to render one format better than another format for a given context. For example, a patient view versus a clinical view. A Patient Generated Health Data (PGHD) CDA document vs a CCDA CCD.

- might be a good workflow reason to show a PDF rendered view, as that specific rendered view was that of the Document Source (publisher).

Not rewriting history
It should be noted that I am not talking about going back in history to create more formats of documents previously published. Revising history is against medical-records principle.

Those old formatted documents must forever be supported by Document Consumers. That is to say that a Document Consumer should never remove the functionality it has to consume older formats.

What I am focused on here is the front-edge of standards advancing. What happens as â€˜newâ€™ formats become supported by Document Source. And how to best support Document Consumer needs.

Potential Solution
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjDS5U21pinBZLKVYBkvP9abO99MytO8mnoJySVRKzwdWagtRgLWSG6JunEurKechFaEin8m7iPfPp8W8B4dwt_aOiJFJAlAirOF2RC0uh-PVgGBHgBZaUAllvtkEYMNn_NDj-EB2iWMlWu/s1600/Slide1.PNGIt would seem that the closest representation in XDS is the transform (XFRM) association, because it means two representations of the same information, as opposed to RPLC, APND, etc. However, it may not always be right to say one is a transformation of the other. They could all have been created at the same time, from the same underlying EHR data, simply for the purpose of satisfying the largest range of clients. In this case, which one is prime?

That said, a Transform (XFRM) association in XDS does have a directionality component. It has a source side, and a transformed side. Thus to

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiv3SZ0rRKFF8RSU5Vea7ix34wySRpATwvPfunjpdqVRd32XXXBY7KkYHXw8ahCBmwMBXtan_eoZqchUaqcf3B2kjdmh27mHONoN3-9MQa6K05rrm0cAObGIPnBwcqDJySFLvxGnlpS57EU/s1600/Slide2.PNG

use the Transform (XFRM) association we need to determine a directionality. I look to IHE PCC and IHE ITI to see if there is a precedent. There is similar use of Transform (XFRM) in XDS-SD, and also APPC. In both documented cases the directionality component is left to â€˜local policyâ€™. So it would seem that the IHE committees have not yet decided.

I propose that â€œThe most technically advancedâ€ document format be considered the Prime, with all of the other formats considered Transforms (XFRM) from that prime document.  Thus if the Document Source can create a C-CDA 2.1; then that becomes the prime. Yet if a Document Source only can create a C32 and PDF, then the C32 would be the prime. In this way, regardless of if the secondary formats were actually derived from that prime document, they would be Registered as if they were. This enables a Document Consumer to follow the XFRM link to the Prime without needing to understand all the formats presented. The Document Consumer can also follow the XFRM links down to all the â€˜equivalentâ€™ formats to discover those to choose from.

This all said, there could be some policy reason why a different format is considered to be the prime by the Document Source. For example that the Document Source publishes in C-CDA 1.1, and uses a stylesheet transform to produce the C-CDA 2.1. This said, a Document Consumer should be able to rely on the top most (Prime) Transform as the most complete and accurate.

Robust Document Consumer
Given that whatever guidance we advocate would be adopted over time and not uniformly,  a Document Consumer needs to handle whatever is available, and be robust to formats that are not understood. Unfortunately, there is probably not a fully deterministic way to go. For example, a given Document Source might adopt this guidance but other Document Source might not, so some but not all equivalent documents would have associations.

Unresolved technical issues:
The various formats are not fully equal. Clearly a PDF format doesnâ€™t carry the fidelity of data that a C-CDA 2.1 can. There might be use case where this difference is not a problem, but any loss of fidelity is potentially problematic. Thus there must be some recognition that the various formats might all be â€œTransformsâ€ (XFRM), but are not equal.  This is why I recommend the prime be the most technically advanced, so that the number of hops away from the prime is an indication of potential loss of fidelity.

There is no obvious metadata place for this â€˜completenessâ€™ or â€˜accuracyâ€™ or â€˜integrityâ€™ evaluation recognition to be placed. There are Vocabulary available in the Value-Set (integrity) recommended for ConfidentialityCodeâ€¦ I am not yet ready to recommend this.

Conclusion
This is just a recommendation. It might kick off a discussion in IHE to write similar recommendations. Not clear if this is a ITI or PCC responsibility.

**Attribution**: Tone Southerland and Joe Lamy both helped me with the content. Thank you!

Keith covered this in a _**different **_**_way _**back in 2009. focused more on template inheritance -- [Template Identifiers, Business Rules and Degrees of Interoperability](http://motorcycleguy.blogspot.com/2009/09/template-identifiers-business-rules-and.html) -- with a cool graphic

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhbT6nh_iptENdnfwlKmPMrhon4e-qk0sjQABb25_-DPKGVP1ta_uNaUnODm_r7LZixXb-xrTnZzqbl0KxwmQLIFBWgH4K-bkHkV08KxyxLaakmdYPWHWUTI9XxqbOF9ZOhp7Y4W0pVj04/s400/TemplateInterop.PNG

