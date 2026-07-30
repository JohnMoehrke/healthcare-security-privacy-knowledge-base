# Patient access to Radiology

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/10/patient-access-to-radiology.html
Published: 2011-10-21T15:40:00.001Z
Updated: 2011-10-21T15:40:47.510Z
Author: John Moehrke

---

e-Patient Dave asks [Is â€œGimme my damn dataâ€ coming to radiology at last??](http://e-patients.net/archives/2011/10/is-gimme-my-damn-data-coming-to-radiology-at-last.html)

Radiology (all [modalities](http://dclunie.blogspot.com/2011/09/modality-by-any-other-name-would-smell.html)of Imaging) have had many ways to provide patients with their Damn data. The CD that e-Patient Dave refer to is an example that is heavily used. It is not clear from e-Patient Dave's post if the CD he is given is "DICOM Compliant", if it was then the viewer on the CD is not the only viewer available. There are[many DICOM viewers you could use](http://dclunie.blogspot.com/2008/11/basic-cd-viewer-requirements-extending.html). Further these are full DICOM objects so they can be imported into a PACS or even [HealthVault](http://blogs.msdn.com/b/familyhealthguy/archive/2011/04/13/it-s-all-about-the-pictures-medical-imaging-arrives-at-healthvault.aspx). Where they can be fully manipulated by those tools.

IHE has profile of this [Portable Data for Imaging (PDI)](http://wiki.ihe.net/index.php?title=Portable_Data_for_Imaging)  This profile is compatible for the wider profile for any Documents on media [Cross-Enterprise Document Media Interchange (XDM)](http://wiki.ihe.net/index.php?title=Cross-enterprise_Document_Media_Interchange)

Which is the profile recommended to be used to carry content by the [Direct Project.](http://wiki.directproject.org/Applicability+Statement+for+Secure+Health+Transport#x2.0 Signed and Encrypted Internet Message Format Documents-2.1 Health Content Containers)

Thus, the whole space of Healthcare Information can be put on interoperable media and provided to the patient on removable media or e-Mail.

Note that there are equivilant and compatible solutions for a local [Health Information Exchange (XDS)](http://wiki.ihe.net/index.php?title=Cross_Enterprise_Document_Sharing), and [NationWide Health Information Exchange (XCA)](http://wiki.ihe.net/index.php?title=Cross-Community_Access).

**All using the same document, and same metadata, and fully specified for Privacy and Security. What is lacking is the Mandate -- the "Damn" part of the story. **

