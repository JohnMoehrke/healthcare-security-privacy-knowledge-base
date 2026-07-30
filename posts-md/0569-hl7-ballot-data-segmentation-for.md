# HL7 Ballot - Data Segmentation for  Privacy (DS4P)

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/09/hl7-ballot-data-segmentation-for.html
Published: 2013-09-16T01:57:00Z
Updated: 2013-09-16T01:57:04.970Z
Author: John Moehrke

---

The Data Segmentation for Privacy (DS4P) ballot is the first attempt at normative content for a specification first formulated under S&I Framework (USA initiative).

- **HL7 Implementation Guide: Data Segmentation for
Privacy (DS4P), Release 1**

- **HL7_IG_DS4P_R1_N1_2013SEP**

The spirit of the specification is good. This is an implementation of the [Healthcare Classification System (HCS) that I voted Positive](http://healthcaresecprivacy.blogspot.com/2013/09/hl7-ballot-healthcare-securityprivacy.html) on. However the DS4P specification has too many errors, some needed critical corrections, and some publication mistakes. This is not too much of a surprise to the committee, as we knew when we [published it that it was an early draft](http://healthcaresecprivacy.blogspot.com/2013/08/hl7-data-segmentation-for-privacy.html). This draft is put out there for ballot to elicit the widest audience of review.  As such, it really really needs a wide audience to review it.

My specific comments can be found, just like any ballot comments, on the HL7 ballot desktop. So, feel free to look at them and 'clone and own' them. In general my comments fall into the following:

- The Exchange specification should be more specifically described as the XDR Transport. This is a more internationally friendly term, and the specification really doesn't need to or gain anything by using USA centric terms.

- Same for the Direct specification which is really XDM Transport using the S/MIME e-mail option for push.

- The introduction, which is written well in the Content specification, should be duplicated in both transports. This allows the reader to understand the context no matter which part they pick up first. This introduction is not large, so duplication is easy. The publication tools should also make this automatic.

- The content specification should make very clear what the 'needs of the transport' are. In this way it can define that the sender Access Control policies would define the parameters that the transport must fulfill. Parameters of Provenance (author, sender, recipient, organization, etc), and the Security Tags (confidentiality, sensitivity, integrity, compartment, and handling caveats-- just like the HCS)

- The specifications must harmonize with the HCS, leveraging rather than duplicating

- The specifications must harmonize with XDR and XDM, leveraging rather than duplicating. Note that there will be a future specification for RESTful, so it is best to be as focused on the value-add of these DS4P needs and specification and spend less time duplicating the underlying standard (e.g. ebRIM encoding rules)

- Rather than screen-shots of the publication tool, tables should be used so that all the content is searchable, selectable, and copyable.

- **The Direct specification is cut short half a page into chapter 2. Clearly a publication problem, but without the content I surely can't say it is good. Hard to believe others are approving this specification too. More examples of people voting positive on content they have not opened.**

- IHE has re-written for better reading Volume 3 section on the metadata. This  should make references more understandable. (not yet published by IHE, but I hope soon to be published. The committee has been done many weeks ago).

- There is a need for recipient behaviors. Clearly the recipient must enforce their own rules, but must enforce the rules that the transport and content convey.

**The CDA specifics I am not qualified to review. I certainly hope that the StructDocs (CDA) community reviews this. **I don't know of specifics I am worried about, but I hate to have content be accepted because no subject matter experts looked at it.

So, I voted negative. It will be no surprise, as it was intended to be the first of two ballot rounds.

