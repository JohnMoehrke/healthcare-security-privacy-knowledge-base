# Explaining #FHIR Consent examples

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/05/explaining-fhir-consent-examples.html
Published: 2022-05-17T13:01:00.008Z
Updated: 2023-10-30T14:35:34.807Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiOTfqky7CDq5zyJkiZNLAm-hB_3KJfpjbxyqMu5pbFC6Eq4JovBybM4NKa101QoQObbRRT-hfUQLmbkL5_x_uxUadow0tR5wczKHN7EWHauGQldUpiHfBkzgLSYufFWDvPkl50nY3Ucj-7f3GA5XFFff8Sj2yccD0xnI8_oG-D_Ogz2Nv9R0LfKUx1Dw/s960/Slide8.PNG
UPDATE: October 2023 -- the article is the source for [an Explainer on FHIR Consent section](https://profiles.ihe.net/ITI/PCF/ch-P.html#p4-explainer-of-fhir-consent-model) of the [IHE-Patient Consent on FHIR Implementation Guide](https://profiles.ihe.net/ITI/PCF/index.html). I recommend you use that text as it has been improved by committee review and has explanation of Policy and also data security tagging.

-----------------------------------

This article includes explanation of some example scenarios and points at example
Consent resources for them.
These example scenarios are provided for educational use only, they are not an
endorsement of these scenarios.

Notice of Privacy Policy
Some realms only require that the patient be given access to the organizations privacy policy.
In these realms the patient is not given the choice to accept, reject, or change the terms of privacy policy.
The expectation is that the patient can stop the engagement with the healthcare provider if they don't like the privacy policy (yes, we know this is a fallacy in many situations).

These realms may use the Consent resource to indicate that the ceremony of providing access to the privacy policy has happened, when it happened, who presented the policy, and which version of the policy was presented. The specific version of privacy policy recorded can also be helpful to know when a given patient needs to be presented with the new version of the privacy policy.

- status - would indicate active

- category - would indicate patient consent specifically a notice of privacy practices

- subject - would indicate the **Patient** resource reference for the given patient

- dateTime - would indicate **when** the privacy policy was presented

- grantor - would indicate **who** presented the privacy policy

- grantee - would indicate the **Patient** resource if the patient was presented, a **RelatedPerson** for parent or guardian

- controller - would indicate the **Organization** who presented the privacy policy, and which is going to enforce that privacy policy

- policyText - would indicate the **privacy policy** that was presented. Usually, the **url** to the version specific policy

- provision.type - permit - given there is no way to deny, this would be fixed at permit.

Other elements would not be needed.

example
Given:

- Patient: Peter James Chalmers

- dateTime: March 11, 2022 at 12:22 pm

- grantee: is the patient

- grantor: Registration Desk Clerk - John Moehrke

- controler: Burgers MC

- policyText: policy at [https://example.org/privacy-policy-v1.html](https://example.org/privacy-policy-v1.html)

sushi:

Instance: example-notice
InstanceOf: Consent
Title: "Example of a Notice of Privacy Policy"
* status = #active
* category[+] = https://loinc.org#59284-0 "Patient Consent"
* category[+] = http://terminology.hl7.org/CodeSystem/consentcategorycodes#npp
* dateTime = 2022-03-11T12:22
* subject = Reference(Patient/example)
* grantee = Reference(Patient/example)
* grantor = Reference(Practitioner/example-clerk)
* controller = Reference(Organization/f001)
* policyText = Reference(DocumentReference/example-privacy-policy-v1)
* provision.type = #permit

support resources

Instance: example-privacy-policy-v1
InstanceOf: DocumentReference
Title: "Burgers Organization privacy policy"
* status = #current
* docStatus = #final
* type = https://loinc.org#57017-6 "Privacy policy Organization Document"
* category = https://loinc.org#57017-6 "Privacy policy Organization Document"
* content.attachment.contentType = application-pdf
* content.attachment.url = "https://example.org/privacy-policy-v1.html

Instance: example-clerk
InstanceOf: Practitioner
Title: "Registration Desk Clerk example"
* active = true
* name.text = "John Moehrke"

Security / Privacy Considerations
Organizations that never allow a patient to be in a deny mode never need to look at Consent for access-control reasons as there is no difference if the Patient has been given notice or not. In these cases the Consent is there for record keeping only. See Change to opt-out below.

Basic signed acknowledgement
This section covers the most basic of privacy consents, that simply records an acknowledgement to a given privacy policy permitting data sharing.
This is only slightly different than the Notice of Privacy Policy, in that with this example, there is some evidence captured from the ceremony.
Such as a patient initialing or signing a form indicating they have received the Privacy Policy.
Similar to the Notice of Privacy Policy, the Patient is not given a choice to reject or change the terms of the privacy policy.
The specific version of privacy policy recorded can also be helpful to know when a given patient needs to be presented with the new version of the privacy policy.

The Consent is the same as with Notice of Privacy Policy with the following additions:

- sourceReference - would hold a **DocumentReference** that has an image of the form that the patient signed. This image may be scanned copy of the ink on paper signature from the patient, or may be a digitally captured signature from the patient.

Other elements would not be needed.

example
Given: the same example attributes as above with the addition of a signed form. Thus the only addition is the sourceReference, which points at a scanned image of the signature in a DocumentReference resource.

sushi:

Instance: example-acknowledge
InstanceOf: Consent
Title: "Example of an acknowledged Notice of Privacy Policy"
* status = #active
* category[+] = https://loinc.org#59284-0 "Patient Consent"
* category[+] = http://terminology.hl7.org/CodeSystem/consentcategorycodes#npp
* dateTime = 2022-03-11T12:22
* subject = Reference(Patient/example)
* grantee = Reference(Patient/example)
* grantor = Reference(Practitioner/example-clerk)
* controller = Reference(Organization/f001)
* policyText = Reference(DocumentReference/example-privacy-policy-v1)
* provision.type = #permit
* sourceReference = Reference(DocumentReference/example-signed-acknowledgement-20220311)

support resources

Instance: example-signed-acknowledgement
InstanceOf: DocumentReference
Title: "Patient Peter James Chalmers signed an acknowledgement of the Privacy Policy"
* status = #current
* docStatus = #final
* type = https://loinc.org#57016-8 "Privacy policy acknowledgement Document"
* content.attachment.contentType = application-pdf
* content.attachment.data =  "SGVsbG8gV29ybGQ="

Security / Privacy Considerations
Organizations that never allow a patient to be in a deny mode never need to look at Consent for access-control reasons as there is no difference if the Patient has signed a consent or not. In these cases the Consent is there for record keeping only. See Change to opt-out below.

Change to deny sharing
This section covers the case where a basic permit has been used, but for some reason the authorization is revoked or rejected.
An example might be where the organization does allow the patient to reject a previously permitted action, and the patient has expressed they want to deny sharing now.
Another example might be where legal action has happened compelling an organization to revoke the consent.

The example scenario here describes methods where there would be only one Consent on record for a given Patient.
Thus the current status would be simply discoverable by looking for the Consent for a given Patient and checking the .status element and .provision.type.
This logic presumes that where no Consent is found, that an implied permit is the default.
Thus one must look for both the existence of a Consent for the given Patient, and that the Consent.provision.type is permit.

Alternatives are shown:

- One possibly is that the existing Consent instance is revised to change the .status to inactive. When this is done the .lastUpdated will automatically indicate the date and time this change happened.

- If more details are needed, this change to the Consent instance could be tracked with a Provenance resource to indicate who made the change, what change was made, why the change was made, and other details as necessary.

- Advanced alternative possibility is to record a new Consent with the details of the change in Consent.status, the existing Consent would be marked as inactive same as above, and the Provenance would further indicate the new Consent replaces the old Consent.

Note that at some point after this, the consent may go back to active. This transition would follow the same process with the .status changes in the other direction.

example
Alternative 1 is not shown, as it is simply changing the .status.

Alternative 2
Given:

- existing Consent resource example-acknowledge is revised as Alternative 1

- for visibility the examples assumes that the server supports versioning. This is not required of the alternative.

- Provenance states

- who - Lawyer David Pyke

- when - March 3rd, 2022 at 4:56pm

- why - Legal hold

sushi:

Instance: example-change-consent
InstanceOf: Provenance
Title: "Consent revoked"
* target = Reference(Consent/example-acknowledge/_history/2)
* entity.what = Reference(Consent/example-acknowledge/_history/1)
* entity.role = #revision
* dateTime = 2022-03-11T16:56
* activity = http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle#hold
* patient = Reference(Patient/example)
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#enterer
* agent.who = Reference(Practitioner/example-lawyer)

Instance: example-lawyer
InstanceOf: Practitioner
Title: "Corporate Lawyer example"
* active = true
* name.text = "David Pyke"

Security Considerations
That organizations that never allow a patient to be in a deny mode never need to look at Consent for access control reasons as there is no difference if the Patient has been given notice, or signed anything.
In these cases the Consent is there for record keeping only.
With the support for Change to opt-out, there is now a need for access-control to always look for Consent status.
The most simple access-control will simply look for the existence of a Consent, check that it is .status = active, and that it is .provision.type = deny; if it is anything else then the access-control rule is that which is represented by the privacy policy.

Some patient specific provisions
The above examples were recording blanket agreement or disagreement by a given patient to a given policy. This is not as flexible as the Consent resource can support. The Consent resource can also record deviations, and special cases. These are recorded in the .provisions structure. The root level .provision simply sets the context as shown above. There is nested .provision(s) that can exist within the root level .provision, and even within other nested .provisions.  Each level of nesting would contain the exceptions to the rules set down in the prior level, thus each successive level of nesting reverses the permit vs deny. In this way one can encode situations where broad sharing is allowed, but not sharing with Dr. Bob. The following is an example fragment of just the .provision. Note that the second nested provision is a deny provision with the only other element populated is the actor.reference of Dr. Bob.

...
* provision.type = #permit
* provision.provision[0].type = #deny
* provision.provision[0].actor[0].reference = Reference(example-dr-bob)

Instance: example-dr-bob
InstanceOf: Practitioner
Title: "Dr. Bob"
* active = true
* name.text = "Dr. Bob"

AND relationship between elements
Each .provision has elements that describe the setting for that permit or deny. Each element within a given .provision is in an AND relationship with the other elements in that given .provision. An element that is not populated indicates that for that kind of element there is no constraint. Thus in the above example, the deny provision for Dr. Bob has none of the other elements in that .provision filled out, so this means that Dr. Bob is forbidden access regardless of the role he might take on, or the purpose of use, or the action, or the class of data, or the dataPeriod timeframe of the data, etc.

Thus to say that Dr. Bob is not to get access to the data, except for patient directed purpose of use; one would have a Deny of all access by Dr. Bob, and a nested Permit of Dr. Bob AND patient directed purpose of use AND normal confidentiality data (not restricted). Note that it is not really necessary to repeat Dr. Bob in the third level, as logically the second level already restricted this branch to Dr. Bob.

...
* provision.type = #permit
* provision.provision[0].type = #deny
* provision.provision[0].actor[0].reference = Reference(example-dr-bob)
* provision.provision[0].provision[0].type = #permit
* provision.provision[0].provision[0].actor[0].reference = Reference(example-dr-bob)
* provision.provision[0].provision[0].purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#PATRQT "patient requested"
* provision.provision[0].provision[0].securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "normal"

OR relationship within an element
Repititions within an element are in an OR relationship. Thus to say that Dr. Bob is allowed this access on not just patient requested, but also family requested, and power of attorney; one would just put them all as alternatives on the purpose element.

...
* provision.type = #permit
* provision.provision[0].type = #deny
* provision.provision[0].actor[0].reference = Reference(example-dr-bob)
* provision.provision[0].provision[0].type = #permit
* provision.provision[0].provision[0].actor[0].reference = Reference(example-dr-bob)
* provision.provision[0].provision[0].purpose[0] = http://terminology.hl7.org/CodeSystem/v3-ActReason#PATRQT "patient requested"
* provision.provision[0].provision[0].purpose[1] = http://terminology.hl7.org/CodeSystem/v3-ActReason#FAMRQT "family requested"
* provision.provision[0].provision[0].purpose[2] = http://terminology.hl7.org/CodeSystem/v3-ActReason#PWATRNY "power of attorney"
* provision.provision[0].provision[0].securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "normal"

time scoped provisions
The provision.period is used to indicate that this provision is only active during a period of time. This is useful to indicate that Dr. Bob should be denied access until 2024, because I will be moving away from Dr. Bob in 2022.

...
* provision.type = #permit
* provision.provision[0].type = #deny
* provision.provision[0].period.end = 2024
* provision.provision[0].actor[0].reference = Reference(example-dr-bob)

timeframe for data
The provision elements are very powerful. We are not going to explain examples of all of them.

The provision.dataPeriod element is very useful, as it is not uncommon for a patient to remember a timeframe when they had a specifically sensitive healthcare episode. Thus it is easy to give a timeframe, where any data that was authored or last updated within that timeframe would be the context of that provision. The further advantage of this mechanism is that there is no indication of why or what is sensitive; just a timeframe.

For example, deny access to any data authored or last updated in 2018. This will block all data, regardless of what kind of data, or who is asking for the data.

Other examples
Not all of the examples given have been explained above.

