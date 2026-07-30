# HIE using IHE

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html
Published: 2012-01-27T20:00:00Z
Updated: 2012-03-15T15:44:02.303Z
Author: John Moehrke

---

An [Introduction to building a Health Information Exchange using various IHE Profiles](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1-0_2012-01-24.pdf). (If you are having trouble getting to the IHE web site, here is an [FTP link to the same paper](ftp://ftp.ihe.net/DocumentPublication/CurrentPublished/ITInfrastructure/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1%200_2012-01-24.pdf)) I was one of the contributors to this white paper, so I like it. I wanted to add more and more detail, but we wanted to keep it short. At 35 pages it is as small as we could get it. The things one needs to think about when building an HIE is quite large. We did not re-write the good work found in the [IHE Affinity Domain planning kit](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_White_Paper_XDS_Affinity_Domain_Template_TI_2008-12-02.pdf). This is still a fantastic resource for[building your governance, code-sets, and policies;](http://healthcaresecprivacy.blogspot.com/2012/01/hiehio-governance-policies-and-consents.html) like seen from Connecticut.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkhPYfSqCnYl_tRPv7n9dLeO9U0-bgqHVVNZBypuvkmipZMPzBHTDjZuPB4Tad5DFXcdlxtGZ7NFoPJy14bdGTkCQXzFNd_rB5wz6ERdsQAjNnVoNLuTvT3Lv_ksTgpjdttcAYwyxvaoq4/s1600/Slide17.PNG

The paper includes discussion of the principles that IHE has considered in their Profile development. Including Governance, Document characteristics, Longitudinal issues, Metadata, Document Relationships, Document Life-cycle, Patient Identity, Discovery, Security, and Privacy. IHE Supports Health Information Exchanges that use Push, Publish and Discovery, and Federated Discovery. Each of these architectures have their own section describing the profile use. Each profile leverages the same document life-cycle, packaging, and metadata model.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjP2fgOQC-kc2pvAs_t2b-fkSw0HQTiJRDfGe7KZN7NnVSWfPE6wK1LILdEm_IvUW-91-BTclZjQLCmSYHXO3AYqCEjWPsMZZ7WEXPPI2IHjLVYXGeASBEb4pbTUd69VyOmkxXgYvLdFRzR/s1600/IHE-XDS_overview-760761.png

Extended discussion is included on the topics of the architectures behind the XD* profiles. For example the XDS profile that supports a centralized registry model with distributed repositories. This model is shown with a slide from an upcoming webinar on the topic.

Although XDS is the 'grand-daddy' of the XD* profiles; the other profiles are just as important given different patterns. When a Push model is desired the XDM and XDR profiles are best suited. When there is a need to federate communities is needed, XCA fills the need.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgxuDUer1PY2lOT9CPJQW6b3mwBrDRI-UbofbYfkmzS6702XXXPh3fTykGNJqCsa2fPxWp_eWWDBiP-6pjayOOD8RQIAOPK34vJ4l0eCP4OEzp1ZUbjXhf6T4zYib3_ozUyjoEe8A2EbZzZ/s1600/HIE_Graphics_6May11-707085.pngPatient Identity is one of the topics that receives extended discussion, as is Provider Directories, Privacy and Security. [Patient Identity](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html) is complex in a Health Information Exchange, even in the most simple models.

The white paper covers a high level of Privacy and Security. My [webinar](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)covers more detail.

In all cases, the details are not included in the white paper. There is heavy use of the [IHE webinars](http://wiki.ihe.net/index.php?title=Current_Published_ITI_Educational_Materials)for additional overview, and the [profile text](http://www.ihe.net/Technical_Framework/index.cfm#IT) for the details.

Update: For those wondering if or where these IHE profiles are used to build HIEs, see [http://tinyurl.com/wwxds](http://tinyurl.com/wwxds)

As a White Paper, it is expected to be updated based on feedback. So if you have a question that is not answered, please log it as a comment (see below).

------------------------------------------------------------------------------------------------------------

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEju9-U1mPVmypRDtj1bX-VG2lME9TySc7pFnbzDudScnRg7OrAXB1sB6FShNIMKfUSRYR66DEmISTWL7arKFhgTxYbf_2J-kR02da-SkDNizDxBfkrzZWM6RpFEKmMOfR6b5VFIq_j-j2Mk/s1600/ATT152834-790926.jpg

**IHE IT Infrastructure White Paper Published**

The IHE IT Infrastructure Technical Committee published the following white paper on January 24, 2012:



Â·          [Health Information Exchange: Enabling Document Sharing Using IHE Profiles](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1-0_2012-01-24.pdf)



The document is available for download at [http://www.ihe.net/Technical_Framework/index.cfm](http://www.ihe.net/Technical_Framework/index.cfm). Comments can be submitted at [http://www.ihe.net/iti/iticomments.cfm](http://www.ihe.net/iti/iticomments.cfm).

** **

