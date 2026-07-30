# Security - Operational concern

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/05/security-operational-concern.html
Published: 2012-05-21T14:37:00Z
Updated: 2012-05-21T14:37:18.750Z
Author: John Moehrke

---

I would like to draw attention to an article by Jeremy Epstein [Going to the doctor and worrying about cybersecurity](https://freedom-to-tinker.com/blog/jeremyepstein/going-to-the-doctor-and-worrying-about-cybersecurity). The article has some mistakes, but that is not my focus. What I like about the article is that it does outline the gap between the standards development (DICOM definition of how to put images onto a CDROM, and IHE profiling of them), and the operational environment. Although the article doesn't point out specific failings, it does 'think' about them.

The article talks about the writers experience getting his medical-imaging studies on a CDROM and carrying them to a referral specialist. The trigger for the cybersecurity concern is that the registration clerk easily took the CDROM, imported the imaging studies, and handed the CDROM back. This leads Jeremy to think about how he might have used this vector to infect the system.

I agree that there is concern with the completeness and consistency of the security (and privacy) of the operational environment. HIPAA has tried really hard to provide a framework, and does the correct thing in focusing on a Risk Assessment. There are plenty of ways to mess this up, plenty of ways to be ignorant, and plenty of ways to simply assume that there is no problem. However this is true across the board, not specific to CDROM formatted image import.

There are standards for the CDROM format that carries medical imaging studies, including XDM. These standards have tried to include capabilities and impart urgency to the software designers and operational environments. It should be noted that the standards organizations in healthcare are ahead of most in that there are [Risk Assessment](http://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html) processes that have been inplace for years, to make sure that each standard developed considers security (and privacy) risks. But these can only provide guidance, there is no way to enforce perfection.

That said, I think that the scenario that is outline does have some inherit security (and privacy) built into it. I will be an optimist and presume that the software and operational environment have considered these. For example: When you hand over your CDROM, they know who you are. They knew this because you made an appointment, or better yet, were referred. A walk-in will likely cause more investigation into who you are. They have surely done some background work to make sure you have insurance or can pay upfront. Thus, if you were to infect their computer there would be a history. It is true they may not know it was your CDROM, but they know when their system was good and when it went bad and can investigate all the patients between.

There is also plenty of off-the-shelf software that can help here. Common today that any anti-malware (antivirus) will automatically scan removable media, remember the first malware was floppy based. Given that the registration clerk processed the CDROM without question, I optimistically assume that the clerk has done this workflow multiple times, and thus they have considered how to get the data off the CDROM. Likely using the DICOM formatted CDROM which is quite common today and will likely continue to be quite common for the next 5-10 years.

[Exchanging images is widely available through many means](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html) (CDROM, USB-Memory, DICOM-native, DICOM-web-services, DICOM-http, XDS, XDR, XDM, XCA), securing it still is grunt work of risk assessment and mitigation.

