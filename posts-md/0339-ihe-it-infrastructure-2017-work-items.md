# IHE IT Infrastructure - 2017 work items

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/12/ihe-it-infrastructure-2017-work-items.html
Published: 2016-12-12T20:26:00.002Z
Updated: 2016-12-12T20:26:42.417Z
Author: John Moehrke

---

The IT Infrastructure workgroup has selected their work items for next year. It consists of 4 new work items, only one of which is a brand new concept. That is, the other three are re-casting of old use-case needs into a http RESTful world. There is only one of these new work items that is **not **FHIR based.

- Healthcare Provider Directory -- IHE has two standards: Care Services Discovery (CSD), which has been adopted in several countries as a way to manage health worker and health facility data and Healthcare Provider Directory (HPD) which has limited adoption.  CSD and HPD are SOAP-based web services and are not compatible with systems deploying RESTful clients and servers

- Patient-Centric Data-Element Location Services -- This is a profile of profiles, addressing the use-case need for a element level perspective (i.e. FHIR) of the data held within Documents in a Document Sharing infrastructure (i.e. XDS). This profile of profiles will show how to bring various profiles together to add an additional layer of Provenance. Orchestrating: XDS, MHD, PDQm, QEDm, and various Document Content Profiles.

- Sharing platform for non-patient documents -- Support for documents like configuration-files, style-sheets, templates, instructions, etc. These have some metadata needs, driven by search use-cases, but will not contain patient specific information.

- Remove Documents from XDS Repository -- Today the Metadata Update supplement has a method for removing a DocumentEntry, but that leaves disconnected the Document in the Repository. This work item will address all Remove use-cases, including the metadata and the document.

In addition to these the committee also recognizes significant work needs to be done to

- Upgrade existing FHIR profiles to STU3. This work likely won't happen until late in the cycle as STU3 seems delayed. Most of these changes (MHD, PDQm, ATNA) will be mostly administrative changes. The changes to mACM, and PIXm might be simple update too, or might require significant consideration of best way to solve them given STU3 content.

- Maintenance task. The CP backlog is better than last year, but not much better. Therefore ITI will continue to focus on resolving this backlog. Meeting more often, weekly. Targeted meetings, so as to draw in the appropriate specialists.

I think ITI is maturing, with little net new big items. This could be because it is not being approached with the new work, but I suspect it is more a recognition that the existing infrastructure is supporting significant domain specific work.

