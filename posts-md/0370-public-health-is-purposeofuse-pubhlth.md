# Public Health is a PurposeOfUse -- PUBHLTH

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/03/public-health-is-purposeofuse-pubhlth.html
Published: 2020-03-17T13:35:00.002Z
Updated: 2020-03-17T13:37:03.464Z
Author: John Moehrke

---

As I covered in [yesterdays article, PurposeOfUse](https://healthcaresecprivacy.blogspot.com/2020/03/custodian-access-control-decision.html)is a critical prime vector that a data custodian will use to make access control decisions. Where PurposeOfUse is the intended reason the data is needed, and equally the restriction on how the data can be used. When I indicate a restriction, I mean that data released under a specific set of PurposeOfUse must not be used for other purposes beyond that which was clear during the access control decision that released it.

Public Health is a defined PurposeOfUse -- [PUBHLTH](http://build.fhir.org/v3/ActReason/cs.html#v3-ActReason-PUBHLTH) -- To Perform one or more operations on information for conducting public health activities, such as reporting of notifiable conditions.

Thus when data are requested for Public Health needs, the PurposeOfUse would be [PUBHLTH](http://build.fhir.org/v3/ActReason/cs.html#v3-ActReason-PUBHLTH). When this PurposeOfUse is seen, then the access control decision checks that **the request is from an authorized Public Health authority. **There would be the typical checks that the requested data is within the scope of the Public Health purpose, etc.

Public Health authorized access often is an exception to any Privacy Consent restrictions the patient might place upon their data. Thus in this case the access control decision, when starting with Public Health PurposeOfUse does not need to check a Patient specific Consent, or a Patient specific restriction.

**
**
During a [declared National Health Emergency](https://www.whitehouse.gov/presidential-actions/proclamation-declaring-national-emergency-concerning-novel-coronavirus-disease-covid-19-outbreak/), such as we have now with COVID-19,  the rules might be adjusted to include more organizations? or more kinds of data that can be requested? or more organizations?

This PurposeOfUse would be used with a FHIR Bulk Data access where the data are being gathered for Public Health monitoring.

This PurposeOfUse value would also be attached to messages (e.g. HL7 ADT, or FHIR Message Bundle) that are PUSHED rather than queried for. The indication of -- [PUBHLTH](http://build.fhir.org/v3/ActReason/cs.html#v3-ActReason-PUBHLTH) -- is an indication to the recipient that the data is restricted to Public Health use, and shall not be repurposed for other uses beyond Public Health.

