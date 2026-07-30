# Clarification of Affinity Domains

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/05/clarification-of-affinity-domains.html
Published: 2017-05-19T14:13:00.001Z
Updated: 2017-05-19T14:17:11.731Z
Author: John Moehrke

---

The Question: I've worked with the XDS.b and XCA profiles for a few years now, but am no means an expert. I've never understood exactly what an affinity domain is. Could someone give an explanation of an affinity domain?

XDS Affinity Domain

Affinity Domain is more properly an "XDS Affinity Domain". The term is specific to XDS. It does not apply to XCA, as XCA uses the term "Community" in a rather similar but more expansive.

an XDS Affinity Domain -- derived from the word "affinity". Which among the many definitions has these -- These from Merriam-Webster definition for "[affinity](https://www.merriam-webster.com/dictionary/affinity)"

- sympathy marked by [community](https://www.merriam-webster.com/dictionary/community) of interest :

- an attraction to or liking for something

- people with an affinity to darkness â€” Mark Twain

- pork and fennel have a natural affinity for each other â€” Abby Mandel

- an [attractive](https://www.merriam-webster.com/dictionary/attractive) force between substances or particles that causes them to enter into and remain in chemical combination

- a person especially of the opposite sex having a particular attraction for one

In the [IHE Glossary](http://ihe.net/uploadedFiles/Documents/Templates/IHE_TF_GenIntro_AppD_Glossary_Rev1.0_2014-07-01.pdf)

- A group of healthcare enterprises that have agreed to work together using a common set of policies and which share a common infrastructure of repositories and a registry.

Essentially it is a term we use in XDS to encompass all the actors, systems, technology, policy, procedure, people, and ether. A set of XDS Metadata codes that the Registry will enforce. A set of document types that are considered acceptable by the Affinity Domain. Agreement on how Authorization will be done, including Consent, Role-Based-Access-Control, and Break-Glass.

See section 10.4.8 of volume 1 "[Concept of an XDS Affinity Domain](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol1.pdf#nameddest=10_4_8_Concept_of_an_XDS_Affini)"

>
An XDS Affinity Domain is an administrative structure made of a well-defined set of Document Source Actors, set of Document Repositories, set of Document Consumers organized around a single Document Registry Actor that have agreed to share clinical documents.

Note:       Document Sources, Repositories and Consumers may belong to more than one XDS Affinity Domain and share the same or different documents. This is an implementation strategy and will not be further described.

Note:       The XDS Profile does not support the federation of XDS Affinity Domains directly, but the Cross-Community Access (XCA) Profile addresses the cooperation of multiple Document Registry Actors serving different XDS Affinity Domains.

A number of policies will need to be established in an XDS Affinity Domain in order to ensure effective interoperability between Document Sources and Consumers. Some of the key technical policies include (A more extensive list of policy agreements that need to be made by [XDS Affinity Domains is discussed in ITI TF-1: Appendix L](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol1.pdf#nameddest=Appendix_L__XDS_Affinity_Domain)):

1.     The document formats that will be accepted for registration

2.     The various vocabulary value sets and coding schemes to be used for the submission of metadata of document, submission set and folders registration.

3.     The Patient Identification Domain (Assigning Authority) used by the Document Registry.

See [ITI TF-1: Appendix K](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol1.pdf#nameddest=Appendix_K__XDS_Concept_Details)for a detailed discussion of the concepts of XDS Affinity Domain.

For which the Handbook on [XDS Affinity Domain planning](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_White_Paper_XDS_Affinity_Domain_Template_TI_2008-12-02.pdf) is important.

XCA Community
The difference between "XDS Affinity Domain" and the XCA "Community" is that IHE has much less to say about the requirements of a Community. There are cases where a Community is an XDS Affinity Domain; but XCA allows for many other forms of Community. Common variant of a Community is a large hospital system (like the VA where I now work). In those cases the Community is understood only as the stuff behind the XCA gateways. There is no mandate about code validation by a Registry, no mandate about use of ATNA, no mandate about use of CT, etc. There is no defined way to create registry entries. There is no requirement to support folders, associations, and extensions.

The additional difference is that a Community can contain other Communities. IHE is rather silent on this. This silence was driven more by the desire to get experience with nested communities, routing communities, proxy communities, etc. We have heard of some interest in resolving this, and I would encourage a new work item.

In the [IHE Glossary](http://ihe.net/uploadedFiles/Documents/Templates/IHE_TF_GenIntro_AppD_Glossary_Rev1.0_2014-07-01.pdf)

- A community is defined as a group of facilities/enterprises that have agreed to work
together using a common set of policies for the purpose of sharing health information
via an established mechanism. Membership of a facility/enterprise in one community
does not preclude it from being a member in another community

Some more background articles

- [Health Information Exchange: Centralized, Federated, or Distributed](http://healthcaresecprivacy.blogspot.com/2014/03/health-information-exchange-centralized.html)

- [HIE using IHE](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)

- [Understanding XDS metadata - IHE re-documentation effort](http://healthcaresecprivacy.blogspot.com/2013/09/understanding-xds-metadata-ihe-re.html)

- [What is the benefit of an HIE](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html)

- and other [HIE Topics](https://healthcaresecprivacy.blogspot.com/p/topics.html#HIE)

