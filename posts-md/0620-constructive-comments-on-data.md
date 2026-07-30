# Constructive comments on Data Segmentation for Privacy

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/06/constructive-comments-on-data.html
Published: 2012-06-25T13:19:00.001Z
Updated: 2012-06-25T13:19:05.852Z
Author: John Moehrke

---

The first draft of the [S&I Framework](http://wiki.siframework.org/Introduction+and+Overview) -  [Data Segmentation for Privacy](http://wiki.siframework.org/Data+Segmentation+for+Privacy+Homepage) â€“ [Reference Implementation Guide](http://wiki.siframework.org/Data+Segmentation+for+Privacy+IG+Consensus) comments are due today. As usual I did leave this exercise to the very end. I spent 10 hours on Sunday to review in fine detail providing constructive comments on everything from a simple typo to a fundamental mistake. I came up with 144 comments, 6 of which I consider major show-stoppers. These 6 are not hard to fix, but they are critical that the be fixed.

I have marked up the PDF and produced a 22 page extract of my 144 individual and detailed comments.

The 6 items can actually be summarized into THREE.

**Use XD* family as the Document Level control, not CDA:**

The draft today proposes that even for whole document control one must use CDA. This means that if you have a DICOM object, PDF document, text document, CCR, Blue-Button, or some form of workflow (such as XDW); that this object MUST be encapsulated inside of a CDA document. This fundamentally is a waste as the exact same functionality can be achieved simply through the use of the XD* family of transactions, using the rich XD* metadata. Indeed this seems to be the message except for specific sections of chapter 3.

Not only is it unnecessary to encapsulate everything in CDA, but you still MUST support XD* metadata as an external embodiment of the metadata. Let me explain this another way, if you only use CDA then you MUST open up the CDA document only to discover you should NOT. Hence why there is security layers built into the XD* family of profiles, that place the minimal but important metadata in the transaction where the access control service can prevent the opening of the CDA document without first invoking the proper controls.

The XD* mechanism is needed to define the whole document level control, and even if the CDA document contains section or entry controls, the XD* mechanism is still needed to convey the high-water-mark (highest confidentiality code contained within the content)

Thus we MUST define the XD* family mechanism anyway, so the additional functionality inside the CDA for document level control is free, and we enable entry level control.

- Direct â€“ shall use the Direct specified XDM attachment to carry document level controlling metadata

- Exchange â€“ shall use the XDR and XCA mechanisms to carry document level controlling metadata

- HIE â€“ shall use the XDS mechanisms to carry document level controlling metadata

There is concern within the community that the HIT Standards committee had recommended the CDA Header as the proper metadata, and my recommendation is consistent with this. Not in letter, as I disagree that the CDA header should be the primary mechanism, but in spirit as the XD* metadata is a purpose specific metadata that is highly influenced by the CDA header. The difference is that the XD* metadata is a proper metadata, whereas the CDA header is proper documentation.

**Sensitivity coding is for Policy, not for communications**

There are statements in Section 3.7.5 around sensitivity coding that are misguided and wrong. We have provided expert testimony in both healthcare and military-intelligence to express why this is a bad idea. It is true that the HIT Standards committee did include a recommendation along these lines, but they were misguided and wrong too; but they didnâ€™t have the benefit of the expert testimony that we had. Therefore we should inform the HIT Standards committee that we have learned information that they didnâ€™t know. We must not regressing and ignoring decades of advancement.

Sensitivity codes are needed, they  are needed in privacy policy rules as tags that identify the rules to apply to specific types of data. They need to exist in privacy policy rules to identify what types of data should be handled differently. They can even be used inside of a system in proprietary and non-exposed ways (inside the black box). But sensitivity codes are not appropriate as metadata on clinical content. The use of confidentialityCodes, which are larger chunks, are the appropriate and sufficient metadata.

**Entry level functionality is NON-Standard and should be identified as a gap for HL7 CDA R3**

The mechanism for providing entry level tagging in Section 3.6 is not standards based. To promote this method will forever force all systems to implement this non-standards based approach. It is true that the method leverages extensions built into the standard, but it is describing a mechanism that no tooling supports today, and would be very difficult to get tooling to support this mechanism. Further it leaves many things completely unspecified, as there is no underlying standards.

We should identify this as a gap for HL7 CDA R3 to resolve.



**Conclusion**

I was asked when I tweeted my progress Sunday afternoon, if I was coming up with typical number of comments for a review. At the time I thought that this was an excessive amount of comments, but looking back at them I must say that the text is in good shape. The majority of my comments are simple constructive change requests. Even the 6 (or 3) big issues are very easy to resolve. I don't think that my recommendation to resolving these big issues is controversial to anyone other than the politically connected. They are well founded in experience and international standards efforts. Yes I am passionate that they be fixed, as I am convinced without these fixes the result will be unusable. I have spent too much time on this project to have it fail due to politics and whim.

