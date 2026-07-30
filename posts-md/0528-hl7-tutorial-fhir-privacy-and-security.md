# HL7 Tutorial - FHIR Privacy and Security

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/09/hl7-tutorial-fhir-privacy-and-security.html
Published: 2019-09-08T20:28:00.001Z
Updated: 2019-09-19T20:11:53.036Z
Author: John Moehrke

---

Updated: I  gave a tutorial at the HL7 workgroup meeting in Atlanta. My scheduled tutorial covered two quarters, about 3 hours.

My slides can be found at [http://bit.ly/FHIR-SecPriv](http://bit.ly/FHIR-SecPriv) .Published slides as open under Creative Commons Attribution - NonCommercial-ShareAlike 3.0 Unported License.

Please feel free to ask questions about these topics, that might inspire me to blog on that question. I am not sure I will be creating a "bloginar" of these slides, but it seems right.

Not Hacking
Unfortunately I did not provide a description for my tutorial, so what is published in the HL7 tutorial guide is based on a previous tutorial. This is totally my mistake, please don't blame HL7. That tutorial was more focused on **hacking **a FHIR Server. I hope that people that signed up for my tutorial are not expecting this described detail. I recommend many general IT resources for how to hack a http service:

- [Coursera has a set of courses on "Ethical Hacking"](https://www.coursera.org/courses?query=ethical%20hacking)

- [Linked In Learning also has Ethical Hacker](https://www.linkedin.com/learning/paths/become-an-ethical-hacker)

- [SANS has Network Penetration Testing and Ethical Hacking](https://www.sans.org/course/network-penetration-testing-ethical-hacking)

- [CompTIA](https://www.comptia.org/)

- etc...

So, if that is what you want... sorry... but if that is what you want, then there are much more excellent resources than HL7 would ever be able to provide.

SMART-on-FHIR

During the HL7 Workgroup meeting there will be a good tutorials on how to use SMART-on-FHIR specifically. This tutorial will be given Monday afternoon titled "HL7 FHIR Using SMART & CDS Hooks (M1)".

My FHIR Security and Privacy (TH15) tutorial

Background on Privacy and Security as it relates to the technology stack that FHIR is based on, specific Security and Privacy capabilities built into FHIR, and practical implementations of these capabilities on a set of use-cases.

Here is my agenda made up of three parts. This is far more than can be accomplished, so I will adjust what I spend most time on based on the interest and competency of those in the tutorial

Part 1 - Basics

- Security Principles

- Privacy Principles

- Basic Security and Privacy Considerations in FHIR

- Anonymous Read

- Business Sensitive

- Individual Sensitive

- Patient Sensitive

- Not Classified

- Secure Communication of FHIR -- HTTP[S] - TLS

- Authentication & Authorization

- SMART on FHIR

- IUA

- Mutual-Authenticated TLS

- Access Denied Responses

Part 2 - FHIR capability

- Provenance

- Basic

- Digital Signature

- Audit Logging

- Audit Reporting

- Audit Purging

- Consent - for Privacy

- HEART

- Attribute Based Access Control

- Security Tags

- Compartments / Clearance

- Obligations

- Break-Glass

- De-Identification

Part 3 - Practical application

- Provider Directory

- Guide Management

- Extra-Sensitive Treatment

- De-Identified Research

