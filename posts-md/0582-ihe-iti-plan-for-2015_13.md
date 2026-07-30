# IHE ITI Plan for 2015

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/11/ihe-iti-plan-for-2015_13.html
Published: 2014-11-13T21:07:00.003Z
Updated: 2014-11-13T21:07:57.659Z
Author: John Moehrke

---

The IHE ITI slate for 2015 has just been agreed to. This is a balancing act between the Planning Committee that evaluates the need and desire for the item to be Profiled by  IHE; against the Technical Committee that evaluates the technical feasibility of creating the Profile in a way that will be used. The Technical committee thus evaluates if there are standards available to be profiled, as IHE really should not invent a standard. The Technical committee evaluates how mature those standards are, where standards like FHIR are considered risky but usable. The Technical Committee also must worry about availability of expertise to complete and review the work.

The Planning committee asked for 10 items to be worked on, which is simply too many things to work on. So we looked at how we could change-the-scope, or move â€˜whenâ€™ the item is worked on. We laid out the work items into a calendar to make sure we were not working on too many items at any one time. Preferably no more than five work items at any point in time.


https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiK1oNuvT2UaMTWX55eyvPfz7SoKFwahT9AZGAXa5r2pXzNJIY7ZvqpWZu_H4JR2Hu2cnUp93NEHkKLcFS9bKT-aQAzRZ35Dp0fpXzlQqTMYpQRxddJcurx0pdgNMgdyWMMa_yuCVE4vw2K/s1600/image001-753164.png

 This is not intended to be a formal chart, it was just used to help us balance the workload. The color is not that important, although it does make it an eye-popping chart. The intensity of the color, or lack of intensity is an indicator of low load by that work item at that month.  The number is the number of phone meetings on the topic.

This shows that we are expecting to complete early, for a January Public Comment phase, the MHD, DSG, and XDW-XCA work item. While also delaying start on a De-Identification project and a Documentation cleanup project.

Introduction to Work Items:


- [RESTful ATNA](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr13-2015-2016/Technical_Cmte/Detailed-Proposals/IHE_RESTful-ATNA-detailed.docx) â€“ This work item proposes to provide a way that a reporting application can query into an ATNA repository for various use-cases. Likely to use the FHIR SecurityEvent resource, but there is a desire to expand beyond those specific types of logged events.

- [Alerts targeted at Humans](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr13-2015-2016/Technical_Cmte/Detailed-Proposals/IHE_Profile_Proposal_Alerts-Detailed.pptx) â€“ This work item proposes to create a way to send alert messages (Not life critical) to one or more recipient. It is a very scaled down proposal that will start a family of solutions. First up is to determine what our scope actually will be.

- [RESTful PIX](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr13-2015-2016/Technical_Cmte/Detailed-Proposals/IHE_Restful_PIX-detailed.docx) â€“ This work item proposes to provide a query into a PIX Manager for a cross-reference. This is just the query transaction from the PIX profile, but using FHIR. This will likely be based on FHIR Patient, and be similar to PDQm.

- [MHD-2](http://wiki.ihe.net/index.php?title=MHD_Status) â€“ This is the version 2 of MHD. The goal is to get this out to Public Comment in January so that the USA IHE Connectathon can do some limited and targeted testing, under â€œNew Directionsâ€.

- [DE-ID (for Family Planning)](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr13-2015-2016/Technical_Cmte/Detailed-Proposals/ITI_Family_Planning_DeIdent_IHE_Profile_Detailed_v02.docx) â€“ This work item starts with a QRPH profile on Family Planning, and create a De-Identification profile that shows how the data could be de-identified for specific purposes. This will be the first formal use of the [De-Identification handbook](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Handbook_De-Identification_Rev1.1_2014-06-06.pdf).

- [DSG](http://healthcaresecprivacy.blogspot.com/2014/08/ihe-digital-signature-profile-updated.html) â€“ This is a project I started last year to update the Document-Digital-Signature profile to the current IHE documentation template, and possibly improve it. Not intended to take on major new use-cases, but some.

- [Re-Documentation](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr13-2015-2016/Technical_Cmte/Detailed-Proposals/IHE_Profile_Proposal_DocSharingProfilesRedoc-Detailed.docx) â€“ This is an effort similar to the Volume 3 cleanup we have done, but this time focused on fixing up Volume 2. The intention to make the XD* transactions more readable, and harmonize the wording. No intention to change any technical detail.

- [XDW-XCA](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr13-2015-2016/Technical_Cmte/Detailed-Proposals/XDW%20with%20XCA-XCDR%20Detailed%20Proposal-v6.docx) â€“ This is an item started a few years ago to extend XDW capability beyond one XDS domain. The proposal creates two new supplements to do this support.

- German/French National Extensions â€“ Both Germany and France have provided national extensions to the PAM profile. These need to be managed and ultimately published in Volume 4.

- Change Proposals â€“ There is always change proposals to workâ€¦














































































































































 /* Style Definitions */
 table.MsoNormalTable
 {mso-style-name:"Table Normal";
 mso-tstyle-rowband-size:0;
 mso-tstyle-colband-size:0;
 mso-style-noshow:yes;
 mso-style-priority:99;
 mso-style-parent:"";
 mso-padding-alt:0in 5.4pt 0in 5.4pt;
 mso-para-margin:0in;
 mso-para-margin-bottom:.0001pt;
 mso-pagination:widow-orphan;
 font-size:10.0pt;
 font-family:"Times New Roman","serif";}

