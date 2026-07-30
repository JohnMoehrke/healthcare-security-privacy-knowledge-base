# Recommendation: ONCs New Guide on Health Information, Privacy and Security and Meaningful Use

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/05/recommendation-oncs-new-guide-on-health.html
Published: 2012-05-14T00:13:00.001Z
Updated: 2012-05-14T00:13:28.785Z
Author: John Moehrke

---

I read the [ONCs New Guide on Health Information, Privacy and Security and Meaningful Use](http://healthcaresecprivacy.blogspot.ca/2012/05/fw-oncs-new-guide-on-health-information.html), on the plane to the HL7 meeting in Vancouver. It didn't put me to sleep, but it is very high level. I think it is a fantastic level of detail for anyone that has been thrust into the position of "Privacy Officer", "Security Officer", or just "In charge of HIPAA/HITECH security/privacy compliance". I suspect the last one is more likely to be the first step.

This document is 47 pages long, but many of the pages are empty cover sheets to chapters. So don't let the size of the document keep you from looking at it. The most useful part of this is that it sets out an overall compliance landscape; and provides pointers to government provided guidance on every step. The later chapters are very good references.

I really like how they have simplified Privacy (Page 5)

>
Your patients trust you. Trust is clinically important and a key business asset. How your practice handles patient information is an important aspect of this trust. To help cultivate patientsâ€™ trust, you:
â€¢  Make sure patients can request access to their medical record;
â€¢  Carefully handle patientsâ€™ health information to protect their privacy; and
â€¢  Keep the information in patientsâ€™ individual records as accurate as possible.

They do explain all of these, so they are not oversimplified.

They also do a good job (**43 repetitions**) explaining that the CE is responsible, they can't outsource responsibility or transfer responsibility. Yes you should work with the vendors, all of them:

>
Your practice, not your EHR vendor, is responsible for...

**Risk Assessment needs slightly deeper understanding**

I do think that they stayed too high level when discussing Risk Assessment. I have a [blog article on the detailed view](http://healthcaresecprivacy.blogspot.ca/2012/03/how-to-apply-risk-assessment-to-get.html). Specifically they didn't really cover well enough that 'risk' is a combination of 'how bad of an impact would result of the vulnerability/threat be regardless of how likely it is', and 'how likely is this from happening regardless of how bad it would be'. This separation allows for a quantitative analysis, rather than an emotional analysis; which is critical to staying away from "Security Theater".  More important is that when a mitigation is chosen, one MUST reassess the risk values based on this mitigation to determine how the risk valuation has changed.

What is not said at all is that risk will never be brought to zero, so some 'acceptable threshold' must be determined by the Covered Entity. This is the value of 'risk' that they are going to be satisfied with. Typically the only way to totally get to even this 'acceptable threshold' is through 'insurance'.

More important to me is that when this mitigation is chosen, one must assess if the mitigation has introduced NEW risks. The classic one is where the security office wants user-login to everything that presents PHI, yet putting a login on the Critical-Care bedside monitors would clearly present a patient safety/care risk.

This is a detail, but the concept needs to be seen at the high level. (Note they spelled my name wrong on Page 20)

**Encrypted Patient Carried Media**

I am disappointed that they recommend that when PHI is put onto media to be given to the patient that this media be encrypted. Yes encryption is a good tool, but the availability of 'interoperable' encryption on removable memory (USB-Memory, CD-ROM, DVD, etc) is not strong today; AND is it really important to encrypt the media that you  are giving to the patient?  How does the patient or future providers read the media if it is encrypted? Likely this is done through putting the password onto the exterior of the device; thus feels encrypted but clearly is not. Security Theater. Yes there are standards, [IHE has published the DEN profile that shows just how to do this in an interoperable way](http://healthcaresecprivacy.blogspot.ca/2011/10/using-both-document-encryption-and.html). I would still encourage the use, but not strongly.

**Minor nit**: On Page 21 they indicate that Internet based EHR might be harder to assess their security compliance. I might equally point out that an Internet based EHR might be more transparent on policies and procedures and have better security as they can focus attention on privacy/security across multiple CE, internally sharing best-practices that are hard to do when a CE hosts the system themselves.

