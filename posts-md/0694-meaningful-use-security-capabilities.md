# Meaningful Use Security Capabilities Lacking, Privacy Capabilities NON-existent

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/08/meaningful-use-security-capabilities.html
Published: 2010-08-02T04:44:00Z
Updated: 2010-08-02T04:44:10.445Z
Author: John Moehrke

---

I hope that anyone developing a Complete EHR or EHR Module goes way beyond the capabilities required in the Meaningful Use Standards - [[Health Information Technology: Initial Set of Standards, Implementation Specifications, and Certification Criteria for Electronic Health Record Technology](http://mycourses.med.harvard.edu/ec_res/nt/8a3ea09d-b491-45fb-8d24-f3523f28e0a0/standardsfinal.pdf)]. This is not just because I want to push these products beyond some bare-minimum; but rather that the capabilities that any system entrusted with objects that need protection need to go beyond the bare-minimum listed. I leave 82% of the text to people smarter on the clinical aspects such as Keith at [Meaningful Use Standards Summary](http://motorcycleguy.blogspot.com/2010/07/meaningful-use-standards-summary.html)

When the IFR came out I declared that [Meaningful Use clearly does not mean Secure Use](http://healthcaresecprivacy.blogspot.com/2010/01/meaningful-use-clearly-does-not-mean.html). I then took a step back and evaluated the criteria carefully and submitted [Security/Privacy comments on the IFR](http://healthcaresecprivacy.blogspot.com/2010/02/securityprivacy-comments-on-ifr.html). This was at the time based on the same set of gaps that still exist. To be fare the Final Rule did fix many of the problems with the text that they did have, almost a complete fix of the problems with the existing text. From my understanding of the rules, an IFR can not be radically modified or added to; so HHS was not really allowed to close the gaps that still exist.

**So, any EHR that has been designed toward a good set of security capabilities will likely have the right stuff.** I think the current text is useful but still not really going to drive good product design, while it will drive unnecessary churn. If HHS had not tied their own hands with the IFR process, they could have referenced NIST SP 800-53 â€œRecommended Security Controls for Federal Information Systems and Organizationsâ€ ([http://csrc.nist.gov/publications/PubsSPs.html](http://csrc.nist.gov/publications/PubsSPs.html)). This is a very good set of criteria that has been the basis of, or derived from, many other good criteria. Most of what is in here can be found in the CCHIT security criteria as well. It is sad that healthcare seems to want to re-invent the wheel so much. **My recommendation is to follow CCHIT criteria or better to follow NIST 800-53. **

I do understand the market readiness of Privacy Controls, but it hurts to see these things continually kicked down the road. I am working hard to get these standards in place, then working even harder to get the standards that we do have implemented, and eventually will work really hard to get them deployed. I think that we are close, and that MU could start pushing some of these. I hope to find some of this in stage II. Consent, even just blanket opt-in/out ([blog on consent](http://healthcaresecprivacy.blogspot.com/search?q=consent)); Accounting of Disclosures ([blog on Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/search?q=disclosure)); Data Segmentation (future blog topic); and Limited Patient Access to their records.

Critical for everyone to recognize the certification criteria for a Complete EHR or EHR Module are â€˜capabilitiesâ€™. These capabilities will be chosen to be used or not based on a Risk Analysis. The Risk Analysis that has been a core of Meaningful Use and the HIPAA Security rule all along. A Risk based approach applies technology when justified. A Risk based approach does not apply technology simply for the sake of applying technology. At this point I will indicate that there are Bad and Ugly parts of the Final Rule that donâ€™t recognize that some possible capabilities that will never be reasonably used should not be mandated.

The following is further comments on the Final Text..

**The Good**

The good news is that they did fix some important problems

- They removed the whole religious war around REST and SOAP. I am sure I was not the only one to point this out to them. I am glad it simply was removed.

- They got less proscriptive on encryption, and chose to leverage the great work of NIST in FIPS 140-2 Annex A.

- They got less proscriptive on integrity controls, point at NIST FIPS and SP; but they still have some strange text that could cause unnecessary arguments

- They removed the requirement for the EHR to alert based on user-defined events. This is not only a very open-ended requirement (user-defied events), but is a very specific functionality of audit log analysis. Not a bad feature to have in a full featured EHR, but clearly not a minimalist requirement

- They added â€œAccessedâ€ to the auditable events. This should have always been there, but I suspect it slipped between the terminology from multiple good security audit log standards harmonization.

- They removed â€œPrintâ€ from the auditable events. Well, they went a bit too far in the comments. Print should be recognized as a form of Export. And any time the EHR knows that it is exporting PHI is an auditable event. The comments were about all the edge cases where the EHR is unaware of a export, such as taking a picture of the screen. This is far better handed through a clear distinction that auditable events are those events that the EHR is in control of. This clearly makes it obvious that an event that the EHR can not control couldnâ€™t possibly be audited by the EHR.

- They dropped the Cross Network Authentication. I very much agree that XUA/SAML is not ready to become a certification criteria. But I had recommended that they recast this requirement so that communications going between organizations are authenticated organization-to-organization, essentially what ATNA requires in mutually-authenticated-TLS. There is no requirement for this level of authentication in the criteria.

- Accounting of Disclosures is optional â€“ We all know that indicating that this is optional is as good as removing it. This one is hard to say is a good thing, because Accounting of Disclosures is so critical to Privacy; but the facts are that the standards are still being developed and that the Accounting of Disclosures that can come from the EHR is a reporting function of the Audit Log Management. The reality is that most actual Disclosures are not detectable by an EHR as they are events at the organization level. Thus the actual Accounting of these Disclosures is a higher level function than an EHR.[Good Blog by Security Architecture](http://blog.securityarchitecture.com/2010/07/significant-work-remains-to-produce.html) This unrest is further expressed by this weeks announcement that [HHS pulled the Health Data Breaches Proposed Final Rule from OMB review](http://www.ihealthbeat.org/articles/2010/7/30/hhs-pulls-from-review-proposed-final-rule-on-health-data-breaches.aspx). No news yet on why.

**

The Bad **

The Bad news is that there is still some small problems. None of these is really critical or going to cause trouble. Again reasonable minds will come to the same and right conclusion. So, don't worry too much about these items.

- They are timid about Security Audit Logging. Not only do they reject ATNA, which is likely the right choice for now (but not for the reason they give); but they also fail to recognize critical auditable events. An Emergency Access override should clearly be an auditable event.

- No change to Automatic log-off â€“ Yes automatic log-off is needed, actually HIPAA has this covered and covered better. Termination of a session is excessive, removing access to PHI after inactivity is not.

- The Encryption and Integrity Controls are still messed up. Yes it is great that they are referencing the good work of NIST. But they are still too prescriptive on how to use these cryptographic algorithms. They needed to take a step back and abstract further. Fact is they should have abstracted as far back as HIPAA. The only reason that Encryption or Integrity Controls should have been mentioned was to specify some minimum Interoperability criteria. This would have required that they indicate a protocol, such as TLS. For some reason they were afraid of this. The point would have been that the EHR have the â€˜capabilityâ€™ to use TLS, not that TLS was the only operational choice.

- Detection of alterations of the audit log â€“ This has got to be the strangest criteria I find. I have nothing against protecting the audit log from alterations. BUT, why only protect the audit log? Why did they remove all the other things that should not be modified without authorization? Actually the detection is of all alterations, not unauthorized ones, thus any event that is recorded will alter the audit log by being appended to it and this will cause an audit event that the audit log was altered which will be appended to the audit log which will be detectedâ€¦ THIS CRITERIA MANDATES THAT THE EHR GOES INTO AN INFINITE LOOP! The line should have been removed.

- As indicated in (6) above; there is no requirement that systems talking across the internet authenticate themselves. I suspect this is an obvious gap that everyone will fill it. But it is an example of how the criteria are too low level. A simple â€˜secure communications using open-standardsâ€™ could have solved this completely.

- Authentication is not Authorization â€“ this is a pure nitâ€¦ The Authentication criteria should be only about authentication, and not have added authorization to the task. Authorization is already handled

- Encryption of all network communications involving PHI. There is lots of comments on this one, and I disagree with the conclusions. Today PHI travels securely through many different ways, some private networks. The rule should have limited the scope of these transport encryption and integrity controls to the NEW communications requirements of Meaningful Use. This scope would have focused attention â€˜green fieldsâ€™. This is not to say that the old communications couldnâ€™t be improved upon, but they would be improved at a more reasonable pace. As written the EHR must be able to add encryption to all communications, some communications that no Provider will use this new encryption capability because they already have a secure communications.

- Transparent security capabilities â€“ This goes with many of the points above. Security is often implemented in transparent layers. No developer spends any effort on developing code that checks that data base entries have been inappropriately modified; this has been a common database tool functionality for a decade. Indeed the requirement for SHA1 to be used could have developers spending lots of time trying to figure out if their database tool uses SHA1. If it is found that SHA1 is not used, then what? How is the developer to evaluate the difference? This is wasted time!!! I suspect that most will understand this as a waste of time. I will then assert that the same is true about other security capabilities. For example Hard-Drive Encryption. It is quite common now days to add a transparent hard-drive capability to a laptop. When this is done all applications on the laptop are protected, and actually these applications can NOT tell. So, requiring an EHR to have hard-drive encryption is going to drive unnecessary waste of time and energy. What about the use of VPN to provide transparent network security? These are far better implemented as transparent security capabilities in the organization level not in the EHR. I would like to push more and more in here as well including User Authentication, Node Authentication, and eventually much more.

**The Ugly **

The General Encryption rule has conditionals â€œunless the Secretary determines that the use of such algorithm would pose a significant security riskâ€¦â€. This is wrong on so many levels. Why is this the Secretary role? Isnâ€™t this the Risk Analysis role? The whole â€œGeneral Encryptionâ€ criteria changes the game from a case where the Risk Analysis determines when a technology (like Encryption) is necessary; to a case where Encryption must be presumed needed unless the Secretary determines that it is not needed. Does this mean that the Secretary is going to evaluate each time a patient gets harmed because data could not be legitimately used? I really hope this one gets corrected somehow, and quickly.

**Etc **

Medical Records Retention requirements seem to be touched upon, but not fully. Change Tracking is not a security audit log scope, but it is a Medical Records Retention requirement. The HL7 EHR Functional model spent lots of time fully understanding Medical Records regulations as well as their separation from Security requirements.

