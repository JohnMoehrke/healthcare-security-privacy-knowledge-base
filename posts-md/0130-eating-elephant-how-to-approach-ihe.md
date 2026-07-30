# Eating an Elephant -- How to approach IHE documentation on Health Information Exchange (HIE)

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/12/eating-elephant-how-to-approach-ihe.html
Published: 2013-12-21T18:51:00.002Z
Updated: 2013-12-21T18:51:32.530Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSOylCVZ1sk9Gjg33D5KkWkhS57fvZo3YYmRcaK8T1PnOuVRZ7hbufr0nJJULZWUhLlmq8ENpOVEMp9Xb8wlA_IlhdLfow2aPgT4digxJ0ixMO73qo75YuoxAV86TBODTknIahUrQFym9w/s1600/image001-736132.png

Any standard is not easy to approach. This is especially problematic when that standard is so  central to a concept that affects so many. The

Health Information Exchange as a mechanism to Exchange Health Information under some Organization or Federation of Organizations.

HIE Background and Introduction
Most high level document from IHE is the white paper on what an HIE is and the various methods of communications that are profiled in IHE

[Health Information Exchange: Enabling Document Sharing Using IHE Profiles](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1-0_2012-01-24.pdf) - Published 2012-01-24

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjWUknQ7cQ-qDN6R2D4hqr7oLtkoCWDQWMesQaIarhKeUj2r_41_vkvlhUPRcJIYS16HzQ8au_F8GDf441tF0gvROXpXGhog8lu9vQm__6iY2-I7q89crqQqRSMs3g-5irn6qLbqcNX6RZu/s1600/HIE_Graphics_6May11.png
Second most high is the Volume 1 material on the different profiles. The format of an IHE  profile very specifically has volume one material targeting the users and product management.
[Volume 1 (ITI TF-1): Integration Profiles](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol1.pdf)  (rev 10.1 added 2013-10-25)

This is where one will find XDS, XDR, XCA and the other profiles explained in terms of their benefit. This explanation in the context of the ITI committee is rather abstract, as ITI doesn't deal with any specific domain of healthcare. Thus it is all about the IT Infrastructure.

http://healthcaresecprivacy.blogspot.com/2013/09/understanding-xds-metadata-ihe-re.html

Third most high is the section 4.1 of Volume 3, that outlines specifically the high-level concepts behind the Document Sharing metadata.  [Volume 3 (ITI TF-3)](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol3.pdf):

This metadata description has been [re-documented](http://healthcaresecprivacy.blogspot.com/2013/09/understanding-xds-metadata-ihe-re.html) as IHE came to understand how hard it was to read. It historically was written over 10 years little by little. So it was time to take a step back and document it more formally. So it now contains an abstract/conceptual definition, and platform specific definition. This will likely be further refined as IHE approaches RESTful

HIE Profile details
The fourth most deep is best to get from the other [IHE domains](http://www.ihe.net/Technical_Frameworks). The reason is that these other domains focus on actual workflows, not just the infrastructure to support workflows. So you will find better explanations of how to translate a clinical need into detailed encoding of documents. Each of these have a Document Content profile, a profile of some document standard (DICOM SR, HL7 CDA, PDF) and how it maps into the HIE framework

- [Cardiology](http://www.ihe.net/Technical_Frameworks/#cardiology)

- [Dental](http://www.ihe.net/Technical_Frameworks/#dental)

- [Endoscopy](http://www.ihe.net/Technical_Frameworks/#endoscopy)

- [Eye Care](http://www.ihe.net/Technical_Frameworks/#eyecare)

- [IT Infrastructure](http://www.ihe.net/Technical_Frameworks/#IT)

- [Laboratory](http://www.ihe.net/Technical_Frameworks/#laboratory)

- [Patient Care Coordination](http://www.ihe.net/Technical_Frameworks/#pcc)

- [Patient Care Device](http://www.ihe.net/Technical_Frameworks/#pcd)

- [Pharmacy](http://www.ihe.net/Technical_Frameworks/#pharmacy)

- [Quality, Research and Public Health](http://www.ihe.net/Technical_Frameworks/#qrph)

- [Radiation Oncology](http://www.ihe.net/Technical_Frameworks/#radiationoncology)

- [Radiology](http://www.ihe.net/Technical_Frameworks/#radiology)

The Deepest that IHE goes is found in Volumes 2 and 3. Specifically in the ITI Technical Framework this is where XDS and family are documented in detail.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjd_GtOV4SYDmfboLe8jA6ULGh6sqTZU-A04TaAl7OB2wG-flSwaedeaF6C-0z-IWOMSVQ0fyQSRP8ppuQ_7jJr8tADygn3IvOqPeYzFfFKG0Xcbk7l6fSPlmf3KzezFZkH0TbYHH1E3mwh/s1600/image004-740773.png

- [Volume 2a (ITI TF-2a)](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol2a.pdf): Transactions for the following profiles CT, PSA, EUA, PIX, RID, XDS, ATNA, PDQ, PWP, NAV

- [Volume 2b: (ITI TF-2b)](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol2b.pdf): Transactions for the following profiles PAM, XDM, XUA, XDS, XCA, PIX V3, MPQ

- [Volume 3 (ITI TF-3)](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol3.pdf): Contains Section 4 Cross-Transaction Specifications and Section 5 on the ITI Content Specifications

- [Volume 3 (ITI TF-3)](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol3.pdf): Detailed descriptions in the section 4.2 and 4.3 of Volume 3 is very specifically targeting the programmer or one picking the specifics of the technologies and vocabularies. These are the deepest detail we have on the metadata.

- There are also supplements that are not yet in "Final" state. Specifically the [Mobile Healthcare Documents](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_MHD.pdf), the [RESTful API to XDS/XDR/XCA](http://healthcaresecprivacy.blogspot.com/2012/11/ihe-mhealth-hackathon.html)

Deployment Guides
Detailed descriptions of what those that are deploying an HIE would need to consider is found in a â€˜handbookâ€™. This is useful to others, but is specifically focused on those responsible for deployment, policy, vocabulary management, and those long term concepts. It is rather focused on XDS, but the concepts are useful for any of the document sharing exchange methods

[Template for XDS Affinity Domain Deployment Planning](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_White_Paper_XDS_Affinity_Domain_Template_TI_2008-12-02.pdf) - Revised 2008-12-02

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg02EeKl5Bepneem1MXwLgdKG2ZM63H8mTJJRp9B46f0V6rkhjqKlKHYV7iV4trOLGhhYM4m_rK4VbxrRHy6brklksnWxM3riVJiuHbONGhvrEeQ2DK3k5IfcJM1hgY5THFyH8zY236_E-w/s1600/image002-784875.png

Detailed descriptions of Privacy and Security concepts are in the other â€˜handbookâ€™. This is useful to the programmer, but is more useful to the security and privacy developers and those deploying.

[Access Control](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf) - Published 2009-09-28

I cover many ways to [bringing this Access Controls to life](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html) including using the newest concepts of [data tagging to enable federation of access control enforcement](http://healthcaresecprivacy.blogspot.com/2013/10/fhir-demonstration-of-ds4p.html).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFgpC_TpQVi8EV9GMM2cc-52rMn8DSHSa1_MmA5N2LZwHhRwjUSkk1jVKvNDW8lJeHWsx4wpBaRiTr6vB63uzSE6wZnXGtuFTA7FqRw4Oga_5I4KE6meHHIxXXmQJfV0vvLpsQjT0xXBn5/s1600/tagged_duck.JPG

I also have plenty of other blog articles covering all the various "[Topics](http://healthcaresecprivacy.blogspot.com/p/topics.html)" that I cover.

There are various levels of complexity found in the IHE IT Infrastructure Technical Framework Appendix found in Volume 1 and Volume 2(x). The volume 1 should be less technical but this isn't always as well done. Volume 2x is mostly completely for the programmer or software architect.

[Volume 2x (ITI TF-2x)](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol2x.pdf): Appendices A through W and Glossary

IHE and HIE Webinars
I could say that higher than any of this is our Webinarsâ€¦ but I think that is stretching to be called documentation.

[http://www.ihe.net/Webinars/](http://www.ihe.net/Webinars/)

Conclusion
So, like eating an elephant, one must take it one bite at a time. There are many more resources too. I have liked what some of the HIE vendors have done.

