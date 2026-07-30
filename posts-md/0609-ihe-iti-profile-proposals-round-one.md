# IHE ITI Profile Proposals - Round One

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/10/ihe-iti-profile-proposals-round-one.html
Published: 2013-10-12T23:02:00.003Z
Updated: 2013-10-12T23:02:30.623Z
Author: John Moehrke

---

http://wiki.ihe.net/images/5/57/ITI_Proposal_Votes.jpg

The first round of evaluations for the new [IHE ITI](http://wiki.ihe.net/index.php?title=Profiles#IHE_IT_Infrastructure_Profiles) work items has finished this week. There were 12 proposals submitted. The IHE ITI committee canâ€™t do all of this work in the work cycle, so we need to cut the field some. This is first done by the Planning Committee. [The Planning Committee met this week in Oak Brook, IL](http://wiki.ihe.net/index.php?title=ITI_Planning_Committee_2013/2014_Meetings#F2F_Meeting). They have heard the proposals presented in webinars, and this week they were given a chance to hone the message. The committee members ask questions of the individual or team presenting so as to help understand what the proposal is, and in order to understand it relative to all the other proposals. The Planning committee in this round is mostly interested in uncovering the most well justified work items. It is simply a prioritization exercise. Those that donâ€™t get selected are not bad proposals, they are just not more important than the other items presented. This is especially hard on proposals that we see almost every year since the beginning of the ITI committee, such as the proposal for dynamic service configuration.

Thank You to the ONC contractors that went above and beyond.
The ONC through S&I Framework submitted many proposals. With the Government shutdown there should have been no-one to present and defend these proposals. BUT, my hat is off to the contractors. They showed up and presented and advocated for their proposals. Kudos to John Feikema, Johnathan Coleman, (Dragon) Bashyam, and special thanks to Jennifer Sisto who showed up in person. All clearly showing they believe in this strongly.

The Proposals evaluation
The biggest proposal came from ONC through [S&I Framework](http://wiki.siframework.org/). The Data Access Framework (DAF) is a project that has been developing for a while now, most actively within the S&I Framework. I have participated in the S&I Framework as much as I can, but I am spread way to thin. The DAF includes just way more than would be a single profile, so it needs to be dissected. These parts can then be shown to either be already addressed by IHE profiles, in process of being profiled, or as gaps to be prioritized in the future. This effort has been taken on by the PCC committee with joint work by ITI and QRPH. I suspect Radiology, Cardiology, and other domains will also be involved as we start to work on this. The PCC committee turns out to be a better place for this work for two very good reasons: First, they have a light workload this year; second they can better address the top-to-bottom needs. They have done this before. Having PCC take this on was a big weight off ITI committee that was warmly welcomed.

The rest of the proposals were scoped and shaped until we felt we understood them well enough to prioritize. We used a tool that Gila first introduced to IHE 5ish years ago, a tool that adds some formality to the evaluation. It can cause over-analysis, but when used correctly it simply makes sure that all aspects of the proposal have been exposed. Meaning some proposals come well developed when others are nascent; yet the nascent one might be more important so it needs to be given a chance to show itself well. After discussing them to this point we use a [Multi-Voting](http://en.wikipedia.org/wiki/Cumulative_voting) method where each voting member gets 5 votes to spread across the proposals in any way they want. This is done in the open, but not necessarily intended to be publicized. Those on the phone get to vote through the IHE secretary.

We often times expect that we need to do multiple rounds removing the clear winners and clear losers and doing a runoff election of the middle. This time the split was very clear so we only needed one vote. The only ones on the bubble were adjusted by the individual that submitted the proposals.

The proposals approved by the Planning Committee will now go to the [Technical Committee](http://wiki.ihe.net/index.php?title=ITI_Technical_Committee) that meets next month. At that time the proposals are looked at in more detail including their fitness as a profile, needs assessment, standards availability, and how much work the committee estimates it will take to complete the work. This effort further narrows the field usually.

The Planning Committee accepted and passes to the Technical Committee:

- [Standardized Operational Log of Events (SOLE)](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) â€“ a framework for recording operationally useful events in a framework for analysis. It is not clear to me what this will result in.

- [Mobile Patient Discovery](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) - This profile is a compliments MHD and allow it to be extended to use cases requiring patient discovery. This would be a PDQ like functionality using REST. Likely a profile of FHIR.

- [Re-Documentation of the Transactions (Volume 2) of the Document Sharing Profiles](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) -- This is fixing up the transaction documentation. Bringing all the profile specific requirements together.

- [De-identification Handbook](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) (complete the work that is almost done)

- [Secure XDS Retrieve system](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) â€“ A system that makes more efficient Access Control rules enforcement across a distributed XDS environment.

- [ATNA Repository Federation](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) â€“ Specifically the need to ask partners in an HIE for Patient specific Collection, Use, and Disclosures. Likely to be a profile of FHIR SecurityEvent to enable queries

- [Data Segmentation for Privacy (DS4P) using REST](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) â€“ Seems that the current path for MHD will fit this nicely, so the effort will be simply sub-profiling MHD+IUA with the rules.

- [Findings Notification](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) -- A notification system for when an unexpected finding is found such as discovery of a tumor while reviewing a broken-bone.

This means that the following proposals did not go forward:

- [RESTful XDW and other RESTful extensions](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) â€“ [presentation](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr12-2014-2015/Planning_Cmte/BriefProfileProposals/ITI-Brief-RESTful-roadmap.ppt)  --This will be addressed by the IHE Mobile Task Force

- [Federation solution for HPD](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) â€“ This seems to be only a USA problem. Other regions are simply using off-the-shelf means not specific to healthcare.

- [Dynamic Configuration Management](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/)â€“ [presentation](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr12-2014-2015/Planning_Cmte/BriefProfileProposals/ITI%20TF%20Profile%20-%20Dynamic%20Configuration%20Management%20(F).pptx) -- Some use UDDI  but this is not considered good enough. Priority is never high enough given that everyone has manual means to do this today.

- [XDS based Sharing under Patient Control](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/BriefProfileProposals/) -- The ITI Planning committee will work on this

- Other XDS re-documentation efforts: Patient, Abstract Information Model, and such

