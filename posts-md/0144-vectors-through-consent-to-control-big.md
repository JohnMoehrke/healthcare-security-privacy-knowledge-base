# Vectors through Consent to Control Big-Data Feeding frenzy

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/08/vectors-through-consent-to-control-big.html
Published: 2016-08-25T01:37:00Z
Updated: 2016-08-25T01:37:00.097Z
Author: John Moehrke

---

This is part of a series of articles on the various [Privacy Consent](https://healthcaresecprivacy.blogspot.com/2016/08/consent-process.html) mechanisms that are being developed in[HL7, IHE, and HEART](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html). This article will detail the various vectors that Patients desire to control. This discussion will not be on any of the specific solutions, but rather the overall requirement.

For some background, please see my prior article [Controlling Big-Data feeding frenzy with Privacy Consent Authorization](https://healthcaresecprivacy.blogspot.com/2016/08/controlling-big-data-feeding-frenzy.html)

First step is to recognize that [Privacy Consent](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html) must enable the Patient to define Rules and Obligations. This is abstractly represented by their Policy -- My Policy -- which follows their Data.

Thus when someone or something tries to access the their Data; there is an authorization (AuthZ) check done. This authorization check assures that the Patient would be happy allowing their data to be used in the way that the someone or something is going to use their data. I am speaking abstractly, so no specific authentication, context, method, obligations, etc... Just that the Patient would be happy, not upset.

I have taken from my other article, the five elements.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj5klfIVPeb7oldryBtg1hCOPhAv6f32Pf6hRqmMLrDPZmpUQ8xu4905wV4J8zynusOFvsH7UJL84pXqi7e_uWOpfRJjNj5LVIDWJ-GMFgyhL9WYHV18w2tWcUWkQo_a0dRVMG4ah5-rCSy/s1600/Slide8.PNG

- The Patient -- Smiling

- The Patient's policy - "My Policy"

- The Patient's data - "My Data"

- The someone or something that wants to gain access

- The Authorization decision that is based on the request, and the patient's policy

The solutions being created by [HL7, IHE, and HEART](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html); are specifying these things in different ways. The differences are important, although the goals are the same.

In all models they look to address the Privacy control. They all are careful to make it clear that businesses holding data must and can still control their data according to their rules. So this is not a replacement or hindrance of Role-Based-Access-Control (RBAC), or other mechanisms that manage workflow centric authorization.

My Policy -- rules

The contents of "My Policy" are potentially very complex. I have covered the space back in 2011 in "[Access Controls: Policies --> Attributes --> Implementation](https://healthcaresecprivacy.blogspot.com/2011/11/access-controls-policies-attributes.html)", an article still valid. The policy might be very simple, or might be very complex. The solutions might be able to manage the simple, and only some of the complex.

The most simple is

**NO!**

That is right, the most simple is when the patient has either explicitly said "no" or has through inaction in an explicit-consent environment.

My Policy - unknown

Right away I had to add a different situation. That is what is the Policy when the Patient has not yet expressed their choice or agreement or 'consent'.  The more hard part about this is that the policy that is in place when the Patient has not yet expressed consent is often driven by Law/Regulation, or Medical-Ethical standards.

There is a concept of "Implied Consent" that is related, but not exactly the same. Implied Consent is the policy that is in place when the Patient has taken an action to engage, but has not yet expressed an explicit consent. That is through their actions to go to a Doctor, they are implicitly consenting to some default form of "YES". This default form of "YES" might not be obvious. HIPAA requires that the Doctor post Notification of Privacy Practices.

Medical-Ethics is the moniker where a treating clinician, under their Hippocratic oath, can determine that it is better for your safety, or the safety of others, that you be treated regardless of your explicit denial of authorization, or absence of authorization. Most medical-ethics will keep this 'invasion of privacy' to a minimum. There maybe a technical override used, often called Break-Glass.

A patient that doesn't even want break-glass used must be really insistent. Most "NO!" indications have many exceptions. Not just medical-ethics, but required government reporting, required medical records retention, etc. Many of these simply can't be wished away. This is why the "My Policy" space in all models expects only to control the data to the level of control given to the Patient. Which sadly is sometimes is very little, Otherwise known today as "Data Blocking".

My Policy - Vectors

I am going to use the word "Vectors" as each of the following are independent attributes and controls. Most of them can be combined in various ways. This is best modeled using mathamatics using "Vectors".

The category of things to control:

- User - the context of the request for data

- Application -- what is going to process the data

- Resource -- the data

User

- User Identity -- who is this specific user (e.g. userId, Provider-ID, nationally issued ID)

- User Relationship -- what is the relationship between the user and the patient (e.g. care-team, mother, son, guardian, lawyer, law-enforcement)

- User Role -- what is this user functionally doing that requires access to the data

- User Organization -- what organization is the user working within

- User Purpose - what is the user going to do with the data (e.g. Treatment, Payment, Public-Health, Research, Disclose)

- User Location - where is the user, and thus where might the data go

- User timeframe - when is the user access happening

Application

- Application Identity - what application will get access to the data

- Application Security-- what is the security of the application

- Application timeframe - how and for how-long will the application persist the data

- Application promise - what assurances can the application give on how it will treat the data

Data

- Data Identity - unique identifier of the data

- Folder Identity this data sits within

- When was the data created

- When was the data last updated

- Who authored the data

- Who verified the data

- Where was the data authored

- Availability, has the data been replaced or refuted

- What kind of treating facility authored the data

- What kind of care practice setting authored the data

- Predecessor data that was used in the authoring of this data (e.g. Order)

- Successor data that was created based on this data (e.g. Discharge Summary)

- Relationships to other data (e.g. folder identifier)

- Type of data object

- Type of clinical content implied by the data (e.g. Pregnant, Cancer, Addict)

- etc

My Policy Examples

As I indicated, the above set of Vectors are cross-cutting, and most policy statements will be made up of many vectors, and any "My policy" is made up of many policy statements.

Here are a few reasonable examples:

- Authorization the release of the documents authored by St Michael hospital to a named rehabilitation facility for the purpose of recovery.

- Authorize the release of the documents authored by St. Michael hospital, related to a specific surgery episode, to a post-surgery care-team.

- Authorize a treatment facility to gather all historic medical records from four other treating organizations.

- Authorize Dr Bob to have access to all records at St. Michael hospital except for those documents created during the fall of 1998.

My goal is not to show examples for everything. I simply want to show how what seems clear in English text might be very hard to encode in a set of rules, and possibly very hard to enforce. Such as the last example

      5. Authorize my Parents access to all records except those related to drug abuse.

Especially hard since various tests might be given for drug abuse, but those same tests have many non-drug-abuse purposes. Many medications might be given to alleviate the effects of drug-abuse, but are also used for other conditions. Many locations (e.g. Betty Ford Clinic) are clear indications of a drug-abuse case, but not all locations are so obvious.

Also note that it is not always obvious who "Parents" are. Especially when a Parent might be a Clinician who might have other User accounts to use.

Conclusion

What I have expressed is Vectors that Consent Policies (authorization policies) potentially need to be able to encode in a computable way. That is in a way that an Access Control decision can be made that would -- make the Patient happy, not upset.  This set of vectors is the set of vectors that I recall from the various usecases, I am happy to hear about others, I will gladly update this article.

In [HL7, IHE, and HEART](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html); they are building parts of the system to do this. The differences are important, although the goals are the same. Enable the patient to be happy, not upset.

Other articles on [Privacy Controls](http://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

