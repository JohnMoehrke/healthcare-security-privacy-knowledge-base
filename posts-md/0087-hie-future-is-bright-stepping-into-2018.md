# HIE Future is Bright - stepping into 2018

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/12/hie-future-is-bright-stepping-into-2018.html
Published: 2017-12-30T13:37:00.001Z
Updated: 2017-12-30T13:37:12.973Z
Author: John Moehrke

---

This is my overall summary of the Healthcare Standards, Privacy, and Security space. It happens that the framework for explaining why the future is bright for HIE comes from the [Wisconsin HIE (WISHIN)](http://wishin.org/Home.aspx) fall [summit](http://wishin.org/WisconsinHIESummit/SummitResources-2017.aspx). Note [slide decks are now available](http://wishin.org/WisconsinHIESummit/SummitResources-2017.aspx).  They used the following diagram to show what they viewed as the HIE future. I like it, so will use it here

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEglHY-JAJ-upMZ1BGy89SC6W7IBcCAxVnXdjbnmrW0mL4DpJyKS58MB2ePrVjsvOrBqZIgyXK5dGK5phkfuj9pAZ5uBDrAdGsupV2TQTpvja1eI9Ec6hoCPcqpoIIgN6ZfPTULcQlo_SB-F/s1600/WISHIN_Now_Later.png

This is such an exciting perspective of what the Wisconsin HIE delivers today, and where they are targeting for future support. The [other slide decks](http://wishin.org/WisconsinHIESummit/SummitResources-2017.aspx) further elaborate on this plan. It is driven by delivering Value, not just Volume.  They had a segment that focused on Care Coordination as a driver of these changes.

I have written articles about each of these transitions and more. Here they are

- [Introduction](https://healthcaresecprivacy.blogspot.com/2017/11/future-of-hie-is-bright.html)

- [Manual  ==>  Automated](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-is-bright-automated-not.html)

- [Provider-Centered  ==> Patient-Centered](https://healthcaresecprivacy.blogspot.com/2017/11/hie-transition-to-patient-centered-from.html)

- [Multiple Point-to-Point Connections  ==> Single Connection to Hub](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-is-bright-single-connection.html)

- [Updated @ Next Encounter with Patient  ==> Notifications When Patient Has Encounter Elsewhere](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-is-bright-notification-and.html)

- [Providers & Payers Working Separately ==>  Shared Responsibility for Managing Care](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-is-bright-payers-and.html)

- [Enterprise class API  ==>  FHIR API to Document Sharing](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-bright-fhir-api-to-document.html)

My Perspective
The big factors as I see it:

- The** Document model is still very important**, even if it is frustrating. This is especially true of historic episodes and visits. These historic events need to have the full context of them, which is what a Document model provides.

- The good news is that FHIR has a Document model, and the FHIR Document model has a directly convertible data model

- A [FHIR Document travels an HIE easily](https://healthcaresecprivacy.blogspot.com/2017/01/fhir-documents-in-xds.html)

- CDA will fade, but never disappear. It is just way too hard to get right.

- The future will be more about **automating the consumption**. Up to now we have focused on getting EHR to publish or simply make available the data they have. This first step is critical to Interoperability. We now need to focus more on data consumption, as the way we consume Documents is not optimal or even functional.

- The good news is that FHIR is a fantastic API for consuming data. So there is a rich opportunity to make the consumption experience better

- [Enterprise class API  ==>  FHIR API to Document Sharing](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-bright-fhir-api-to-document.html)

- FHIR has subscription model, to make service-to-service API more efficient and responsive

- FHIR has ability to bundle and disassemble without conversion or loss

- The future will **connect the nation**. Today there are a small number of very large networks, but there are no linkage between them. So if you happen to live in a part of the country where you need to go to doctors within different networks, then you must manually transfer the data yourself

- The good news is that there are talks and actions to unite eHEX, CareQuality, CommonWell, and others.

- Not just technically, but also logically. We need nation wide policies on the use of Vocabulary, Document formats, and Care Planning

- The bad news is that **Security and Privacy are going to get worse** before they get better. This is more a statement of security than Privacy. I don't see any of these future benefits abusing Privacy, but I am worried that Privacy-By-Design isn't ingrained. I am more worried about Security, in that the security model for FHIR is very immature, and the junction between FHIR and the _other_ worlds where the data exists.  This is not to say that OAuth is bad, but rather the healthcare use of OAuth is not mature, and the healthcare needs of OAuth are well beyond what OAuth was designed to do.

- The good news is that there really is plenty of time in the coming years to work this out. What we need is interested bodies to get involved with open consensus prototyping, trial, documentation, and improvement.

The future might get the **Patient more center** to their own care. Today the GP drives everything. I don't think they want to, but it is just too hard to do anything else. Some say there is business pressure to keep control within that doctors office, I don't think this is all that true. I think it is more simply too hard. First, most patients are not technically savvy, that is changing. Second, most patients are not feeling well, so it is hard to take leadership. MOST important it takes a community to put the patient at the center, and we don't yet have a connected community.

These will not happen in 2018, I am just predicting they will be the central motivations that will influence change. If they happen, all the better. We must remember that change takes far longer than one expects it should.

Some blog articles I am working on:

- Direct HISP on FHIR - replacing XCA api with a FHIR api

- Meaningful Use means IHE PDQm, MHD, QEDm, and mXDE

- Reverse MHD

Please contact me if you have a topic you would like me to cover.

