# IHE - Privacy and Security Profiles - Enterprise User Authentication

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html
Published: 2011-05-30T13:11:00.002Z
Updated: 2012-12-31T04:25:10.655Z
Author: John Moehrke

---

http://realblogging.com/wp-content/uploads/2009/10/postitnote.jpgThe oldest of the [IHE](http://www.ihe.net/)[Security Profiles](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html) is still a useful and foundational one. The [Enterprise User Authentication (EUA)](http://wiki.ihe.net/index.php?title=EUA) Profile addresses the issue of user authentication for the multitude of users in healthcare: a doctor, nurse, technician, etc; across the multitude of systems they need to login to; and in a way that does not result in 'post-it' notes plastered all over the computer screen.

The use of a single user authentication across a hospital or clinic would simplify the user experience as they would then only need to remember one username and password, thus 'single sign-on'. Given that in healthcare the users tend to need to use many different systems, the only way to get single sign-on is to have all systems use the same standard for user authentication. If this is not coordinated centrally, the users will simply use the same password at all systems; resulting in poor password handling. The solution is the IHE EUA profile.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhVJX3XQleG-w3Soo-jpMlI-jcZJMEEOLCTKE44O6AUEfG3BaZnUJrwFuHJupjvOwgGOsb1wS3ElNAR37T_p263oANmmxJMncX96gQqtZL3TKPV4owqzaMXcXaoPFtXzrsHUxntklc-sPJJ/s1600/Slide22.PNG

The EUA profile doesn't just enhance the user experience, but it also enhances the overall security of an organization as it enables much quicker provisioning of user accounts when someone is added, including in catastrophic disasters, but it also enables the quick disabling of user login when someone is suspected of wrongdoing. The single user account also simplifies audit log analysis as it is easy to see all the events that a specific user caused.

The EUA profile needs to support many different platforms, as there are many different systems used in healthcare (EHR, X-Ray, Ultrasound, EKG, etc). The workflows in healthcare systems and applications tend to  to be different than a desk environment. There is a  need to enable workflows such as an exam-room where the registration clerk brings the patient into the room, thus needing to setup the patient on the EHR but clearly needing to logout when leaving. The nurse then arrives to take vital measurements and interview the patient, thus needing to login to the EHR but eventually also logout before leaving. The doctor then continues with the workflow. This workflow is Patient centered and thus the typical desktop login session would be very cumbersome, and slow. Thus the login workflow is radically different, but still needs to be secure.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj6ebnvg17w9V460Txu5si83XonhJFRUdkiLBVCpesrFSUNV2ZoQEhHnYSTj_eqKfXtnRVG8_xOAtfOMQEgx8Nr2_hEJnfU4uZc0wUwvAvwNg0j0Gvi2VduOVPjuNCRs9W4yinr1agoZrUa/s1600/Slide24.PNG

The solution is to point at the [Kerberos](http://web.mit.edu/kerberos/)protocol. This protocol is very well suited for use within an organization and at the time had been successfully integrated into the Windows platforms as the default authentication. This protocol had been a stable user authentication model in Unix and Linux for decades. Therefor the choice was not a hard one for IHE to make.

The kerberos protocol is commonly used for authenticating users via password, and has a strong protocol for assuring that the password is correct without exposing the password.  The protocol is not specific to passwords and could be used with a pluggable authentication including tokens, biometrics, and smart cards. These technologies however do require pluggable software and hardware which is not fully defined in the Kerberos standards realm.  The user authentication step is the first transaction of the EUA profile. The EUA profile, because of Kerberos requirements, does require that the [Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html) profile is used to keep all systems relatively synchronized to a time source.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjq4b1IcOkYjhMGyknil4bpOhNzigZXj-E0Jgyc8q41NELsC37Rd5vWIkKzehr-2eX8bT4eGwS6acntizyDc2uCQ2jfmg45kduf31LiC4wS11PxSIEC4NaDFG7sT9IbpWKq5pxlbSdZuVZn/s1600/Slide25.PNG

The EUA profile and Kerberos are not just about user authentication, but also support methods of passing the user identity to services in a secure way. This functionality is what the second and third transactions are used for. Once the user is authenticated using a Kerberos Authentication Server, the Client Authentication Agent can request "Service Tickets". These Service Tickets can then be passed to a Service that supports Kerberized Service actor in a way that the Service can trust and use the identity. This Kerberized Service functionality is defined for Web services using Kerberized HTTP Authentication. Other transactions can also be defined as to how they can use Kerberos Service Tickets, the [IHE Retrieve Information for Display (RID)](http://wiki.ihe.net/index.php?title=Retrieve_Information_for_Display) profile uses this grouping for user identity.

**References**

- Status: Final Text

- IHE ITI Technical Framework

- Vol 1: Section 4

- Vol 2a:  Section 3.2, 3.3, 3.4

- Standards Used

- Kerberos v5 ([RFC 1510](http://www.ietf.org/rfc/rfc1510.txt))

- Stable since 1993,

- Widely implemented on current operating system platforms

- Successfully withstood attacks in its 10-year history

- Fully interoperable among all platforms

**Additional Comments:**

[EUA](http://www.ihe.net/Technical_Framework/index.cfm#IT) - Very thin profile that simply says to use Kerberos protocol for safely authenticating users

- Kerberos is a pluggable protocol, but really is only used for username/password

- Kerberos is the standard that Windows ActiveDirectory uses for authenticating users.

- Kerberos is the standard that Windows uses at windows login (with minor Microsoft extensions)

- Kerberos is very common in Unix as it was invented at Berkely

- Kerberos is really good for within an organization, but has real problems that prevent it from being useful on the internet

- There are also Kerberos ways to pass authentication 'tickets' between an application and server

- See: **[Kerberos required in 2011 then forbidden in 2013](http://healthcaresecprivacy.blogspot.com/2009/09/kerberos-required-in-2011-then.html)**

**Back links**

This is part of a blog presentation of the IHE Privacy and Security Profiles Overview:

- [Introduction to IHE impact on Meaningful Use](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html)

- [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [This Page](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

