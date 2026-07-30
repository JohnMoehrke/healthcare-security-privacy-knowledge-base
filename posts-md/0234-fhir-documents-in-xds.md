# FHIR documents in XDS

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/01/fhir-documents-in-xds.html
Published: 2017-01-10T18:10:00.001Z
Updated: 2017-01-10T18:17:39.123Z
Author: John Moehrke

---

How does one put a FHIR Document into XDS?

How does one find a FHIR Document in XDS?

Both questions are asking very similar things. The key is the XDS fundamental metadata element mimeType. Let me explain...

XDS, more broadly the whole Document Sharing family, including [XDS](http://wiki.ihe.net/index.php/Cross_Enterprise_Document_Sharing), [XCA](http://wiki.ihe.net/index.php/Cross-Community_Access), [XDR](http://wiki.ihe.net/index.php/Cross-enterprise_Document_Reliable_Interchange), [XDM](http://wiki.ihe.net/index.php/Cross-enterprise_Document_Media_Interchange), and [MHD](http://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents). With a set of more narrow IHE Profiles in [DSUB](http://wiki.ihe.net/index.php/Document_Metadata_Subscription), [MPQ](http://wiki.ihe.net/index.php/Multi-Patient_Queries), [SeR](http://wiki.ihe.net/index.php/Secure_Retrieve), and [MU](http://wiki.ihe.net/index.php/Metadata_Update).

To learn more on Document Sharing, start here:  [Eating an Elephant -- How to approach IHE documentation on Health Information Exchange (HIE)](https://healthcaresecprivacy.blogspot.com/2013/12/eating-elephant-how-to-approach-ihe.html)

So the Document Sharing family is a Content Agnostic mechanism for sharing Patient specific Documents. Where the only thing that fixed is that this is an exchange for

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgHknnKdxk6XVMyz9hxzcJ8SxddZqn8hYVjZJhRH4m0Odrbqi5fr7sLDPgyoDIF23olqpVOWaXP-Jd9yPsLwADLFn6N-vqE1Gl_kfrCcCwr1ReUvR935vYQHrUlvElznFXUGf7eVg6zaeR4/s1600/Document+Sharing+Metadata-737470.jpg

- Patient Specific content -- so all the documents must be about a specified patient

- Document format -- so it is not a REST server.

Metadata -- all the other metadata in XDS is there to help with searching or navigating through the documents than have been shared to find the right one to retrieve.

Initially Document Sharing was about 'historic' documents. That is a document is published, and in the future it can be discovered and retrieved. Thus the Document is "Shared".  Later it gained support for "On-Demand" documents. That is a document that is created when it is retrieved. An On-Demand document is still a document, it is just created a the time it is retrieved, and thus contains the current knowledge about that patient at the time.  Both of these might still be needed for FHIR Documents.

FHIR is more popularly known for the access model using http REST. That is where there is a server that holds current version of the knowledge. Systems can "Create", "Read", "Update", and "Delete" (CRUD) the knowledge using the https protocol.

FHIR has a [Document model](http://build.fhir.org/documents.html). It is abstractly very similar to CDA, but uses all the more simple Resources and Encoding that FHIR has to offer. A FHIR Document is contained in a Bundle, and has a [Composition](http://build.fhir.org/composition.html), and all kinds of other stuff.  There is also a workgroup creating transforms from/to CDA -- [CDA on FHIR](http://hl7.org/fhir/us/ccda/index.html). I am not here t give a tutorial on [FHIR Documents](http://build.fhir.org/documents.html), but need it clear that FHIR has the [Document](http://build.fhir.org/documents.html)concept.

This is where the question comes from... If I have a FHIR Document, how would I publish that into XDS? If I want FHIR Document, how would I find them in my XDS system?  -- or more broadly any of the Document Sharing, because this applies to XDM (Direct Secure Messaging), and other...

So the FHIR Document, is Patient specific... so it should be clear how the Patient identity is related.

Key to FHIR Documents in XDS

The key is that XDS has a metadata element "mimeType". It is this that is the differentiates CDA from FHIR. So for a FHIR document the mimeType is either going to be:

- XML: application/fhir+xml

- JSON: application/fhir+json

FormatCode might be more powerful

The XDS formatCode holds the indicator of the technical format that the document follows. This is most of the time a URN that is defined in an IHE Profile, or other external body. This is very possible with FHIR Documents too.

I expect a set of FHIR specific "Implementation Guide", which is FHIR concept of an IHE Profile. of FHIR Documents to happen, these 'profiles' would have FHIR 'StructureDefinition' based constraints. The unique identifier for that StructureDefinition would go into the formatCode.

All the other metadata simply explain the content.

All the other metadata is just as applicable to a FHIR Document is it is to CDA, PDF, DICOM, or any other format. Note that XDS is happy to carry proprietary formats like WORD too.

More reading [Document Sharing Management (Health Information Exchange - HIE)](https://healthcaresecprivacy.blogspot.com/p/topics.html#HIE)

- [IHE #FHIR profiles - MHD, PDQm, and PIXm](https://healthcaresecprivacy.blogspot.com/2016/06/ihe-fhir-profiles-mhd-pdqm-and-pixm.html)

- [MHD - Why use of FHIR Contained?](https://healthcaresecprivacy.blogspot.com/2016/06/mhd-why-use-of-fhir-contained.html)

- [IHE FormatCodes are mandatory](http://healthcaresecprivacy.blogspot.com/2015/10/ihe-formatcodes-are-mandatory.html)

- [In Wisconsin we have Interoperability](http://healthcaresecprivacy.blogspot.com/2015/05/in-wisconsin-we-have-interoperability.html)

- [What is MHD beyond XDS-on-FHIR?](http://healthcaresecprivacy.blogspot.com/2015/03/what-is-mhd-beyond-xds-on-fhir.html)

- [Health Information Exchange: Centralized, Federated, or Distributed](http://healthcaresecprivacy.blogspot.com/2014/03/health-information-exchange-centralized.html)

- [Define](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)[Atom](http://healthcaresecprivacy.blogspot.com/2014/05/atom.html) -- Too many definitions in use today

- [Eating an Elephant -- How to approach IHE documentation on Health Information Exchange (HIE)](http://healthcaresecprivacy.blogspot.com/2013/12/eating-elephant-how-to-approach-ihe.html)

- [Distinction between Documents and Messages](http://healthcaresecprivacy.blogspot.com/2013/11/distinction-between-documents-and.html)

- [Understanding XDS metadata - IHE re-documentation effort](http://healthcaresecprivacy.blogspot.com/2013/09/understanding-xds-metadata-ihe-re.html)

- [XDS Notifications](http://healthcaresecprivacy.blogspot.com/2013/03/xds-notifications.html)

- [HIE Patient Identity problem](http://healthcaresecprivacy.blogspot.com/2013/04/hie-patient-identity-problem.html)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

- [Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/minimal-metadata.html)

- [What is the benefit of an HIE](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html)

- [Karen's Cross or just Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html)

- [HIE using IHE](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)

