# Consent to deny Sharing for Treatment and Emergency Break-Glass

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/05/consent-to-deny-treatment-and-emergency.html
Published: 2017-05-18T16:32:00Z
Updated: 2017-05-18T17:31:59.309Z
Author: John Moehrke

---

We have discussed in years past that Australia had a Privacy Consent where break-glass was not allowed. We understand that has changed to allow break-glass. Thus we didn't know of a case where a Consent forbid break-glass... I have been made aware of [Utah HIE](https://uhin.org/patients/) that has a [checkbox on their Consent to forbid break-glass](https://uhin.org/wp-content/uploads/2017/01/cHIE_Patient_Participation_Form.pdf). This is a consent only for HIE, not for within a hospital environment; but it is relevant to our FHIR consent (and CDA consent) work. Thus I think it is useful for us to provide it as an example, and work through how it might be expressed.

The Utah HIE Consent Form is

[https://uhin.org/wp-content/uploads/2017/01/cHIE_Patient_Participation_Form.pdf](https://uhin.org/wp-content/uploads/2017/01/cHIE_Patient_Participation_Form.pdf)

Note, that in the context of a FHIR consent; this URL could be used as the Policy URI...  It is a general form that the Patient has some check boxes they can choose.

So given that we have an example that forbids Treatment but allows Break-Glass  (Note spell check needed)    [http://build.fhir.org/consent-example-Emergency.html](http://build.fhir.org/consent-example-Emergency.html)

We should likely create an example that forbids both Treatment and Emergency (Break-Glass). Something like this:

>
  _





     Withhold Authorization for Treatment and for Emergency Treatment



  Patient &quot;P. van de Heuvel&quot; wishes to have no data shared for Treatment or Emergency treatment use.

  An overall consent Directive, with an exception

  &quot;Deny&quot; of purposeOfUse &quot;TREAT&quot; sharing use and

  &quot;Deny&quot; of purposeOfUse &quot;ETREAT&quot; sharing use

  at &quot;Infoway&quot; HIE.























































I have filed a [FHIR Change Request 13420](http://gforge.hl7.org/gf/project/fhir/tracker/?action=TrackerItemEdit&tracker_item_id=13420)

Other [Privacy Consent topics](https://healthcaresecprivacy.blogspot.com/p/consent.html)

Corrected the example to make more clear it is a "Privacy Consent" by specifying the Consent.category.

