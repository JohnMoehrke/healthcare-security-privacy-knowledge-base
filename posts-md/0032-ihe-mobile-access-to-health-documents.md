# IHE Mobile access to Health Documents - Trial Implementation

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html
Published: 2012-09-11T03:13:00Z
Updated: 2014-08-05T18:18:53.986Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSOylCVZ1sk9Gjg33D5KkWkhS57fvZo3YYmRcaK8T1PnOuVRZ7hbufr0nJJULZWUhLlmq8ENpOVEMp9Xb8wlA_IlhdLfow2aPgT4digxJ0ixMO73qo75YuoxAV86TBODTknIahUrQFym9w/s1600/image001-736132.png

**Updated August 2014 -- IHE is updating the MHD profile to align
with FHIR (DocumentReference, DocumentManifest). Please refer to the IHE
 Wiki [MHD Status page](http://wiki.ihe.net/index.php?title=MHD_Status) for current information. Also see the [mHealth](http://healthcaresecprivacy.blogspot.com/p/topics.html#mHealth)topic for updated blog articles.**

The [Mobile Access to Health Documents (MHD) Profile](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_MHD.pdf) is now in Trial Implementation. This blog is going to be in the form of a bloginar, webinar given in the form of a blog post. The [source presentation is published and accessible](https://docs.google.com/open?id=0B3l05SpMzl27d1hoenE0ckVGdlk).

**Executive Summary of changes:**

For those that saw the Public Comment. The big changes are (a) the resource is now a DocumentDossier which is more complete than a DocumentEntry; (b) Queries now include parameters for Document, SubmissionSet, and Folder; (c) Queries now return a list of DocumentDossier references in JSON and Atom; and (d) the PatientID is a parameter rather than a URL element allowing for more flexibility.

**The Profile Explained**

The profile has the goal of providing an interface to XDS that would be appropriate for a resource constrained environment such as a Mobile Device. It is not constrained to only be used by mobile devices. It is also not constrained to only serving documents from XDS, and includes descriptions for XCA as well as other environments. The client requirements were to use interface technologies that are the readily available on mobile platforms, thus could be used without a large, or any, footprint on the client side.

This interface clearly needs to work when that Document Sharing Infrastructure is indeed an XDS environment. The MHD profile gets described in IHE Actor/Transaction terms like this

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjvu7H7ogne0zwbz23P_aSNPIkpR0CW-mRVIi3dBw6kIIbgPNp59_ksXVJmsh7Fyao6h2KYgbYPE4f9iIHO5gPrBlQJ37EgpAWQtc5uU8ENK6x-g_aCsTm4du9ClDbv1L-76nzbutAqEoJ/s1600/image003-739369.png

This could be implemented natively on XDS infrastructure or could be supported using proxy services.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjd_GtOV4SYDmfboLe8jA6ULGh6sqTZU-A04TaAl7OB2wG-flSwaedeaF6C-0z-IWOMSVQ0fyQSRP8ppuQ_7jJr8tADygn3IvOqPeYzFfFKG0Xcbk7l6fSPlmf3KzezFZkH0TbYHH1E3mwh/s1600/image004-740773.png

Now the MHD profile is not exactly one-for-one capable with XDS. We eliminated complexity but while doing that we needed to make tradeoffs on the side of simplicity that did eliminate some of the XDS capability.

- the MHD PutDocumentDossier can only publish one new document at a time into a new SubmissionSet.

- the MHD Put Document Dossier cannot be used to replace an existing document or provide a transform

- the MHD Get Document Dossier can get only metadata about one document at a time.

- the MHD Get Document can only pull one document at a time.

- the MHD Find Document Dossiers supports only the OR operator within parameters.

- the MHD Find Document Dossiers returns only references to Document Entries, requiring a MHD Get Document Dossier to retrieve the metadata

- the MHD Find Document Dossiers does not support the XDS Registry Stored Query  GetRelatedDocuments stored query.

Or if you need to provide RESTful access to a much larger network of HIEs, through XCA federation

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi5OA1za8y339UJeKhZY_PuhSt_fz5ysKyP95qb9wmovX1stBG8kgocStfg9V0y_eE-E41f5uu3_xQovOnzOC4sixZ0kv5oKjU0Z99sYxseAp94dVNBbzyFczG50_KHI608YcFGHxEPfGz_/s1600/image005-742659.png

We also recognized that those that would be interested in this profile, or those that we want to be interested in this profile, are more use to looking at interfaces using the HTTP REST methods. So we also published a cross-walk table that translates the REST methods with the IHE Actor/Transaction method

**HTTP Method **




HTTP Method


Transactions on Document
   Dossier


Transactions on Document






GET


Get Document Dossier [ITI-66]


Get Document [ITI-68]




PUT


Prohibited


Prohibited




POST


Put Document
  Dossier [ITI-65]




DELETE


Prohibited


Prohibited




UPDATE


Prohibited


Prohibited




HEAD


Not Specified


Not Specified




OPTIONS


Not Specified


Not Specified




TRACE


Not Specified


Not Specified



One of the big changes we did was to encode the XDS Metadata in JSON. To do this  we flattened it as much as possible, although we did preserve much of the value encodings (Future enhancement).  When we flattened the XDS Metadata we also collapsed the references between objects, representing SubmissionSets, Folders, and Associations inline with the document entry. Thus we created a new object type, a DocumentDossier. It can be seen as:

>
documentDossier:{documentEntry:{â€¦},submissionSet:[{â€¦},{â€¦}],folder:[{â€¦}],association:[{â€¦},{â€¦}]}

Now this is a rather quick jump into JSON encoding, and I am not going to run a JSON encoding school here. But even if you donâ€™t understand JSON completely you can see that a DocumentDossier is made up of the DocumentEntry plus any SubmissionSets that it is referenced by, and any Folders that it is referenced by, and any Associations that it is referenced by. Each of these is just folded into the one object/resource.

Next I give an example of a DocumentEntry. This is more carefully explained in the profile, but I provide it on the blog simply because looking at it is very educational. The XDS Metadata that we are used to, is simply encoded; and flat. An example of a DocumentEntry is:

documentEntry:{patientID: "144ba3c4aad24e9^^^&1.3.6.1.4.1.21367.2005.3.7&ISO" ,
classCode: {code:" 34133 -9 ",codingScheme:â€œ2.16.840.1.113883.6.1", codeName:â€œSummary of Episode Note"},
confidentialityCode:{code:â€Nâ€,codingScheme:â€2.16.840.1.113883.5.25â€,codeName:â€Normal sensitivityâ€},
formatCode:{code:â€urn:ihe:lab:xd-lab:2008â€,codingScheme:â€ 1.3.6.1.4.1.19376.1.2.3â€,codeName:â€XD-Labâ€},
typeCode:{code:â€â€,codingScheme:â€â€,codeName:â€â€},
Author:{â€¦},
practiceSettingCodes:{code:" 394802001 ",codingScheme:â€œ2.16.840.1.113883.6.96 ", codeName:â€œGeneral Medicine"}
Title:"document title",
creationTime:â€œ20061224â€,
hash:â€œe543712c0e10501972de13a5bfcbe826c49feb75â€,
Size:â€œ35â€,
languageCode:â€œen-usâ€,
serviceStartTime:â€œ200612230800â€,
serviceStopTime:â€œ200612230900â€,
sourcePatientId:â€œ89765a87b^^^&3.4.5&ISOâ€,
mimeType:â€ text/xml â€,
uniqueId:â€ 1.2009.0827.08.33.5074â€,
entryUUID:â€urn:uuid:14a9fdec-0af4-45bb-adf2-d752b49bcc7d â€œ}

**The API**

So the RESTful interface for a DocumetDossier all operates on a core URL that is made up of a local part, a fixed resource type identification, case specific entryUUID identifier, and the Patient Identifier. The Patient  Identifier is a parameter to allow for supporting the fact that the patient ID tends to need to be flexible to support Patient ID lookup, Cross-References, Master Patient Indexes, and Partially specified values.

documentDossierSectionURL := http:///net.ihe/DocumentDossier/?PatientID=

To Create a new object one uses the POST method to the root, without a entryUUID. This allows the service to create a unique UUID that will be used to hold this  object from then on. To retrieve a Documentâ€™s Dossier, you simply use the GET method on the root URL with the entryUUID filled out. To retrieve the document it-self is a similar GET method on a similar root URL for the Document. Yes, I am being short in my description because the Profile has the details, and this is just an introduction bloginar.

To discover resources there are some search methods that generally follow the XDS FindDocuments, FindSubmissionSets and FindFolders all combined. Essentially the client can request any of the parameters found in all of these be matched in an OR relationship. The result returned can be a list of DocumentDossiers in JSON or Atom format. Thus allowing for a RESTful subscription model.

**SecurityConsiderations**There are many security and privacy concerns with mobile devices, simply because they are harder to physically control. Many common information technology uses of HTTP, including the RESTful pattern, are accessing far less sensitive information than health documents. These factors present an especially difficult challenge for the security model. It is recommended that application developers utilize a Risk Assessment in the design of the applications, and that the operational environment utilize a Risk Assessment in the design and deployment of the operational environment.

There are many reasonable methods of securing the interoperability transactions. These security models can be layered in without modifying the characteristics of the MHD profile transactions. The use of TLS is encouraged, specifically the use of the ATNA profile. User authentication on mobile devices is typically handled by a more lightweight authentication system such as HTTP Authentication, OAuth, or OpenID Connect. IHE does have a good set of profiles for the use of Enterprise User Authentication (EUA) on HTTP-based devices, with bridging to Cross-Enterprise User Assertion (XUA) for the backend. In all of these cases the network communication security, and user authentication are layered in at the HTTP transport layer thus do not modify the interoperability characteristics defined in the MHD profile.

The Security Audit logging (e.g., ATNA) is recommended. Support for ATNA-based audit logging on the mobile health device may be beyond the ability of this constrained environment. This would mean that the operational environment must choose how to mitigate the risk of relying only on the service side audit logging.

The Resource URL pattern defined in this profile does include the Patient ID as a mandatory argument. The advantage of this is to place clear distinction of the patient identity on each transaction, thus enabling strong patient-centric privacy and security controls. This URL pattern does present a risk when using typical web server audit logging of URL requests, and browser history. In both of these cases the URL with the patient identity is clearly visible. These risks need to be mitigated in system or operational design.

Relationship to other RESTful content standards and Security definitions is shown graphically below. The IHE MHD profile is just one effort underway right now to define RESTful content access methods. Each of these methods is being carefully coordinated so that they respect the space that the other standards fill while adding their own value. Each of these requires that the Security layer can be provided independent, for this we are looking toward and working with efforts like the FHA/S&I Framework RHEx.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgctCCPTpqAUmoXR8IjVdb-e5oXis1ycclW-MLNpxvQhh3G0hqOC8dXAO1wvNe4DYYgpl7tLBQA7ofITsGukb5_bXhH6OYKRR4ZuL8qrNlqeGXET6tMn7moCuyegoVPu4YYacqHLa29lo1Z/s1600/image006-744130.png

**More Information**

I have said enough for now. There is the  [source presentation that is published and accessible](https://docs.google.com/open?id=0B3l05SpMzl27d1hoenE0ckVGdlk).  It has some more details, but the profile is the right place to go.

The [Mobile Access to Health Documents (MHD) Profile](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_MHD.pdf) is now in Trial Implementation. This blog is going to be in the form of a bloginar, webinar given in the form of a blog post. The

