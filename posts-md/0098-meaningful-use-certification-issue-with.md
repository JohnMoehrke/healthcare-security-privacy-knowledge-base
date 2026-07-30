# Meaningful Use Certification issue with Encryption of data-at-rest

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/09/meaningful-use-certification-issue-with.html
Published: 2010-09-01T17:52:00Z
Updated: 2010-09-01T17:52:22.333Z
Author: John Moehrke

---

The final Meaningful Use certification criteria includes one security criteria that has caused much discussion. This discussion is healthy, but it is not resolving to a single understanding and potentially putting Meaningful Use qualification at risk. Most of the security requirements are easy to understand and I have outlined them in [Meaningful Use Security Capabilities for Engineers.](http://healthcaresecprivacy.blogspot.com/2010/08/meaningful-use-security-capabilities_03.html)

The troubling requirement is:

- **Â§170.302 ****(u) General encryption. Encrypt and  decrypt electronic health information in accordance with the standard  specified in Â§170.210(a)(1), unless the Secretary determines that the  use of such algorithm would pose a significant security risk for  Certified EHR Technology. **

This seems to be easy enough to understand, although it does include the troubling "**unless**" clause. I am not going to focus on the "**unless**" clause here, as I have already** **[ranted enough on that](http://healthcaresecprivacy.blogspot.com/2010/08/meaningful-use-security-capabilities.html). Although this "**unless**" clause could be the solution to the problem. That is that the Secretary could resolve this lack of understanding.

The problem is not the selection of encryption algorithms. That is handled nicely in  **Â§170.210(a)(1). **The result is a [set of encryption algorithms](http://www.google.com/url?sa=t&source=web&cd=1&ved=0CBUQFjAA&url=http%3A%2F%2Fcsrc.nist.gov%2Fpublications%2Ffips%2Ffips140-2%2Ffips1402annexa.pdf&rct=j&q=fips%20140-2%20annex%20a&ei=eYp-TL7jHILGlQecvsDvAw&usg=AFQjCNE3mE1F__N0UMhuGCzHOTUxFGo2Ew&cad=rja) that are well implemented and well understood. Although it should be noted that most encryption schemes start with a Digital Certificate, use asymmetric encryption to cover the key(s) that are used with symmetric encrypt the bulk data. This is included in FIPS 140-2 Annex A, but too often people focus purely on AES (a fine symmetric encryption algorithm).

The problem is trying to figure out what the meaning of "**electronic health information**" is. Does this mean ALL electronic health information? Does this mean only the extracts identified for Meaningful Use?  The comments in the pretext of the regulation are not all that helpful. They simply keep reminding us that the EHR "must be capable of performing encryption". Does this mean that however the vendor provides for encryption is good enough? I suspect, not.

The one comment that leads me away from the EHR servers and toward the extract is the inclusion of NIST Special Publications (SP) 800-111. The scope of NIST SP 800-111 is "end user devices". This tells me that their worry is the laptops, tablets, smart phones, USB-Memory Sticks, CD, and DVD. This helps to scope the definition of "electronic health information" to those instances where this electronic health information appears on an end user device.

The [NIST defined test procedures](http://healthcare.nist.gov/use_testing/finalized_requirements.html) are not much help. They seem to be applicable to just about anything, thus leaving it up to the vendor to define what 'test data' is. (see [Test Procedure for Â§170.302 (u) General Encryption](http://healthcare.nist.gov/docs/170.302.u_GeneralEncryption_v1.0.pdf). I am not sure what real functionality is being delivered when the vendor gets to define what the test will test. It is actually right to not further refine a requirement in the test procedure, but I had hope. This test procedure, could certainly be used to test that an extract of electronic health information intended to be saved onto a inherently portable device is indeed encrypted.

This also aligns nicely with the experience learned from [A  Look into the HHS Posts Data Breach Notifications.](http://healthcaresecprivacy.blogspot.com/2010/03/look-into-hhs-posts-data-breach.html) There are simply a huge number of breaches that are associated with inherently portable end user device. Had the data on these devices been encrypted then the data would not have been exposed.  I am not a fan of simplifying the solution to this problem as simply encryption, as there are other ways to protect end user devices. More to the point there are new risks introduced by encryption that need to be considered. But I will leave that discussion inside of NIST SP 800-111 where it already is covered nicely.

**

**

**Off-the-shelf transparent encryption**

Encryption of data-at-rest should not be seen as an EHR problem. There are many levels of abstraction that software developers use to separate functionality. Where a functionality is needed by many different applications, this functionality is pushed down into a lower level where it can be re-used. For example, no EHR includes code to handle interacting with the keyboard hardware. The EHR uses the functionality of the operating system to provide a reasonable set of abstract methods of interacting with the human. The EHR might have special interpretations of some key-sequences, but those same key-sequences could be provided by many different types of input. If this wasn't done then there would be much more work to get an EHR to work on a tablet computer that has no physical keyboard but rather a virtual simile.

This abstraction is done for many subsystems including things like USB-Memory sticks. To the EHR these simply look like another file-systems. The Healthcare Provider or Healthcare Provider Organization could choose a USB-Memory stick that automatically encrypted the contents. Quick survey of Amazon shows 72 different USB-Memory sticks that encrypt (e.g. IronKey).  The EHR would be unable to know, without proprietary means, that the data was indeed encrypted. In fact this solution is already available and in use today.

Another example is an encrypting hard-drive. There are many solutions that will transparently encrypt a hard drive. Some are hardware based, some are built into the operating system, some are built into the database manager, and some are add-on packages. All are available as solutions today and many are used today.

The problem here is that by getting the EHR vendor involved we end up with **less choice**. This is because the EHR must choose ONE solution that they are going to certify with. It is unlikely that the EHR vendor is going to certify 72 times for 72 different off-the-shelf transparent encrypting USB-Memory sticks, and dozens more times with different off-the-shelf transparent encrypting software. Thus the Healthcare Provider is forced to use that ONE choice because the rules of Meaningful Use require that the Provider must be using the certified EHR functionality.

Far better to recognize that this general encryption capability is abstracted below the EHR, and that the operational environment can already make these choices today. At minimal allow the EHR Vendor to claim a 'class of solution' where it is understood that they certified with a representative instance of an off-the-shelf transparent encryption solution. **Forcing less choice is not a good idea.**

**Portable Standards**

I will assert that this leaves only the question of how an EHR produces an encrypted data-set that is not using off-the-shelf transparent means? One way is to use industry-standards, such as encrypted-ZIP. This is a well known ZIP format that supports encryption with password or digital certificates. This is however not an open-standard.

We need open-standards for encrypting blobs of data at-rest in a way that is fully interoperable. The bad news is that there are no good solutions today. If there were than IHE would have included this as an option in the XDM profile. However there is movement.

The DICOM specification now includes support for encrypted portable media. This is mostly documented in [Annex D of Part 15](ftp://medical.nema.org/medical/dicom/2009/09_15pu.pdf). They solved the problem by indicating that the standards used for secure email (S/MIME) can be used to create an encrypted file that is a MIME multi-part. This results in a single object that looks just like a single e-mail containing everything. Thus they take their portable media definition for using e-mail, and say that the e-mail can be seen as a portable-encrypted-file. Their portable media definition uses ZIP to preserve file-system.

The method that DICOM specified for portable media could be integrated into IHE XDM profile. Where the existing XDM file-system, that already has a ZIP format, would be encapsulated in the MIME multi-part, and encrypted using S/MIME methods. The result is a portable-encrypted-file that can be manipulate in many ways. Its not just for e-mail.

This movement is slow because the Off-the-shelf Transparent Encryption fills the need so well.

