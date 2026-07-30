# Around and Around we go

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/04/around-and-around-we-go.html
Published: 2012-04-16T15:01:00.003Z
Updated: 2012-04-16T15:01:40.858Z
Author: John Moehrke

---

I have spent the last three days in DC at a face-to-face meeting with the S&I Framework - Data Segmentation for Privacy (DS4P). We have gotten nothing accomplished. No matter what direction the agenda tries to approach this, we end up discussing the 'yes but' rat-holes.

The Project has 5 parts. These 5 parts are well defined, and we could focus on any one of them and make progress.

- How do you PUSH clinical documents from one organization to another while carrying enough information that the receiving organization can protect them

- How do we PULL clinical documents from one organization to another while protecting the the information

- How do we manage consents in an HIE that chooses to have central management and HIE-wide consents.

- What would centrally managed consent look like. Documenting the CDA consent-directive, and how it can be used for specific use-cases.

- What are the rules that one would use to determine the 'tagging' of data that you are about to send.

**Privacy Rules**

The biggest problem is of course that the rules one would need to apply for (5) and the rules one would need to encode in (4) are not well defined, even in the paper world. If they could be defined in the paper world this would be a much quicker problem to solve. Because of this lack of clarity even in the paper world, it is hard to discuss how to move this from paper to electronic. I would like to offload much of this work until [the ONC e-Consent project](http://healthcaresecprivacy.blogspot.com/2011/10/onc-announcement-of-e-consent-trial.html) is further along. This project should help give us some clarity on the rules, hopefully starting with some reasonable stepping stones.

**Communicating Segmentation **

Items 1-3 are available today, but not well understood. This is especially true if one focuses on Document exchange where the control necessary is applied to the whole document. It is true that CDA does have some ability to drive controls at the section level, and there are some hacks available for the entry level. This CDA mechanism is really not well understood, and I struggle to find any real-world use of it. Further this mechanism is under revision with the CDA R3 project, revision that could really do a better job if given some reasonable input. Thus, I would like to see the S&I Framework project focus the fine-grained controls within CDA on documenting the need and use-cases for these fine-grained controls.

The point I would like to emphasize is that the transport can do one level, totally independent of the more fine-grained controls that could be applied within a CDA document. The industry would gain greatly simply through the documentation of the kind of controls that the transport can offer. This would be very useful to moving forward.

**Conclusion**

We can document some solutions that are available today but not well understood or documented. I am perfectly fine with explaining that they are not perfect solutions. I am simply not willing to let perfection get in the way of good. I want to move the Healthcare industry along using stepping stones.

