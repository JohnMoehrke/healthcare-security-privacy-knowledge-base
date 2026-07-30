# De-Identification is highly contextual

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html
Published: 2009-10-11T14:19:00Z
Updated: 2009-10-11T14:19:03.120Z
Author: John Moehrke

---

De-Identification is a process that is used to lower risks. It is is not an appropriate tool for 'treatment' uses as one must be able to positively identify the patient with the data in order to properly and safely treat the patient. But it is a very useful tool for secondary-uses of the data. The first step is to define the specific secondary-use. It will become more clear why this is true as we go through the de-identification process. The basics are that security/privacy wants to remove all the data elements as that is the only to be truly secure with zero risk, yet the secondary-use needs some data to be successful. So there is a trade-off of removal, keeping, and fuzzing.

There are some data elements that  are direct identifiers (e.g. Name, Address, Phone Number, SSN) and these are simply removed. There are some data elements that are identifiers (e.g. insurance, payment) that are completely unimportant to the specific secondary-use and are simply removed. Sometimes the secondary-use needs to be able to have some way to link data over time (For example to determine if a treatment given one year is still effective years later). If this is needed then a pseudonym can be applied to the data, but applying a pseudonym brings in risk so must be done selectively and with purpose. A pseudonym is an identifier that is assigned consistently to the data, but has no apparent relationship to the original patient. Sometimes these pseudonyms can be assigned in a non-reversible way, yet other times the secondary-use have potential benefits to the patient that the risk of a reversible pseudonym is acceptable (e.g. after a clinical trial the patient is often informed of their previously blinded treatment and given recommendations). The pseudonym is often a randomly assigned value that is kept in a secured lookup table (See [HITSP T24](http://wiki.hitsp.org/docs/T24/T24-1.html)) that is very carefully protected (e.g. only the direct-care provider has access).

There are health data elements that are structured and coded and if these are needed by the secondary-use then these are generally left in place. Even with structured and coded values there needs to be a reason why the secondary-use requires the data as some structured and coded values can also be used to identify populations. The best case is to have the resulting data-set with multiple subjects statistically examined to identify if there is any segmentation that is too small in the data set. There are data elements that  are NOT structured or coded (e.g. text comments) these are always simply removed as there is  no way to be sure the data doesn't include identifiers.

This leaves a set of data elements  that are 'Indirect Identifiers', that is they can be used by someone that is  motivated and has the funds to re-identify the data. A great example of this was shown by Latanya Sweeney from CMU using simply: Date-of-Birth, Current  ZIP Code, and Sex. (see below). So, for these data elements we go into a  negotiation between the security/privacy folk that want to simply remove these  elements and the secondary-use that possibly want them. In many cases we find that  we can delete these elements as they are not critical to the secondary-use. In  other cases we use some form of fuzziness algorithm to change them a little but within tolerance of the secondary-use. For  things like ZIP Code, this can be done by removing the last two digits. This generally keeps  the data as identified to a specific region but doesnâ€™t point at a community. Dates (e.g. Date-of-onset, date-of-examination, date-of-treatment, etc) are an important part of this. For dates we have many algorithms we can use but each one has a drawback so it is important to pick the best one for the secondary-use: we can drop the day-of-the-month, we can adjust to days-since-birth, we can  adjust-all-dates-by-a-random-but-consistent-to-the-patient,  etcâ€¦ The algorithm used is very specific to the secondary-use, for example a secondary-use that is trying to determine the outcome of a natural disaster needs to be able to associate the onset of a problem with time since the disaster.

So, what works for one secondary-use,  will most likely be useless to another secondary-use.This is why HITSP has multiple  â€˜anonymizationâ€™ constructs (i.e. [C25 - Anonymize (for Biosurveillance and Quality)](http://wiki.hitsp.org/docs/C25/C25-1.html), [C87 - Anonymize Public Health Case Reporting Data](http://wiki.hitsp.org/docs/C87/C87-1.html), [C88 - Anonymize Immunizations and Response Management Data](http://wiki.hitsp.org/docs/C88/C88-1.html)) and why the [T24 - Pseudonymize](http://wiki.hitsp.org/docs/T24/T24-1.html) construct doesnâ€™t define the  algorithm for the pseudonym. These become context  specific.

See:

What is  minimally necessary to identify an individual? All you need is Date-of-Birth,  Current Zip Code, and sex. See the following.
- [Latanya Sweeney, Ph.D.](http://privacy.cs.cmu.edu/people/sweeney/)
- [Reidentification  of Individuals in Chicago's Homicide Database A Technical and Legal Study](http://web.mit.edu/sem083/www/assignments/reidentification.html)

- [Genomic  Privacy Project](http://privacy.cs.cmu.edu/dataprivacy/projects/genetic/index.html)

- [k-Anonymity:  a model for protecting privacy](http://privacy.cs.cmu.edu/dataprivacy/projects/kanonymity/index.html)

- [Birthday Scam](http://www.snopes.com/inboxer/scams/birthday.htm)

- [Birthday Paradox](http://en.wikipedia.org/wiki/Birthday_paradox)  Wikipedia

EPIC  article that included 2 cases of failure [http://epic.org/alert/EPIC_Alert_15.23.html](http://epic.org/alert/EPIC_Alert_15.23.html)

January  2007; Interesting article by Bruce Schneier [Why  Anonymity doesn't work - Anonymity and the Netflix Dataset](http://www.wired.com/politics/security/commentary/securitymatters/2007/12/securitymatters_1213) with some really  good pointers to other articles.

[ISO/TS 25237:2008 - Health informatics -- Pseudonymization](http://www.iso.org/iso/catalogue_detail?csnumber=42807)

[DICOM Supplement 55](ftp://medical.nema.org/medical/dicom/final/sup55_ft.pdf) is a great reference for DICOM objects. This text has been incorporated  into the DICOM standard, but I provide reference to the supplement as it is  easier to point at and is self contained.

