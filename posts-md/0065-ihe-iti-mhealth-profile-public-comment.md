# IHE ITI mHealth Profile - Public Comment

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/06/ihe-iti-mhealth-profile-public-comment.html
Published: 2012-06-06T00:25:00.001Z
Updated: 2014-08-05T18:16:07.941Z
Author: John Moehrke

---

**Updated August 2014 -- IHE is updating the MHD profile to align with FHIR (DocumentReference, DocumentManifest). Please refer to the IHE Wiki [MHD Status page](http://wiki.ihe.net/index.php?title=MHD_Status) for current information. Also see the [mHealth](http://healthcaresecprivacy.blogspot.com/p/topics.html#mHealth)topic for updated blog articles.**

The IHE IT Infrastructure domain has [published one new supplement for Public Comment](http://www.ihe.net/Technical_Framework/public_comment.cfm#IT). The supplement is formally â€œMobile access to Health Documents (MHD)â€, but is often referred to as the mHealth profile.

The Mobile access to Health Documents (MHD) profile defines a simplified RESTful interface to an XDS like environment. It defines transactions to a) submit a new document from the mobile device to a document receiver, b) get the metadata for an identified document, c) find  document entries containing metadata based on query prameters, and d) retrieve a copy of a specific document.

These transactions leverage the document content and format agnostic metadata concepts from XDS, but simplify them for access by mobile devices. The MHD profile does not replace XDS.  It can be used to allow mobile devices constrained access to an XDS health information exchange. The following figure shows one possible way to implement MHD with a document sharing environment (that may, but is not necessarily, XDS based). This implementation choice is not mandatory and other architectures will be implemented.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg0KQzlHjFPtN-VlNO_vA5UaCCoM8yWRwRA-w1pb_2oY1J9U6frYEdBg1u44WmDUtJkN3whu1_X5V2GpSdsMkN4KHoKWx8fm9xg34Iud6ZVurQUl8cK-WzSH09qaGTLlbChdfQBrCprMgPS/s1600/image001-789438.png

Figure 1: Mobile access to a Document Sharing environment.

The XDS profile is specifically designed to support the needs of Cross-Enterprise security, privacy, interoperability, and includes characteristics to support this level of policy and operational needs. The MHD profile has simplified the interactions in ways that are more consistent with a single policy domain use. The MHD transactions are not specifically tied to XDS, and some of the system implementations envisioned would interface directly to an organizational EHR, or a multi-national PHR.

The following lists a few examples of the environments which might choose to use the MHD profile instead of the XDS profile. The MHD profile supports a broad set of the XDS use cases and functionality while keeping the technology as simple as possible.

- Medical devices such as those targeted by the Patient Care Devices (PCD) domain or Continua organization, submitting data in the form of documents.

- Kiosks used by patients in hospital registration departments, where it is anticipated that a hospital staff member will review, edit, and approve the document before it is allowed into the hospital system.

- PHR publishing into a staging area for subsequent import into an EHR or HIE.

- Patient or provider application that is configured to securely connect to a PHR in order to submit a medical history document.

- Electronic measurement device participating in an XDW workflow and pulling medical history documents from an HIE.

- A General Practitioner physicianâ€™s office with minimal IT capabilities using a mobile application to connect to an HIE or EHR.

**Technical Details**
The choice for technology are simple HTTP (using RESTful pattern) and JSON for encoding.**
**

RESTful Fundamentals
In order to fit into a RESTful model, we needed to determine what the â€œResourceâ€ was that would be operated on. We naturally first thought about the  Document, but eventually realized that the Resource that is fundamental to XDS is the DocumentEntry, the metadata about the  document. Once we determined that this is the fundamental resource the profile falls very quickly in place.

- The HTTP â€œPutâ€ (POST) operator is used to create a new instance of Document Entry (metadata).

- The HTTP â€œGetâ€ operator is used to get a copy of an instance of a Document Entry (metadata)

Thus we needed to define the URL in a way that works with these operators. We looked at hData and found a general pattern with the patientID low followed by types of objects. IHE already has a unique ID for a DocumentEntry, so the entryUUID was a natural.  Although we havenâ€™t folded hData into the specification, it is likely to happen at the Trial Implementation stage simply because hData brings along already written foundational concepts.

>
**http:////DocumentEntry//**

This works great for DocumentEntry as the resource, but we also need to be able to pull the document it-self. At this point it became clear how to modify our URL to return the Document itself.

>
**http:////Document//**

Not RESTful
The last bit of work is NOT RESTful as it doesnâ€™t really follow the same pattern. It is HTTP based, and it is simple. We needed to bring in a XDS Stored Query, specifically FindDocuments. This was brought in one way, but might change in Trial Implementation. I propose that this is just a special case of the DocumentEntry URL without an entryUUID and with parameters.  But the result would not be a single DocumentEntry, which I think is minor.

>
**http:////FindDocumentEntries?**

DocumentEntry encoded in JSON
We gained much of our simplification through making the XDS metadata flat, and choose JSON encoding as it is favored by many in the mobile space. Plus JSON is different than XML and thus it will be easy to discuss JSON encoding in the context of the MHD profile while XML continues to be the domain of XD*.

Here is an example of a DocumentEntry encoded in JSON (I am sure there are mistakes given that I hand coded it)

{patientID: "144ba3c4aad24e9^^^&1.3.6.1.4.1.21367.2005.3.7&ISO" ,
classCode: {code:" 34133 -9 ",codingScheme:â€œ2.16.840.1.113883.6.1", codeName:â€œSummary of Episode Note"},
confidentialityCode:{code:â€Nâ€,codingScheme:â€2.16.840.1.113883.5.25â€,codeName:â€Normal sensitivityâ€},
formatCode:{code:â€urn:ihe:lab:xd-lab:2008â€,codingScheme:â€ 1.3.6.1.4.1.19376.1.2.3â€,codeName:â€XD-Labâ€},
typeCode:{code:â€â€,codingScheme:â€â€,codeName:â€â€},
Author:{â€¦},
practiceSettingCodes:{code:" 394802001 ",codingScheme:â€œ2.16.840.1.113883.6.96 ", codeName:â€œGeneral Medicine"}
Title:"document title",
creationTime:â€œ20061224â€,
hash:â€œe543712c0e10501972de13a5bfcbe826c49feb75â€,
Size:â€œ350â€,
languageCode:â€œen-usâ€,
serviceStartTime:â€œ200612230800â€,
serviceStopTime:â€œ200612230900â€,
sourcePatientId:â€œ89765a87b^^^&3.4.5&ISOâ€,
mimeType:â€ text/xml â€,
uniqueId:â€ 1.2009.0827.08.33.5074â€,
entryUUID:â€urn:uuid:14a9fdec-0af4-45bb-adf2-d752b49bcc7d â€œ}

OPEN Issues
As a Public Comment version there are many issues that have come up during the development that are not fully locked down. Most of them are due to the learning-curve of the committee. Thus I really want constructive comments on the whole Profile but specifically on these Open Issues. The open issues are far more detailed in the document, they are basically:

- Restricted â€œCreateâ€ to ONE document, with derived SubmissionSet

- No access to SubmissionSet, Folders, and Associations

- Patient ID is needed as part of URL

- Bring in hData as framework and thus ATOM in GET path for multiple entries?

- Conditional get is not supported due to the differences between the semantics of HTTP and XDS concepts of resource age.

- Do we need more on Security, specifically Audit?

- JSON use of anonymous objects or not?

How to Comment?
The IHE IT Infrastructure Technical Committee has [published the supplement for public comment](http://www.ihe.net/Technical_Framework/public_comment.cfm#IT) in the period from June 5 through July 5, 2012. Comments submitted by July 5, 2012 will be considered by the IT Infrastructure Technical Committee in developing the trial implementation version of the supplement.  On the same web site is the instructions for submitting comments.

**Updates:**

I have covered Security in some past articles [Securing RESTful services](http://healthcaresecprivacy.blogspot.com/2011/09/securing-restful-services.html) and [Securing mHealth - the role of IHE profiles](http://healthcaresecprivacy.blogspot.com/2011/09/securing-mhealth-role-of-ihe-profiles.html).

