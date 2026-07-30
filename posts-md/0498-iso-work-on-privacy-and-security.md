# ISO work on Privacy and Security

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/10/iso-work-on-privacy-and-security.html
Published: 2011-10-23T17:50:00.003Z
Updated: 2011-10-23T17:51:00.465Z
Author: John Moehrke

---

This week was the workgroup meeting for [ISO TC215 â€“ Health Informatics](http://www.iso.org/iso/iso_technical_committee?commid=54960). I have recently re-established contact with this body, having missed most of the yearsâ€™ work. The advantage I have is that everything seemed fresh and new. There is no question that there is some useful work going on in ISO TC 215.

Here is my report on the work done in WG4 (Security/Privacy)

ISO 14441: Security & privacy requirements of EHR systems

- This is a new work item. The initial reaction by both Bernd and I,  both co-chairs of the HL7  Security WG, was to question why this work was being done when HL7 was already working on this as a sub-component of the[EHR Functional Model](http://www.hl7.org/ehr/).

- The members then showed us the work, and it is very impressive. They have incorporated input from many  sources including EHR Functional Model, CCHIT, and elsewhere. They have done a complete cross-walk with regulations in 5 countries including USA, Russia, Brazil, and Europe.

- They have a cross walk with the major IT Security standard, ISO 15408 Common Criteria.

- The result is a set of 18 categories of security and privacy functionality with less than 60 total requirements. Many of these carrying the original wording from the source material.

- The work item plan was to have a second part that focused on the needs of small EHR. The members concluded that on the scope of privacy and security functionality there was no difference between large or small. Thus the second part will not be worked on.

- I then observed that this work is more mature than the EHR Functional Model, and that we need to harmonize the two works together. The EHR Functional Model will ultimately be dual balloted with ISO, so the harmonization is critical. I worked with the co-chairs of the EHR Functional model that were also present at the meeting. The hard part is that both works are undergoing ballot at the same time. The plan that I worked out is to pull all of the ISO 14441 into the EHR Functional Model, replacing the criteria in the EHR Functional Model today. Make sure that the comments already registered with the EHR Functional Model are still handled. As part of this the criteria in ISO 14441 will need to be reworded as the format of the EHR Functional Model is specific to enable their profiling. Ballots on both works will be resolved in harmony, resulting in a single set of criteria. Where the EHR Functional Model points at the ISO 14441 for details and cross-walk.

Potential new work item on Patient Consent

- There was discussion of a new proposal to address Patient Consent.

- Bernd and I both commented regarding the good and existing work in HL7 on consent including the Privacy/Security DAM, CDA Consent Directive, confidentialityCode vocabulary, and the work on Ontology.

- There was much discussion of the role of [IHE BPPC](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html), the HL7 [CDA Consent Directive](http://www.hl7.org/documentcenter/public/standards/dstu/V3DAM_MR_CPCD_DSTU_R2_2010APR.pdf), and future work. Many people don't understand that the HL7 work starts from the IHE BPPC and enhances it. I need to blog about this.

- The work item will focus mostly on the high level guidance and point at HL7 for the normative aspects. Although it is not clear that this is fully agreed to. This will require much monitoring to prevent overlap.

- The workgroup was significantly out of date regarding the concepts that have been learned regarding this space. It is not clear to me that the group contains subject matter expertise to support this item.

- I think this NWIP proposal will go forward. If it can be kept in harmony with HL7, then it can be a good thing

ISO 17090 new work item proposal Part 4: Digital signature

- There is a new work item proposed to address Healthcare needs for Digital Signature. The work is being added as a new part on the Digital Certificates family. The work needs to be kept specific to the healthcare needs. It should be focused on pointing at ETSI for the Digital Signature specifics (XaDES is the XML profile).

- I recommended that they look to harmonize with the [IHE Digital Signature Profile](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html). This profile recognized that there is only a few things that need to be profiled given the underlying standards of XML-Signature and XaDES; the format of the date/time and a mechanism to hold the signature purpose. With the signature purpose vocabulary being specific to healthcare.

Standards for safe health software

- The work is now sourced out of Canada, where they are still struggling to get their regulators to recognize software as a medical device. This is in direct contrast to the FDA that has come out with specific guidance on software and even mobile applications.

- The work is trying to be more open to discussion and input. They do now recognize the problems that vendors would have if they were forced to use two different processes for developing health software.

- There is formal requests to make this a joint work with IEC 62A. Which is the group that normally deals with Safety.

- I would like this work to be risk based and recognize risks to Safety as well as Security and Effectivity. This is the scope that[IEC 80001](http://healthcaresecprivacy.blogspot.com/2011/10/more-webinars-on-basics-of-iec-80001.html) took, and it works out good for things that need to be integrated at the operational level.

ISO 16864: Data protection in trans-border flows of personal health information

- There was not much discussion of this work item. It is attempting to take a high level view of the needs and the available standards to support those needs.

- The work item has failed ballot due to lack of subject matter experts. I think the problem is that the work item is simply too grandiose.

ISO 21549-Patient healthcard data â€“ 2, 3, 4, 7

- The USA has and continues to ignore this work. We, at best, look to WEDI for a standard format for printed and magnetic stripe.

- Common is a desire to keep these health cards to mostly identifiers

- There continues to be some that think it would be useful to put data on these cards. The committee members are very much against this as it presents security and privacy concerns, and also raises the question of freshness of the data. As evidence of this, they are looking for experts to work on a new part that would define the data. No experts are coming forward.

ISO 16114 Security Aspects of EHR Migration

- This work items started a long time ago, and has been moving very slowly. Presented this week was the struggle with defining what an EHR is. This struggle must recognize the various deployment models including classic client/server, n-tier, software as a service, etc.

- I have strong concerns with this work item. I donâ€™t see there being a possible thing to abstract enough for ISO to write a good Technical Report on. The aspects of â€˜migrationâ€™ are simply too specific to the instance.

- There is no clear defining line where something goes from a software upgrade to a â€˜migrationâ€™. They have put out of scope the case of backup with recovery.

- Unfortunately this work is already underway so it now must conclude in something.

ISO 22600 PMAC Update

- This is the regular review of this existing specification. There have been significant updates that are considered positive changes. The essence of the specification is not changed. Most of the changes are editorial or to update the text to modern terminology.

ISO 27799 ISM in Health Using ISO / IEC 27002

- This is the regular review of this existing specification. The problem the committee has is that this work was originally written before IEC 27001 was final. Healthcare received a number in the 27000 family expecting this move. Now the work item needs to be reformatted and changed to reference the IEC 27000 family rather than the 17799.

- No significant changes beyond reformatting are expected.

ISO 21091: Directory services ballot results

- This work was up for review, and received very little requests to change it. There was indicated much  support for it globally. This is also included in the IHE HPD, although not [completely](http://healthcaresecprivacy.blogspot.com/2011/05/broadly-usable-hie-directory.html).

ISO 17090-1, -2, -3: PKI Comment resolution

- This work was up for review, and received very little requests to change it. The main things were some issues around mandatory fields. Experience has shown that there is resistance to some of the items that were considered mandatory. The changes are all reasonable.

Potential new work item on Privacy Officer Education

- This proposal was hard to understand what was being proposed as a work item. I think that it is well beyond the scope of a standards organization. There is plenty of this kind of education available. I think the request is to put together one set of training.

- I donâ€™t see how this can be done on an international level and be successful.

DIS 27789  Audit trails for electronic health records

- This is the work to formalize the [ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) use within EHR.

- It is awaiting going out for second DIS ballot

- The work item was not discussed.

I was very happy with the results of the 2 days I participated. This was far more productive than ISO meetings in the past. I would still like to see more participation from subject matter experts, the membership tends to be the same people from academia. This is mostly an effect of the way that ISO operates. It is so frustrating to have this country focused model, where all of the USA gets one vote equal to even the smallest and undeveloped country.

