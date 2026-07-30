# a New S&I Initiative: esMD Call for Participation

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/10/new-s-initiative-esmd-call-for.html
Published: 2011-10-03T12:40:00.002Z
Updated: 2011-10-03T12:40:35.723Z
Author: John Moehrke

---

The [S&I Framework](http://wiki.siframework.org/) is kicking off yet another project. I exhausted with the number of projects that I need to participate in today, and I only participate in a few (Keith is our lead this year).  This new project seems like 3 totally different use-cases rolled into one. So it is actually three new initiatives. I canâ€™t quite understand what use-case 2 and 3 are. They are so broadly written that they could be almost anything. But use-case 1 is one I can help with.

Digital Signatures are a topic I have covered multiple times. I donâ€™t know of anything new being asked for, so I will just point at the existing work on the topic. This work includes use-cases, standards assessment, vocabulary identification, and profiling of standards.

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)

HITSP covered this space and created [C26 - Nonrepudiation of Origin](http://hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=4&PrefixNumeric=26)

Note, the technology is easy; the hard part is getting over the administrative costs, infrastructure, and processes that are necessary to support Digital Signatures. In order to have digital signatures of any value one must have a strong certificate management infrastructure in place. One that issues Certificates to individuals, who are very careful with them. Certificate management infrastructure that can hold certificates for 100 years. This is expensive. This is the reason why few actually roll out Digital Signatures, and this is why IHE has not seen enough adoption of DSG to move it to final text.

The other hidden complexity is timestamps, one must be able to trust the timestamp inside a digital signature. This is not the same thing as having synchronized time. This has to do with protections against malicious 'back dating' of signatures. There are technology solutions, usually implemented as a timestamp-service. This timestamp-service does nothing but apply a Digital-Signature of it's own. By agreement everyone trusts the timestamp applied by the timestamp-service. More technology, more certificate management and more trust.

I'm not going to be at the Face-to-Face, so let me know how it goes.

>
**From:** S&I Framework Admin [mailto:admin@siframework.org]
**Sent:** Friday, September 30, 2011 4:18 PM
**Cc:** Mohammed.Elias1@cms.hhs.gov; melanie.combs-dyer@cms.hhs.gov; Mera.Choi@hhs.gov
**Subject:** Announcing a New S&I Initiative: esMD Call for Participation Current S&I Framework Members,
**ONC is pleased to announce the launch of a new S&I Framework Initiative â€“ Electronic Submission of Medical Documentation (esMD).
 ****
****You are invited to attend the esMD KickOff Meeting and subsequent discussions at the S&I Face to Face on Oct 18-19.**  The esMD initiative will require inputs from several other S&I Initiatives, such as Provider Directories and TOC/CDA, so we encourage and request your participation and input to this important initiative.  For those of you who have not yet registered for the F2F Meeting, you can do so on this link: [http://wiki.siframework.org/October+F2F+Meeting](http://wiki.siframework.org/October+F2F+Meeting)
_Note: Registration for the Face to Face meeting has been extended through Oct 7th.  The Hyatt has also extended their discounted hotel room rates through Oct 7th. _
The Kick-off call for the esMD Initiative will occur October 18, 2011 at 9:30am EDT.  Please stay tuned for additional agenda details for the esMD sessions on Oct 18-19th, or monitor the esMD wikispace for updates: [http://wiki.siframework.org/esMD+Workgroup](http://wiki.siframework.org/esMD+Workgroup).  On this page, you can also sign up as a Committed Member or Other Interested Party for the esMD Initiative.

**Please note the attached esMD DRAFT charter. Below is a summary of the Initiative and expected Use Cases.
 ****
****_esMD Initiative_**: The Electronic Submission of Medical Documentation (esMD) pilot intends to give providers a new mechanism for submitting medical documentation to Medicare Review Contractors. The S&I Framework esMD Initiative will focus on Interoperability and Nationwide Standards needed to support esMD requirements. The objective for the initiative is to setup workgroups to develop the use cases listed below:
Use Case 1: Define technical issues and relevant standards associated with author level digital signatures and develop a list of recommended Standards and associated Reference Implementation Guide(s)
Use Case 2: Define Standards for Structured Data submission capability using esMD
Use Case 3: Define standards for electronic communication with Providers to request for Medical Documentation (Structured Outbound)
Based on current discussions among members of the HIT Standards Committee and feedback from members of the community, the following core outcomes have been identified for the esMD Initiative:

- Identify gaps in CDA Structured Document to support Progress Notes and Orders, and other documents as required for Medicare Review and similar activities

- Leverage work of Provider Directories, Certificate Interoperability, Transitions of Care, and Data Segmentation Initiatives as they apply to esMD

- Define technical issues and relevant standards associated with Author Level Digital Signatures

- Identify and address business process and infrastructure issues associated with Author Level Digital Signatures

- Identify and forward policy issues, if any, to appropriate policy bodies

- Develop a list of recommended Standards, potentially including new work by SDOs, to be incorporated in a Reference Implementation for esMD

Thank you,Melanie Combs-Dyer, esMD Initiative Coordinator;Mohammad â€˜Samâ€™ Elias, esMD Project Manager;and the S&I Framework Support Team

