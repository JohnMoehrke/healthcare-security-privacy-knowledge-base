# VIP Patients in #FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/01/vip-patients-in-fhir.html
Published: 2024-01-30T17:35:00.002Z
Updated: 2024-01-30T17:50:30.848Z
Author: John Moehrke

---

The FHIR security tag `VIP` is used to indicate that a patient's health information is considered to be highly confidential and requires heightened security measures. This may be due to the patient's public profile, occupation, or other factors. VIP is a designation of a person, not a designation of the data.

To use the VIP security tag, simply add it to the security tag of any FHIR resource that contains the patient's health information. For example, the following code shows how to add the VIP security tag to a Patient resource:
{
 "resourceType": "Patient",
 "id": "1234567890",
 "meta": {
   "security": [
 {
     "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
     "code": "VIP"
 }
 ]
}
... other content ...
}

This is an example of tagging the Patient resource to indicate that the patient is a VIP, and thus implies that all the data associated with this Patient needs to be treated as VIP patient data. Once the VIP security tag is added to the Patient, the patient's health information should be treated with heightened security measures. This may include restricting access to the information, encrypting the information, or auditing access to the information.

Here are some examples of how the VIP security tag might be used:

- A hospital might use the VIP security tag to protect the health information of famous patients or patients who are in the public eye.
- A government agency might use the VIP security tag to protect the health information of high-ranking officials or other sensitive individuals.
- A research institution might use the VIP security tag to protect the health information of participants in sensitive clinical trials.

It is important to note that the VIP security tag is just one way to indicate that a patient's health information is considered to be highly confidential. There are other security tags that can be used, such as the Confidentiality or Sensitivity security tag codes. The specific security tags that are used will depend on the organization's policies and procedures.

Typically, VIP patients are limited to a subset of the clinical staff, such as a clearance or role. This might be implemented purely in the security infrastructure or might leverage FHIR CarePlan or PractitionerRole. All accesses to VIP patient data often will trigger stricter scrutiny of accesses. On a regular basis (e.g. daily) all accesses to VIP patient data are reviewed, and inappropriate accesses are investigated with potential corrective actions against the user.

