# Enabling Security/Privacy on Modular EHR certification

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/12/enabling-securityprivacy-on-modular-ehr.html
Published: 2012-12-07T15:20:00Z
Updated: 2012-12-07T15:20:33.371Z
Author: John Moehrke

---

ONC in the US issued a Request for Comments on potential Meaningful Use Stage 3 objectives, measures, and some certification criteria. The link to the RFC is: [http://www.healthit.gov/sites/default/files/hitpc_stage3_rfc_final.pdf](http://www.healthit.gov/sites/default/files/hitpc_stage3_rfc_final.pdf)

Specifically to my attention is the question of Security and Privacy relative to the new MU2 method of Modular Certification. This 'problem' has been identified very well by [Dixie Baker on the HIT blog](http://www.healthit.gov/buzz-blog/privacy-and-security-of-ehrs/shape-ehr-certification-process-privacy-security/)

The biggest problem here is that there is no definition of what a Module is. Thus there are some Modules that are nothing but reporting packages that make output look pretty for printing, these kinds of Modules should not have the security imposed upon them but rather the â€˜callingâ€™ application should have already done all necessary security and privacy tasks. However many Modules are closer to a full functional specialty or departmental systems.

The solution is to have defined Modules, not a free-for-all. With defined Modules one can define the Interface between the modules. Thus defined 'standardized interfaces', that is interoperability. With the defined modules and the interfaces between the modules; then one can identify the appropriate place for security functionality and what security is needed on the interfaces. It is through this defined modules with standardized interfaces that is a precondition for having standardized security and privacy functionality including enforcement that span beyond the core certified EHR definition.

Note that MU2 already has an equivalent of this. The defined "[Transports](http://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-transports_9.html)" are a exemplar of what I am talking about. The Transports include security built right in. This security is well defined and clear.

This is easy to do with some Modules, not so easy with others. But by starting with some easy Modules, such as departmental EHRs, we can narrow the gap. There are well defined standards interfaces, interoperability, between the main EHR and the departmental EHR.

- Patient Identity -- IHE-PIX, IHE-PDQ, and IHE-PAM

- Orders/Results -- IHE Radiology Scheduled Workflow, IHE-Laboratory Workflow, etc

- Care coordination documentation -- HL7 v2 MDM, CDA, CCDA, IHE

- etc...

And all of these are being transformed into RESTful services with HL7 FHIR; and available for cross-organization exchange through IHE XDS/XCA/XDR/XDM.

Once these interfaces are defined, one looks at the interface requirements. Sometimes the security need only be machine-to-machine (IHE-ATNA). But sometimes user identity is important (IHE-EUA, IHE-XUA, or [IHE-IUA](http://healthcaresecprivacy.blogspot.com/2012/11/ihe-iua-internet-user-authentication.html)). A big advantage of having these modules well defined and interfaces well defined are that one can also look at deeper requirements like [Encryption](http://healthcaresecprivacy.blogspot.com/2012/10/mu2-encryption-and-hashing.html), [Security Audit](http://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-audit-logging.html), [Privacy Enforcement](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html), [Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2012/10/mu-patient-engagement-activity-history.html), [Amendments](http://healthcaresecprivacy.blogspot.com/2012/09/on-meaningful-use-stage-2-rules.html), and [accessibility](http://healthcaresecprivacy.blogspot.com/2012/10/patient-portal-view-download-transmit.html).

The problem that MU has with this is that I donâ€™t think HHS/ONC/CMS want to get into the internal workings of a healthcare provider operation. Inside the healthcare provider operational IT is a mess. Most of the healthcare provider organizations that have complex internal operational IT, also have plenty of knowledge and power to change it themselves. Thus I donâ€™t think there is really a desire in HHS to mess with the problem of internal organizational affairs. I also donâ€™t think that the large organizations want HHS messing around in their internal affairs.

I think a logical move for MU3 is to head a little bit back toward MU1 method of modularity without going all the way back. Thus I think there is a need to have some defined types of specialty EHR that are required to meet all security/privacy requirements, and have defined interfaces. These defined types should be rather identifiable and their interactions also rather clear.

**More**

Meaningful use (USA centric) Stage 2 Final

- [MU Patient Engagement - Activity History Log](http://healthcaresecprivacy.blogspot.com/2012/10/mu-patient-engagement-activity-history.html)

- [MU2 - Why must healthcare use custom software when Thunderbird and Outlook would do?](http://healthcaresecprivacy.blogspot.com/2012/10/mu2-why-must-healthcare-use-custom.html)

- [2014 Draft Test Methods: Wave Four Released for Public Review and Comment](http://healthcaresecprivacy.blogspot.com/2012/10/2014-draft-test-methods-wave-four.html)

- [MU2 - Encryption and Hashing](http://healthcaresecprivacy.blogspot.com/2012/10/mu2-encryption-and-hashing.html)

- [Patient Portal - view, download, TRANSMIT](http://healthcaresecprivacy.blogspot.com/2012/10/patient-portal-view-download-transmit.html)

- [Meaningful Use Stage 2 - Transports Clarified](http://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-transports_9.html) --

- [MU2 Wave 1 of Draft Test Procedures -- Integrity Problem](http://healthcaresecprivacy.blogspot.com/2012/09/mu2-wave-1-of-draft-test-procedures.html)

- [On The Meaningful Use Stage 2 Rules](http://healthcaresecprivacy.blogspot.com/2012/09/on-meaningful-use-stage-2-rules.html)

- [Meaningful Use Stage 2 : Transports](http://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-transports.html)

- [Meaningful Use Stage 2 - Audit Logging - Privacy and Security](http://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-audit-logging.html)

- [Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/minimal-metadata.html)

- [Karen's Cross or just Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html)

Security/Privacy Bloginar: [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

