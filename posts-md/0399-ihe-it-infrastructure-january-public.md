# IHE IT-Infrastructure January Public-Comment

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/01/ihe-it-infrastructure-january-public.html
Published: 2022-01-11T16:33:00.002Z
Updated: 2022-01-11T16:33:51.522Z
Author: John Moehrke

---

The IHE IT-Infrastructure domain has been doing some light conversion of existing IHE-Profiles and publications to the modern html publication and use of the Implementation Guide publisher format. The public-comment is focused on uncovering mistakes in this conversion. There are no intended new features in these releases. However, there are differences that are driven by the publication platform. There is expectation that these new publication formats will enable better implementations, testing, and enhancements.

Document Sharing Metadata Handbook

https://blogger.googleusercontent.com/img/a/AVvXsEjLieDG_TIvV0AHnON-mwqysIKGBgjou26Ex-8SvYqrxrkZ2g_C6thHzTYg7UiMH4GcjuDpSuiiF5f5y6B-cBQ334b1aBay_n-5v6o4J2ETK23jTbf-xgLSj66GHxCLgiT4rv42s15oO18StxK_u8PLPaB3iySZC61_GTzQQsdhxOXrhGILsmjvDT2Ixw=s480

IHE Document Sharing depends on document metadata, folder metadata, and submission set metadata. This handbook guides a community at defining how they will use these metadata fields. Mostly defining the ValueSets to be used within their community. Where these ValueSets might include vocabulary from national, regional, or local domains.

The change expected in this publication is specifically just to move to the new html publication form. With html publication format there can be much more rich linking into and out of the text. So the text should be easier to understand, and easier to reference.

Mobile Health Document SharingThe [Mobile Health Document Sharing (MHDS)](https://profiles.ihe.net/ITI/MHDS/index.html)  shows how to build a [Document Sharing Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) using IHE-profiled FHIRÂ® standard, rather than the legacy IHE profiles that are dominated by [XDS and HL7Â® v2](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html). This Implementation Guide assembles other IHE Implementation guides (Profiles) and defines a [Document Registry](https://profiles.ihe.net/ITI/MHDS/volume-1.html#150111-document-registry) Actor.https://blogger.googleusercontent.com/img/a/AVvXsEikrVPs9ZeLYJG2bfXMkWMR64mkFXfEncQtl9zwr-wkFwxPGDR5NuYe1cGdWrBgcLilwmVXDrhjZu_LQT7YRpioqnmWwy8VgikXsrj7bIeumVrAgnKlLda-dIHhOuOQG9D3G93JSTsvvmz0EZiYFwpDFXP8DZw5aJsEGeLs-Upw1nRt1umOUNUt-DKPaQ=s1167

Version 2.2.0 is intended to be changes to the publication mechanism from WORD/PDF to an Implementation Guide published using the IG-Publisher. However, some other changes have been necessary due to the passing of time.

- Mentions of DocumentManifest are now List.source due to the change in MHD.
- Mentions of the PMIR Patient Identity Manager are changed to Patient Identity Registry due to change in PMIR.
- This version has a CapabilityStatement that was not previously published.
- Updates due to changes in the IUA profile, such as the additional leverage of the Authorization Server Metadata Option.
- Removed section 50.7 as the current HIE-Whitepaper contains MHD and MHDS now.
- Diagrams have been changed to support the above changes.

Mobile Care Services DiscoveryThe [Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/index.html) supports RESTful queries across related care service resources. The loosely coupled design and flexible querying capability of the mCSD Profile means it can be deployed within a variety of eHealth architectures and support a wide array of care workflows.

https://blogger.googleusercontent.com/img/a/AVvXsEgGUD-od73RX3JnYEq1zvmwipc0716YeoUwY8Ox7AOQ2oDH4eBxZf368NE3nmZc392a64q74dJU9GxpqNQ2Dbq8mPp5KZFi_QR2GMaJQ-ezzosa2Wt5hd-zjsa6-Y7MwMnjmNPMRBoWw7SHMjTTQbQ-jzc_me3H2CH837zTMnq21x-fHDtjiPvVGxVhqg=s1336

Version 3.4.0 is intended to be changes to publication mechanism from WORD/PDF to an Implementation Guide.

- Removed inline UML text and moved it to images-source/
- Removed reference to setting meta.profile as it is redundant
- Added sections in actor requirements describing the requirement of providing a capability statement [Volume 1](https://profiles.ihe.net/ITI/mCSD/volume-1.html#14611-actor-descriptions-and-actor-profile-requirements)
- Updated the canonical URL for the organization hierarchy extension to http://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationHierarchy
- Added links to the structure definitions for resource profiles to [ITI-90](https://profiles.ihe.net/ITI/mCSD/ITI-90.html) and [ITI-91](https://profiles.ihe.net/ITI/mCSD/ITI-91.html)
- Changed structuredefinitions for Facility and Jurisdiction to use an invariant for the type requirement instead of slicing.
- Added in text to show that searches can use GET or POST [ITI-90 Message Semantics](https://profiles.ihe.net/ITI/mCSD/ITI-90.html#2390412-message-semantics).
- Added in retrieve (GET RESOURCE/ID) message section starting at [ITI-90](https://profiles.ihe.net/ITI/mCSD/ITI-90.html#239043-retrieve-care-services-resource-message)

Note, there will be further enhancements in the coming quarter to enable use-cases such as using MHD to access a federation of Communities.
HTML navigationThere is now also a new feature across the whole the publications. Now wherever there is a header, you will find a link icon that you can use to get the deep link to that header. This enables easier references to sections.
CommentingPublic-Comment is welcome from anyone. You do not need to be a member. Comments can be submitted on these in three different ways. Comments open until February 12th.

- Using the Web based form found at [https://www.ihe.net/ITI_Public_Comments/](https://www.ihe.net/ITI_Public_Comments/)
- Using a spreadsheet emailed to [iticomments@googlegroups.com](mailto:iticomments@googlegroups.com)
- Using GitHub issue submission (provided you have a Github account and are a member of the IHE github community)

- [Metadata Handbook Issue tracker](https://github.com/IHE/IHE-MetadataHandbook/issues/new?assignees=&labels=&template=public-comment-issue-template.md&title=)
- [MHDS Issue tracker](https://github.com/IHE/ITI.MHDS/issues/new/choose)
- [mCSD Issue tracker](https://github.com/IHE/ITI.mCSD/issues/new/choose)

I really want to encourage membership in [IHE IT-Infrastructure committee.](https://www.ihe.net/ihe_domains/it_infrastructure/)

