# Recirculation Ballot of the HL7 Healthcare Privacy and Security Classification System (HCS)

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/01/recirculation-ballot-of-hl7-healthcare.html
Published: 2014-01-04T18:44:00.004Z
Updated: 2014-01-04T18:44:54.994Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFgpC_TpQVi8EV9GMM2cc-52rMn8DSHSa1_MmA5N2LZwHhRwjUSkk1jVKvNDW8lJeHWsx4wpBaRiTr6vB63uzSE6wZnXGtuFTA7FqRw4Oga_5I4KE6meHHIxXXmQJfV0vvLpsQjT0xXBn5/s1600/tagged_duck.JPG

The [HCS is being forced through recirculation ballot](http://www.hl7.org/ballots/recirculation/info.cfm?recirc_id=783) because two people are objecting in broad terms to any mechanism that would allow for â€˜segmentationâ€™ of data. The committee has tried to address their concerns, which are policy concerns and not technical concerns. We did agree to warn those using the HCS of potential harm caused by segmentation. They have refused to withdraw their negative.

The mechanism for dealing with this in HL7 is a recirculation ballot. A targeted ballot to those that participated in the original ballot asking them to consider the outstanding negative ballot comments and either vote Affirmative to override the negative ballot comments, Negative to agree with the negative comments, or Abstain. The details are in the recirculation [ballot package](http://www.hl7.org/ballots/recirculation/info.cfm?recirc_id=783).

The concerns are not unfounded, they are just not related to what the HCS is defining. The HCS is a â€˜conceptual levelâ€™ concept of using broad concept of security-tags to aid with Access Control for Privacy or Security purposes. It is not a â€˜platform dependentâ€™ nor â€˜organizational policyâ€™. The specific concerns to be considered are (these are in the recirculation [ballot package](http://www.hl7.org/ballots/recirculation/info.cfm?recirc_id=783)):

- **Data tagging is fragile:** I would agree that tagging data is a fragile thing when the tag is conveying current policy. However the HCS is just defining â€˜conceptual levelâ€™ concept of security-tags, not defining that they must be used or the â€˜platform specificâ€™ mechanisms to communicate. Separation of Metadata tags, from Package tags, from Consent Policies is important to robustness and to be agile to policy changes:

- **Metadata **â€“ Metadata is descriptions of the data, and only the data. This level of security tag really needs to only describe the data.

- **Package **â€“ The package is the
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgHBoBI0UBN6lb9Y6wQASvkNhonNY2rFKHl4hMADIY-srakGJCHW5XSCnKMYI3lt4zAMcZabHBDnxy0AMnt6kq6L4UWFKaWttcb0z6Ry5CKhvdS3BLIJkX9GjqdLRd9Hqz7kDOEuOxZbUAU/s1600/image001-784166.png

abstract concept of the interaction between parties. It would include push or pull interactions. It thus would include something like assertions of who the user that is requesting (pull) data, and under what [purposeOfUse](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html). This level of security tag can carry specific obligations about the communication agreement. It would not be duplicative of Metadata, but could be summarization of the Metadata. It could carry obligations related to the interaction (do-not-print), it could carry pointers to consent policies (see next).

- The unfortunate reality is that the â€“platform specific -- package level tag carrying is not very mature. Thus Metadata tags often carry these Package tags, or they are part of the overriding policies (e.g. DURSA).

- **Consent Policies** â€“ This is an [independently managed policy information point (PIP)](http://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html) that holds the current status of patient authorizations (aka Consent).
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhcJCaooO_OuAM4Nu7v4Tjn-frzhB1Y81kdJ8SvK0Gon7m0jPG_PevQgP0lK2Lwykbe0Zgx6h21CKzzRHntRD0BW3vrmFo4-4hdufzqlZgPWlymSCHED5n-JEhMnfA0SDqjGlgO_EEG-mhn/s1600/Slide7.PNG

This only appears where the parties that are interacting both agree upon one Consent Policy Point. Most of the time a sender and recipient have independently managed Consent Policy Points, as consents tend to be specific to a data-holding organization. There could be a common Consent Policy Point, it would be an independent communications pathway from the package. Most of the time a consent to release is indeed independent of the policy the recipient would need to gain to continue to use or disclose.

- **Fine grain tagging could paralyze medical practice.** â€“ I donâ€™t necessarily disagree, but this is the concern of Policy, and specific on fine-grain the CDA internal tagging discussion. The HCS is defining only at the â€˜conceptual levelâ€™ and not indicating if this is fine-grain or coarse-grain. The HCS has no CDA specifics in it. The CDA specific use of the HCS is part of the DS4P ballot, which is being re-balloted. I have pointed at the use of "[Transforms" as an alternate model.](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html)
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjP-O3qNNuoR9VNxBt41DgPIFqzhT5II5AFK8G7PDwE8HCzNg5q-wxjzjsS7L7Z_Lzw_BtlEtCFu63bVeQ0HMgnL9l85I_YDKid8pW12U8p7OSKVJzdVg_acaT163u6v_YzKf7XZ4-xiiPQ/s1600/image001-709920.png

- **LOINC and SNOMED should be used and not a security/privacy specific vocabulary** â€“ It is hard to argue that universal and perfect use of these vocabularies would make life easier. Security nor Privacy are going to change that. However from the engine that needs to control security/privacy access, operating on a much smaller subset that represents the rollup from a security/privacy perspective is more efficient and more likely to enforce the right rules. This roll up is done once, rather than at each access (typically). This further supports security/privacy codes as actionable when the content is free-text or graphical or minimally coded. The HCS can also be used in DICOM or IHE standards.

- **Vocabularies pointed at include some dangerous codes â€“ **YES they do. The fact that the code exists does not mean it must be used. Even LOINC and SNOMED have some questionable codes, more so in history. Thus the comment should be directed at policies that would be choosing a value-set from these [vocabularies](http://healthcaresecprivacy.blogspot.com/2013/09/vocabulary-standards-make-poor-user.html). The HCS is just pointing at existing vocabularies and doesnâ€™t forbid other vocabularies.

- **Rules are regional â€“ **this was not mentioned in the negative comments, but has come up. The rules in one region, the sending region, might not be the same as the rules in the receiving region. Thus presuming that the proper thing will be done will fail. See Robâ€™s excellent article on this. [http://fairhaven.typepad.com/my_weblog/2013/12/confidentiality-code-use-cases.html](http://fairhaven.typepad.com/my_weblog/2013/12/confidentiality-code-use-cases.html)

**Could the HCS be made better? **A standard can always take on some improvement. I think this one is in good enough shape for now. As we use it, we can revise it.

- The HCS is predicate work to the [DS4P ballot](http://healthcaresecprivacy.blogspot.com/2013/09/hl7-ballot-data-segmentation-for.html). The DS4P ballot is being re-balloted.

- The HCS is being referenced in IHE as a way of using the multi-valued metadata entry â€“ confidentialityCode.

- The [HCS is being referenced in FHIR](http://healthcaresecprivacy.blogspot.com/2013/10/fhir-demonstration-of-ds4p.html)

If you were involved in the original HCS ballot, when the recirculation ballot opens on Monday, please set your vote to Affirmative.

**More articles:**
**Patient Privacy controls (aka Consent, Authorization, Data Segmentation)

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Safety vs Privacy](http://healthcaresecprivacy.blogspot.com/2013/04/safety-vs-privacy.html)

- [Privacy Consent State of Mind](http://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html)

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [Data Segmentation - now I know where the term comes from](http://healthcaresecprivacy.blogspot.com/2011/10/data-segmentation-now-i-know-where-term.html)

Access Control (Consent enforcement)

- [Healthcare access control scope constraints on OAuth tokens](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)

- [Advanced Access Controls to support sensitive health topics](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html)

- [Policy Enforcing XDS Registry](http://healthcaresecprivacy.blogspot.com/2012/03/policy-enforcing-xds-registry.html)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [Healthcare Access Controls standards landscape](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html)

- [Handling the obligation to prohibit Re-disclosure](http://healthcaresecprivacy.blogspot.com/2011/11/prohbition-of-re-disclosure.html)

- [Access Controls: Policies --> Attributes --> Implementation](http://healthcaresecprivacy.blogspot.com/2011/11/access-controls-policies-attributes.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

**

