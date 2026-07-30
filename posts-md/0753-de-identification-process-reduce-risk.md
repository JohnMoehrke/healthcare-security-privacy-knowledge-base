# De-Identification: process reduce risk of identification of entries in a data-set

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html
Published: 2014-06-27T22:24:00.001Z
Updated: 2014-06-27T22:25:50.860Z
Author: John Moehrke

---

It has been a very active De-Identification month. There have been many [blog articles lately](http://www.privacybydesign.ca/index.php/paper/big-data-innovation-setting-record-straight-de-identification-work/), some [complaining about other blogs](http://www.futureofprivacy.org/2014/06/19/making-perfect-de-identification-the-enemy-of-good-de-identification/). Other blogs saying how [over blown re-identification is](http://www.phiprivacy.net/re-identification-risks-have-been-overstated/). Many of these were inspired by the USA White-house "[President Council of Advisors on Science and Technology (PCAST)](http://www.whitehouse.gov/administration/eop/ostp/pcast)" that produced an interesting paper on "[Big Data: A Technological Perspective](http://www.whitehouse.gov/sites/default/files/microsites/ostp/PCAST/pcast_big_data_and_privacy_-_may_2014.pdf)".

I would like to say first: YOU ALL ARE RIGHT, yet also sligntly twisted in your perspective.

Whenever the topic of De-Identification comes up, I am quick to remind the audience that "**The only truly de-identified data are the null-set!**". It is important that everyone understand that as long as there are any data, there is some risk. This is not unlike encryption, at the extremes, in that brute force can crack all encryption, but the 'key' (pun intended) is to make it so hard to brute force that the cost is simply too expensive (lengthy). Unlike encryption, the maturity and effectiveness of de-identification is much less.

There are plenty of cases where someone thought they had done a good enough job of de-identifying, only to be proven wrong. These cases are really embarrasing to those of us that are trying to use de-identification. But these cases almost always fail due to poor execution of the 'de-identification process'.

De-Identification is a process to reduce risk.

I have been working on the revision of the  [ISO 25237](http://www.iso.org/iso/catalogue_detail?csnumber=42807) healthcare specification on De-Identification. We are making it even more clear that this is just a risk reduction, not an elimination of risk. Often times the result of a de-identification process is a data-set that still has some risk. Thus the de-identification process must consider the Security and Privacy controls that will manage the resulting data-set. It is rare to lower the risk so much that the data-set needs no ongoing security controls.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj4K-oE8GAbQkSckmgyiZpA-NiHADJA-kMF2siLQB_Jlzx1fDGS6XWxdnQSUyhorAeB0Ueolam9b1YPIbC4YFA2uxr5dG6qduFHTXXP-Les4rVIM63esrsc2ls7mr94xVr8WWszCaprjDfm/s1600/De-ID_Process.png

The following is a visualization of this  process. This shows that the top-most concept is de-identification, as a process.  This process utilizes sub-processes: Pseudonymization and/or Anonymization. These sub-processes use various tools that are specific to the type of data element they operate on, and the method of risk reduction.

The presumption is that zero data are allowed to pass through the system. Each element must be justified by the intended use of the resulting data-set. This intended use of the data-set greatly affects the de-identification process.

Pseudonymization

De-Identification might leverage Pseudonymization where longitudinal consistency is needed. This might be to keep a bunch of records together that should be associated with each other, where without this longitudinal consistency they might get disassociated. This is useful to keep all of the records for a patient together, under a pseudonym. This also can be used to assure that each time data are extracted into a de-identified set that new entries are also associated with the same pseudonym. In Pseudonymization the algorithm used might be intentionally reversible, or intentionally not-reversible. A reversible scheme might be a secret lookup-table that where authorized can be used to discover the original identity. In non-reversable is a temporary table might be used during the process, but is destroyed when the process completes.

Anonymization

Anonymization is the process and set of tools used where no longitudinal consistency is needed. The Anonymization process is also used where Pseudonymization has been used to address the remaining data attributes. Anonymization utilizes tools like Redaction, Removal, Blanking,  Substitution, Randomization, Shifting, Skewing, Truncation, Grouping, etc.

Each element allowed to pass must be justified. Each element must present the minimal risk, given the intended use of the resulting data-set. Thus where the intended use of the resulting data-set does not require fine-grain codes, a grouping of codes might be used.

Direct and Indirect Identifiers

De-Identification process identifies three kinds of data: Direct identifiers, that by themselves identify the patient; Indirect identifiers, that provide correlation when used with other indirect or external knowledge; and non-identifying data, the rest of the data. Some also refer to indirect identifiers as 'pseudo identifiers'.

Usually a de-identification process is applied to a data-set, made up of entries that have many attributes. For example a spreadsheet, made up of rows of data organized by column.

The de-identification process, including pseudonymization and anonymization, are applied to all the data. Pseudonymization generally are used against direct identifiers, but might be used against indirect identifiers, as appropriate to reduce risk while maintaining the longitudinal needs of the intended use of the resulting data-set. Anonymization tools are used against all forms of data, as appropriate to reduce risk.

IHE De-Identification Handbook

As [published on IHE.NET](http://ihe.net/Technical_Frameworks/#IT)

- [De-Identification](http://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Handbook_De-Identification_Rev1.1_2014-06-06.pdf) - Revised 2014-06-06

-  [Algorithm Mapping Spreadsheet (for use with De-Identification Handbook)](http://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Handbook_De-Identification-Mapping_Rev1.1_2014-06-06.xlsx) - Revised 2014-06-06

Books on De-Identification
I just finished reading, and highly recommend the book "[Anonymizing Health Data: Case Studies and Methods to Get You Started](http://www.amazon.com/gp/product/B00H8B64A4/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B00H8B64A4&linkCode=as2&tag=healthstanda-20&linkId=BZXHQKXWKU4IFGXF)", by Khaled El Emam. This is a good read for someone needing to understand the de-identification domain. It is not a reference, or deep instructional document. I presume his other books cover that. There are some really compelling examples in this book, real-world examples. There is also a very nicely done explanation, high-level explanation, of the quantitative mechanism to assess residual risk on a resulting data-set. Such as [K-anonymity.](http://en.wikipedia.org/wiki/K-anonymity)

References to Blog articles

- [De-Identification - Data Chemistry](http://healthcaresecprivacy.blogspot.com/2013/05/de-identification-data-chemistry.html)

-  [Guidance Regarding Methods for De-identification of Health Information](http://healthcaresecprivacy.blogspot.com/2012/11/guidance-regarding-methods-for-de.html)

- [The Emperor has no clothes - De-Identification and User Provisioning](http://healthcaresecprivacy.blogspot.com/2012/08/the-emperor-has-no-cloths-de.html)

- [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html)

- [Redaction and Clinical Documentation](http://healthcaresecprivacy.blogspot.com/2010/08/redaction-and-clinical-documentation.html)

