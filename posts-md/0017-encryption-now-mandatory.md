# Encryption now Mandatory

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/09/encryption-now-mandatory.html
Published: 2009-09-21T00:46:00.001Z
Updated: 2009-09-21T13:52:03.554Z
Author: John Moehrke

---

I have had many conversations lately about encryption. I want to try to clear up the misunderstood message. The message that people have been hearing is that there is now regulation that requires encryption. There are many places to find encryption in regulations, but what has happened lately is likely the source of the excitement over encryption.  The HITECH "Breach Notification" regulation is going into affect September 23, 2009. This rule sets out many responsibilities for a Covered Entity or their Business Associates that exposes PHI (breach). [A really good article on this.](http://www.healthdatamanagement.com/news/breach-38892-1.html)

Where encryption comes into the picture is in the portion of the rule that gives a CE or BAA a 'get out of jail card'. There are cases where the breach notification does not need to be done. The rule includes that the encryption must have followed NIST Special Publications. For example for Data at Rest: [NIST 800-111](http://csrc.nist.gov/publications/nistpubs/800-111/SP800-111.pdf).

We have been recommending TLS security using RSA authentication, AES encryption, and SHA-1 integrity checking. **HIT-Standards has requested that SHA-2 be used rather than SHA-1 in keeping with FIPS recommendations**. So, we have a pretty good data transport encryption.

So, generally for mobile devices (laptops, PDA, USB-Memory, backup-tape, CD-ROM, DVD, etc) that have PHI in their storage, encryption following the NIST guidelines will allow the organization to not need to register the breach or notify the potential patients.  This is what "encryption is mandatory" actually means. For many of these the organization can apply a whole-disk encryption technology, backup technology that encrypts, or can purchase USB-Memory sticks that do on-board encryption. **HIT-Standards included this as well in their criteria, under the Access Control category, even citing NIST SP 800-111.**

