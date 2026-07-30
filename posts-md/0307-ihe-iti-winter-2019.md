# IHE ITI Winter 2019

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/02/ihe-iti-winter-2019.html
Published: 2019-02-28T23:30:00Z
Updated: 2019-03-01T17:57:42.325Z
Author: John Moehrke

---

https://en.wikipedia.org/wiki/TrevisoThe IHE ITI, PCC, and QRPH workgroups met in [OakBrook, IL](https://goo.gl/maps/gPeVkzp7Jwp)this week at the [RSNA Headquarters](https://www.rsna.org/). This is the usual place. Which was a big disappointment as we all were expecting we would be meeting at this time in [Treviso Italy.](https://en.wikipedia.org/wiki/Treviso), where it is (+12Â°C). So we got stuck with dirty snow and (-12Â°C) temperature.

I think we all had a good week. There was an amazingly diverse set of participants:

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9UK9cWbSU2R2Y7qF9TIXU5CKmf0Rqs4w57YamE851u745p7CrsUB5T3Q39IvAvvyqfu48g6qNRqwMRHy4seqaFYrcjXcob995zF0kP6G_iRQ-BMzpN3QulNnAGHHXwLNi1ZDlTNoz51PV/s1600/IHE-201902.jpg

I participate mostly in ITI. The week was very successful. We are trying out a [new project development process that is following more of an Agile development process](https://wiki.ihe.net/index.php/ITI_Continuous_Development). Normally the IHE calendar is split into 12 month development cycle, small and large work items need to fit within that timeframe. Under Continuous we can complete a work item when it is done, as fast as it can be done, thus picking up new items as we have resources become available. Under this model we have harder requirements on Quality, where as the 12 month cycle puts emphasis on date based deadlines.

The ITI workgroup completed:

- Patient Identity Management using FHIR -- We got started on this, mostly agreeing to the usecases, scope, and actors. This is targeting supporting a regional or national level patient identity management system, and will be tied to XDS Registry to keep the registry up-to-date, so that XDS Consumers get accurate results when querying for a patient.

- Updating mCSD -- We are about ready to send this out for Public Comment, look for it in a month. This is an effort to add support for "Facilities" and clarify how they are different than "Locations". The work-item is aimed also to define how to create multiple hierarchies between facilities.

- XCA Deferred Query -- We progressed to almost a complete specification, however this will likely not be approved for Public Comment until our next face-to-face. This work item intends to support use-cases where an XCA Responding Community will take longer to respond to query and response than is allowed by Asynchronous Web-Services. Use-case such as when a human must get involved with the response to evaluate patient privacy consent authorization, or where paper documents would need to be scanned and indexed. These longer response times would be supported through a Deferred query mechanism similar to what is in XCPD.

- FHIR R4 priority 1 group - finishing the update to FHIR R4 for the group of IHE Profiles using FHIR that is considered a Priority for ONC: MHD, PDQm, QEDm, mCSD, and Appendix Z. we resolved public comment in addition to all outstanding CP.  Compliance files (structureDefinition, capabilityStatement, etc) have not yet been converted to R4, this will be done in the coming months when Forge can be used.

- The FHIR specification changed in response to public comment based on ballot and experience. For details on the summary of changes of the FHIR specification between STU3 and R4 please see [http://build.fhir.org/history.html](http://build.fhir.org/history.html)

- The IHE profiles of PDQm, MHD, QEDm, mCSD, and the Appendix Z were updated to reference FHIR R4. The changes were dominantly simply to reference FHIR R4 rather than FHIR STU3. Thus the most important changes to implementations are found in the FHIR specification changes. Some changes were also initiated by a Change Proposal that identified a mistake in the STU3 version of the profile. Some changes were open-issues in STU3 that are now fixed in the FHIR R4 core specification. Change Proposals and open-issues are noted in the closed-issues in these drafts. These versions of the supplement were in Public Comment that resulted in 88 public comments that were then resolved. Note that mXDE profile is independent of the FHIR revision, as it orchestrates MHD and QEDm.

- The following are specific additional changes beyond the update to reference FHIR R4:

- MHD - now requires Document Recipient declaring XDS on FHIR Option must support all XDS association types

- MHD - the canonical URI used for profiles are available, but they have not yet been created. These StructureDefinition xml files will be made available later as they are not normative.

- MHD - the canonical URI used for the Provide Document Bundle transaction has changed because the FHIR canonical URI encoding rules don't allow for "-" character. We could have just change ITI-65 into ITI_65, but a breaking change is a breaking change. So we chose to replace with an actual structure definition based in the same URI space as our other Structure definitions. This means that we would no-longer use [http://ihe.net/fhir/tag/iti-65](http://ihe.net/fhir/tag/iti-65), but rather we would use [http://ihe.net/fhir/StructureDefinition/IHE_MHD_Provide_Comprehensive_DocumentBundle](http://ihe.net/fhir/StructureDefinition/IHE_MHD_Provide_Comprehensive_DocumentBundle), or [http://ihe.net/fhir/StructureDefinition/IHE_MHD_Provide_Minimal_DocumentBundle](http://ihe.net/fhir/StructureDefinition/IHE_MHD_Provide_Minimal_DocumentBundle)

- MHD - many updates to the XDS-FHIR mapping, including recognizing the use of the .meta element to support minimal metadata

- MHD - recognition of ProviderRole use

- QEDm - fixed Provenance section that was hard to read and had some errors

We also worked with PCC and QRPH on their FHIR based profiles. Reminding them that they should be leveraging Appendix Z as much as they can, and let ITI know if there is any opportunity to improve Appendix Z. Further discussion that there are guidance on how to evaluate FHIR and profile FHIR. In addition there is now a [GitHUB for IHE, and we are managing our FHIR compliance (XML) files](https://github.com/IHE/fhir) there rather than managing them on the FTP.

ITI will be picking our next work item from the backlog. The backlog is maintained and prioritized on a monthly basis by the ITI Planning committee.

**UPDATE**: I predicted wrong:  I expect that we will convert the remainder of our FHIR profiles to FHIR R4: NPFS (Non-Patient File Sharing), ATNA FHIR Query, mACM (Mobile Alert Communication Management), and PIXm (Patient Identity Cross-Reference for Mobile).

**We actually decided** to take on creating the ATNA Feed on FHIR transaction, so that applications that are just FHIR based have an easy way to log security/privacy/other events, rather than only having the DICOM ATNA encoding using SYSLOG. This work item will also update the FHIR ATNA Query transaction to FHIR R4. There is strong interest in updating the rest of our FHIR Profiles, but that will be picked up at our next meeting when we finish the CSDm Facility supplement.

Keith has a report from PCC [A Brief summary of my IHE ACDC Profile and A4R Whitepaper Proposals](http://motorcycleguy.blogspot.com/2019/02/a-brief-summary-of-my-ihe-acdc-profile.html)

