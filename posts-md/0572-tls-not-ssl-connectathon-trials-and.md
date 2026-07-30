# TLS (not SSL) Connectathon trials and tribulations

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/01/tls-not-ssl-connectathon-trials-and.html
Published: 2015-01-28T17:28:00.003Z
Updated: 2019-06-19T17:13:18.594Z
Author: John Moehrke

---

WHY are you looking here? email me at JohnMoehrke@gmail.com

I want to know why this article is still so popular 5 years later

IHE Connectathon this year had a major disruption caused by TLS/SSL. In hindsight this was very predictable, but those that were feeling the pain were not those that understood what was going on.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhC2tXBcjCziZjVHjfcAaK0Gu_ojk5dm00w6Uuk7DHBbcVP097gyHGUdz4aHHRMGbUD-EQzzuyZmstjVKOcDOW8uPaQWmVUAbbylwbp9o3gwW28EcpaUtoLRdtCZlPy7K2o3t53HK6adACe/s1600/IHE_CAT_2015.jpg

The problem is that platforms (Operating Systems, Web Servers, Application Servers) have decided to **forbid the use of SSL**, as it contains too may vulnerabilities and has too many successful attacks against it. Successful attacks with scary names like "[POODLE](https://isc.sans.edu/forums/diary/SSLv3+POODLE+Vulnerability+Official+Release/18827)". This simple policy, forced by the platforms, has caused a large audience at IHE Connectathon to grind to a halt.

The solution is to go back to the IHE-ATNA profile that long time ago mandated the use of TLS 1; so **Connectathon should never have allowed SSL anyway**.

The short term solution is to recognize this problem, and get back to testing healthcare specific things.

The Following is the Notice written up last night:

>
There have been problems with the NIST XDS tools regarding the use of TLS. This note documents the issues and describes the changes to testing.

The ATNA profile requires the use of TLS v1 for protecting message exchange between systems. In the past we have seen TLS on-the-wire negotiations where one party requests TLS V1 and the other party requests SSL V3 and the connection is established at the SSL V3 level. This has been accepted in the past but it has been poorly understood. We now understand the following details.

- In general this is controlled mostly by implementation platform and not vendor/tool code.

- On Windows platforms, older versions allow the back off to SSL V3 and the newest absolutely requires TLS V1. I am not a Windows developer so I cannot point to specific versions based on my knowledge.

- For Java based systems it is the JDK/JRE version that matters. Java 6 (1.6) will only negotiate to SSL V3. Java 7 (1.7) is able to negotiate TLS v1.

So what is important when dealing with our tools is to understand what Java version is being used in which tool on the test floor.

- The Internet Public Registry and the three copies here in Cleveland (RED/GREEN/BLUE) all are running on Java 6.

- Toolkit for Connectathon is running on Java 6

**The immediate goal is to have vendors and monitors stop having to deal with this problem and get back to productive testing. So, **

Vendors and monitors: any test that cannot easily be validated via TLS (TLS selection in toolkit) should be validated without TLS. Do not spend any more time dealing with TLS issues unless it relates directly to the interaction between two vendor systems!

This is not a statement of 'security is not important', it is a statement that we know how to secure the communications, so lets get back to the healthcare specific stuff. Much like my statement on FHIR and secuirty

[FHIR Security: Do (Not) Worry](http://healthcaresecprivacy.blogspot.com/2015/01/fhir-security-do-not-worry.html)

[Secure Communications](http://healthcaresecprivacy.blogspot.com/p/topics.html#Com)

- [Testing ATNA Secure Communications](http://healthcaresecprivacy.blogspot.com/2014/03/testing-atna-secure-communications.html)

- [IHE Encryption choices](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-encryption-choices.html)

- [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

