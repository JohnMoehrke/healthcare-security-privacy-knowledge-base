# Health Information Exchange: Centralized, Federated, or Distributed

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/03/health-information-exchange-centralized.html
Published: 2014-03-26T17:13:00.002Z
Updated: 2014-03-26T17:13:50.045Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjWUknQ7cQ-qDN6R2D4hqr7oLtkoCWDQWMesQaIarhKeUj2r_41_vkvlhUPRcJIYS16HzQ8au_F8GDf441tF0gvROXpXGhog8lu9vQm__6iY2-I7q89crqQqRSMs3g-5irn6qLbqcNX6RZu/s1600/HIE_Graphics_6May11.png

I was asked why don't we just centralize all our health information so that it can be decomposed and harmonized once, rather than presuming that every little doctor office has the ability to have high-powered algorithms to decompose and harmonize complex healthcare information?

Well, I am always willing to say something stupid, so here goes my non-medically-trained viewpoint. Feel free to tell me how I am wrong in comments.

The end-goal defined is often where people skip to. If this was indeed a useful goal, then this would be a useful solution. The problem is that although we humans today are very mobile, we actually are not seen at all possible care settings. Thus the re-analysis of the longitudinal data, is only needed to be done at a few places. And that place is our GP. When the GP does this, they utilize the data they find to create "their view" of the patient. If you change GPs, the data is likely re-analyzed, if it wasn't shared by the previous GP. I am not saying that it wouldn't be useful, I am saying here that federated summation isn't really suboptimal.

A problem with global summation of the longitudinal view is that there is no universal medical view that is accepted globally (glacially). Radiology has had structured and coded forms in DICOM for a long time now. Why in DICOM do we keep each image independent? Why are they not each harmonized into a perfect 3D view of the body? Surely radiologists would love to see this view. Surely they would prefer not to try to bend a chest X-ray around in their mind to fit the curves of the body and mentally integrate that shoulder injury from 1998 into the image. This is what is done in star-trek so clearly this is where we will end up.Right?

Which brings up the other thought that I have. Some past data are useless, or are only relevant at specific times. Even when these data are available via XDS they are not incorporated into the GP view. In fact I expect the data shared via XDS is seen as reference material and is not often put into the GP view, at least not the whole data. It is an emergency room visit summary, it is a referral to a specialist, it is a request for overview, it is reports from a personal health measurement device, etc. It is important, but the GP will likely take advice from that external data, not take it all.

The last thought I have on the topic is that if all data possible was incorporated into a singular view, there would need to be provenance and change-tracking on each element back to the source. These record-keeping aspects would need to be very 'good', as life depends on them. That is we would need to think through how one would prove that the summary view is perfect, or more specifically prove who is at fault when it is wrong. Which brings up medical-liability issues related to your GP making decisions based on data that they must trust as perfect. Trust is not going to come quickly, and perfection of algorithms is clearly not here. BUT more my point the amount of data that would need to prove all this technically is likely to be more data than the medical data it-self, and the original (XDS) data would still need to be maintained as perfect copies too.

There are other points I can think of but want to stop here. The massive database of all data has been envisioned by many. I just think that we have a huge number of baby-steps to experience before we can do that. I am hopeful that maturity will bring these things. I am also confident that this maturity will take time.

Which leads me to the conclusion that:

- the concept of [Document](http://healthcaresecprivacy.blogspot.com/2013/11/distinction-between-documents-and.html)is important, especially longitudinally. It is self-contained context, provenance, and testably complete. Yes there are bad documents.

- the concept of [Federated](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html)is important, to enable expansion of our health information and our travels. Yes this initially appears complex.

- the concept of [agility](http://healthcaresecprivacy.blogspot.com/2013/12/eating-elephant-how-to-approach-ihe.html)is important, to enable change over time. Because things will change, maturity happens.

Document Sharing Management (Health Information Exchange - HIE)

- [Eating an Elephant -- How to approach IHE documentation on Health Information Exchange (HIE)](http://healthcaresecprivacy.blogspot.com/2013/12/eating-elephant-how-to-approach-ihe.html)

- [Distinction between Documents and Messages](http://healthcaresecprivacy.blogspot.com/2013/11/distinction-between-documents-and.html)

- [Understanding XDS metadata - IHE re-documentation effort](http://healthcaresecprivacy.blogspot.com/2013/09/understanding-xds-metadata-ihe-re.html)

- [XDS Notifications](http://healthcaresecprivacy.blogspot.com/2013/03/xds-notifications.html)

- [HIE Patient Identity problem](http://healthcaresecprivacy.blogspot.com/2013/04/hie-patient-identity-problem.html)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2013/04/hie-patient-identity-problem.html)

- [Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/minimal-metadata.html)

- [What is the benefit of an HIE](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html)

- [Karen's Cross or just Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html)

- [HIE using IHE](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [The French Health Information Systems Interoperability Framework -- Now available in English](http://healthcaresecprivacy.blogspot.com/2012/04/french-health-information-systems.html)

- [One Metadata Model - Many Deployment Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html)

- [Critical aspects of Documents vs Messages or Elements](http://healthcaresecprivacy.blogspot.com/2011/10/critical-aspects-of-documents-vs.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Document Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html)

- [XDS/XCA testing of Vocabulary Enforcement](http://healthcaresecprivacy.blogspot.com/2011/11/xdsxca-testing-of-vocabulary.html)

- [Where in the World is CDA and XDS?](http://tinyurl.com/wwxds)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [HIE/HIO Governance, Policies, and Consents](http://healthcaresecprivacy.blogspot.com/2012/01/hiehio-governance-policies-and-consents.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

