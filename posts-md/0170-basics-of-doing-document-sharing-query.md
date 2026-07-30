# Basics of doing Document Sharing Query right

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/04/basics-of-doing-document-sharing-query.html
Published: 2018-04-04T23:49:00.001Z
Updated: 2018-04-05T00:11:26.426Z
Author: John Moehrke

---

IHE is currently working on a "Handbook" intended to instruct an XDS Affinity Domain, or Community (XCA), or MHD _community_ on how to structure their [requirements on metadata](https://healthcaresecprivacy.blogspot.com/p/topics.html#HIE). This effort is long overdue, as IHE has relied on the communities to figure this out themselves. More communities have failed than have succeeded. I am just very grateful that they keep trying. Mostly they keep trying because the most basic query is just asking for all documents available for a given Patient. This is necessary, but not sufficient. Let me explain the next level of [Document Sharing (XDS, XCA, MHD) Query](https://healthcaresecprivacy.blogspot.com/2014/03/health-information-exchange-centralized.html)

As part of the metadata handbook discussion, Charles has clarified in a very elegant way a "**Best Practice**" for leveraging the XDS/XCA/MHD Query, vs local processing of the resulting document entry/reference Metadata, to achieve the best results. This "Best Practice" should be used, but I know it is not used. The main reason it is not used is because it was never explained to the IHE readership.

XDS Query
The XDS Query transaction has a huge number of stored queries. Realistically there is only ONE stored query that is needed: **FindDocuments**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEja6MBPnW1OWoMgylwjewQMNeyU5wr8uUG4uAE79g5XixYW1A4Yecq-warQ9VlJlXjUK_sInKgRR7elMNiUffqDakiofdD-N0XWlhJjmXUMF5WCI_bVFUDGWBEUY5LZVg09ZmXL7DGwkgtO/s1600/Document+Sharing+Metadata-737470.jpgThe other stored queries are not useless, but are far more special purpose.  They are more focused on SubmissionSets, Folders, and Associations. These are useful, just not very primary for a general purpose Document Consumer.  These are actually essential when one gets into use-cases that require these other capabilities.

Degenerate Query
The fact that **FindDocuments **is so dominant is exposed more strongly in that some servers only implement **FindDocuments**, and don't don't support any of the other queries.  This is especially true of **XCA (cross-community)** which means they don't even support SubmissionSet, Folders, or Associations. This is also true of the **Argonaut **specification, where SubmissionSets, Folders, and Associations are not supported.

XDS FindDocuments Query Parameters
The **FindDocuments **query has 18 query parameters. You only need 5 of them. The other 13 parameters are possible to use, but more likely to result in poor results. They are there to assure that **FindDocuments **is complete, but the use of these additional parameters is very fragile. Fragile in that the consuming system must be in really good synchronization with the publication system, and that is simply unlikely longitudinally over decades. Later I explain how to deal with this fragility.

- **PatientId **-- this is required in XDS, but I will mention it just for completeness. You must have a Patient ID you are interested in. Use of PIX, PDQ, XCPD, or some other Patient Identity Management system is a required prerequisite.

- **ClassCode **-- this is the most poorly understood metadata element, yet it was intended to be the most powerful. The idea is a major focus of the new IHE "Handbook", where we explain that a small number of vocabulary terms should be allowed, that group documents into logical 'classifications'. Where these classifications are useful to a Document Consumer. That is they should be designed (vocabulary design -- value set) such that for any use-case where someone is looking for documents they can pick one or two terms from this valueset that are most likely to return results.

- **ServiceStartTimeFrom -- ServiceStopTimeTo** -- these work together to give a period of time within which the documents were about. This is different than the creation time, which is when was the document created. The service times are more specific to the time range of the treatment. So for an episode summary, it would have the time range of the episode. Important to note that these two parameters work together to give a period of time, and that period of time can not have a start (beginning of time), or not have an end (end of time). Thus one can ask for documents covering treatment prior to 1998. Another example is only documents covering the last 6 months by specifying a StartTimeFrom and leaving open the stop time.

- **PracticeSettingCode **-- this is the clinical speciality where the act that resulted in the document was performed. Like the classCode, this should have been filled with a controlled valueSet of pre-negotiated vocabulary that represents broad classifications of practice settings.

Classification ValueSets are critical

What the above shows is that two of the critical FindDocuments query parameters should come from well controlled value sets. Value sets that have a few (10-20) vocabulary values that represent broad classifications.

These codes need to be useful, but useful to someone doing a Query. Too often these codes are considered when a Document Entry is being published. Yes they need to be filled out when the Document Entry is published, but they need to be useful for Query.

So, how does a community determine what these valuesets should contain? THAT is the whole purpose of the new IHE metadata "handbook"... I too, await this set of principles, process, and mechanism.

Query is not enough
The whole purpose of the [XDS Metadata is to enable processing of the documents](https://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html) so that the right information can be found. The four query parameters are necessary, but not sufficient.

Critical in the "Best Practice" that Charles explained is that a Document Consumer must be ready to some form of local processing. This local processing would leverage ALL of the metadata. This local processing might further eliminate unnecessary entries, might sort the results, might put emphasis on some entries because of specific metadata entries. This local processing might be automated algorithm, or might involve a human. Likely both.

More on [Document Sharing Management (Health Information Exchange - HIE)](https://healthcaresecprivacy.blogspot.com/p/topics.html#HIE)

- [HIE Future is Bright - stepping into 2018](https://healthcaresecprivacy.blogspot.com/2017/12/hie-future-is-bright-stepping-into-2018.html)

- HIE from [Manual ==> Automated](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-is-bright-automated-not.html)

- HIE from [Provider-Centered ==> Patient-Centered](https://healthcaresecprivacy.blogspot.com/2017/11/hie-transition-to-patient-centered-from.html)

- HIE from [Multiple Point-to-Point Connections ==> Single Connection to Hub](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-is-bright-single-connection.html)

- HIE from [Updated @ Next Encounter with Patient ==> Notifications When Patient Has Encounter Elsewhere](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-is-bright-notification-and.html)

- HIE from [Providers & Payers Working Separately ==> Shared Responsibility for Managing Care](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-is-bright-payers-and.html)

- HIE from [Enterprise class API ==> FHIR API to Document Sharing](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-bright-fhir-api-to-document.html)

- [Future of HIE is bright](https://healthcaresecprivacy.blogspot.com/2017/11/future-of-hie-is-bright.html)

- [FormatCode granularity](https://healthcaresecprivacy.blogspot.com/2018/01/formatcode-granularity.html)

- [Granularity of FormatCode](https://healthcaresecprivacy.blogspot.com/2017/10/granularity-of-formatcode.html)

- [Multiple formats of the same Document content](https://healthcaresecprivacy.blogspot.com/2017/03/multiple-formats-of-same-document.html)

- [FHIR documents in XDS](https://healthcaresecprivacy.blogspot.com/2017/01/fhir-documents-in-xds.html)

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

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [The French Health Information Systems Interoperability Framework -- Now available in English](http://healthcaresecprivacy.blogspot.com/2012/04/french-health-information-systems.html)

- [One Metadata Model - Many Deployment Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html)

- [Critical aspects of Documents vs Messages or Elements](http://healthcaresecprivacy.blogspot.com/2011/10/critical-aspects-of-documents-vs.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Document Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html)

- [XDS/XCA testing of Vocabulary Enforcement](http://healthcaresecprivacy.blogspot.com/2011/11/xdsxca-testing-of-vocabulary.html)

- [Where in the World is CDA and XDS?](http://tinyurl.com/wwxds)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [HIE/HIO Governance, Policies, and Consents](http://healthcaresecprivacy.blogspot.com/2012/01/hiehio-governance-policies-and-consents.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

