# One Metadata Model - Many Deployment Architectures

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html
Published: 2011-08-15T15:15:00Z
Updated: 2011-08-15T15:15:43.529Z
Author: John Moehrke

---

There is a now an [Advanced Notice of Proposed Rule Making](http://www.ofr.gov/OFRUpload/OFRData/2011-20219_PI.pdf)out asking about Metadata Standards for Healthcare Information Exchange. This is a good thing to be thinking about as we look at exchanging health information beyond the use of the Direct Project. There are many reasons why one might want Metadata, and it is important that each reason be fully understood.

- Object Identification - how is the object being described identified and managed, what is it a replacement for, what replaces it, what is it a transform of, what does it transform.

- Subject Identification - who is the object describing. The patient identity is a touchy topic, but in order to use the data for treatment we must be able to identify the human subject that is described. When the data is not used for treatment we should be aware of how to modify this value through blocking, fuzzing, or pseudonym.

- Object Lifecycle - From where did this object originate? Who is the author? Who is managing the life-cycle of the object? Where do I go to get more information or request a correction?

- Type of Data - What type of object is this? What is the healthcare relevance of the object? These are broad categories.

- Timeframe - What is the timeframe the object describes?

- Object Privacy- how sensitive is the information?

- Object Security - metadata necessary to aid in protecting against risks to Confidentiality, Integrity, and Availability.

These are not mutually exclusive reasons to have metadata. For example when it comes to Privacy controls, we leverage almost all of the other metadata. When the patient wants to restrict documents published by a specific doctor, we use the Author Metadata. When the patient wants to restrict access to a specific healthcare episode, we can write policy against a timeframe. When a patient wants to blank out a specific Object, we use it's unique ID value.

The term** Provenance** is used in the ANPRM, this word is a very loaded word as it is inclusive of many of the metadata reasons above, but can also include data changes. That is within a document what is the provenance of a specific lab result value. This more detailed definition of provenance should be left to the object encoding, and not be brought up into the metadata. At least in the beginning when we are working to get agreement on roadmap stepping stones. This more detailed definition of provenance is absolutely needed at the local Medical Records department level. I am just pushing it out as not critically important for Health Information Exchange sharing. It must be discoverable, hence why the Object Lifecycle metadata is important.

**Metadata vs Layers: **Security need to be discussed in depth as we need to be very careful to not muddy the layers of abstraction. In systems that have proven scaleability a prime characteristic is that they are based on layers, a separation of purpose. For example the Internet protocols are based on the 7 OSI layers, where any one layer totally trusts that the other layers exist and focus only on the task assigned to that layer. I suggest that we must continue this design approach of layers. This is not to say that there is no security in the Metadata layer, but what does exist there is Metadata centric. For example: We don't force the security control of encryption as a metadata attribute, but we expect that the layer below will appropriately protect against risks to confidentiality. What is this layer 'below'? It is the transport packaging. Same can be said for the other risks.  But as with Privacy, Security will use many of the metadata attributes. Another example of abuse of metadata, vs use of layers, is the ANPRM inclusion of digital-signature in the metadata. A digital-signature is important, but it should be handled as a layer.

**Metadata vs the Data it-self:** The recommendation given in the ANPRM is to simply use CDA header as the metadata. This has some unintended consequences:

1) It means that in order to have a service operate on the metadata, that service must have access to all the data. For example, a service that is gathering data in preparation for a scheduled appointment.

2) It means that all objects either must be CDA, or be wrapped in CDA. I like CDA, but it is not the only document type used in healthcare today. DICOM has their Structured Report. Many still use PDF and CCR. The future might hold yet some other document type.

3) It means that any probes to discover the data, must return all the data. Having a subset of the data, metadata, allows for minimal exposure during the discovery phase.

4) This definition doesn't assist with the indexing task. The metadata values should be focused on those things that are most likely to be search criteria, meaning most valuable to be indexed.

This puts metadata on a knife edge between being fully expressive of the content of the object, and expressing as little as possible so as to not expose privacy and security concerns. Thus for each metadata item we need to be clear exactly why it is minimally necessary, especially if the value could be considered sensitive it-self. Often when a value could be considered sensitive it will have a reasonable, non-sensitive, default value.

**Meta-Metadata:** The ANPRM suggests that part of the Patient Identity metadata would be the patient's real name, address, zip, date of birth, and _display name_. I am not against these being potentially part of the metadata, but are they mandatory, are they valid metadata? Can an organization that has a strong Master Patient Identity (or multiple patient identity cross-reference) use simply the numeric patient id value, and not include the patient name and date of birth in the metadata? Remember, the document it-self should include this patient name and date of birth. So, lets not force it into the metadata unless we know it is needed. If we think it might be needed then lets make a place for it, and define how it would be encoded. This is another example of scaleability enabled through separation of function. Patient Identity is a layer it-self. There are services and data-models dedicated to defining Patient Identity. We should not flatten that layer into the Metadata layer. Lets leverage that layer. That layer focuses only on the patient identity and thus can track the identity of the patient across the lifecycle, independent from changes to their medical condition. The documents should be focused on the instant in time that they are documenting. If that moment in time is 20 years ago, prior to a marriage then the patient name will be different.  Which brings up the point that metadata should be an abstraction of the data it is describing, a relatively static set.

**How the metadata is used should** also be considered. That is think not just about the sender, but also the receiver and any value-add intermediaries. Encoding using XML is the cool thing to do now days, but XML is not always the right form for processing. We have come across a few metadata values where encoding using XML seemed like the right thing to do, but when we looked closer at the use of the value we realized that a compact string encoding would be better. The reasons are not obvious, but they come out when you look closely at how the value would be used in comparisons. Think of a metadata value that one wants to know if the value is equal or not equal; such as a Patient Unique ID. With XML there are many options for encoding, so one must do comparisons using the full encoding options. If however you force a specific string encoding, such as an HL7 v2 CX, then one can do a simple string comparison. Now scale this up to a NationWide Health Information Network and think about indexes of Patient Unique ID values that can use simple database searching, vs XML encoded searches. More important to this is that although the sender understands the components, the receiver should treat the whole as either matching or not. To have the receiver pulling apart the components of the Patient Unique ID will ultimately result in broken processing.

**Conclusion**: The XDS Metadata model meets and exceeds all the criteria outlined in the ANPRM. The XDS Metadata model is derived from CDA, as IHE knew that the CDA header had a well thought out structure. But IHE didn't adopt the CDA header outright, as the ANPRM suggests we should, because it recognizes the need to keep the metadata minimal for all the reasons I give above. In fact the model has the extensions that the ANPRM feel they need to do to the CDA header, so the extension is already available. The XDS Metadata model also supports any document type that can be defined with a MIME-TYPE; which means it is not restricted to CDA and can hold any document type that the Internet can define.

The XDS Metadata is not tied to XDS, it has been abstracted out and available for many models (XDM, XDR, and XCA). I guess it should have been given an independent name, but it didn't. A well written [white paper](http://www.himssehra.org/docs/20110629_EHRA_TransportFramework_Final.pdf) by the [HIMSS-EHRA](http://www.himssehra.org/ASP/index.asp) explains how this metadata model applies to the different architectures for Health Information Exchange. This is the metadata model used in the NwHIN-Exchange, which uses XCA and XDR. This is the metadata model used in the Direct Project, where metadata is used XDM is mandated.  This is also the metadata model that bridges the Direct Project and the NwHIN-Exchange Project, that being XDR.

There is an important role to be filled. Where as IHE provides the metadata model, they don't bind it to specific realm vocabulary. So there is a need for some USA focused guidance to bind specific vocabulary. This effort was started by HITSP, but not continued. This effort is necessary to further constrain the XDS metadata.

**Also on my blog elsewhere**

- [Can an HIE forbid copies?](http://healthcaresecprivacy.blogspot.com/2011/08/can-hie-forbid-copies.html)

- [Stepping stones for Privacy Consent](http://healthcaresecprivacy.blogspot.com/2010/08/stepping-stones-for-privacy-consent.html),

- [Data Objects and the Policies that Control them](http://healthcaresecprivacy.blogspot.com/2011/01/data-objects-and-policies-that-control.html),

- [Consent Management using HITSP TP30](http://healthcaresecprivacy.blogspot.com/2010/10/consent-management-using-hitsp-tp30.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls.](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [The Direct Project and IHE/HIMSS](http://healthcaresecprivacy.blogspot.com/2010/11/direct-project-and-ihehimss.html)

- [Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)

- [ConfidentialityCode can't carry Obligations](http://healthcaresecprivacy.blogspot.com/2010/09/confidentialitycode-cant-carry.html)

- [Directed Exchange vs Publish/Discover Exchange](http://healthcaresecprivacy.blogspot.com/2010/10/directed-exchange-vs-publishdiscover.html)

