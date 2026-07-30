# HHS/ONC - Mobile Devices Roundtable: Safeguarding Health Information

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/02/hhsonc-mobile-devices-roundtable.html
Published: 2012-02-21T15:02:00.003Z
Updated: 2012-02-21T15:02:49.970Z
Author: John Moehrke

---

I expect this to be a chance for existing 'good practices' to be shared and documented in a way more consumable by healthcare providers that have little IT support. I totally expect that large healthcare providers don't need this guidance, but I could be wrong. I wish I could attend, but will likely be watching form the sideline. The [notice went out last week for a meeting March 16th](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__mobile_devices_roundtable/3815?q=mobiledevicesroundtable).

>
**Background**: One of the key goals of the Federal Health Information Technology Strategic Plan is to inspire confidence and trust in health IT and electronic health information exchange by protecting the confidentiality, integrity, and availability of health information. ONCâ€™s Office of the Chief Privacy Officer (OCPO), along with the HHS Office for Civil Rights (OCR), recently launched a privacy and security mobile device project. The project builds on the existing HHS HIPAA Security Rule - Remote Use Guidance and is designed to identify privacy and security good practices for mobile devices. The identified provider use case scenarios and good practices to address those scenarios will be communicated in plain, practical, and easy to understand language for use by health care providers, professionals, and other entities.

>
**Roundtable Purpose**: To gather public, industry, and subject matter expert input that will help inform the development of an effective and practical way to bring awareness and understanding to those in the clinical sector regarding securing and protecting health information while using mobile devices.

>
**Roundtable Objectives**:

- Address the current privacy and security legal framework for mobile devices accessing, storing and/or transmitting health information;

- Discuss real world usage of mobile devices by providers and other health care delivery professionals to understand their expectations, attitudes, challenges and needs;

- Gather input regarding the information (and format) providers and other health care delivery professionals want and need to help them safeguard health information on their mobile devices; and

- Gather input on existing and emerging privacy and security good practices, strategies and technologies for safeguarding data on mobile devices.

My overall my answer is, that mobile devices are not different than any other.  Mobile Devices are just **more likely to get lost or stolen** (for pawn). It is this increased likelihood (of known risks) that needs to be considered. Thus good application design keeps sensitive information off of the device. Since this is a USA domain, it is quite easy to point at NIST who have excellent guidelines on this topic:

- NIST Guidelines on Cell Phone and PDA Security [SP800-124.pdf](http://csrc.nist.gov/publications/nistpubs/800-124/SP800-124.pdf)

- NIST Guide to Storage Encryption Technologies for End User Devices [SP800-111.pdf](http://csrc.nist.gov/publications/nistpubs/800-111/SP800-111.pdf)

- NIST Recommended Security Controls for Federal Information Systems and Organizations [SP800-53-rev3-db](http://csrc.nist.gov/groups/SMA/fisma/documents/SP_800-53/sp-800-53-rev3_database-beta.html)

The policy, methods, and technology used to protect a mobile device is common place in IT security circles. There is little specifics to Healthcare. There should NOT be much specific to healthcare. Healthcare should re-use as much of common IT security as possible. I always encourage a [Risk Assessment/Management](http://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html) approach, just like is the basis of HIPAA Security. This is the best approach to reasonable application of security technology according to risk Impact and Likelihood.

The best approach to a mobile device is to keep PHI off of it. If no PHI is on the device then you have just lost a piece of technology (Presuming you still control the access-control path to the PHI). This is not easy to achieve or even reasonable expectation, but with good software design it is possible to make it really hard to 'save' data onto the device.

If you save PHI onto the device, then you must take on the responsibility of protecting it there. This means access controls - to the device; and likely encryption technology on the storage in the device. Yes, both are needed.

What is not clear in the HHS/ONC initiative is if they are talking about general-purpose mobile devices or special purpose 'medical devices'. Not much changes, but some critical things do change. Such as control of the configuration. In the case of a medical device there is joint control, as the Breach Notification obligation is in the Covered Entity hands; but the safe-and-effective obligation is in the Medical Device vendors hands. This is the topic of  [Encryption is like Penicillin](http://healthcaresecprivacy.blogspot.com/2012/02/encryption-is-like-penicillin.html).

