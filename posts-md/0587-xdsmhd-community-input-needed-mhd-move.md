# XDS/MHD Community input needed - MHD move away from DocumentManifest

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/12/xdsmhd-community-input-needed-mhd-move.html
Published: 2020-12-02T13:30:00.004Z
Updated: 2020-12-02T13:30:42.204Z
Author: John Moehrke

---

I have asked this on the various [discussion lists for XDS and MHD](https://groups.google.com/g/ihe-mhd-implementors/c/B2Y2yXJCyhY). I have gotten positive response. I am very interested in concerns, and help.  I have started this work, [IHE MHD Github Repo](https://github.com/IHE/ITI.MHD).

Hi MHD implementer community

As many of you know, I am the author of MHD and also part of the HL7 FHIR core team.

**ASK: Please consider this message and provide feedback. I want to represent the interests of the MHD community, but also need that community to be active in HL7 and IHE. I am especially interested in concerns with the approach described below. I am also eager to get engagement in the ITI-Tech work we are starting on MHD (see below).**

I have been thinking about a maturity problem that is coming up in FHIR R5 related to the FHIR Resources used by MHD.

Patient is already normative.

DocumentReference is likely to be pushed to be normative in FHIR R5. It is part of US-Core so has a group of people beyond MHD working on it.

List (MHD uses for Folder) is used by a couple of use-cases outside of MHD. So there is multiple groups working on it.

but DocumentManifest is not getting the proper attention to help move it to normative state. If that does not happen, then MHD will stay as Trial Implementation when it should be a consideration for Final Text.

Many of the MHD use-cases are recognized in US-Core, but they use only DocumentReference and don't have use-cases for DocumentManifest or List (Folder). I bring in US-Core only to express where the motivation is to push DocumentReference to normative. IHE is of course Internationally focused.

The only use of DocumentManifest is in MHD...

- We (IHE) can do what is necessary to make this normative. I will still need the IHE community to step forward within the HL7 community to push the workgroup owning DocumentManifest to do HL7 governance. Note that this is a big problem as well since DocumentManifest is still owned by Struct Doc WG; where DocumentReference has moved over to OO. Thus this pathway has many organizational challenges.
- We (IHE) can switch MHD away from DocumentManifest, using List. There would then be two kinds of list in MHD, one as the SubmisstionSet, the other as a Folder.
- We (IHE) can switch MHD away from DocumentManifest toward some other resource.

ITI-Tech has agreed to #2. That is to stop using DocumentManifest for SubmissionSet, and profile a use of List for SubmissionSet functionality. This might produce some update requests to List to add elements necessary for that use-case. Adding elements to List should not be seen as a problem. List maturity would be needed by MHD for Folder anyway, so putting our efforts toward the same resource would be helpful.

Yes there are functionality differences between a SubmissionSet and a Folder. These differences can easily be profiled into the same List resource.

**Note that ITI-Tech is also going to formally move MHD out of supplement form, and into the IG Authoring form. Thus we would benefit from community engagement, such as providing examples and review.**

