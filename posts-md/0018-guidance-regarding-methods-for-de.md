# Guidance Regarding Methods for De-identification of Health Information

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/11/guidance-regarding-methods-for-de.html
Published: 2012-11-27T02:15:00.003Z
Updated: 2012-11-27T02:15:25.397Z
Author: John Moehrke

---

I have been working on De-Identification for many years, including being one of the major contributors to [ISO 25237](http://www.iso.org/iso/catalogue_detail?csnumber=42807) on the subject, and [DICOM Supplement 55 and 142](http://www.dclunie.com/dicom-status/status.html). I think that the [algorithm for De-Identification is rather simple, but it is contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html). Start with the presumption that you can't have ANY data, and provide your arguments for each and every attribute. Start with the most important attributes to your use-case, the context of the de-identification. If you want something that falls into the identity or close to identity space; then how badly can I mangle (actually well understood algorithms) the values before they become useless to you. When you take the attitude that you don't deserve any of the information you tend to end up with the minimal information that you need to fulfill your use-case.

http://upload.wikimedia.org/wikipedia/en/5/52/Get_Out_of_Jail_Free_Card.jpgI have placed these concepts into ISO and DICOM standards, [IHE Handbooks](http://healthcaresecprivacy.blogspot.com/2010/11/ihe-iti-work-set-for-2011.html), and my [blog](http://healthcaresecprivacy.blogspot.com/2012/08/the-emperor-has-no-cloths-de.html)... But it is so much more powerful when a government says the same thing. It is not more powerful because _they _are so much smarter, but because by following _their _advice, even if it is the same advice, you get a 'pass'. One might say a 'get out of jail free' card. Which is a fallacy, but perception is as important as reality sometimes. This month both the USA and UK have released their advice on De-Identification. I haven't compared them, but will be doing that while harmonizing them into the IHE Handbook. I suspect that there is nothing truly new. I can say that my quick look indicates that they are truly useful. So although I might see these as purely politics, I do see that they have put very useful thought into their guidance.

**The USA has provided us:**

>
From: OCR HIPAA Privacy Rule information distribution [...] On Behalf Of OS OCR PrivacyList, OCR (HHS/OS)

Subject: Guidance Regarding Methods for De-identification of PHI in Accordance with HIPAA

>
November 26, 2012

Today, OCR released guidance regarding methods for de-identification of protected health information in accordance with the HIPAA Privacy Rule.  This guidance fulfills the American Recovery and Reinvestment Act of 2009 (ARRA) mandate that HHS issue such guidance. In response to this mandate, OCR collected research and views regarding de-identification approaches, best practices for implementation and management of the current de-identification standard and potential changes to address policy concerns.  OCR solicited stakeholder input from experts with practical technical and policy experience to inform the creation of guidance materials by organizing an in-person workshop consisting of multiple panel sessions, each addressing a specific topic related to de-identification methodologies and policies. The workshop was open to the public and was held March 8-9, 2010 in Washington, DC.  The guidance synthesizes these diverse perspectives.  It can be found at [http://www.hhs.gov/ocr/privacy/hipaa/understanding/coveredentities/De-identification/guidance.html](http://www.hhs.gov/ocr/privacy/hipaa/understanding/coveredentities/De-identification/guidance.html).

**The UK last week provided**

>
[News release: 20 November 2012](http://www.ico.gov.uk/news/latest_news/2012/new-anonymisation-code-sets-out-how-to-manage-privacy-risks-and-maintain-transparency-20112012.aspx)

The Information Commissionerâ€™s Office (ICO) has today published its [data protection code of practice on managing the risks related to anonymisation.](http://www.ico.gov.uk/news/latest_news/2012/~/media/documents/library/Data_Protection/Practical_application/anonymisation_code.ashx) The code explains how to protect the privacy rights of individuals while providing rich sources of data.

>
The code comes at a time when the UK is putting more and more anonymised data into the public domain, with the governmentâ€™s open data agenda allowing us to find out more than ever about the performance of public services and holding public bodies to account.

Announcing the publication of todayâ€™s code of practice Christopher Graham, UK Information Commissioner, said:

- â€œWe have published our code of practice on managing the data protection risks related to anonymisation to provide a framework for practitioners to use when considering whether to produce anonymised information. The code also aims to bring a greater consistency of approach and to show what we expect of organisations using this data.

- â€œFailure to anonymise personal data correctly can result in enforcement action from the ICO. However we recognise that anonymised data can have important benefits, increasing the transparency of government and aiding the UKâ€™s widely regarded research community.

- â€œWe hope todayâ€™s guidance helps practitioners to protect privacy and enable the use of data in exciting and innovative ways. We would also like to thank those people who took part in our recent consultation and helped todayâ€™s code of practice become a reality.â€

The ICO has also announced that a consortium led by the University of Manchester, with the University of Southampton, Office for National Statistics and the governmentâ€™s new Open Data Institute (ODI), will run a new UK Anonymisation Network (UKAN). The Network will receive Â£15,000 worth of funding from the ICO over the next two years to enable sharing of good practice related to anonymisation, across the public and private sector. The network will include a website, case studies, clinics and seminars.

>
Todayâ€™s code contains a framework to enable practitioners to assess the risks of anonymisation related to data protection and identification of individuals. It also includes examples of how successful anonymisation can be achieved. This includes an explanation of how personal data can be anonymised for medical research purposes, how individualsâ€™ information can be anonymised when responding to Freedom of Information requests, and how customersâ€™ data can be anonymised to help market researchers analyse peopleâ€™s purchasing habits.

[Download the new data protection code of practice](http://www.ico.gov.uk/news/latest_news/2012/~/media/documents/library/Data_Protection/Practical_application/anonymisation_code.ashx) [Read our anonymisation topic guide](http://www.ico.gov.uk/for_organisations/data_protection/topic_guides/anonymisation.aspx)

See also:

- [The Emperor has no clothes - De-Identification and User Provisioning](http://healthcaresecprivacy.blogspot.com/2012/08/the-emperor-has-no-cloths-de.html)

- [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html)

- [Redaction and Clinical Documentation](http://healthcaresecprivacy.blogspot.com/2010/08/redaction-and-clinical-documentation.html)

