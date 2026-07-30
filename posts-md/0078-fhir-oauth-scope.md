# FHIR Oauth Scope

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/01/fhir-oauth-scope.html
Published: 2016-01-04T21:24:00Z
Updated: 2016-01-04T21:24:00.747Z
Author: John Moehrke

---

Normal
  0




  false
  false
  false

  EN-US
  X-NONE
  X-NONE





































































































































































 /* Style Definitions */
 table.MsoNormalTable
 {mso-style-name:"Table Normal";
 mso-tstyle-rowband-size:0;
 mso-tstyle-colband-size:0;
 mso-style-noshow:yes;
 mso-style-priority:99;
 mso-style-parent:"";
 mso-padding-alt:0in 5.4pt 0in 5.4pt;
 mso-para-margin:0in;
 mso-para-margin-bottom:.0001pt;
 mso-pagination:widow-orphan;
 font-size:10.0pt;
 font-family:"Times New Roman","serif";}






  Normal
  0




  false
  false
  false

  EN-US
  X-NONE
  X-NONE





































































































































































 /* Style Definitions */
 table.MsoNormalTable
 {mso-style-name:"Table Normal";
 mso-tstyle-rowband-size:0;
 mso-tstyle-colband-size:0;
 mso-style-noshow:yes;
 mso-style-priority:99;
 mso-style-parent:"";
 mso-padding-alt:0in 5.4pt 0in 5.4pt;
 mso-para-margin:0in;
 mso-para-margin-bottom:.0001pt;
 mso-pagination:widow-orphan;
 font-size:10.0pt;
 font-family:"Times New Roman","serif";}

As FHIR matures, the security topic becomes more and more important.  I participate in HEART, an effort hosted by the OpenID community including an impressive set of experts from the OpenID, OAuth, and UMA world. They do need more participation from healthcare, it is hard to give everyone that needs attention the full attention they need.  HEART has some foundational profiles ready to be used

[HEART profiles for review, comment, and approval](http://healthcaresecprivacy.blogspot.com/2015/11/heart-profiles-for-review-comment-and.html) .

So the next thing up for discussion is a set of OAuth 'scope' values. A 'scope' is a way for an App to ask for less rights than the user holds, and is a good way to limit the damage that an App can do. So the question really is in what ways would it be appropriate to cut away rights that a user might hold.

The is something that has not yet been discussed in any useful detail inside of HEART. In fact the specification they have "[FHIR OAuth 2](http://openid.bitbucket.org/HEART/openid-heart-fhir-oauth2.html) " is not open for review, yet. This specification is mostly derived from what SMART supports today. It is made up of  a set of strings that represent a few FHIR resources. It is not a complete list of FHIR resource types. This list was simply an initial attempt at coming up with a set of scope values.  The list is a logical thing that someone would create given simply that FHIR is based on REST. Meaning this is a typical list for any â€˜normalâ€™ RESTful api.

Sensitivity

This focus on FHIR resource types has the problem that in healthcare it is not the type of resource that differentiates between access allowed vs access denied. There are some FHIR resources that typically just carry data, Such as Organization, HealthServices, Location, Device, ValueSet, Conformance, etc. These resources don't carry varying sensitive information.

However Resources like CarePlan, Medication, Observation, DiagnosticReport, and others carry data that can vary widely on how sensitive it is.

Normal is normal for Healthcare data

These Resources might be carrying what most people consider "Normal" healthcare information. Note that the word "Normal" is relative to all healthcare information, not a label relative to all information. Healthcare information, even Normal, is considered "High Risk:" overall.

Beyond Normal

There are sensitive health topics: HIV status, drug abuse,

Finding Normal

This is not an easy tag to set on data, so unfortunately most data is marked "Normal". Which is potentially not wrong, just not very helpful. I given advice in  [How to set the ConfidentialityCode](http://healthcaresecprivacy.blogspot.com/2015/07/how-to-set-confidentialitycode.html)

sensitivity evaluation along a vector
What I am looking for is a way of saying "I want
to be using data that is Normal or less".
 The [_confidentiality](http://hl7.org/fhir/v3/Confidentiality/index.html) codes are defined specifically to be a scale of not sensitive, to less sensitive, to normal,  to
high sensitive, to too hot to handle. This was an explicit exercise and was done in concert
 with ISO 13606 so that we would have a linear assessment of risk.

Purpose Of Use

We often focus too much on treatment workflows. Where there are many other reasons why people, applications, or services might want access to the healthcare data. This is represented by the Purpose Of Use, using the [PurposeOfUse](http://hl7.org/fhir/v3/PurposeOfUse/index.html)vocabulary as a starting point. This allows for the normal "Treatment", or "Billing" but also includes in the vector marketing, legal, public health reporting, eligibility, etc.

the REST

I don't mind including the classic REST viewpoint. I just don't think it is sufficient. So I would include the ability to limit the scope based on the REST operators and the FHIR Resource types.

Proposal (for discussion)

purposeOfUse â€œ:â€ _confidentiality â€œ:â€ resource â€œ:â€ action â€œ:â€ Patient

Where:

- purposeOfUse -- value from the [PurposeOfUse](http://hl7.org/fhir/v3/PurposeOfUse/index.html)vocabulary

- _confidentiality -- highest value from the [_confidential](http://hl7.org/fhir/v3/Confidentiality/index.html) vocabulary

- resource -- FHIR resource type from the [resource-types](http://hl7.org/fhir/valueset-resource-types.html)value-set

- action -- RESTful verb (CRUDE) from the [restful-interactions](http://hl7.org/fhir/valueset-restful-interaction.html)value-set

- Patient -- URI to the [Patient](http://hl7.org/fhir/patient.html)resource identifying a specific patient

- where any can be â€œ*â€ to indicate not requesting a constraint.

Further note that multiple scopes can be indicated with  a "," separator.

Further note that the authorization server can downgrade even more the scopes that were asked to the scopes that were granted. The OAuth specification doesn't explain how this is done, just that it is allowed. One example would be where the authorization server knows the app by identity, and thus restricts scopes.

Break-Glass use-case

This proposal sets up one model to support â€˜[break-glass](http://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir.html)â€™ by first asking for "Normal" data, but when a break-glass justification exists then asking for â€œRestrictedâ€.  I know I need to explain this more, but this is not the topic of this blog post.

Privacy Consent Directive

I expect that a [Privacy Consent Directive](http://hl7-fhir.github.io/pcd/pcd.html)
might also be a useful vector through the Scope. That an app could say
they only want the access rights granted to the user through a specific[Privacy Consent Directive](http://hl7-fhir.github.io/pcd/pcd.html). This might be especially useful when the patient can actively grant one-by-one authorizations.

I didn't include this in the proposal because there is active work on [FHIR Privacy Consent Directives](http://hl7-fhir.github.io/pcd/pcd.html), and equally interesting [HEART efforts to leverage UMA](http://openid.bitbucket.org/HEART/openid-heart-uma.html).

  Conclusion

This is in no-way a conclusion, but a proposal for discussion.

Historic Blog Topics

- [Patient Privacy Controls](http://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

- [Access Control (including Consent Enforcement)](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC)

- [mHealth](http://healthcaresecprivacy.blogspot.com/p/topics.html#mHealth)

