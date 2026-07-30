# IHE - Privacy and Security Profiles - Introduction

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html
Published: 2011-05-27T15:13:00.003Z
Updated: 2012-12-31T03:56:58.625Z
Author: John Moehrke

---

Update: The recording of [the webinar is now available](http://healthcaresecprivacy.blogspot.com/2011/09/recordings-of-ihe-webinar-on-security.html).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj3gOuaE-pkZHxVmwWB_PH6M6zo89MvkWQ23Q1i1eC02yQmdIa2gzx_QWGj6Y2qZZIFgff0F4Zq0fbEVrH7q6SA9xdrDcaYUQY46WzfrH8XPzMRtCAGjUDcjZtcxX4_TsJiMEeBK30ncpFu/s1600/Slide1.PNG

This summer I will be presenting the [IHE (Integrating the Healthcare Enterprise)](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html) Security and Privacy Profiles. I have been [putting together](http://healthcaresecprivacy.blogspot.com/2010/12/ihe-securityprivacy-primer.html) the slide deck for the Privacy and Security Overview. The purpose of the webinars is not to educate an engineer on the technical details, but rather to give an overview of the profile and what it can do. I now have version 6 up for the committee review, so I figure now is a good time to 'practice' giving the webinar. So, I will give the presentation on my blog, well kind of. This will take almost a dozen posts, so be patient and you might see all of the presentation. I also hope that while doing this I will uncover problems with the slides, so please feel free to ask questions so that I can help you understand and make the presentation better.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhhK0vvO5GkenYHKK5iNuItT6FpAzFjZi-XO4fr8Px_Lu8lgK6HLEXjG-yKee3PymjJfyC9aFbjF0pFoB8hI7UVX2H-S68M1-8BOThkXYa5mejzZig-URUWlIOuALKznvoAaUao1AY6knbs/s1600/IHE-Security_Privacy_Overview_Part1_v.0.6.png

When I finished the first draft of the presentation, keeping just to overview material, I had well over 60 slides. Given that webinars typically have 45 minutes of material and 15 minutes of Q&A; we decided to break this into two parts. Part 1 covers basic security, while Part 2 covers advanced topics and privacy controls. In this blog post I will stick only to the "Overall Security and Privacy Controls"; which is an introduction to the space of Security and Privacy.

IHE produces[Interoperability Profiles](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html), they don't produce service specifications, application functional specifications, system design, organizational plans, or physical controls. This means that the scope of what one will find in an IHE profile is very limited to the kinds of things that are needed to (a) [Enable Interoperability](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html), and (b) [Protect that Interoperability mechanism from Security Risks](http://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html). The result is that you will not find any advice from IHE on things like: user interface, anti-virus, patch-management, door locks, room layout, spam protection, or Policies. These things are very important, they just are outside the scope of IHE.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhW5CCx28jplPhynNQCLh6qxg6SMMEgCrb-WlEf9oNWJaLYtzqywfVOrWl8g5U5G6_QuJpleRDaXUNvZBEJSpKrfQGuYoLBqyJiEqE_NgoVrtxtHkU_6s95geP_Dz-NGcPswIEtlUn0sNtP/s1600/Slide3.PNG

Before any technology can be applied to enforcing Security or Privacy, an organization must define the Security and Privacy Policies that they are going to need to enforce. The Profiles from IHE are designed to be policy agnostic, meaning they can enforce almost any policy. In this way there is no constraint to implement a single policy.

These policies are built up of many layers of external policies. Starting with the highest level policies in the International community, such as the Organization for Economic and Co-operation and Development (OECD). This highest layer should also respect human rights, ethics, and norms.

The next layer down are those of the country, such as HIPAA in the USA, EC95/46 in Europe, and Act 57 in Japan. The next layer is those policies from the specific industry domain, in this case Healthcare. Some of the sources for this layer comes from the country, but they also come from medical professional societies. And finally the Enterprise needs to consider good organizational policies such as backup and recovery policies. Recognize that these different policies up-down and side-by-side can conflict with each other.

This is clearly an overview of all the potential influences on policies, but the important thing to take away is that policies must be created and written before technology is discussed. This is not to ignore the very fact that sometimes technology limits the policies, such as we will get into later in this presentation around Privacy Consents.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjTB-200IPCXHZv6iXsRK_FrOGO-x4whUHek5NIbT29eWWE9Sg2jebdAFdxR3rZaQRVMtm4r-zxCK7-1p0wbbGjwRJXojRBdGlHdfza58W-t_2QKUQEIh7ckzmPo9PJknnd2b06P-7g82s7/s1600/Slide4.PNG

Security is best approached using a [Risk Assessment model](http://en.wikipedia.org/wiki/Security_risk). That is to determine the risks to security; that is risks to Confidentiality, Integrity and Availability. As part of a Risk Assessment the Risk level is measured in terms of a combination of the likelihood of occurrence (probability) and degree of impact (positive or negative) of an anticipated event. Imagine a â€œhole in the roofâ€ scenario, the risk is that weather (the threat) could cause damage to components inside the building as well as the building itself. As long as the weather report shows that there is little chance of precipitation, our risk level is low. However, this risk increases as the likelihood of precipitation increases. Since we cannot control the threat of precipitation, we mitigate our risk by changing the vulnerability; we fix the hole in the roof. The cost of fixing the vulnerability is much less, in this case, than the damage rain or snow would cause.

a)Examples of Threats -- natural disaster, random accident, disgruntled employee, employee snooping, external indiscriminate hacker, external motivated hacker, external highly motivated and highly funded)

b)Examples of Vulnerabilities â€“ access without user identification, access without user authentication, user accessing data that they donâ€™t need to know for their job, open network interface,

- Likelihood is an assessment of how likely that threat is going to exploit that vulnerability. Typically a gross assessment of High, Medium, and Low

- Impact is an assessment of how much damage (harm) would result if that threat exploited that vulnerability (regardless of how unlikely). Typically a gross estimate of High, Medium, Low

- Prioritization uses the combination of Likelihood and Impact to assure that the most important things are addressed first and that appropriate resources are applied (e.g. make sure the remedy matches the risk)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiRL_BDrj9jPXMKckOsQAMEEtm2vIAkfLbzQa27Majyb2DHaRnzL7KD_ZbZ1Ns3XdH_8GVu56i8LeKkPY3l7W5ShrDuyfLcA8C8uvNncVV3cYX83_Z_P34prSt9ipm13cDP4nRnHUc4_TBb/s1600/Slide6.PNG

Another thing that varies from organization to organization is the policy they apply to accountability. There are two different types of accountability models that usually are mixed.

In the [Access Control Model](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html) the users are simply prevented from doing anything that they should not do.

In the[Audit Control Model](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html) the user is empowered to go beyond what they are minimally to do for their job, because there are situations where they may be called upon to do more.

For example where doctors should only access the patients records that they are assigned to, but are given access to all patients so that they can more quickly assist with a consult, urgent care, or even an emergency.

In healthcare there is typically a mixture that is more Audit Controls centric. In all models, the janitor is still prevented from seeing clinical data as there is no reasonable expectation that the janitor will ever need to. It is this flexibility that drives standards to be capable of handling either extreme as standards must function in any of these environments.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjCw0hFnK6BtXDAsrm3ivwiwZ4JSaVBDtVFUaehkhE3Tl920X7QXjGg4_rXXHKbAjbpLJ9u2pk656KRo7TIXm99PqCkjSh_EAMPl4OYQkLl7GLe3nLO8YMvdP2tEowjt1LZ5DEh3ybZbK5b/s1600/Slide62.PNG

This table is going to be used across the presentation, it shows how the IHE Security and Privacy Profiles affect the security and privacy domain. Where a check-mark is shown there is a strong contribution by the Profile and a dot represents a minor contribution (or supporting relationship).

Most of these Profiles will be further discussed in this presentation. PWP and HPD are discussed in a different webinar.  Document Encryption is not yet final so is not yet discussed in the webinar series.

- Which profiles should we use to prevent the wrong people from looking at PHI?

- Which profiles would you use in an investigation of a potential incident?

- Which profile would give you strong assurances that a document hasn't been modified?

- Which profiles would inform an accounting of disclosures

**Back links**

This is part of a blog presentation of the IHE Privacy and Security Profiles Overview:

- [Introduction to IHE impact on Meaningful Use](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html)

- [This Page](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

The recording of the [webinar is available too](http://healthcaresecprivacy.blogspot.com/2011/09/recordings-of-ihe-webinar-on-security.html)

http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html

