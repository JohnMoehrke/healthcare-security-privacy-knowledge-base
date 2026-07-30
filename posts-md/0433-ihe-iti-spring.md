# IHE ITI Spring

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/05/ihe-iti-spring.html
Published: 2022-05-02T16:13:00.005Z
Updated: 2022-05-09T13:31:32.037Z
Author: John Moehrke

---

The IHE domains of IT-Infrastructure, PCC, QRPH, and RAD had our workgroup meetings last week. Radiology met in-person at the RSNA, so got to socialize. I don't have details for RAD, PCC, or QRPH.

IT-Infrastructure met virtually all week. We did not make as much progress as we wanted to, due to  the lack of progress in the past few months. However we did make significant progress.

All formal publications will be available this month at [https://profiles.ihe.net](https://profiles.ihe.net)

Release for Trial Implementation:

- Basic Audit Log Pattern (BALP) will be released for Trial Implementation. This release will happen over the next few weeks.

- GitHub project - [https://github.com/IHE/ITI.BasicAudit](https://github.com/IHE/ITI.BasicAudit)
- Publication - [https://profiles.ihe.net/ITI/BALP](https://profiles.ihe.net/ITI/BALP/index.html) - Version 1.1.0, Published May 4th
- This project focused on defining AuditEvent patterns for various general purpose auditable events. Specifically all FHIR RESTful interactions, and and Accounting of Disclosures. Augmentations of these to embellish the Patient as subject, and the user/client that is auth using SAML, or OAuth.
- This IG can be implemented directly. This IG will more be used as a foundation of the AuditEvent profiles, such as PMIR will show.

Release for Public Comment:

- Mobile Care Services Discovery (mCSD) -- significant comments and changes to improve the usability and features. Because of these changes, we decided to publish for another Public Comment.

- GitHub project - [https://github.com/IHE/ITI.mCS](https://github.com/IHE/ITI.mCSD)
- Publication - coming soon

- Patient Master Identity Registry (PMIR) -- this is simply converting the specification from WORD/PDF into using the IG Publisher. There is no intended new feature. However given the new publication tooling there will be additional specification. One is that this IG will depend on BasicAudit as the pattern for some of the AuditEvent profiles.

- GitHub project - [https://github.com/IHE/ITI.PMIR](https://github.com/IHE/ITI.PMIR)

- Publication - coming soon

Current Projects [Kanban](https://github.com/IHE/IT-Infrastructure/projects/2)
- Scheduling for Patients or Providers

- GitHub project - [https://github.com/IHE/ITI.Scheduling](https://github.com/IHE/ITI.Scheduling)
- Project [Plan](https://github.com/IHE/IT-Infrastructure/issues/139)
- This will be inspired by the work done with the work done [4 years ago by Argonaut](https://www.fhir.org/guides/argonaut/scheduling/) but is not constrained to the same solution.

- Mobile Health Documents  - Improvements based on current feedback

- GitHub project - [https://github.com/IHE/ITI.MHD](https://github.com/IHE/ITI.MHD)
- Project [Plan](https://github.com/IHE/IT-Infrastructure/issues/175)
- Kanban board - [https://github.com/orgs/IHE/projects/4](https://github.com/orgs/IHE/projects/4)
- CI Build - [http://build.fhir.org/ig/IHE/ITI.MHD/branches/Improvements-2022/index.html](http://build.fhir.org/ig/IHE/ITI.MHD/branches/Improvements-2022/index.html)

- MHD to a Federation

- likely will transition to a Whitepaper covering all forms of multiple-depth federation support. With a focus on use of the features that this project has added to mCSD and MHD.

- use-cases for PUSH to a partner multiple hops away
- use-cases for Query to a partner multiple hops away

- Project [Plan](https://github.com/IHE/IT-Infrastructure/issues/142)
- GitHub project -- tbd
- This will be a new whitepaper.

- Extension to Secure Retrieve (SeR) Profile to support other HIE services

- This project will take the SAML/XACML mechanism defined for Secure Retrieve, and defined how it can be used to address other services in an XDS/XCA community such as patient lookup.
- Project [Plan](https://github.com/IHE/IT-Infrastructure/issues/177)
- This will be an updated Supplement (WORD/PDF)

- Update publications

- We are now integrating the changes approved through the CP process.
- Incremental Quality improvements have been submitted to some of the ITI Implementation Guides and Technical Framework. When these are simply cleanup the changes are accepted as github issues, and pull-requests. These changes are available in the "current" Continuous-Integration (CI) builds; and will be moved into formal publication based on need and impact.

Next virtual Meeting is July 18-22
Other Activities
- The IHE [profiles.ihe.net](http://profiles.ihe.net) now has full analytics, so ITI can now tell specifically which parts of the technical framework are being used.
- The IHE profiles.ihe.net now has the DEV and RAD domains represented. QRPH is coming soon.
- Quality Improvements and templating improvements as identified.

