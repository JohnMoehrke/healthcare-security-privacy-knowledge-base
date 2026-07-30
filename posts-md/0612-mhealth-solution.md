# mHealth Solution

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/04/mhealth-solution.html
Published: 2013-04-24T14:24:00Z
Updated: 2013-06-21T17:43:13.378Z
Author: John Moehrke

---

I have been involved in many efforts targeting the mHealth use-case. I have not been involved in all of them. I am sure no-one has been involved in all of them. Specifically I have been involved in the efforts in IHE, HL7, and DICOM. I have mostly spent my time on Security and Privacy; but also had my hand in some of the interoperability aspects. This means that I have a perspective, and know that it is only my perspective. This means I know that I don't know it all. This is my blog however, so you should already know that.

What is mHealth?

[mHealth](http://en.wikipedia.org/wiki/MHealth) is a highly over used term now days. The reason it is over used is because it is a term that is cool. How it gets abused is because the term is not defined. Because it is undefined, it gets to multiply the excitement that anyone has around the term, without focusing any progress. This means that 10 people who have 10 different perceptions of what the term feed off of the excitement of the other 9, while getting none of the benefits of collaborative design. Thus this term is burning lots of excitement without making as much progress as it should. To show just how divergent these perceptions, here are some I have heard:

- mHealth means that the healthcare-data is highly movable and thus can flow to where ever it is needed

- mHealth means that the way I access my health-data is through a mobile device

- mHealth means that I as a patient can pull copies of my data a move it wherever I want

- mHealth refers to sensors that I carry on my body all the time, such as fitbit

- mHealth means that my consent automatically applies to where ever my data is accessed

Added June 2013

- mHealth refers to the mobile medical devices that move between facilities on trucks (e.g. CT)

- mHealth refers to the use of barcode and such to track healthcare technology movements

The mHealth Solution
You can see from these 5 that in some cases the data are 'mobile', others the device used to access the data are 'mobile', others the patient is 'mobile', and others the sensors are 'mobile'. These are just four different view points. YES, they could all be the same. BUT the solution space for these are not working on all of them, or even more than one of them at at time. Just some examples of the solution spaces that are working on these issues, but not necessarily the same.

- data that are mobile -- [HIE -- Direct and/or Exchange](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html)

- mobile devices accessing data -- [IHE-MHD](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html) and [HL7-FHIR](http://www.hl7.org/implement/standards/fhir/documentreference.htm)

- patient access and carry data -- PHR, or [ABBI](http://motorcycleguy.blogspot.com/2013/02/abbi-pitch.html)

- sensors carried by patient -- Continua, IHE-PCD

- consent moves to data -- [BPPC, HL7-Consent Directive, oAuth](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

These are not all the efforts, nor all the perspectives on mHealth. None of these perspectives are wrong, and all of them are proper things to be doing.

Consent portability

I do have to caution that the consent moving to the data is the least mature. Mostly because there are far too many moving parts being worked on. That is that the architectures for how data are moved and accessed are not yet stabilized. Some are moving data in e-mail, others using REST, others using SOAP, others using USB/CD-ROM,  and others using proprietary means. Trying to come up with a single way to control access is hard to, and trying to control those is futile at this point. This doesn't mean there is nothing going on, there is [much going on](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html).

mHealth is anything you want

This is not a fundamental problem. This is not a problem that will cause failure to meet mHealth expectations. I want to urge understanding that the term is not well defined, and thus the one you are talking to might be thinking something totally different. What they are thinking is not wrong. It is just important to be sure that you understand their perspective. Thus the mHealth solution is many, not one.

**See also**

- [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html)

- [IHE mHealth Hackathon](http://healthcaresecprivacy.blogspot.com/2012/11/ihe-mhealth-hackathon.html)

- [The Magic of FHIR](http://healthcaresecprivacy.blogspot.com/2012/09/the-magic-of-fhir.html) â€“ The HL7 movement toward REST resources, away from v3 and v2

- [IHE Mobile access to Health Documents - Trial Implementation](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html)

- [What is the benefit of an HIE](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html)

- [HIE using IHE](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)

- [One Metadata Model - Many Deployment Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html)

- [Simplifying Security Audit Standards](http://healthcaresecprivacy.blogspot.com/2013/01/simplifying-security-audit-standards.html)

- [Advanced Access Controls to support sensitive health topics](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html)

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE-IUA - Internet User Authentication for HTTP profiles](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)

