# The June HIT Standards Committee Meeting - concerns

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/06/june-hit-standards-committee-meeting.html
Published: 2011-06-23T18:40:00Z
Updated: 2011-06-23T18:40:52.137Z
Author: John Moehrke

---

I listened intently and helplessly to the HIT Standards Committee meeting on Wednesday. I was very frustrated at the first half, fortunately for me I have less knowledge about the second half discussion. John Halamka works really hard to keep the group on-track and to bring the discussion to conclusions. What I heard on the call seemed frustrating, but ultimately didn't conclude on anything too hard to live with. BUT, when I look at [John Halamka's blog summary](http://geekdoctor.blogspot.com/2011/06/june-hit-standards-committee-meeting_22.html), I get re-frustrated.

I am very concerned that there is so much experience in Healthcare and Internet space that is being ignored. I certainly hope this is not intentional, but it is painful anyhow.  I even know of experience that is counter to what I think is the right solution. I am good with this information being discussed, I am confident of my knowledge and am very willing to be proven wrong. Those that were involved in the Direct Project, should remember this and I hope they recognize that once a decision is made in an open and transparent way that I will adopt that decision. I simply want OPEN and TRANSPARENT evaluation.

Here is some comments I left on John Halamka's blog. I know this not well presented. I will expand on some of these topics over time. If you don't understand an item, please ask. It is only with open discussion that misunderstandings can be made clear.

**Data Classification: **

a) please don't reinvent data classification, it is a very mature part of IT Security [http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

b) Data Classification is just one vector. Just like User-Role is just one vector. Access Control inclusive of Privacy considers them all. [http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf)

c) Complex Consent does not need to be NwHIN portable. Enforce it at the Data-Source, no need to tell Data-User why they don't get access. Once Data-Source determines data can be disclosed; control of the  copy becomes Data-User responsibility.   --- I need to blog on this, I realize now that this lesson learned in NwHIN has not been explained to those not involved in that discussion, or the DURSA.

**Provider Directories:**

d) the HITSC should not be making the Policy decision on 'who' or 'how' one decides to trust. Certificates are self-validating, the infrastructure does not need to add this complexity (risk of failure). Organizations will make different decisions on who to trust, and for what they trust them to do.

e) I was listening closely and there was disagreement about the new microformat model. I am worried that it has some real questionable operational issues. I worry that google/bing are good, but not good enough. I worry that publication on a web page is not automatically supported. I don't see how the use of this can be automated without being overly constrained. I worry that off-the-shelf e-mail doesn't support this today. I hear that this microformat solution was presented to S&I today by Dixie as a solid mandatory solution to replace LDAP recommendation - This is NOT what I heard on the Wednesday call.

f) I really don't understand how Google/Bing/Yahoo is an authority on Healthcare, but HL7/DICOM/ISO/ASTM/IHE are not. I really don't understand how blog posts by individuals is considered more authoritative than an open and transparent ballot process by HL7/DICOM/ISO/ASTM/IHE.

**Metadata**

g) CDA is not an envelope, it is a document. XDS Metadata is a generic envelop that can carry MANY document types of documents including DICOM and CCR. Why was XDS/XCA not considered?

h) I understand that there are people that misunderstand XDS as being restricted.. it's only restriction is to a document that has a MIME-TYPE. the XDS Metadata is specifically designed to be content agnostic, yet derived from CDA as a mature model.

i) experience with CDA and XDS is available at [http://tinyurl.com/wwxds](http://tinyurl.com/wwxds) . This experience is EXTENSIVE. It should NOT be ignored. If it there is a good reason for it to be ignored, please explain.

**Patient Identity Matching**

j) Matching Consumers credit reporting in the financial industry has lots of false positive/negative; but their failures don't hurt/dismember/kill. Same is true in many other industries. This does not relieve us from learning from others, but we should not blindly assume they have solved the problem to the extent that Healthcare needs it.

k) Please look at XCPD. It has included much input from many global subject matter experts, including Voluntary Patient ID. It is primarily the work of those involved in NwHIN. [http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_XCPD_Rev2-2_TI_2011-03_04.pdf](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_XCPD_Rev2-2_TI_2011-03_04.pdf)

Also:

I agree with the comments from dining_phil and David on John Hamamka's post. LDAP must be considered; and OIDs are not healthcare specific and should not be frightening. Yes, they should never be shown to a human.

