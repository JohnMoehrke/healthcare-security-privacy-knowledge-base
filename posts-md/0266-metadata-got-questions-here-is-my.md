# MetaData - got questions, here is my answers

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/08/metadata-got-questions-here-is-my.html
Published: 2011-08-20T13:07:00.002Z
Updated: 2011-08-20T13:07:38.500Z
Author: John Moehrke

---

The [ANPRM Metadata Standards to Support Nationwide Electronic Health Information Exchange](http://www.ofr.gov/OFRUpload/OFRData/2011-20219_PI.pdf) has been the focus of my blog article [One Metadata Model - Many Deployment Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html). I will now fill in my answers to the questions that are asked in the ANPRM. These are not my formal answers, but simply my take on the questions. I hope that these answers do get people thinking. I don't include links in my answers because the details are in the article [One Metadata Model - Many Deployment Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html).

>
Question 1: Are there additional metadata elements within the patient identity category that we should consider including? If so, why and what purpose would the additional element(s) serve? Should any of the elements listed above be removed? If so, why

The proposal defines many patient identity attributes that should not be part of the core metadata model. The metadata model should center around describing the document (object) and not around describing the patient. Yes, the metadata needs to be sufficient to link the document content to the patient. Further inclusion of the additional attributes; such as Address, Zip, Date-of-Birth, and Display Name; present both a Privacy/Sensitivity/Security concern but also present an accuracy concern. A HIE is a longitudinal record, so it will include useful documents that are 20+ years old. Further these attributes should be looked to be inside the document. They are not as valuable as metadata. Finally the current and most accurate meta information about the patient's identity is the domain of the patient identity system (e.g. PIX, PDQ, XCPD). This should not be duplicated at the document level. They are different vectors through the information space.

>
Question 2:  In cases where individuals lack address information, would it be appropriate to require that the current health care institutionâ€™s address be used?

When any metadata value is potentially not available there should be well defined behavior. Substituting the institutions address in place of the patient's address is a bad idea, unless the patient really is permanently living in the hospital. Specifically many metadata attributes are defined not because they are mandatory, but because when they are known there needs to be a consistent way of communicating them. Specifically Address is not an appropriate metadata at the document level as my answer to Question 1 indicated.

>
Question 3: How difficult would it be today to include a â€œdisplay nameâ€ metadata element?  Should a different approach be considered to accommodate the differences among cultural naming conventions?

Display Name is an attribute of the Patient Identity Domain; not the document. It should not be considered a required document metadata value.

>
Question 4: Are there additional metadata elements within the provenance category that we should consider including? If so, why and what purpose would the additional element(s) serve?  Should any of the elements listed above be removed? If so, why?

Provenance metadata attributes are important, but should be kept at the whole-object (Document) level. The specific attributes inside the document must  show their own provenance in the context of that document. This layered approach is important for scalability and growth. Document non-repudiation through digital-signatures is a very helpful standard functionality, but should not be incorporated into the metadata model. Digital-Signatures are a layer that can be applied independent of the metadata. This does not mean that provenance values such as author be removed, these are appropriate metadata attributes. Simply separate out the metadata needs from the technology used to deliver specifically non-repudiation. More basically not all uses of data require the very high level of assurance of non-repudiation that a Digital-Signature provides. Forcing Digital-Signatures as metadata will make the model very expensive. This is the same as your correct justification of separation of the confidentiality layer.

>
Question 5: With respect to the provenance metadata elements for time stamp, actor, and actorâ€™s affiliation, would it be more appropriate to require that those elements be expressed in XML syntax instead of relying on their inclusion in a digital certificate?  For example, time stamp could express when the document to which the metadata pertain was created as opposed to when the content was digitally signed.  Because this approach would decouple the provenance metadata from a specific security architecture, would its advantages outweigh those of digital certificates?

Please separate the technology of Digital-Signatures and PKI credentials from the minimal metadata used for authenticity and integrity protection. Some uses will need minimal controls, while other uses will demand Digital-Signatures. By separating, you enable multiple policies. Knowing the origin of a document is a fundamental query parameter, not necessarily only needed for non-repudiation.

>
Question 6: Are there additional metadata elements within the privacy category that we should consider including? If so, why and what purpose would the additional element(s) serve?  Should any of the elements listed above be removed? If so, why

The metadata model should be describing the object (Document), not trying to duplicate the Privacy or Security layers. Privacy and Security policy will leverage all of the metadata provided. Sometimes a privacy policy will request that a specific document be tightly controlled, it will do this by referring to the document unique ID. Other times a Privacy policy will tightly control an episode of care, through the object's time/date ranges. The privacy and security policies are part of the Access Control design layer. These do not need to be duplicated in a metadata model, but rather the metadata model needs to include sufficient metadata to enable Access Controls.  The identified Data-Type and Sensitivity are good examples.

>
Question 7: What experience, if any, do stakeholders have regarding policy pointers?  If implemented, in what form and for what purpose have policy pointers been used (for instance, to point to state, regional, or organizational policies, or to capture in a central location a patientâ€™s 27 preferences regarding the sharing of their health information)?  Could helpful concepts be drawn from the Health Information Technology Standards Panel (HITSP) Transaction Package 30 (TP30) â€œManage Consent Directives?â€

Having the data point at the policy does not scale as objects age. You already enable individual objects to be controlled through having a unique identifier for the object. This is a much more sustainable model. Note that the document already discusses using layers of functionality, such that a wrapping layer (security layer) can include the policies that would need to be met before that layer allows the data to be unwrapped. So, please separate the layers and keep the metadata layer as attributes describing the object (document). I am advocating the model defined in TP30, that is separation of Privacy Policies from Access Control from the objects they protect.

>
Question 8: Is a policy pointer metadata element a concept that is mature enough to include as part of the metadata standards we are considering?  More specifically, we request comment on issues related to the persistence of URLs that would point to privacy policies (i.e., what if the URL changes over time) and the implication of changes in privacy policies over time (i.e., how would new policy available at the URL apply to data that was transmitted at an earlier date under an older policy that was available at the same URL)?

See answer to 6 and 7. Policy pointers are not appropriate at the object metadata layer.  Policy is a different layer.

>
Question 9:  Assuming that a policy pointer metadata element pointed to one or more privacy policies, what standards would need to be in place for these policies to be computable?

There is a lack of current standards for encoding privacy and security policy in a interoperable and computable form. In the mean time we leverage vocabulary such as confidentialityCode, and regional vocabulary for consent types (BPPC).

>
Question 10: With respect to the privacy category and content metadata related to â€œdata type,â€ the HIT Standards Committee recommended the use of LOINC codes to provide additional granularity.  Would another code or value set be more appropriate? If so, why?

The use of LOINC might be sufficient. A USA Realm management of the codes used for metadata 'data type' would be a good mechanism to build. This was a positive output from HITSP, but needs to be further refined and managed. The actual codes used will evolve over time, and there needs to be consideration of this evolution. However the full LOINC vocabulary may be too fine-grained and present a privacy violation. We need to be careful to balance the needs to discover/describe with the needs to protect.

>
Question 11: The HIT Standards Committee recommended developing and using coded values for sensitivity to indicate that the tagged data may require special handling per established policy.  It suggested that a possible starter set could be based on expanded version of the HL7 ConfidentialityByInfoType value set and include: â€œsubstance abuse; mental health; reproductive health; sexually transmitted disease; HIV/AIDS; genetic information; violence; and other.â€ During this discussion, several members of the HIT Standards Committee raised concerns that a recipient of a summary care record tagged according to these sensitivity values could make direct inferences about the data to which the metadata pertain.  Consistent with this concern, HL7 indicates in its documentation that for health information in transit, implementers should avoid using the ConfidentialityByInfoType value set.  HL7 also indicates that utilizing another value set, the ConfidentialityByAccessKind value set which describes privacy policies at a higher level, requires careful consideration prior to use due to the fact that some items in the code set were not appropriate to use with actual patient data.  In addition, the HIT Standards Committee recommended against adopting an approach that would tag privacy policies directly to the data elements. What kind of starter value set would be most useful for a sensitivity metadata element to indicate?  How should those values be referenced?  Should the value set be small and general, or larger and specific, or some other combination?  Does a widely used/commonly agreed to value set already exist for sensitivity that we should considering using?

 The data classification for sensitivity is an important metadata value. It needs to be sufficiently varied to allow for proper segmentation, but also sufficiently broad so as to not expose privacy. This is not to say that metadata be restricted to non-sensitive values, but rather that limiting the risk should be considered. Specifically the ConfidentialityByInfoType is a very bad value-set for exposure outside a controlled environment. This value-set was defined in HL7 for purposes of policy encoding, not use as metadata. The metadata values in the ConfidentlityByAccessKind is defined for interoperability. This poor documentation by HL7 has been identified earlier this year and the HL7 committees are in the process of correcting the documentation. Part of this documentation will be a clarification of the proper uses of each value-set. The other part will be a more clear differentiation of the purpose of confidentialityCode vs other attributes that are used by Privacy Policy and Access Control enforcement such as author, time, unique identifiers, authentication, user-role, etc.

>
Question 12: In its recommendations on privacy metadata, the HIT Standards Committee concluded that it was not viable to include the policy applicable to each TDE because policy changes over time.  Is this the appropriate approach?  Are there circumstances in which it would be appropriate to include privacy preferences or policy with each data tagged element? If so, under what circumstances? What is the appropriate way to indicate that exchanged information may not be re-disclosed without obtaining additional patient permission? Are there existing standards to communicate this limitation?

Please separate out the Privacy Policy functionality from the Object metadata. These are separate domains. They are related and function as layers for scalability.

>
Question 13: With respect to the first use case identified by the HIT Policy Committee for when metadata should be assigned (i.e., a patient obtaining their summary care record from a health care provider), how difficult would it be for EHR technology developers to include this capability in EHR technology according to the standards discussed above in order to support meaningful use Stage 2?

The definition of metadata given is not sufficient to assure interoperability. I recommend that the Metadata definition foundation be the XDS Metadata, with a USA Realm vocabulary bindings. In order to assure interoperability the XDS Metdata must also be bound to transport. This is the role of the XDS, XDR, XDM, and XCA profiles - but the XDS Metadata can also be bound to other transports or API. The binding to these transports is specific to their environment of use. The use of XDS Metadata in the context of XCA is already in practice as part of the NwHIN-Exchange. The use of XDS Metadata in the context of XDM (e-mail media) is already in practice as part of the Direct Project. The use of XDS Metadata is common between these two NationWide projects, and is the basis of the common XDR protocol between these two projects. Under the XDM profile there is an encoding for use on USB-Memory Drives and CD-ROM. There is now a supplement that shows how encryption is handled in all of these environments including a new profile for transport agnostic encryption.

>
Question 14: Assuming we were to require that EHR technology be capable of meeting the first use case identified by the HIT Policy Committee, how much more difficult would it be to design EHR technology to assign metadata in other electronic exchange scenarios in order to support meaningful use Stage 2? Please identify any difficulties and the specific electronic exchange scenario(s).

See answer 13: The use of a common metadata model is very important to enable interoperability, privacy, security, and safety. Metadata is more than a transaction specification, but a factor in the longitudinal use of that data. Metadata needs to consider object types beyond HL7 CDA. DICOM has a document defined by their Structured Report specification. There are many who continue to use unstructured documents in PDF form (e.g. EKG report). There are others using CCR. There are documents that are based on W3C (Digital-Signatures). There are documents based on OASIS (Workflow). There are others that might be using a totally new form. The Metadata defined in XDS was derived from CDA but distanced it-self from CDA to allow for other document types. In this way the XDS metadata needs only that there be a MIME-TYPE defined for the document. If a CDA document, or CDA Header fragment was used, there would be significant overhead for very little value.

>
Question 15: Building on Question 14, and looking more long term, how would the extension of metadata standards to other forms of electronic health information exchange affect ongoing messaging and transactions?  Are there other potential uses cases (e.g., exchanging information for treatment by a health care provider, for research, or public health) for metadata that we should be considering?  Would the set of metadata currently under consideration support these different use cases or would we need to consider other metadata elements?

Over time we need to recognize that patients are free to move globally. Thus a metadata model needs to consider the patient as the center in an environment that is beyond the USA. The XDS Metadata model is being globally adopted.

>
Question 16: Are there other metadata categories besides the three (patient identity, provenance, and privacy) we considered above that should be included?  If so, please identify the metadata elements that would be within the category or categories, your rationale for including them, and the syntax that should be used to represent the metadata element(s).

Metadata categories are better described as uses of metadata. This is to say that the different needs drive a set of metadata. Each metadata attribute tends to have many uses. A good example of this is the use of protecting privacy, which leverages just about all metadata values.

>
Question 17: In addition to the metadata standards and data elements we are considering, what other implementation factors or contexts should be considered as we think about implementation specifications for these metadata standards?

Metadata must also be bound to an encoding, this is typically specific to the transport. For example in the use of XDS Metadata as bound to XDS, XDR, XDM, and XCA.

>
Question 18: Besides the HL7 CDA R2 header, are there other standards that we should consider that can provide an equivalent level of syntax and specificity?  If so, do these alternative standards offer any benefits with regard to intellectual property and licensing issues?

Please re-assess the XDS metadata. It was created through a global initiative over many years of analysis, prototyping, and implementation. IHE started with the evaluation that the CDA Header had the right elements, which seems to be a common understanding expressed in this ANPRM. Yet the CDA Header is not laid out to be Metadata, and is restrictive of the content type. Most important is to separate metadata from privacy/security policy and enforcement.

>
Question 19:  The HL7 CDA R2 header contains additional â€œstructuralâ€ XML elements that help organize the header and enable it to be processed by a computer.  Presently, we are considering leveraging the HL7 CDA R2 header insofar as the syntax requirement it expresses relate to a metadata element we are considering.  Should we consider including as a proposed requirement the additional structures to create a valid HL7 CDA R2 header?

The use of the CDA header is overly exhaustive, and yet the encoding of the attributes as defined by CDA is not necessarily the proper encoding for metadata. Being pure XML is not always the right solution.

>
Question 20: Executive Order (EO) 13563 entitled â€œImproving Regulation and Regulatory Reviewâ€ directs agencies â€œto the extent feasible, [to] specify performance objectives, rather than specifying the behavior or manner of compliance that regulated entities must adopt;â€ (EO 13563, Section 1(b)(4)).  Besides the current standards we are considering, are there performance oriented standards related to metadata that we should consider?

I agree that regulations should be more performance related, for example focusing healthcare advancements on better outcomes. However when defining an Interoperability layer exacting detail needs to be specified. This allow the communicating systems to be developed in isolation and yet fully interoperate. It is the outcome of the interoperability that should be measured through performance. That is to say that the goal is not interoperability or metadata; the goal is to provide better outcomes through some proven workflow that needs interoperability.

**Conclusion**

I am very pleased with this ANPRM. Although I disagree that the CDA Header is the solution, there is much that is right. My main concerns are that there is too much reliance on CDA vs an independent metadata definition that can handle other objects; there is too much expectations that the patient identitiy description be included in the metadata;  and that privacy policy is too tightly bundled.

I have been involved in many metadata discussions including the derivation of the XDS metadata. I learned alot during these experiences and was fascinated at the combined knowledge that was used to create the XDS metadata model. I am not alone in lamenting the unfortunate choice of ebRIM for this metadata model, but it was the best standard available at the time. The model is still the right model. Further the model has been applied to the various HIE deployment architectures (XDS, XDR, XDM, XCA), and could be applied to others as well. See [One Metadata Model - Many Deployment Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html).

