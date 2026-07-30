# Privacy and Security Considerations for the use of Open APIs for Patient Directed Exchange.

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/07/privacy-and-security-considerations-for.html
Published: 2018-07-29T15:52:00.001Z
Updated: 2018-07-29T15:52:10.791Z
Author: John Moehrke

---

I have the great honor to be hosting a panel discussion in Washington DC as part of the [Office of the National Coordinator's 2nd Interoperability Forum](https://www.healthit.gov/news/events/oncs-2nd-interoperability-forum). This event is, next week, August 6-8. My panel is scheduled for the afternoon of August 7th, from 1:30 to 3:00 pm. My panel title is "Privacy and Security Considerations for the use of Open APIs for Patient Directed Exchange."

Here is the main vision for this panel:

>
Assuming that we agree that patient advocatesâ€™ and privacy advocatesâ€™ vision is our goal; what lack of _standards _is getting in the way.  This is not a discussion about what the goal is, but rather it is meant to focus on what is still preventing the big stakeholders from embracing this vision.

General flow

Before my panel is a "Blockchain" topic and "Identity and Trust"; after my panel is a Lighting round where some new tech will be showcased.

Where Blockchain and the Lighting round will be clearly looking to new and shiny tech; I am hopeful that Identity/Trust, and my segment will be more grounded in reality.

I have invited to my panel individuals representing **very large organizations**, very well established organizations. The reason I did this is because we don't get to hear publically from this perspective. Mostly the reason is because when _this _size of an organization makes a change, it affects MANY. However this size of an organization can't make quick changes. This size of an organization can't make risky changes. This size of an organization NEEDS some _standard_ to guide them. This _standard_ must be mature and have partner acceptance.

Yes, sometimes a large organization can lead. This does happen. But it happens toward a _standard. _Example is [Apple adopting FHIR](https://healthcaresecprivacy.blogspot.com/2018/02/apple-should-have-heart.html).

What's a Standard?

Where in this panel _standards_ is the broadest view. Inclusive of :

- **Interoperability Standards -- **from the likes of HL7, FHIR, and IHE;

- **Vocabulary Standards** -- from the likes of HL7, SNOMED, LOINC, IEEE, ISO, etc;

- **Implementation Guides** -- specific use-case analysis with specific solutions -- From Argonaut, IHE, or ONC;

- **Standards of Practice** -- professional society guidance from HIMSS, AMA, and other medical professional societies;

- **Standard policy framework** -- Legal framework that encompases many reglations and defines appropriate use and responsibilities;

- **Trust Framework** -- Multi-party trust agreement that binds the parties to a set of rules and mitigations, backed by technology (like Certificate Authority). For example Sequoia [DURSA](https://sequoiaproject.org/ehealth-exchange/onboarding/dursa/) or [DirectTrust](https://www.directtrust.org/);

- **Reference Implementation** -- software provided in open-source by a consensus body as an implementation of a standard. Such as the [many FHIR open source projects](http://wiki.hl7.org/index.php?title=Open_Source_FHIR_implementations);

- **Standard Interpretation of Regulation** -- like HHS/ONC has done with for example [the use of email with patients](https://www.hhs.gov/hipaa/for-professionals/faq/570/does-hipaa-permit-health-care-providers-to-use-email-to-discuss-health-issues-with-patients/index.html); and

- **Laws and Regulations** -- we all hope for as few regulations as possible, but sometimes they are needed.

Ideal Patient Centered Privacy

Here are my notes extracted from my blog on [Privacy Principles](https://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html). I hope not to cover these in this detail, but am ready to if need be. I think it is important to recognize ALL of these Principles, not just "Consent".

- **Collection Limitation Principle **--  There should be limits to the collection of personal data and any such data should be obtained by lawful and fair means and, where appropriate, with the knowledge or consent of the data subject.

- **Data Quality Principle** -- Personal data should be relevant to the purposes for which they are to be used, and, to the extent necessary for those purposes, should be accurate, complete and kept up-to-date.

- **Purpose Specification Principle** -- The purposes for which personal data are collected should be specified not later than at the time of data collection and the subsequent use limited to the fulfilment of those purposes or such others as are not incompatible with those purposes and as are specified on each occasion of change of purpose.

- **Use Limitation Principle** -- Personal data should not be disclosed, made available or otherwise used for purposes other than those specified in accordance with Paragraph 9 except: a) with the consent of the data subject; or b) by the authority of law.

- **Security Safeguards Principle** -- Personal data should be protected by reasonable security safeguards against such risks as loss or unauthorised access, destruction, use, modification or disclosure of data.

- **Openness Principle** -- There should be a general policy of openness about developments, practices and policies with respect to personal data. Means should be readily available of establishing the existence and nature of personal data, and the main purposes of their use, as well as the identity and usual residence of the data controller.

- **Individual Participation Principle** -- An individual should have the right:a) to obtain from a data controller, or otherwise, confirmation of whether or not the data controller has data relating to him; b) to have communicated to him, data relating to him within a reasonable time; at a charge, if any, that is not excessive; in a reasonable manner; and in a form that is readily intelligible to him; c) to be given reasons if a request made under subparagraphs(a) and (b) is denied, and to be able to challenge such denial; and d) to challenge data relating to him and, if the challenge is successful to have the data erased, rectified, completed or amended.

- **Accountability Principle **-- A data controller should be accountable for complying with measures which give effect to the principles stated above.

Modes of Communication
I am not constraining the mode of healthcare data communication. I want us to be inclusive of "Mediated" exchange, "Directed" exchange, "Controlled" exchange, and "Negotiated" exchange. I have not seen these formally defined, so here is my informal definition. Let me know if you know of another mode of communication.

- **Mediated Exchange** -- where the Patient themselves is an active part of the communication pathway. Such as carrying the data within their possession, using a personal device and application, --- Such as using a phone resident App using FHIR to download their data, then upload that data to some recipient.

- **Directed Exchange** -- where the Patient actively requests that the information flow to a selected destination. --- Such as a patient using Direct Secure Messaging, or where a patient requests that the data be pushed.

- **Controlled Exchange **-- where the Patient does not get directly involved in the communication, but should be understanding of the communication and possibly have control. over that communication ---- Like using Health Exchange between Provider organizations

- **Negotiated Exchange **-- where the Patient themselves connects two parties and authorizes the flow between those two parties. This might use the HEART standard for authorization, and FHIR bulk data access.

Are we there yet?
So, _standards _in the broadest definition are important to the large organization. So I want to hear from them, what _standard _is still need. What lack of a _standard _is preventing them from achieving the vision of the Privacy and Patient advocates?

I would love to hear: "_Nothing is needed, we are already there._" I think we are closer than many think. I know that my efforts within the VA on their Patient Portal -- [My HealtheVet](https://www.myhealth.va.gov/)-- shows that they are really close.

I do expect there is still some _standards_ needed. Identity? Authentication? Consent? Care-Team? Provenance? Data-Tagging? Obligations? App-Validation? App-Store?

I certainly have blog articles on many of theses topics: [FHIR](https://healthcaresecprivacy.blogspot.com/p/fhir.html),  [Privacy/Consent](https://healthcaresecprivacy.blogspot.com/p/consent.html), [Health Exchange](https://healthcaresecprivacy.blogspot.com/p/topics.html#HIE), [Blockchain in Healthcare](https://healthcaresecprivacy.blogspot.com/p/topics.html#Blockchain), [De-Identification](https://healthcaresecprivacy.blogspot.com/p/topics.html#DEID), [Patient Identity](https://healthcaresecprivacy.blogspot.com/p/topics.html#PID), [Direct](https://healthcaresecprivacy.blogspot.com/p/topics.html#Direct), and even [GDPR](https://healthcaresecprivacy.blogspot.com/p/topics.html#GDPR).

