# FHIR data in existing Nationwide Health Information Exchange

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/08/fhir-data-in-existing-nationwide-health.html
Published: 2021-08-10T12:18:00Z
Updated: 2021-08-10T12:18:13.514Z
Author: John Moehrke

---

In the USA and elsewhere, there are [Document Sharing based Health Information Exchanges](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html). These exchanges have been built up over the past ten or so years. They have security models, privacy models, patient identification models, record location models, and data format models.  They also have mature testing tools, events, and have been specialized for many projects.

The solution is to leverage this existing solution, and just add FHIR.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh1myp_vgpPajqAC3o7l0cQTIkfbRtNvnRwQXmksc2it6P2k5ndMuvIZcQ94VhdipZzcGuUyHd1vl8_KtNao-v0Z5J6NRtgVhaHtzWYie9d88xB-EslEujWDXbZJY7pwQr8moUiETpQwBsM/s1280/manyMimeTypes_oneFormatCode.png

The exchanges in the USA include a PUSH model as well as a Query / Retrieve model. The PUSH model is used to convey information to a specified recipient. This can be done by way of the [IHE-XDR](https://profiles.ihe.net/ITI/TF/Volume1/ch-15.html) protocol or the Direct Project (which uses [IHE-XDM](https://profiles.ihe.net/ITI/TF/Volume1/ch-16.html)). The point I make below applies here, but I am not going to focus on PUSH models, simply for simplifying the message.

Nationwide Federated ExchangesThe Query / Retrieve models are based on the [IHE-XCA](https://profiles.ihe.net/ITI/TF/Volume1/ch-18.html), which is a federated query model that is designed to enable query of various types of patient data among a federation of partners. This model is used at the state level, and has three flavors at the national level, with interoperability between them... Thus a Federation of Federations.

Both the PUSH and the Query/Retrieve models today are dominated by the

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEihYLKaZ5lCRt2ish4UjOTx12ysiQ_-KVWe2SXJFxwZdMCTWHyQAkLe-qSDheMKcTfFIjDS9PJvY-xUiTWFGlr7mKLwlxNUfOgnrXTZiwbk-33vkLT4-vKhfvtjpz0os6_qe0N05ZXR8xU5/s1280/Slide1.PNG

C-CDA content specification. This is a good specification, and many organizations have gone to great lengths to build up their skills at creating the C-CDA, and also at consuming the C-CDA. Thus many want to continue to use CDA to preserve this investment. My point in this article is that this does not need to be a restriction on those that do want to move on to FHIR.

Ready for anything

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEja6MBPnW1OWoMgylwjewQMNeyU5wr8uUG4uAE79g5XixYW1A4Yecq-warQ9VlJlXjUK_sInKgRR7elMNiUffqDakiofdD-N0XWlhJjmXUMF5WCI_bVFUDGWBEUY5LZVg09ZmXL7DGwkgtO/s927/Document+Sharing+Metadata-737470.jpg

The IHE-XCA implementation guide is designed to be content agnostic, focusing on a set of metadata that describes the document. These metadata are well talked about. They are designed to be minimal, yet powerful. Defining who the Patient is, Who the Author is, where was the content created, why was the content created, what are the privacy considerations, what are the relationships to other healthcare workflows and things.

The metadata is not specific to CDA. Indeed the metadata schema was defined back when CDA was just emerging, when there were other content formats that might have become dominant. So the design of the metadata planned for a future when different formats would exist.

And, where the exact same content might be needed in two or more different formats. There is a specific type of relationship between metadata entries to indicate that the two content objects have the same context, with just a different technical encoding.

Just add FHIRFHIR is a content format. There are Implementation Guides already published for a "Medical Summary" that is using the FHIR content format encoding. The[International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/) is a FHIR Document that covers the same need as the C-CDA Medical Summary. Thus for those that want a FHIR content format, the choice would be the IPS rather than the C-CDA.  [IHE has provided an Implementation Guide that takes the IPS content and explains how to communicate it within the Document Sharing infrastructures](https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_Suppl_IPS.pdf). So IPS over XCA.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgpVZVnVB4_v-iwb4c4JCxnoyeR69zYAyWL6mEW122Nlq5z-Xcv0HIovOpcqg9uAt361QT-njA3OE54QMyCr8d5TonO_LJanyQe1xyuBM0wyDsc56dhh4AI-_YqySrCXIwBtSacnn_d1aTH/s1280/Slide2.PNG
Transition with no disruptionThe best part is that the transition from everyone using C-CDA to everyone using IPS can be easy. There needs to be no change to Patient Identity, Security, Privacy, Records Discovery, Records Retrieval. By Just adding FHIR, the whole nationwide exchange that is functioning today just works.

Those organizations that can publish an IPS, just indicate in metadata entries that they can also provide an IPS. Those organizations that would prefer to consume an IPS, can detect those that are willing to provide an IPS. This addition of FHIR does not get in the way of those that are stuck in the C-CDA encoding. But it automatically enables those that want to speak FHIR.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh1myp_vgpPajqAC3o7l0cQTIkfbRtNvnRwQXmksc2it6P2k5ndMuvIZcQ94VhdipZzcGuUyHd1vl8_KtNao-v0Z5J6NRtgVhaHtzWYie9d88xB-EslEujWDXbZJY7pwQr8moUiETpQwBsM/s1280/manyMimeTypes_oneFormatCode.png

The key is that there is an association between the C-CDA and the IPS content to indicate that they are about the same context, just different encodings. This association is shown above as a linkage between the FHIR content (IPS) and the CDA content (CCDA). In this diagram the C-CDA content is the master, but it does not need to be that way. An organization could focus on creating FHIR content and have a derived C-CDA for those partners that need C-CDA. This is all about making the transition smooth.

ConclusionThe existing nationwide networks provide many capabilities that have matured over time and are working, we should leverage this. The design of XCA is such that this transition is possible with no disruption, just add FHIR.

The use of FHIR in the existing networks does not mean that we should give up on designing solutions that use FHIR RESTful API. I encourage this too. This setting will need to solve for all of the capabilities that the existing nationwide networks have already solved for, so it will take some time, but it will eventually work.

My message is that the existing networks can be better, just add FHIR.

See the [HIE-Whitepaper - section 2.7 Document Relationships](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html#27-document-relationships) where this is discussed.

