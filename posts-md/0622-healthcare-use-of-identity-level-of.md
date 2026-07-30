# Healthcare use of Identity level of assurance

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/03/healthcare-use-of-identity-level-of.html
Published: 2021-03-11T16:59:00.003Z
Updated: 2021-03-11T16:59:50.220Z
Author: John Moehrke

---

There is discussion going on in the FHIR chat on this topic. I wanted to capture details as it seems that most of the problem is getting everyone understanding the same thing. The discussion is specific to an open system for recording and showing that an individual has received a COVID-19 immunization. (see [HL7 effort on vaccination credentials](https://github.com/dvci/vaccine-credential-ig) and  [broader outreach](https://vaccinationcredential.org/)). There are other COVID-19 immunization trancing efforts, the above just is the one I am most closely working with.

The summary is that there is likely good valid use for having a IAL like vocabulary to be used in Patient.meta.security to indicate to which level of assurance was this identity proofed. This because it is not uncommon to have some patients able to bring a government issued picture ID like a passport or REAL-ID, where other patients will not have this kind of an identifier, and other patients might have nothing, and others that are completely un-identifiable.

Where the use of an AAL vocabulary is theoretically useful as an attribute of the Immunization.subject binding to the Patient; but this is not as obviously needed. More realistic is that the whole of the Immunization resource (Immunization.meta.security) could hold an integrity confidence value. But event that is not likely to be needed as the system likely has a required assurance needed before ever giving an immunization and thus there is not a need to indicate the assurance as all records will be at the same level by policy.

Basics of Assurance LevelsThere are two concepts that are very important and important to understand. I will use [NIST 800-63](https://pages.nist.gov/800-63-3/sp800-63-3.html), but the overall use-case is not a USA specific thing. The use of NIST here is simply because the discussion was USA specific, and the NIST specification are easily accessible. I welcome someone providing me the ISO equivalent, but ISO is too expensive and hard to access.:

- IAL -- [Identity Assurance Level](https://pages.nist.gov/800-63-3/sp800-63a.html) - refers to the identity proofing process
- AAL - [Authentication Assurance Level](https://pages.nist.gov/800-63-3/sp800-63b.html)- refers to the authentication process
- FAL -[Federation Assurance level](https://pages.nist.gov/800-63-3/sp800-63c.html) - refers to strength of an identity in a federated system.

Note I am not going to address FAL, thus the key concepts are IAL and AAL.Wrong but usefulVery important to recognize that NIST 800-63 is focused on Remote connection using IT technologies. Where as much of what I am going to address in healthcare is not exactly only scoped to this. However the use of the Vaccine Credential is a remote access use, but in that use-case we are focused on data assurance levels, not user assurance levels. So there is dissonance, but it is the best I have to use as a model.... as George Box said, [All models are wrong, but some are useful](https://en.wikipedia.org/wiki/All_models_are_wrong).
IAL is broken down into three conceptually defined levels
- IAL1: There is no requirement to link the applicant to a specific real-life identity. Any attributes provided in conjunction with the authentication process are self-asserted or should be treated as such (including attributes a Credential Service Provider, or CSP, asserts to an RP).
- IAL2: Evidence supports the real-world existence of the claimed identity and verifies that the applicant is appropriately associated with this real-world identity. IAL2 introduces the need for either remote or physically-present identity proofing. Attributes can be asserted by CSPs to RPs in support of pseudonymous identity with verified attributes.
- IAL3: Physical presence is required for identity proofing. Identifying attributes must be verified by an authorized and trained representative of the CSP. As with IAL2, attributes can be asserted by CSPs to RPs in support of pseudonymous identity with verified attributes.

AAL is broken down into three conceptually defined levels
- AAL1 provides some assurance that the claimant controls an authenticator bound to the subscriberâ€™s account. AAL1 requires either single-factor or multi-factor authentication using a wide range of available authentication technologies. Successful authentication requires that the claimant prove possession and control of the authenticator through a secure authentication protocol.
- AAL2 provides high confidence that the claimant controls authenticator(s) bound to the subscriberâ€™s account. Proof of possession and control of [two distinct authentication factors](https://pages.nist.gov/800-63-3/sp800-63-3.html#mfa-definition) is required through secure authentication protocol(s). [Approved cryptographic](https://pages.nist.gov/800-63-3/sp800-63-3.html#approved) techniques are required at AAL2 and above.
- AAL3 provides very high confidence that the claimant controls authenticator(s) bound to the subscriberâ€™s account. Authentication at AAL3 is based on proof of possession of a key through a cryptographic protocol. AAL3 authentication SHALL use a hardware-based authenticator and an authenticator that provides verifier impersonation resistance; the same device MAY fulfill both these requirements. In order to authenticate at AAL3, claimants SHALL prove possession and control of [two distinct authentication factors](https://pages.nist.gov/800-63-3/sp800-63-3.html#mfa-definition) through secure authentication protocol(s). [Approved cryptographic](https://pages.nist.gov/800-63-3/sp800-63-3.html#approved) techniques are required.

Note that NIST only defines these conceptually. NIST does not define them tighter as the tighter definitions would need to be cast within a Policy, Procedure, and Technical space. The Levels are useful, but they are not explicit. This is most easy seen with the AAL definitions.

The [NIST 800-63 specification](https://pages.nist.gov/800-63-3/sp800-63-3.html) is very easy to read, and understanding of the distinction between IAL, AAL, and FAL are very important. Please do not continue without understanding the distinction between IAL and AAL.
Use of Assurance Levels in healthcare workflowThe use-case that I will use for illustration here is a standalone system that is recording COVID-19 immunizations. I am not going to say that this is a good use-case, but it helps focus on the impact of IAL and AAL. So in this use-case there are three important activities.

- getting the Patient identification information.
- recording the immunization that was given to the patient
- relying-party using the immunization credential to allow the patient to do something

Note that there is other steps and considerations that I am not covering: medical, safety, procedural, cleanliness, etc. So, yes I presume that the patient will be asked about allergies, that the immunization site will be cleaned, etc...
Step 1: getting the Patient identification information:In step 1, there will be some Patient identification information captured. I am also not addressing the process of looking up the patient to see if they exist already, vs creating a new, vs resolving duplicates, etc... that is important, but I am focusing on specifically how SURE is the system that the human present is the one described by the Patient resource that will be used in step 2. So some data are requested of the Patient, some process is used to confirm that the identifications presented are valid and appear to be the patient. Likely the Patient is physically present, and that some government issued picture identification is provided. Thus, it is not hard to have a procedure that gets to IAL3, but some patients might not have a government picture identification. Thus the need to record "to which level of assurance was the patient proofed at the time the Patient resource was created or selected?"

An IAL is a statement of this "proofing" level of assurance. This level is persistent statement. Meaning the next day the FACT of this IAL is still true. Because the IAL is a proofing of identity.  Note that step one could have been done ahead of time, via online portal or phone or other methods.
Step 2: recording the immunization that was given to the patient:In step 2 is specific to some activity, such as administering the vaccine. For example, the step 1 proofing might have been done the prior hour, the prior day, or the prior month. But Step 2 is needed to be done at the time the vaccine is being administered.

Note that some argument that NIST 800-63 is focused on IT concepts, and not physical acts. However I think that it is not specifically focused on IT activities. Certainly it is used mostly regarding IT concepts. There is certainly some application of AAL to physical access (door locks), and in this immunization an activity.

So when the vaccine is administered there are many other things going on other than Authenticating the patient. Indeed in medicine there is a concept of "[The Five Rights](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2957754/)". One of the Five is to confirm that you have the "Right Patient", which is a step to make sure you are not giving a medication (vaccine) to the wrong patient. Typically this process step is the nurse looking at the wrist ID band. However the step is done, this is an "Authentication" step. Thus the question of how sure are you that you have the right patient?

This making sure you have the Right Patient at this activity of giving an immunization is based on the strength of the identity of the patient. So it is true that step 2 is based on step 1.
Step 3: relying-party using the immunization credential to allow the patient to do somethingStep 3 is unusual to talk about in healthcare, but is ultimately the goal of an immunization credential. The whole purpose of this is to enable the patient to carry on life as normal because they have evidence that they are free from infection. Above I am only addressing the case where a vaccine has been given, but the overall also includes some means for lab test results as well.

So at this point the relying party might need a light-weight or moderate-assurance; as the event is a family event or an event where risk is low; but the relying party might be needing a very high assurance such as an international flight. The relying party does need additional security mechanism to prove that they are authorized to get the patients immunization credentials, and also that the results only go for that purpose. I am not addressing these classic security topics. They are significant, just not on the topic of this article.

The relying party would like a clear and simple result. Thus they don't want to get complex listing of the methods used to provision or authenticate the patient; they want a simple YES or NO. Thus they need a value similar to the three IAL values.

Some relying parties might want to know the methods used, so it might not hurt to also have a second vector recorded which is the method used.

The relying-party is very unlikely to care about the step 2 assurance at each immunization. Not because it isn't important, but because it is less important overall.
IAL of the Patient Resource.Both step 1 and 2 are important to step 3. overall. The question is if they both must be recorded in the FHIR resources.. I had given the example of (2) being part of the process behind the Five Rights. If your procedure is strict, then recording that you followed the procedure with a (2) kind of record is not needed. The same can be said for (1), for example if a Patient Registry requires that the patient was highly proofed before they were given a Patient record, then the Patient resource does not need a (1).

So it is important to understand which of these is going to be variable within your data. If you know that (1) is going to vary within your data, then you need a way to record which value of (1) each Patient resource has been proofed at. If you know that (2) is going to vary within your data, then you need a way to record the (2) for each reference.

Step 1 can be handled with the [Patient.meta.security](http://patient.meta.security/) with a valueSet of IAL vocabulary. This seems appropriate as it is "meta" about the contents of the "Patient" resource. The vocabulary is unclear, but the concept is clear. An IG specific vocabulary (which the vaccine-credentials project seems to be doing) seems reasonable.

AAL of the link between Immunization and PatientSeems that if 2 is variable, then this needs an extension on the Immunization.patient element to indicate the AAL of the patient binding to the Immunization activity. This would need a different vocabulary, as AAL is different from IAL. (Even though NIST 800-63 uses numbers for both).

Further (2) is not security meta about the content of the Immunization.patient element; it is specifically an AAL of the linkage confidence. Thus this is not a general extension carrying .meta.security at the element level (which is a task that DS4P is likely to add). The AAL need is different.
General method of recording confidence of ReferencesThis (2) might be first needed in this Immunization use-case, but one could see that this is generalizable such that any Reference anywhere in FHIR might need some evaluation of level of assurance that the reference value given is absolutely correct.  Further in FHIR a reference is a technical term referring to Reference datatype, but the concept of a reference also includes all uses of the Identifier datatype (which is included in the Reference but sometimes stands alone). So the concept is needed on both Reference and Identifier datatype.

We surely expect that any Reference in FHIR is always highly sure, we all know mistakes happen. We all know that sometimes an Identifier is recorded without high assurance, like the Patient brought in a photocopy of their passport.  What is not clear is if there is a true generalized need for the FHIR DataType Identifier/Reference to add a core extension for tracking the confidence of the reference values.  This might be a useful exercise, and as an extension would not be too invasive.
ConclusionSo, now that I have elaborated about the need for (1) and (2) theoretically... which ones are actually needed in the vaccine use-case, and which ones might be more generally needed? These both seem unusual to be needed as values, vs simply being baked into procedure/policy.

The IAL at the Patient level seems realistically needed, given that some individuals already have high assurance identifiers such as Passport or Real-ID that can be used during provisioning of the Patient resource; where as clearly other patients will not have this, and realistically there are others that will have nothing to base the identity proofing activity upon.. So Patient.meta.security does seem useful.

Where as the AAL of the binding between Immunization and the Patient seems more theoretical, and the use of "The Five Rights" tend to elevate the confidence to a high level. Thus it seems this is mostly theoretical, thus not urgently needed. This is not to say it isn't ever going to be needed. Just not the main focus need today.

With IAL on Patient; there seems to be a need for two evaluation vectors. A policy vector much like IAL from NIST, this policy vector states a conclusion made at the time the activity happened. This IAL like value would consider policy, procedures, technology, evidence, etc... A second vector would be more concrete, there should be a valueset of codes that identify current-practices. This vector on the Patient would support the IAL value, but would also allow a relying-party to more dynamically adjust their reliance on the assurance level.

