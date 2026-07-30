# Consent given to authorized representative

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/04/consent-given-to-authorized.html
Published: 2016-04-18T19:22:00.001Z
Updated: 2016-04-18T19:22:15.310Z
Author: John Moehrke

---

I [asked for use-cases on the FHIR chat](https://chat.fhir.org/#narrow/stream/implementers/topic/Privacy.20Consent) so that I could model them. This effort to model use-cases is useful as it helps test the theory with reality. So the next one I got was from Andrew Torres who asks about an authorized representative.

>
Have you thought about the authorized representative use-case? I think we spoke about this briefly at the WGM in January. Patient facing applications will need the ability to understand who is accessing data, and the app will need to understand what data that person can see. An example use-case is a child going to a children's hospital doesn't grant consent. The parent will be his authorized representative to view patient health information. So in a patient portal or an application the parent would be able to view data because they are authorized to do so. The authorization, or contract as we have modeled it in FHIR, would expire, while the relationship will always exist.

There are a couple of things worthy of modeling. There are also some things that I will stay away from so as to not step into a space beyond what the Privacy Consent Directive is intended to solve.

First I am going to move this from child/parent relationship

, up to a more general case of â€˜authorized representativeâ€™. In doing this I want to distance this use-case from the difficult topic of how one gains the authorized â€˜consentâ€™ from someone that is potentially not legally able to give consent. So all I want to do is focus on what the consent would look like, and ignore how we got to that point. The process getting to that point is varied by region, and individual circumstances. This process of getting to this point is not important to the model.

Second I am going only to focus on giving this authorized representative the ability to access the data about the patient. Meaning I am not going to address other authorizations, such as power-of-attorney or alternative-decision-maker.

So what would a Privacy Consent Directive â€“ Contract â€“ look like that shows that consent was given to a specified authorized representative? Note that in this case the representative does not gain more rights than the patient would have. In my case I am going to indicate that the representative should be limited to only view/read. Meaning that where a Patient has a â€œPrivacy Rightâ€ to amendment or correction; in this case the representative is not going to be granted those rights.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj-VZXwCM230IiEE8jnogrdDcpnGRkn7hvRzLxyaMQRp-zdjHDwirvHvpbVA__hGviQnuB_ZgBaBVj-MG0GByGG57mEKIPbmg03HmI6R075TXu0gBgo1jWA88a7DVsK4vcBCL_obyWBSkfP/s1600/ConsentStateDiagram-Delegate.png

The Basics
These elements are not too special. Note that I am back to using the LOINC code [57016-8](http://s.details.loinc.org/LOINC/57016-8.html?sections=Simple), as I  know how this is used. I am not clear on how [64292-6](http://s.details.loinc.org/LOINC/64292-6.html?sections=Simple) is used, and it also has some â€œMethodâ€ constraint that I donâ€™t understand. Maybe someone can explain these to me so that I can better represent these codes.  I know that some don't like that [57016-8](http://s.details.loinc.org/LOINC/57016-8.html?sections=Simple) has the name "Privacy policy acknowledgment". This name was chosen by IHE when we asked for this code of LOINC. The name was chosen to cover the broadest possible use-cases. At the time the word "consent" was considered too limiting. The description tries to make this clear "A document showing patient acknowledgement/consent/dissent with respect to the privacy policies of an organization. This document is specific to an individual patient."

Andrew also indicate that this authorization should expire. So I will put an expiration date. We really havenâ€™t fully modeled expiration, but we do have an â€˜appliesâ€™ element that can indicate the timeframe in which the Contract applies. Thus after that timeframe it is implied that it is no-longer applicable.

- Contract.identifier --- everything needs unique identifiers

- Contract.issued --- date and time that the consent was captured

- Contract.applies --- date range that this consent is valid. Often a start date is indicated, sometimes an end date

- Contract.subject --- pointer to the Patient resource. This sets the context of the consent, it is â€˜aboutâ€™ this patient.

- Contract.type â€“ { "system": "http://loinc.org",â€codeâ€:"57016-8"} --- This is a Privacy Consent Directive

The top level instruction:
The subType needs to indicate that this is an authorization only applying to the one individual. I donâ€™t  find a code specific to that. But I think that OPTIN will be okay for now.

- Contract.subType â€“ {â€œsystemâ€:â€[http://hl7.org/fhir/v3/ActCode](http://hl7.org/fhir/v3/ActCode)â€, â€œcodeâ€:â€ OPTINâ€} --- Permit disclosure

The authorized actions:

So, this authorized representative should only be able to read data, not create or update. And they would be using a PurposeOfUse indicating that the Patient Requested ([PATRQT](http://hl7.org/fhir/v3/ActReason/index.html#PATRQT)). Since this is all that is being authorized, I am modeling these at the root level of the Contract. I could have left these blank and modeled these in a Contract.term. I am not sure why one would do one over the other, however having both options seems like it is going to create a problem.

- Contract.action â€“ {â€œsystemâ€:â€http://hl7.org/fhir/restful-interactionâ€, â€œcodeâ€:â€œreadâ€} â€“ allow all read operations

- Contract.actionReason â€“ {â€œsystemâ€:â€[http://hl7.org/fhir/ValueSet/v3-PurposeOfUse](http://hl7.org/fhir/ValueSet/v3-PurposeOfUse)â€, â€œcodeâ€:â€PATRQTâ€} â€“ allowed for patient requested purpose

Seems we need a broader term than RESTful 'read'. There is some work ongoing on designing some higher level vocabulary that could group all of these _read _operations including query.

The authorized representative:
The person being given the access rights of the patient is considered the â€œGrantorâ€. The person who has been granted the authority. The problem we have is that although today the model for Contract.agent seems to be the place where we could identify the grantor, there is not yet a vocabulary.   So I will steal from the Contract.signature vocabularyâ€¦

- Contract.agent.actor --- the pointer to a RelatedPerson object describing the individual being given authorization

- Contract.agent.type = {â€œsystemâ€:â€http://hl7.org/fhir/ValueSet/contract-signer-typeâ€, â€œcodeâ€:â€GRANTORâ€}

Other considerations
In the use-case given this is an authorization that is not stating anything about an organization or location. So I would expect to find Contract.authority, and Contract.domain empty. I would expect empty means unconstrained. Thus this Consent should be considered both not specifically endorsed by an organization or location; but also not restricted to an organization or location. Clearly if there is an organization or location scope; then these could be specified. Not sure if this is the right interpretation.

Variation â€“ consent to an organization with exception of an individual at that organization
There is already an example in the Privacy Consent Directive IG for the explicit opposite of this. One where a Patient is explicitly indicating an individual that [shall never have access](http://hl7-fhir.github.io/pcd/pcd-example-notThem.html).  One of the specific differences is that this is otherwise an authorization (consent) for an organization to have access/use/disclosure, with an exception to not allow access to a specific individual. This drives a different encoding.

>
Patient "P. van de Heuvel" ex-spouse, Bill T Lookafter is a Nurse that is employed by Good Health Hospital. P. realizes that she may receive treatment at GHH, however she does not want her ex-spouse to have any access to her IIHI. She indicates that she would like to withdraw/withhold consent to disclose any instance of her health information to her ex-spouse as a result of his employment at Good Health Clinic.

Conclusion
I am mostly using this as an exercise to test what we have today. So, this might not be where the Privacy Consent Directive and Contract end up. Please participate in the [sub-workgroup meeting held Fridays](http://wiki.hl7.org/index.php?title=HL7_FHIR_Consent_Directive_Project).

