# IHE - Privacy and Security Profiles - Consistent Time

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html
Published: 2011-05-28T16:47:00.004Z
Updated: 2012-12-31T04:02:07.256Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhNO-xPBYQITU_vYICaz9wEOpVdTR47CUchxigcXf65c_50c80ogYbqh86z8kaE32VcxVYQ2ZtxMMyvFODLWzQoZrX_VHqnBnmpu7qkoImT5NheCxsb_GXVOwZiCeBBFIchnumV3MjoMJKX/s1600/Slide9.PNGThis Profile is one of the most simple profiles in the IHE toolbox. Indeed it should take absolutely no development by anyone as the protocol has been incorporated into operating systems since the early 2000s. Windows XP enables it by default and connects to the internet to get the time. This is similar with the various flavors of Linux as well. This need to have a reasonably synchronized clock is universal and not specific to healthcare. But in IHE we leverage this profile in a couple of ways. First ATNA (defined later) profile leverages the Consistent Time profile to assure that audit logs are all timestamped with a comparable time-stamp. In this way a security officer can look at the audit logs coming from different machines and be able to know which things happened at the same time, which things happened first and what happened next. This profile is also used by EUA (defined later) as it is important to the authentication protocol that the client, authority, and servers all have a clock that is pretty closely synchronized. This profile has been leveraged in Patient Care Devices to assure that events that are recorded by medical devices have a reasonably accurate clock, and identify some use-cases where higher accuracy is needed.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgw87W0ltDi5aRGyMvfjA5kg8ZaW-b1pPfhyAm-rLbWRlLJlldEHQnr9Z1OO42P76I3L3EzrstUK7X32NMUzapvTzP73wcxkYSp2sGGQ18u8qEEcaiDYMqawjK9qhFOyUyV_TDEabCN7pQp/s1600/Slide10.PNG

The profile simply shows some of the use-cases and indicates that the [Network Time Protocol (NTP)](http://tools.ietf.org/html/rfc1305) with it's simplified [Simple Network Time Protocol (SNTP)](http://tools.ietf.org/html/rfc4330) be used. There really are no restrictions on these protocols, besides some emphasis of things that the standard it-self says.

One should note that this Profile does not say what system must be a time source, it is possible that a large hospital wants to run their own isolated time-clock. Another organization may choose to utilize one of the time-sources on the internet such as pool.ntp.org (see [http://www.pool.ntp.org/en/](http://www.pool.ntp.org/en/)). Although the concept is simple, the practice of actually [keeping clocks synchronized even within 1 second is quite complex](http://en.wikipedia.org/wiki/Network_Time_Protocol).

**Resources**

- Status: Final Text

- [IHE ITI Technical Framework](http://www.ihe.net/Technical_Framework/index.cfm#IT)

- Vol 1: Section 7

- Vol 2a: Section 3.1

- Standards Used

- RFC-1305 [Network Time Protocol (NTP)](http://tools.ietf.org/html/rfc1305)

- RFC-4330 [Simple Network Time Protocol (SNTP)](http://tools.ietf.org/html/rfc4330)

**Back links**

This is part of a blog presentation of the IHE Privacy and Security Profiles Overview:

- [Introduction to IHE impact on Meaningful Use](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html)

- [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

- [This Page](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html

