# Constrained Vocabulary and Schema are good and needed - But Robustness must rule the longitudinal HIE

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/01/constrained-vocabulary-and-schema-are.html
Published: 2014-01-27T19:50:00.002Z
Updated: 2014-01-27T19:50:18.962Z
Author: John Moehrke

---

Strict schema and vocabulary are persistent hot topics in Interoperability. For example what is the constrained vocabulary that should be used for CCDA documents in the USA? This is an effort of Profiling, or even Profiling-of-a-Profile. Further constraining vocabulary and schema as far as possible, while still providing some value. This effort to constrain vocabulary and schema are helpful in the early days of building an HIE because it helps **simplify ([KISS](http://en.wikipedia.org/wiki/KISS_principle))**. The more simple the interaction, the more likely  it will succeed. However the more simple the interaction the less information can be communicated.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjWUknQ7cQ-qDN6R2D4hqr7oLtkoCWDQWMesQaIarhKeUj2r_41_vkvlhUPRcJIYS16HzQ8au_F8GDf441tF0gvROXpXGhog8lu9vQm__6iY2-I7q89crqQqRSMs3g-5irn6qLbqcNX6RZu/s1600/HIE_Graphics_6May11.png

In building an Health Information Exchange (Verb), one needs to start simple, and this is a message built into the [IHE message on building an HIE](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html). In this there is a white paper (handbook) that walks an HIE organization through how to do these constraining work found in the [IHE Affinity Domain planning kit](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_White_Paper_XDS_Affinity_Domain_Template_TI_2008-12-02.pdf). This is still a fantastic resource for[building your governance, code-sets, and policies;](http://healthcaresecprivacy.blogspot.com/2012/01/hiehio-governance-policies-and-consents.html) like seen from Connecticut.

I think however that the more critical part of this HIE building project is not in picking a vocabulary and a schema. But rather in defining what is the proper behavior related to metadata and related to content. **Specifically what happens when content or metadata doesnâ€™t utilize that vocabulary (e.g. historic information, or from a foreign land). **What is the sending responsibility to â€˜fixupâ€™ codes? What is the receiving responsibility to be â€˜robustâ€™ to deviations? Is there a role for a translation-service? What is the medical-legal meaning of content that has been changed simply to meet some coding restriction?

 Using a restricted code system should be guidance, not mandate. Conformance should be measured on â€˜creationâ€™ events, not necessarily â€˜transmissionâ€™. Everyone must be liberal in how they process incoming content. This is fundamental to the success of the Internet and is known as â€œPostelâ€™s Lawâ€ or the â€œRobustness Principleâ€. [http://en.wikipedia.org/wiki/Robustness_principle](http://en.wikipedia.org/wiki/Robustness_principle)

 Use-cases like insurance or public-health reporting can get away with this code restriction, as there is little â€˜dangerâ€™ of a loss of accuracy from a coding translation. This is why it is logical and reasonable for the original intention of[HIPAA to define specific and constrained code-sets](http://www.cms.gov/Regulations-and-Guidance/HIPAA-Administrative-Simplification/TransactionCodeSetsStands/index.html?redirect=/TransactionCodeSetsStands/02_TransactionsandCodeSetsRegulations.asp#TopOfPage). This is why it is reasonable for public-health to define a coarse grain vocabulary.

 The actual codes maintained in the medical record, the ones that would be used for current and future treatment have not changed and are the code that the doctor or medical-device picked as the best code at the time the code was picked. When making treatment decisions, accuracy is very  important. Deviations from original accuracy are not unheard of, but when they happen they are clearly identified as a derivative or a transform or a translation.

XDS has had from the beginning the concept of a restricted c ode-set for metadata, the concept of the â€œXDS Affinity Domainâ€. But we always expected the document content to be the original content, unless it was a properly approved â€œTransformâ€ (a concept also supported by XDS). The dynamic document concept is clearly an exception that could be called out specifically. The codes in the metadata are intended to be â€˜metaâ€™, and thus a bit of accuracy loss for the benefit of easier communication (interoperability) is reasonable. This is emphasized very specifically for some metadata, like classCode (the high-level classification of the kind of content), but is also true of more fine grain items like typeCode. Meaning that even typeCode is just a code representing the whole and thus not a complete representation of the whole content. They are both â€˜metaâ€™.

Even XDS recognized that this constrained â€œXDS Affinity Domainâ€ vocabulary will evolve over-time. Meaning as much as you think that you can control the vocabulary today, the future will want to have different constraints. These different constraints can only add concepts. It is possible to deprecate â€œnew useâ€ of old concepts. But the old concepts canâ€™t be forbidden.

It is the concept of â€˜forbiddenâ€™ that worries me most. Anytime a constrained vocabulary is selected, this â€˜impliesâ€™ that codes outside that vocabulary are â€˜forbiddenâ€™. This is an â€˜impliedâ€™ POLICY. Please donâ€™t make it an implied policy. Please make it an explicit policy, and I suggest that the policy follow the Principle of Internet Robustness; aka Postelâ€™s Law. Be specific in what you send, liberal in how you receive.

When put into the context of a longitudinal record, rather than the context of an instant in time message, the â€˜sendâ€™ point-in-time is the point at which the content is created, not the point when it is transmitted. Meaning when content is created it should be created using the best vocabulary and schema at that time, and it should be intended to be as conforming as possible. However we must recognize that a document created today, might be needed 10 years from now when the schema or vocabulary  have changed. The new rules should not be applied, and any system receiving the content should try as hard as it can to understand the 10 year old content. Sometimes this means that it canâ€™t be fully processed and that the user (clinician) needs to be warned of this.

**This is the receive side robustness.**

[Eating an Elephant -- How to approach IHE documentation on Health Information Exchange (HIE)](http://healthcaresecprivacy.blogspot.com/2013/12/eating-elephant-how-to-approach-ihe.html)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSOylCVZ1sk9Gjg33D5KkWkhS57fvZo3YYmRcaK8T1PnOuVRZ7hbufr0nJJULZWUhLlmq8ENpOVEMp9Xb8wlA_IlhdLfow2aPgT4digxJ0ixMO73qo75YuoxAV86TBODTknIahUrQFym9w/s1600/image001-736132.png

