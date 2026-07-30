# IHE - Privacy and Security Profiles - Basic Patient Privacy Consents

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html
Published: 2011-08-09T13:35:00.001Z
Updated: 2012-12-31T04:05:31.962Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj5LCFd47GqYYa-bfx3y-8rxitI8JoiW9fbHJWKo2YjnYDpciWssmMqb-qbHMTxUC9qZ8lqyvTnkrVOPXhyphenhyphenD9ZS8cyS2E_NIDI2lW8jvR0DARKygq_zrHuYtsGGDNl-jGZkDJYQAC5s1vtV/s1600/Slide44.PNG

Across organizational boundaries it is sometimes important to have a way to express allowances or restrictions on healthcare data access because of the patients own wishes. There are cases where the allowed use-cases are so tightly constrained that a data-holder can completely make the decision to share or not and there is no need to communicate patient privacy policies, such as in the USA NwHIN-Exchange where the decision is made at the time of access, and a copy is completely transferred into the control of the requesting organization.

The need to include patient wishes in the access control decision is somewhat unique to healthcare, where there is a dual 'ownership' of the data. In most industries any information they have to share have simple one directional ownership, even if there are cases where a service is exposing intellectual property of others, the exposing organization obtains clear use of the data (e.g. images inside a mapping tool). In the case of healthcare information the patient has a stronger desire and need to control the information. This is related to the personal nature of the data, but also to the irrevocableness of the information. Once this information is exposed there is no way to revoke the information, such as there is with credit-card numbers.

IHE started this profile in May of 2006, but could find no standards available that met the complex need.  This is why the profile is clearly identified as "Basic", as we knew that this would not satisfy all use-cases, so we created the [Basic Patient Privacy Consents](http://wiki.ihe.net/index.php?title=BPPC) profile. The profile can satisfy a few cases where the policies are simple; essentially pre-coordinated policies.

- In a cross-enterprise or cross-community environment how are the Privacy Preferences of the Patient (Consumer) made known and thus enforced?

- Consent is given and retracted

- Consent in some environments is only for a specific time

- There may be many consents relevant to different organizations or situations

- Need to support Privacy Policies beyond consent, such as authorizing research access

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgGjWj7aPcmZ11fYwhtA8EeINLMijTRjTh-75P4OXRWOKOskGsYMxSnqr8ekfapeA80JAadXzo8Dz5Jlljx-YtEhyphenhyphenxaOQmv5yQFqi8oL3w5vry2CNoB_roON1dP1J4fiLoxCtDdMkZAKJlg/s1600/Slide45.PNG

**Step 1: **The first thing that must be done is that organizational policies must be written. That is there needs to be some policy domain that is agreed to that is inclusive of all the organizations participating in the Health Information Exchange. Within this space a set of policies need to be written in detail, e.g. Opt-In, Opt-Out-Fully, Opt-Out-Safe, No-Publish, etc. Not just titles, but exactly what do they mean. For example what is the impact of each of these on Role-Based-Access-Control, Emergency-Override, Chain-of-Command, Patient-Access, Regulatory-Controls, Workflows, etc. Don't forget to define what the rule is when no consent has been obtained. This is truly the hard part, and a part that needs to be done regardless of how capable the privacy consent system is.

Now that you have a set of policies that would be offered to the Patient to choose from, give them each a unique identifier (i.e., privacy-OID). Configure all access control engines to recognize what that privacy-OID means, that is to execute a specific set of access control rules. The mechanism will be unique to each implementation of access control engines. The future 'advanced' consents would support encoding the meaning in computable statements that can be read by the access control engine directly. In this future state the policies are not pre-coordinated, but post-coordinated. This future is still not here today.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhYLH_ijdAfw5_AkNZOIN3X3v9eRlOx2uwHTqVcuQ8YmpcJrHTS_Zw_hpBng3QmGC_ZZ7vUfDBb_QQnlLQsUtKny8-3sEKdtSArxsyIJiKJiLZIQtdJGWXYNKwtkoTdkrHFlQmyEzzN0wgi/s1600/Slide46.PNG

**Step 2:** This step is all about capturing each patient's consent. The actual human interaction with the patient is beyond an 'interoperability' profile, but some application or human needs to provide the different choices to the patient. This user interface is critical to success as the patient needs to be well informed but not overwhelmed. The patient will choose which of the choices they agree with, this is the 'acknowledgement' step. We use 'acknowledge' as some policies are explicitly denying access, so 'consent' is not descriptive.

The BPPC profile indicates how to create a CDA document that includes the ACT by the patient of 'acknowledging' the specific privacy policy or policies. This new document is now a representation, token, that captures the act of agreement by the patient and the organization authoring the document. This CDA document can include, embedded inside, a PDF image such as an ink-on-paper signature by the patient. This CDA document could be digitally signed using the Document Digital Signature Profile. This CDA document could have limits placed on the timeframe of the consent, very useful in some regions where consent is only for an episode of care.

This CDA document is then published in the same way that clinical documents are published, it has some specific metadata values to make it easy to find and easy to understand (the natural reason for metadata). Some regional implementations have chosen to create two document sharing infrastructures, one that holds only BPPC consent documents; the other holds all the clinical documents. This is usually done to separate, segment, the control documents from the clinical documents. This separation can be easily done virtually through an administrative confidentialityCode

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiHGLpATJGgBf0M24s1EW_kACuLfWTqnRxRyalWt9snPeL3AH1LlG5jnRGJPJzp4ssXPx6PJj15BPoTYybFPAdVOCh5V698Tba-Xt2KuPE9-87-jCpXqdUzRV8KLg5wgEojUSsWBPKRq89C/s1600/Slide48.PNG

**Step 3**: This step is about Enforcement by the members of the  Privacy Domain. As indicated in Step 1 above, each unique policy identifier is pre-configured in all access control enforcement engines.  Any one of these access control engines could be audited to show that they do indeed enforce the policy appropriately.  These access control policies could leverage profiles such as ATNA for system identity, [XUA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)for user identity and purpose of use, and directory information about users for other attributes.  One specific purpose of use could be a privilege escalation request through the declaration that the user has invoked a break-glass functionality.

Due to the BPPC defined metadata for this CDA document that holds the consent acknowledgement, there are very simple queries for the XDS metadata that are all that is needed to determine which policies have been agreed to. There is no need to pull the copy of the CDA document. The Access Control engine simply needs to do an XDS/XCA query for BPPC type documents. If zero results are returned this indicates that there are no consents on file. For every result that does return, the startTime and stopTime indicate the validity time for that consent, thus allowing for episodic consents.  The resulting entries can be examined for the eventCodeList, the list of consent-OIDs that have been acknowledged. The Access Control engine just looks up these codes internally for the rules to apply (for example where the consent-OID is an XACML policy identifier).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjCCVq7YP3YtF2UNj8V4dx9y3R2eHpVh8BrPU_CdEXyrUwf675ZE8_S0ni2NWM3K1jJIsVjli3cfWVuFX8aDXWSE-HA-CM59awxT4JSonZU2fTefSGyYd29nDUya3wt8uthBCzk-vRGl_14/s1600/Slide49.PNG

**Standards: **The key standards are CDA, with optional inclusion of a Digital Signature, and/or Scanned Document (PDF). The intended environment is XDS, XDR, XDM, or XCA. It is also possible to use the BPPC Document in other ways, they are just not explained in the IHE profile.

BPPC has been further developed in HL7 as part of a Draft Standard for Trial Use on Consent templates using CDA. This Draft is a logical extension of BPPC, and the transition of an operational environment to these advanced CDA consent documents, when they are available, should be an easy transition.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEixDFr9EWBhs4XTGakPXw_3_-p8L0qbF_im9YkXmfB9Qb2PTVFnv3mxDfIxFLD0jzoCQAKL6ZXXxrX9C8203jlQKYrxto8GnhIJIenn09-Kv6kuOOG6Qt02hSxvN3EpPSXT_ke1WG-qfFmr/s1600/Slide49.PNG

**Diagram showing a potential implementation of OPT-OUT: **The logic shown is not mandatory, but is shown as illustrative of how this might be implemented using [XUA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)in an XDS environment that enforces the BPPC consent, specifically OPT-OUT, in the Health Information Exchange. All accesses shown would also be protected and monitored by [ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)to assure that only trusted systems are involved and that all accesses to sensitive information is recorded in the security audit log.

- The user is authenticated, typically as part of their long-term session.

- At some point the system queries the HIE and includes a XUA assertion along with the XDS Query parameters

- An Access Control service intercepts the transaction and inspects the XUA assertion and XDS Query parameters

- The Access Control service looks for any OPT-OUT BPPC documents, If the patient has agreed to OPT-OUT; then the access control service responds with zero-results-found.

- If there is no OPT-OUT, then the query is forwarded to the Document Registry that processes it normally

- And returns the normal results

It is possible that  the return results could be further filtered based on the ROLE of the user, but that is not shown here. This is the topic of slides later on.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEioTzNg1tq8ArNZFuFx-NIIkXpoehM1wZF0HldZi0t3k3N5PzTG0VgPhYAkN1e4Tj0fUHTm5OiXsGc90c7egzGzBtcnaalho0VjMCHuYfdeRXsX7-nCkrDnCfRBAVK6u-NgEpxrXeUX5G6E/s1600/Slide50.PNG

Although BPPC is 'Basic', it does enable communications of the patients agreement to simple pre-coordinated policies such as Opt-In and Opt-OUT. It can enable episodic consents that are time limited. It can be used to enable specific authorizations such as research projects, or clinical trials. It could be used to enable authorizations that are site specific, where the patient might authorize one organization to have access but not others. The profile is designed to be easily integrated into access control environments, yet be on the logical pathway to more advanced consent policy languages.

**References:  **

- Status: Final Text

- IHE ITI Technical Framework

- Vol 1: Section 19

- Vol 3: Section 5.1

- Options added to other transactions

- Vol 2a:  Section 3.18

- Vol 2b: Section 3.32, 3.41, 3.42, 3.43

**Additional Comments**

- Uses CDA to capture that the patient has agreed to a policy by reference

- The policy is not actually ever described in the profile or the document, just referenced. This is because there is not sufficient maturity to any standard for encoding of privacy policies. Therefore BPPC assumes that someone can write the policy in human readable language and give that a unique identifier (OID). This OID is used as a reference.

- Supports the consent being digitally signed with DSG

- Supports encapsulation of a scanned image of something (e.g. an ink on paper signature) using the XDS-SD profile

- Supports time limited consents

- Supports both positive policies (OPT-IN) and negative (e.g. OPT-OUT)

- Recognizes that the absence of an instance of a policy means that some other policy is in place. Commonly called 'implied consent'.

- Defined for XDS, XDM, XDR, XCA - and may work for other environments

- See [Stepping stones for Privacy Consent](http://healthcaresecprivacy.blogspot.com/2010/08/stepping-stones-for-privacy-consent.html), [Data Objects and the Policies that Control them](http://healthcaresecprivacy.blogspot.com/2011/01/data-objects-and-policies-that-control.html), [Consent Management using HITSP TP30](http://healthcaresecprivacy.blogspot.com/2010/10/consent-management-using-hitsp-tp30.html)

**Back links**

This is part of a blog presentation of the IHE Privacy and Security Profiles Overview:

- [Introduction to IHE impact on Meaningful Use](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html)

- [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [This Page](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

