# The Direct Project and IHE/HIMSS

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/11/direct-project-and-ihehimss.html
Published: 2010-11-30T21:28:00Z
Updated: 2010-11-30T21:28:15.310Z
Author: John Moehrke

---

"[The Direct Project](http://directproject.org/)", formerly known as [NHIN Direct](http://wiki.directproject.org/), has officially changed their name, the specifications are maturing, the reference implementations are maturing, and the discussion is turning to the topic of where will the output of the Direct Project land and be maintained. I think that IHE is a very logical place and a place that I find many synergies between what the NHIN Direct project did and what an IHE US Realm would do.

The Direct Project (NHIN Direct) specifications are almost completely aligned with the IHE XDM â€“ E-Mail option. They have simply added that sending a single document without the XDM wrapping is allowed.  This is the kind of thing that I would expect a realm specific workgroup to acknowledge.

The Direct Project (NHIN Direct) have done some analysis of the IHE specifications and have provided feedback to the IHE ITI committee their recommendations on both XDM and XDR profiles. This analysis is done in the context of the the direct environment and intended audience. Most importantly this analysis was done in the context of a set of Privacy, Security, and Operational policies. Again, this is the kind of thing that a US Realm committee would be expected to do.  For example: They have observed that the XDR and XDM metadata rules are too onerous for the direct PUSH use-cases, especially when applied to some specific use-cases that the IHE ITI committee did not looked at yet. The Direct Project also looked at the interaction between XDM and XDR at a gateway service and applied privacy policy in such a way as to question why XDR has integrated sender and recipient address inside the more sensitive metadata.

The Direct Project group is now struggling with Testing. They donâ€™t have experts in writing test plans, test procedures, or test tools. The closest thing they do have is experts on unit-testing that comes along with the source code of their â€œreference implementationâ€.  I think this is also a good place for a US Realm to focus a local Connectathon toward the local realm use-cases, and tie this to the local demonstration project (e.g. HIMSS Interoperability Demonstration). For this the IHE expertiese in test tools and testing events like Connectathon would be very valuable.

The Direct Project does have a component that IHE does not have today, this is the open-source reference implementation.  IHE does come close with the open-source Registry from NIST; but this was more of an individual effort (one that needs to be recognized often), rather than a formal part of specification approval. I think there is an opportunity for IHE to extend a welcoming hand to this style of specification validation.

The Direct Project also has the Implementation Geographies. It is not clear how well this will workout inside the IHE context. I think it is something unique to the NHIN Direct project at this time due to the style of solution vs the â€˜pure interoperability specificationâ€™ that IHE tends to focus on. I know that there might be concerns with getting too close to implementations, thus presenting a conflict-of-interest.

The Direct Project is an excellent example of what a region can and should do with the IHE specifications. They deviated only slightly, and when they did they provided the feedback to IHE for discussion and iteration. There are some useful lessons to be learned by IHE on how to excite a region and to accelerate implementation through reference implementations and implementation geographies.

