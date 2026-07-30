# Critical aspects of Documents vs Messages or Elements

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/10/critical-aspects-of-documents-vs.html
Published: 2011-10-25T11:30:00.004Z
Updated: 2011-10-25T11:30:45.822Z
Author: John Moehrke

---

When IHE first was looking at the Cross-Enterprise space, the idea of building an exchange between organizations we looked at many different factors. These factors are not well documented, this is clearly something that we failed to notice. One of the critical decisions we made was around the object that would be managed in this Cross-Enterprise space. At the time it was not clear what would be the best approach.

We needed to pick an object size that was big enough to be manageable, without being so big so as to be cumbersome. One possibility was to take the approach of the HL7 V3 RIM, that is break down everything into the element level. This has some real advantages when it comes to â€˜useâ€™, but it presents great challenges when it comes to input, security, privacy, and provenance. The most hard to handle is the  provenance question. For every element must be traceable back to who submitted it and when. This quickly becomes a case of more metadata than data. This could easily be 10 times more data about the data than the underlying data it-self. The other big concern is the context of the data. A lab value may be understood by the doctor that ordered it, because that doctor remembers the context of the lab order. But 20 years later it will not be clear that there were extenuating circumstances around the order.

At the time there was the CDA vs CCR wars. Even though there was strong support for CDA within IHE, we didnâ€™t want to lock ourselves to CDA. Another way to look at this was to recognize that there are clearly needs to manage DICOM reports and a recognition that much of the paper would simply be scanned into PDF documents. Thus we knew we had to be very content agnostic. We did however need to pick an object size, and the one represented by CDA, CCR, DICOM SR, PDF, and others seemed better than the element level. The XDS infrastructure ultimately put one condition, that the object is [defined by a MIME-TYPE](http://healthcaresecprivacy.blogspot.com/2011/08/metadata-got-questions-here-is-my.html).  There is a small set of other metadata, and it is true we derived much of that [metadata from the CDA header](http://healthcaresecprivacy.blogspot.com/2011/08/metadata-got-questions-here-is-my.html).

Specifically there are some well-defined attributes of a CDA Document that become really useful when we look at Cross-Enterprise HIE, especially when we recognize that this is not just Cross-Enterprise but also longitudinal. We needed an object size that could stand up to the test of time. Surely CDA will come and go, but the concept of a Document as a sustainable object will continue.

Some good discussions of the CDA Document characteristics can be found in the HL7 CDA standard (shown [here in the 2008 ballot](http://archive.hl7.org/v3ballotarchive/v3ballot2008may/html/domains/uvcd/UVCD.htm#spec-dam)), or in the CDA Release 2:

**
[What is the CDA](http://archive.hl7.org/v3ballotarchive/v3ballot2008may/html/infrastructure/cda/cda.htm#What_is_the_CDA)**

The HL7 Clinical Document Architecture (CDA) is a document markup standard that specifies the structure and semantics of "clinical documents" for the purpose of exchange. A clinical document is a documentation of clinical observations and services, with the following characteristics:

Â·         **Persistence** â€“ A clinical document continues to exist in an unaltered state, for a time period defined by local and regulatory requirements (**NOTE:** There is a distinct scope of persistence for a clinical document, independent of the persistence of any XML-encoded CDA document instance).

Â·         **Stewardship** â€“ A clinical document is maintained by an organization entrusted with its care.

Â·         **Potential for authentication** - A clinical document is an assemblage of information that is intended to be legally authenticated.

Â·         **Context** - A clinical document establishes the default context for its contents.

Â·         **Wholeness** - Authentication of a clinical document applies to the whole and does not apply to portions of the document without the full context of the document.

Â·         **Human readability** â€“ A clinical document is human readable.

It is very true that these are not guaranteed as part of an instance of CDA, an implementation can always produce garbage. But these characteristics are used as guiding principles in the design of CDA.

I think these same characteristics are generally available in all document formats. At least they should be if you are going to put that document into a longitudinal exchange. The way that DICOM SR does this is different than CDA, but the differences are not important. The fact that PDF is just a blob doesn't prevent these characteristics from being true. They usually are true of paper documents (aka Reports), that might be scanned into a PDF. Thus although CDA was a guiding document type, it is not core to XDS. Any document can be exchanged using XDS.  For example IHE is profiling a [new document that is based on OASIS specifications](http://ihe%20it%20infrastructure%20cross-enterprise%20workflow%20supplement%20ready%20for%20trial%20implementation/)and didn't exist before, and XDS will work just fine.

The fact that we start with Document as the size of an object today does not forbid us from going smaller. It does give us an object size that is reasonable and achievable. The fact that we use Documents also does not forbid us from decomposing them for use in a Clinical Decision Support system. A patient could authorize a CDS service to import all registered documents, decompose them, and create a clinical information database. I think it is more reasonable that these decomposed databases would be authorized by the patient to a service the patient uses regularly. This might be their PHR or it might be the EHR or their GP. As this service becomes more defined and mature the PHR and EHR might share an instance.  See: [Access Controls on Clinical Decision Support](http://healthcaresecprivacy.blogspot.com/2011/03/access-controls-on-clinical-decision.html)

See:

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Patient access to Radiology](http://healthcaresecprivacy.blogspot.com/2011/10/patient-access-to-radiology.html)

- [One Metadata Model - Many Deployment Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html)

- [Can an HIE forbid copies?](http://healthcaresecprivacy.blogspot.com/2011/08/can-hie-forbid-copies.html)

- [Stepping stones for Privacy Consent](http://healthcaresecprivacy.blogspot.com/2010/08/stepping-stones-for-privacy-consent.html),

- [Data Objects and the Policies that Control them](http://healthcaresecprivacy.blogspot.com/2011/01/data-objects-and-policies-that-control.html),

- [Consent Management using HITSP TP30](http://healthcaresecprivacy.blogspot.com/2010/10/consent-management-using-hitsp-tp30.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls.](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [The Direct Project and IHE/HIMSS](http://healthcaresecprivacy.blogspot.com/2010/11/direct-project-and-ihehimss.html)

- [Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)

- [ConfidentialityCode can't carry Obligations](http://healthcaresecprivacy.blogspot.com/2010/09/confidentialitycode-cant-carry.html)

- [Directed Exchange vs Publish/Discover Exchange](http://healthcaresecprivacy.blogspot.com/2010/10/directed-exchange-vs-publishdiscover.html)

