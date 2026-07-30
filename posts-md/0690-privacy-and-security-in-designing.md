# Privacy and Security in Designing an mHealth Application

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/03/privacy-and-security-in-designing.html
Published: 2013-03-01T16:23:00.003Z
Updated: 2013-03-01T16:33:35.061Z
Author: John Moehrke

---

Security and Privacy are design criteria that need to be included at many levels of design. I have covered in what way Security and Privacy are considered during the writing of an Interoperability Standard [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html). In the case of designing interoperability standards there is is little that can be done at that time, but the impact that can be done is important. Small tweaks in the design of an Interoperability Standard will have big impacts in practice.

Privacy and Security considerations in Deployment of Mobile Software
The next design layer after the one done at Interoperability Standards is the ones done in designing software. However I think it is useful to think next about how that resulting software would be deployed. This software might be a very small application, some javaScript applet, or might be a [data analytics](http://en.wikipedia.org/wiki/Data_analysis) possibly '[big data](http://www.forbes.com/sites/robertreiss/2012/12/17/top-ceos-share-how-big-data-is-transforming-our-health-wealth-and-security/)', or might be a massively distributed computing like [Folding@Home](http://folding.stanford.edu/). The point is that including Privacy and Security into the design will allow the design to more naturally address Privacy and Security.

At the time of developing an Application you need to re-assess. The good news is that there are some fantastic analysis done on this topic as well. I like to point at NIST, simply because they provide very readable and free guidance: [NIST Mobile Security Report](http://csrc.nist.gov/documents/nist-mobile-security-report.pdf) This information is not specific to the USA, but I understand resistance to using it outside the USA. I encourage you  to look at it anyway as it is very approachable. More engineering specific is the NIST [Guidelines for Managing and Securing Mobile Devices in the Enterprise (Draft)](http://csrc.nist.gov/publications/drafts/800-124r1/draft_sp800-124-rev1.pdf). In both of these documents is a focus on deploying mobile devices, not specifically in how to develop applications for mobile devices.

Using Risk Assessment during Application Design
Much of what I did say in the [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html) is usable at Application Development time. However at Application Development time you will be making some Design decisions. I would encourage being as open as possible, meaning being as configurable as possible. This openness and configurability is important to allow your application to be usable in many deployment configurations. The idea of this openness and configurability is to allow the individual or organization that takes your application to have flexibility in how they use it. But recognize that the clause â€œâ€¦ as possibleâ€ is an indication that it is almost never possible to be perfectly open and perfectly configurable. Thus one makes decisions that affect just how flexible the application will be.

The closer the application development is to the deployment choices the less flexibility needs to be built into the application. For example when a Hospital has their internal IT develop a mobile application, they already know the deployment architecture and organizational policies. Thus they can hard-code some of these choices and policies.  For example: These developers can know they will be using normal HTTPS, users will be authenticated to one directory (not federated), and the clients will always be devices that internal IT has endorsed as meeting their mobile-device-policy which includes mobile-device-storage-encryption. One can see how knowing this makes the Application development easier. I however do caution even these developers, as things change far too often and when they do there is usually little time to â€˜fixâ€™ the application.

Application being designed to be distributed broadly; such as in the Apple App Store, or Android Play Store; clearly need to be more configurable, robust, and defensive. They donâ€™t know if users are going to use HTTP Authentication, oAuth, or SAML; and clearly donâ€™t have any idea which resources will be authorized.

It might be a very good idea for a Healthcare Application to force the use of HTTPS. It surely is a good idea that this Application design do everything possible to prevent data from being stored onto the mobile-device. Any data that does need to be stored onto the device should be somehow protected, might be through encryption but might not.

Some good resources, again NIST based are:

- [SP 800-53 - Catalog of Security and Privacy controls - technical, operational, physical, and management](http://csrc.nist.gov/publications/drafts/800-53-rev4/sp800-53-rev4-ipd.pdf)

- [SP 800-30 - Security Risk Assessment](http://csrc.nist.gov/publications/drafts/800-30-rev1/SP800-30-Rev1-ipd.pdf)

- [SP 800-144 - Guidelines on Security and Privacy in Public Cloud Computing](http://csrc.nist.gov/publications/nistpubs/800-144/SP800-144.pdf)

- [IR-7497 - Security Architecture Design Process for Health Information Exchanges (HIEs)](http://csrc.nist.gov/publications/nistir/ir7497/nistir-7497.pdf)

- [The rest of the NIST 800 Special Publications](http://csrc.nist.gov/publications/PubsSPs.html)

Note that Healthcare is working on Functional Controls for Security and Privacy in EHR technology. This is being done with [ISO-14441](http://healthcaresecprivacy.blogspot.com/2011/10/iso-work-on-privacy-and-security.html) and [HL7 Functional Model](http://www.hl7.org/ehr/). These are mostly well aligned with general-purpose security and privacy functionality specifications like NIST 800-53, with sometimes some healthcare specifics.

Balancing Security Controls with Operational Deployment Choices.
Ultimately Security Risks need to be addressed as soon as they can, but not sooner than they should be addressed. Any Security/Privacy Risk not addressed fully need to flow down to the next design level.  That is any risk that can be addressed in software design should be addressed there, but many risks tend to need operational choices and possibly physical controls. Transparency is important: Describing the assumptions that were included in the design, what controls does the design enable, and what residual risk must the next design handle.

See Also: Security/Privacy Risk Assessment/Management

- [IEC 80001 - Risk Assessment to be used when putting a Medical Device onto a Network](http://healthcaresecprivacy.blogspot.com/2010/11/iec-80001-risk-assessment-to-be-used.html)

- [More Webinars on Basics of IEC 80001](http://healthcaresecprivacy.blogspot.com/2011/10/more-webinars-on-basics-of-iec-80001.html)

- [IEC 80001 - Security Technical Report presentation](http://healthcaresecprivacy.blogspot.com/2011/10/iec-80001-security-technical-report.html)

- [How to Write Secure Interoperability Standards](http://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html)

- [How to apply Risk Assessment to get your Security and Privacy and Security requirements](http://healthcaresecprivacy.blogspot.com/2012/03/how-to-apply-risk-assessment-to-get.html)

