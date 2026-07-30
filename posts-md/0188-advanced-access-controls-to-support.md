# Advanced Access Controls to support sensitive health topics

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html
Published: 2012-09-21T12:28:00Z
Updated: 2012-09-21T12:48:06.425Z
Author: John Moehrke

---

I hope everyone who works on Privacy and Security in Health Information Exchanges felt the advance in the potential. What the VA and SAMHSA showed at the HL7 meeting was big. Not only was it big, but it was well done. Please review the [News on this demonstration](http://www.govhealthit.com/news/va-samhsa-test-exchange-tagged-substance-abuse-data), the [presentation given by Mike Davis](http://wiki.siframework.org/file/view/HL7_DS4P_Presentation__2012_0909_FINAL.PDF), the [Pilot specification](http://wiki.siframework.org/SAMHSA-VA-Pilot), and the [S&I Framework Data Segmentation for Privacy](http://wiki.siframework.org/Data+Segmentation+for+Privacy+Homepage) work. Pretty impressive stuff, right? YES it is. I am proud to be a part of  the S&I Framework overall Data Segmentation for Privacy workgroup.

This demonstration really showed the potential. However I think it highlights the potential without exposing the realities of demonstration. This is a demonstration that has not been evaluated from a Clinical Practice perspective. This demonstration modifies CDA documents without the Author knowing. This demonstration abuses some functionality of CDA. This demonstration abuses XDM metadata. This demonstration uses complex technology, leveraging highly advanced subject-matter-experts. This demonstration uses all greenfields technology. This demonstration is simply a demonstration, and when viewed in this light; this demonstration was fantastic.

I will describe the above concerns that  I have in a section below, but first I must describe my proposal. I have a proposal that does not need changes to standards, works with any document type including CDA, works with current technology, does not require high-technology on the receiver side, and gets the same job done.

**Easier Way: **

There is an easier way. One that does not require any changes to standards, although I will admit that it is less elegant and more blunt. The use-case space we are trying to solve is that many HIE simply recommend against sharing sensitive topics. Thus for a population with sensitive health topics their data is excluded from HIE, and possibly the normal information that is tightly coupled with the sensitive information. I have proposed a more blunt solution, one that IHE built into the XDS metadata, yet one that has been rejected by some in the S&I Framework and ONC leadership. My proposal is somewhat represented by section 3.5 in the S&I Framework specification (4 pages of text).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhXeqizd-05QnAdbyyqSjkMM_80iAaveP9iyphz4cmI3RAgoHs_IkpjDOK9yX_npPUjmrOleVrlJwLwaGxh8QmLfkUo6yX0gU0k1wxuviPV4WwU4mv6FWlcivJG3k5KHytkdm6NEcfTMnDr/s1600/Restricted+Document+++Normal+Transform.png

My solution is to have the original CDA document in full form, mark this as â€œRestrictedâ€. Then create a Transform of the CDA document that has the sensitive data removed, mark this as â€œNormalâ€; and use the Metadata â€˜associationâ€™ relationship  to indicate that this is a â€œTransformâ€. In the case where the documents are managed in something like XDS, this is all registered this way. Being registered does not mean it is accessible, Retrieval utilizes the metadata to control access.  In the case of a PUSH using XDR or XDM (Direct); one would choose to put in both forms if the recipient has the authority for both, or just put in the normal if the recipient has only the authority for normal data (clearly donâ€™t send it if the recipient has no authority).  In both the PUSH and PULL case this is a simple Access Control rule applied to well established Metadata.

I would encourage the use of Clinical Decision Support (CDS) that the demonstration used to detect sensitive topics. This detection of sensitive topics is NOT something that security experts are good at. So I would still suggest that a tool like this can be used to flag the Author with the need to create a transform only when it is needed with suggested transform. The method of using CDS to detect the presence and XSLT to transform the CDA is a fantastic idea. I just want the Author of the document to agree that it still is a worthwhile document that they want their name on. The main difference is that I just want the sensitive data removed, whereas the VA Demo used an extension to apply tags at the element level removing some sensitive data and leaving other sensitive data in the document.

In my solution using the CDA document requires no new technology, it is just a CDA document. It doesn't have extended metadata or element tagging that would not be understood by current technology. A system that is allowed to get both Restricted and Normal data; should be careful to import the data marked Normal first as it doesnâ€™t come with Restrictions. Then inspect the Restricted document and if necessary import anything new found AND track the restrictions.

This solution works with ANY document. Including a document that uses FHIR encoding, or Green-CDA encoding, or CCR, or PDF, or DICOM-SR, or anything else. I like CDA, but if the only solution we have forces CDA, then we are cutting off documents from the past and cutting off new document types in the future.

None of this requires new standards or abuse of standards. YET it results in the same functionality on the use-case need.  This solution put up against the one demonstrated by the VA/SAMSHA makes their demo look like a [Rube Goldberg](http://en.wikipedia.org/wiki/Rube_Goldberg#Cultural_legacy) machine.

Yes, the solution requires that within the USA there needs to be a definition of 'why would you mark a document Restricted', and 'who has legitimate access to documents marked Restricted', and 'what are the receiver behaviors required when using Restricted documents'. All things that must be done no matter what technology we use.

**Demonstration Dirty Details: **

I donâ€™t want to sound like the demonstration was a complete farce. IT WAS GREAT. I only want to point out that there are some details that are important to recognize and that the solution is not close at hand and easy to implement.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgZf66-0XWl2rpULa5QjKrUQAotzqHF_HLsJ84Eu1DrqG6PGjOYk3vew9CTnNfORCtFwvB2E3VUltUY9eZFC43amkeoBmvbW3ppCHjLL8DR3wuPGImcYTo4eIZ4w233mLZcVjmwbw4c7Ybe/s1600/DS4P_Tagging_Masking_Example.PNG

I already pointed out above the CDA entry level tagging, which would not be understood by current systems. It would also not be possible to get some systems to understand it.  Further the topic was brought up with HL7 Structured Documents Workgroup (owners of CDA), and they indicated that there might be a better way to do it. They needed more time to think it through. Yes, making a mistake on a technology like CDA can mean long-term problems. CDA are documents, intended to be used over the life of the patient; They are not messages that are transitory.

I also addressed the need to present the transform to the Author. It is very possible that the transform is of no clinical value. More important is that a CDA document is â€˜Authoredâ€™. It is a legal representation by the Author. This is not true if the Author never sees the content with their name on it. Keith has covered this far better than I have in [Data Classification, Redaction and Clinical Documentation](http://motorcycleguy.blogspot.com/2010/08/data-classification-redaction-and.html)

My biggest concern is the abuse of XDM metadata. These additions are allowed by the specification, but they are expected to be processed without fail by the recipient. This is not acceptable to extend a specification and expect compliance. Extensions are allowed by many standards, but extensions behavior are not forced upon the recipient. I donâ€™t disagree with the need to convey the Obligations; I just want a reasoned and standards based solution. This is an important advancement, we need to do it the right way. Not force a hack upon the world.

Lastly they did magic using very talented subject-matter-experts using greenfields technology. It is important to recognize the non-trivial work necessary to build this functionality into a real-workflow with real-users and sensitive to patient safety.

**Conclusion:**

I have been involved in standards development for a very long time, I know that it takes many years for a reasoned solution to be fully â€˜standardizedâ€™. This period does not mean no-one is using that method, indeed pilots and implementations are important to proving viability. Then there is the typical 5 years it takes the market to pick up and use the standard. Thus 7+ years is not unusual. I would rather see my Easier Way used today, than continue to simply forbid sensitive topics from entering a Health Information Exchange.

So, why was my solution not part of a Pilot? Because it is already available, and thus doesn't need to be tested. I have been involved in the development and deployment of HIE technology. I know of multiple exchanges that were working on Policy solutions that would have enabled sensitive topics. For example [Connecticut.](http://healthcaresecprivacy.blogspot.com/2012/01/hiehio-governance-policies-and-consents.html) These HIE solutions were put on mothballs as ONC has forced everyone to implement Direct first. I know of multiple states where progress was put on hold. I like Direct for what it was intended to solve, but I hate what the ONC mandates on Direct have done for HIE progress. It has not been a net positive.

The Easier Way can be used with Direct TODAY, and XDS, and NwHIN-Exchange. My solution does not require any changes to Standards. My solution works with any document type, not just CDA (e.g. Green-CDA, FHIR, DICOM). I ask that the Future-Nirvana not get in the way of the Good.

**UPDATE:**

I just remembered that the Easier Way has been demonstrated multiple years at HIMSS. The scenario is fully explained in this article on the [HIMSS 2008 Privacy and Security Use-case](http://wiki.ihe.net/index.php?title=Privacy_and_Security_at_HIMSS_2008). This is what inspired the HIE like Connecticut to put this into their infrastructure.

**See also:**

- [Policy Enforcing XDS Registry](http://healthcaresecprivacy.blogspot.com/2012/03/policy-enforcing-xds-registry.html)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [ConfidentialityCode can't carry Obligations](http://healthcaresecprivacy.blogspot.com/2010/09/confidentialitycode-cant-carry.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [Healthcare Access Controls standards landscape](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html)

- [Handling the obligation to prohibit Re-disclosure](http://healthcaresecprivacy.blogspot.com/2011/11/prohbition-of-re-disclosure.html)

- [Access Controls: Policies --> Attributes --> Implementation](http://healthcaresecprivacy.blogspot.com/2011/11/access-controls-policies-attributes.html)

- [Redaction and Clinical Documentation](http://healthcaresecprivacy.blogspot.com/2010/08/redaction-and-clinical-documentation.html)

- [Consumer Preferences and the Consumer](http://healthcaresecprivacy.blogspot.com/2009/10/consumer-preferences-and-consumer.html)

- [Availability of Consent Documents and their rules](http://healthcaresecprivacy.blogspot.com/2010/06/availability-of-consent-documents-and.html)

