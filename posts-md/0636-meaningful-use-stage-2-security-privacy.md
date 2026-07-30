# Meaningful Use Stage 2 seems to support Security, Privacy, and HIE Transport

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-security-privacy.html
Published: 2012-03-14T19:47:00.001Z
Updated: 2012-03-15T21:42:32.849Z
Author: John Moehrke

---

In looking closely at the [Meaningful Use Stage 2](http://www.healthit.gov/providers-professionals/meaningful-use-stage-2) criteria for both [Certification](http://www.gpo.gov/fdsys/pkg/FR-2012-03-07/pdf/2012-4430.pdf) and [Incentives](http://www.gpo.gov/fdsys/pkg/FR-2012-03-07/pdf/2012-4443.pdf). I looked at the areas of my focus: Security, Privacy, and HIE transport. I mostly ignored everything else, so you will need to go to [Keithâ€™s blog](http://motorcycleguy.blogspot.com/) for those details or any of the other really good resources.

My overall conclusion is that CMS and ONC have done a fantastic job of addressing Security, Privacy, and HIE transport.  Yes I did say â€˜fantasticâ€™. There are some issues, but they can be fixed. There are improvements, but in many cases we need to take stepping stones today that are on the trajectory of the future. There are clear things that can and will happen in the future.

**Security:**They have made mostly minor changes to the security criteria. They are leveraging well known best practices and applying them only to Healthcare when there is something specific. They are leveraging the existing HIPAA Security rule and HITECH. The main changes this time around are added detail for Audit Logging, references to cryptography experts at NIST/FIPS, synchronization of clocks, and recommendations around encryption on end-user devices.

**Privacy:**They have included Privacy! They should be given kudos for this. Nothing earth shocking for any well done EHR or operational environment, but welcome guidance and encouragement for those that had not yet addressed Privacy. Their changes are directly to support HIPAA Privacy and HITECH. They have identified that security audit logging is an input to an Accounting of Disclosures, and a Access Log. They have defined what these reports would include. They have given stronger guidance on Amendments.

**HIE Transport:**They have given us one or two Push style transports, and recognized that they interoperate by way of a proxy service that can convert forward and backward. There is no real surprises here as ONC has spent much time developing the Direct Project. Healthcare Providers and EHR developers should really be focusing beyond Direct, but supporting minimal Direct is a good thing to do. It allows us as an industry to move away from the FAX, and start universally communicating and manipulating Documents. I will note that these more Exchange like HIE models would still be considered compliant under the optional third transport.

**Conclusion:**I will have more detailed blogs on all these topics. I will also be explaining why some want an Exchange style HIE vs using a Push style HIE. I will be discussing what should be done regarding Consent for nationwide exchanges. And I will be discussing other suggestions for Stage 3, with explanation of why I think it is ok for CMS/HHS/ONC to wait. I do still encourage vendors and providers to go above and beyond the minimum required by Meaningful Use.

**Updated with links to further discussion:**

- [Meaningful Use Stage 2 -- 170.202 Transport](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-170202-transport.html)

- [Stepping stone off of FAX to Secure-Email](http://healthcaresecprivacy.blogspot.com/2012/03/stepping-stone-off-of-fax-to-secure.html)

- [What is the benefit of an HIE](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html)

- [Meaningful Use Stage 2 FINALLY means Secure and Privacy Protecting](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-finally-means.html)

