# Disaster use of HIE is a PurposeOfUse 

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/04/disaster-use-of-hie-is-purposeofuse.html
Published: 2020-04-08T18:15:00Z
Updated: 2020-04-09T18:11:19.102Z
Author: John Moehrke

---

_

In the USA there is a project called [Patient Unified Lookup System for Emergencies (PULSE)](https://sequoiaproject.org/pulse/). It is an exemplar of functionality that can quickly enable healthcare treatment use-cases that are within the purpose of a Health Information Exchange, yet are also dynamically deployed as necessary.

The video gives a good background that is important. I will let the video describe it.

Essentially it is a very thin web front-end that enables authorized users to gain READ-ONLY access to health information on patients for Treatment use only. It thus needs to

- manage authorized sites using the access system. These sites need to be carefully managed to be quickly deployed, yet there needs to be confidence that when one site is deployed that it is authorized.

- manage users at that site. where these users are often temporary workers that have migrated to the disaster area to help out. Thus the system needs to provision user accounts, while making sure that policy and procedures assure that the users are all legitimate users

- track all users actions so that there is traceability and accountability

- patient discovery mechanism

- document discovery of list of documents

- display of user selected document

Putting it together using Interoperability

When the system makes a request to the network for patient discovery (IHE-XCPD), document lookup (IHE-XCA), and retrieval of a document (IHE-XCA); the request must be recognized as coming from an authorized site and an authorized individual recognized at that site (IHE-XUA). This authorization confidence is what is the hardest part for a system like this. That is it is hard to express to ALL of the participants in a health network, especially a very large one like the USA nationwide network as a collaboration of thousands of participant organizations. Especially given that the PULSE is a temporary site created just yesterday.

The method should leverage the certificate management system that is used to manage trust within the network. The new site would be issued a new certificate within the Certificate Authority, and it would be given attributes that make it clear it is a Disaster provisioned site, and that it is authorized under a broader authority. These certificates naturally are trusted through the normal certificate authority chain.

This likely needs to be part of a regular testing of the network, where a short-term certificate gets provisioned and each participant is tested that it would respond. This test does not need to expose patient data, as a Patient Discovery of a test patient would return Zero-Results-Found if the trust was working, vs Authorization-Failure if that partner was not handling the certificates appropriately. This regular testing is necessary as failure demurring a disaster is unacceptable.

PurposeOfUse

Certificates are important for trust, but don't convey the intended purpose. It is possible to embed the purpose in the certificate, but there is a more dynamic mechanism already available in the IHE-XUA profile, which is a specification for how SAML would be used in a network of networks. There is a PurposeOfUse element that carries the purpose for which the request is being initiated for, and for which is promised to be the only use for which results will be used. Thus any data released is released only for the explicit purposeOfUse requested.

Treatment

Seems logical to me that these requests are clearly for the purposes of Treatment ([TREAT](https://www.hl7.org/fhir/v3/ActReason/cs.html#v3-ActReason-TREAT)). There would not be use of this kind of a system for Payment ( [HPAYMT](https://www.hl7.org/fhir/v3/ActReason/cs.html#v3-ActReason-HPAYMT)) or Operations ([HOPERAT](https://www.hl7.org/fhir/v3/ActReason/cs.html#v3-ActReason-HOPERAT)); where as these would be typical of a [normal organization requests of the network](https://healthcaresecprivacy.blogspot.com/2020/03/custodian-access-control-decision.html).

plus Disaster

But it seems that these requests should also include another PurposeOfUse value that indicates the specific urgency of the care setting. I recommend that the Disaster ([DISASTER](https://www.hl7.org/fhir/v3/ActReason/cs.html#v3-ActReason-DISASTER)) PurpoeOfUse be added to the Treatment.  In this way the custodian organization has better knowledge that it can use for Access Control purposes and for Audit Logging. For example with the addition of Disaster to Treatment, the organization could have special handling within their Privacy Policy that authorizes access for Disaster access. This would be important as the Disaster site could not have been recognized during normal times, so the patient could not have had the ability to explicitly permit or deny authorization.  Thus this would be a recognized authorization implicitly.

UPDATED: I think Disaster PurposeOfUse could also be a signal that the retention of any data returned is only for the duration of the episode/encounter and no longer than the declared Disaster. If this is not folded into the PurposeOfUse of Disaster, then it needs to be addressed in the Disaster Site Certificate policy. Somehow retention is different, and as such needs to be expressed as different.

Write access

Today PULSE is just READ-ONLY, and that is likely all that is needed. However with COVID-19 there is a potential need for some results (Positive or Negative) to be published so that future treatment settings can be aware. This likely would be done today through a recognized normal healthcare treatment organization. That is to say that these Disaster settings are often (always?) associated with some formal treatment organization. So there is methods available today. It is not clear this needs to be changed. But it is a use-case that must be supported somehow.

