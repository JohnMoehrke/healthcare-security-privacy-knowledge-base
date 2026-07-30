# HL7 WGM - Introduction to Security and Privacy

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/08/hl7-wgm-introduction-to-security-and.html
Published: 2012-08-02T21:38:00.003Z
Updated: 2012-08-02T21:38:50.369Z
Author: John Moehrke

---

http://www.hl7.org/assets/systemimages/HL7logo.gif

The HL7  Security Workgroup is hosting a Free Educational Session at the [Baltimore HL7 Working Group Meeting](http://www.hl7.org/events/wgm092012/) - September 12th, afternoon. [See Page 13 in the HL7 Workgroup Meeting Brochure](http://www.hl7.org/documentcenter/public_temp_E99A4C44-1C23-BA17-0CC319E9981B00E1/brochures/wgm/HL7_WGM_20120702.pdf)

>
This session will focus on how to apply security and privacy to the health IT standards. It will cover the basics of security and privacy using real-world examples. The session will explain how each phase of design needs to consider risks to security and privacy to best design security and privacy in; and mechanisms for flowing risks down to the next phase of design. In addition, it will cover the security and privacy relevant standards that HL7 has to offer including: Role-Based-Access-Control Permissions, Security/Privacy ontology, ConfidentialityCode, CDA Consent Directive, Access Control Service, Audit Control Service, and others. These standards and services will be explained in the context of providing a secure and privacy protecting health IT environment.

As a FREE Educational Session this takes place in the Security Workgroup meeting room Q3-Q4 Wednesday. I invite all members of the security workgroup to attend, engage in discussion, and offer to lead topics. I am prepared to do this completely on my own, but really really enjoy sharing the spotlight.

What I have planned is for the first Quarter  (Q3 Wednesday) to cover our already prepared [Security Risk Assessment Cookbook Tutorial](http://healthcaresecprivacy.blogspot.com/2010/07/tutorial-on-hl7-security-cookbook-at.html). The focus here is on fundamentals of security and privacy risk assessment as a means to determine realistic requirements that mitigate risks in a complete and appropriate way. This will be accelerated as it is originally intended to be twice this long. It might get compressed even more if we uncover and create more compelling second half work.

For the second half of the afternoon (Q4 Wednesday) I would like to cover the other security and privacy components that exist in HL7. Here is where I really hope to leverage the expertise of the other Security Workgroup members.

- [HL7 Value Sets using Code System Confidentiality](http://www.hl7.org/v3ballot/html/infrastructure/vocabulary/vs_Confidentiality.html) (2.16.840.1.113883.5.25) -- This vocabulary is used in the confidentialityCode metadata attribute to identify the data object sensitivity and confidentiality classification. This enables both segmentation of especially sensitive topics and also Role-Based-Access-Control that protects objects for both security and privacy

- [HL7 Version 3; Composite Privacy Consent Directive (CDA), DSTU Release 2](http://www.hl7.org/documentcenter/public/standards/dstu/V3DAM_MR_CPCD_DSTU_R2_2010APR.pdf) - This CDA document object captures the patient privacy preferences, authorizations, and consents. This document is used as evidence of a patient consent ceremony as well as triggers privacy policy engines to enforce the patient privacy.

- [Role-Based Access Control Permission Catalog (RBAC), Release 2](http://www.hl7.org/documentcenter/private/standards/v3/HL7_V3_RBAC_R2_2010FEB.pdf) - This vocabulary enables communication of users permissions in an interoperable way. This vocabulary can be used at a multitude of points in the Privacy and Security system.

- Privacy, Access and Security Services (PASS)

- Access Control Service â€“ This is a service being defined for support of access control decisions and enforcement

- Healthcare Audit Services Release 1.0 -- This service specification is available and enables security audit log recording. There are also service endpoints to enable different security and privacy audit analysis use-cases, including the creation of an accounting of disclosure.

- [EHR Functional Model, Release 1](http://www.hl7.org/documentcenter/public/standards/EHR_Functional_Model/R1/EHR_Functional_Model_R1_final.zip) -- The EHR functional model includes a comprehensive set of security and privacy functions. This catalog includes detailed system level requirements that are actionable and testable. Profiles of this functional model are available for many functional systems including an EMR and PHR.

- [HL7 Version 3 Standard: Transport Specification, MLLP, R2](http://www.hl7.org/documentcenter/private/standards/v3/edition2010/Edition2010_StPub.zip) -- The HL7 transport specifications include transport security (e.g. TLS)

- and probably some of the currently under development things...

Most important is that this is a discussion. We will cover what ever material the audience needs to cover in the space of what HL7 has to offer in the realms of Privacy and Security.

