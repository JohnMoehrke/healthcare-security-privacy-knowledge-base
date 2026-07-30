# IHE - Privacy and Security Profiles - Conclusion

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html
Published: 2011-08-11T15:59:00.039Z
Updated: 2012-12-31T03:54:38.121Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjCw0hFnK6BtXDAsrm3ivwiwZ4JSaVBDtVFUaehkhE3Tl920X7QXjGg4_rXXHKbAjbpLJ9u2pk656KRo7TIXm99PqCkjSh_EAMPl4OYQkLl7GLe3nLO8YMvdP2tEowjt1LZ5DEh3ybZbK5b/s1600/Slide62.PNG

IHE provides Security and Privacy Profiles to handle the interoperability needs. These profiles enable but do not address all of Security and Privacy. There is much more to Security and Privacy in  systems design and operational deployment

This table was introduced at the beginning. It summarizes how IHE Profiles address typical Security and Privacy Controls. IHE produces only Integration Profiles, so there is much more that is needed in system design and system deployment. Using Risk assessment in profile design, system design, and system deployment assures that the most important risks are addressed and that they are addressed with reasonable methods.

I ask a few simple questions in the Introduction:

- _Which profiles should we use to prevent the wrong people from looking at PHI? _

- ATNA will prevent non authorized systems from communicating

- EUA, XUA, and PWP can be used to identify users and their roles

- BPPC can be used to identify patient specific privacy policies

- DEN shows how to encrypt at many levels and many transports

- Essentially almost all of the profiles play some part in preventing the wrong people from looking at PHI.

- _Which profiles would you use in an investigation of a potential incident? _

- ATNA includes an Audit Trail, with consistent timestamps synchronized

- EUA, XUA, and PWP are critical for identifying users

- These will not produce the investigation report, but they are the key components to having an audit log that is complete and longitudinal.

- _Which profile would give you strong assurances that a document hasn't been modified? _

- DSG gives strong assurance with Digital Signatures.

- PWP provides access to Public Digital Certificates for validation

- _Which profiles would inform an accounting of disclosures _

- ATNA includes an Audit Trail, with consistent timestamps synchronized

- EUA, XUA, and PWP are critical for identifying users

- An Accounting of Disclosures is a very special report that has many exclusions. This report is a complex report that could be based on some of the ATNA audit log, but likely needs to include entries for many other events.

**There is room for improvement, some identified projects that might happen in the future:**

- Better coded vocabulary for confidentiality codes. Codes that can better represent simple sensitivity data classifications.

- Enabling Patient Access while addressing sensitive health topics, emergency data sets, patient reported data, amendments and removal

- Complex Privacy â€˜consentâ€™ Policy capabilities to support inclusion lists, exclusion lists, exceptions, obligations and more

- Access Control as a service with independent Policy Information, Policy Decision Point and Policy Enforcement Points

- Accounting of Disclosures reports, alerts, messaging

- Environments such as Un-Safe Client machine (home-computer)

At this time these are addressed with functional, non-functional, and environmental methods. The standards are not yet developed to support these in interoperability profiles, but the standards are being developed.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg3EtO6sstI712GKPufb4i8TVKmJ1kJRkTBkIE4xRr0jQnu8sg0_rr-I5K1q6UQWToJgZ4AmGY8XflOM7TRimtFO1akdEqbOFTuTi9ZvHbX-e5cByPI8HaRoh814EA_z-aGuilaIeE2lWj8/s1600/Slide65.PNG

For more information

- The[IHE Web site](http://www.ihe.net/) for all formal specifications and background

- The [IHE Wiki](http://wiki.ihe.net/) for committee work, and implementation notes

- To get involved go to the [committees pages](http://www.ihe.net/IT_Infra/committees)

**Back links**

This is part of a blog presentation of the IHE Privacy and Security Profiles Overview:

- [Introduction to IHE impact on Meaningful Use](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html)

- [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

