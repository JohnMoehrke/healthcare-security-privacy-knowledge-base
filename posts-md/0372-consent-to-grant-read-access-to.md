# Consent to grant read access to a specific types of FHIR Resource

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/04/consent-to-grant-read-access-to.html
Published: 2016-04-12T00:29:00.003Z
Updated: 2016-04-12T00:29:43.502Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEje0jy6t7yj6dOGhiUcdfKdFbqP7tmqP2j4uQqNZWGuRj3vYNufoeZXQ0TWjQKdWHuWoUH93yaPQpvIfE35zabDV-YE9zUbgpSaAq-oqhh8Mv0kiZEAmBIPecLjfhq_cnhFeJY6G2Kc_HZY/s1600/Slide8.PNG

Grahame got this question on [FHIR Consent](http://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html), and forward it to me to answer.

>
Question: I am using the FHIR Contract resource ( [https://www.hl7.org/fhir/contract.html](https://www.hl7.org/fhir/contract.html) ) to convey the patient consent for a provider to access specific FHIR resources (Ex: Observation, MedicationOrder, DiagnosticReportâ€¦). Which field in the Contract resource can be used to specify the list of consented FHIR resources?

The short answer is that today this is unclear as there are many ways to do it. This is a problem that I struggle with and intend to use this blog article to help narrow the solution space so as to make progress in the modeling. The [Privacy Consent Directive (PCD) Implementation Guide](http://hl7-fhir.github.io/pcd/pcd.html) is where the CBCC and Security workgroups are building the solution. We are making progress, but not as much as I would like. We tend to spend far too much time re-arranging the chairs, and too little time making solutions. I like the Question, as it gives a concrete thing to focus on.

**Background **

I cover the background in [electronic Privacy Consent -- Patient choice](http://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html) which speaks to more than just FHIR Consent.

The PCD implementation guide does include a use-case that is very similar to the one in this question. The specific use-case originally comes from our Canadian participants. It is the first use-case to not disclose [any lab-results](http://hl7-fhir.github.io/pcd/pcd-example-notLabs.html)..  The unfortunate thing is that this logical use-case is very difficult to execute given the FHIR modeling based on â€œResourceâ€ design. In the FHIR data-model design, Resources are defined, where the various types of Resources are a logical grouping of similar data, or data needed to achieve a goal. It is not laid out like a Healthcare Clinic or Hospital is laid out; according to clinical specialty or department. Thus there are common structures like an â€œOrderâ€ or "Observation" that are used by all departments, and thus there really isnâ€™t a type of data that is specific to the â€œLaboratoryâ€.  This problem is not part of the Question that was asked.

The Question that was asked is purely about using the FHIR Resource model; presuming there is not a problem with the dissonance with how people think about the data vs how FHIR chose to organize the FHIR Resources.

**Overall need to encode**

So overall we have all the usual stuff that is needed to record that a consent was captured from and applying to a specific patient, covering a specific set of organizations, for a specific timeframe, locations, etc.

What is unique about the Question is that they want to say that the consent is granted only for a set of FHIR Resource types (e.g. Observation, MedicationOrder, DiagnosticReport, etcâ€¦). So the exercise is to figure out where would one say that the consent is ONLY for these specific types of FHIR Resources.

The solution is to use the Contract.term, which is  0..* element where the specific terms of the consent can be itemized. I would then indicate a Contract.term that can then list all the Resource types that are to be allowed access. This fits nicely into Contract.term.subType. What we donâ€™t have is an obviously selected vocabulary to say: â€œAllow access to any data with the FHIR Resource type listed in subtypeâ€. So what I use below is to use the RESTful actions. Thus allowing â€˜readâ€™ action upon the type of resource for the purpose of treatment

**Contract - Basic of a Consent**

In this case, since we want to identify specific rules that ALLOW access, we must start with the default deny rule.

- Contract.identifier --- everything needs unique identifiers

- Contract.issued --- date and time that the consent was captured

- Contract.applies --- date range that this consent is valid. Often a start date is indicated, sometimes an end date

- Contract.subject â€“ pointer to the Patient resource. This sets the context of the consent, it is â€˜aboutâ€™ this patient.

- Contract.authority â€“ what is the organization(s) that is covered by this consent.

- Contract.domain â€“ what locations are covered

- Contract.type â€“ {  "system": "http://loinc.org",â€codeâ€:" 64292-6"} Ã  This is a Privacy Consent Directive

- Contract.subType â€“   {â€œsystemâ€:â€[http://hl7.org/fhir/v3/ActCode](http://hl7.org/fhir/v3/ActCode)â€, â€œcodeâ€:â€OPTOUTâ€} --- Forbid access except as indicated in terms

There is other things one can include in the basics, but that is not the specific topic of this blog article.

**Magic for this Question**

We then can just list all the FHIR Resource types that we allow, and for what action we are allowing (treatment in this case).

- Contract.term.type â€“ allow Ã  {â€œsystemâ€:â€ http://hl7.org/fhir/restful-interactionâ€, â€œcodeâ€:â€œ readâ€} â€“ allow all read operations

- Contract.term.subType -- {"system": "http://hl7.org/fhir/resource-types", "code": "Observation"}

- Contract.term.action â€“ {â€œsystemâ€:â€ [http://hl7.org/fhir/ValueSet/v3-PurposeOfUse](http://hl7.org/fhir/ValueSet/v3-PurposeOfUse)â€, â€œcodeâ€:â€TREATâ€} â€“ allowed for Treatment purpose

- Contract.term.type â€“ allow Ã  {â€œsystemâ€:â€ http://hl7.org/fhir/restful-interactionâ€, â€œcodeâ€:â€œ readâ€} â€“ allow all read operations

- Contract.term.subType -- {"system": "http://hl7.org/fhir/resource-types", "code": "MedicationOrder"}

- Contract.term.action â€“ {â€œsystemâ€:â€ [http://hl7.org/fhir/ValueSet/v3-PurposeOfUse](http://hl7.org/fhir/ValueSet/v3-PurposeOfUse)â€, â€œcodeâ€:â€TREATâ€} â€“ allowed for Treatment purpose

- Contract.term.type â€“ allow Ã  {â€œsystemâ€:â€ http://hl7.org/fhir/restful-interactionâ€, â€œcodeâ€:â€œ readâ€} â€“ allow all read operations

- Contract.term.subType -- {"system": "http://hl7.org/fhir/resource-types", "code": "DiagnosticReport"}

- Contract.term.action â€“ {â€œsystemâ€:â€ [http://hl7.org/fhir/ValueSet/v3-PurposeOfUse](http://hl7.org/fhir/ValueSet/v3-PurposeOfUse)â€, â€œcodeâ€:â€TREATâ€} â€“ allowed for Treatment purpose

**Conclusion and Discussion**

This is just my current view. Unfortunately this space is slowly evolving. I encourage participation by those that have specific problems. As specific problems can be used as a priority driving force.

**Blog articles****

- [FHIR](http://healthcaresecprivacy.blogspot.com/p/topics.html#FHIR)

- [User Identity and Authentication](http://healthcaresecprivacy.blogspot.com/p/topics.html#UID)

- [Patient Privacy Controls](http://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

- [Access Control (including Consent Enforcement)](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC)

