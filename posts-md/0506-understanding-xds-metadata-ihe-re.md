# Understanding XDS metadata - IHE re-documentation effort

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/09/understanding-xds-metadata-ihe-re.html
Published: 2013-09-29T14:00:00.001Z
Updated: 2013-09-29T14:01:32.923Z
Author: John Moehrke

---

**I am republishing an email written by Lynn Felhofer to the XDS Implementer mailing list, as it is a fantastic explanation of the new IHE IT Technical Framework - Volume 3 update. **

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiJ9s4fQqobHwWY5sauQUucu8onl7ykS8X1hyphenhyphenI24m6CTj_cqsnGJHUF-oFWtsKarO21qC6v5Ttq2uRCNJpN4Dc0teGPhHBiQLbsrQ3VOknF91W2_zwPb75b16EmR6MVbg4N2z_9HNQDbjlT/s1600/metadataPurposes.PNG
Metadata Purposes

[Now available, the 2013 version of the IHE IT Infrastructure Technical Framework v10](http://us1.campaign-archive2.com/?u=a75e449ea24da34a9a89ed37a&id=37651c9297&e=c8e1e046d9) Final Text are published on [the IHE web site](http://www.ihe.net/Technical_Frameworks/).

A copy of the [announcement](http://us1.campaign-archive2.com/?u=a75e449ea24da34a9a89ed37a&id=37651c9297&e=c8e1e046d9) is included at the end of this note.  [New Trial Implementation supplements were published last week](http://us1.campaign-archive1.com/?u=a75e449ea24da34a9a89ed37a&id=901cfb24e3).

One of the initiatives taken on by the IT Infrastructure Technical Committee in 2013 is to improve the documentation of metadata associated with XDS and related profiles.

The metadata specification in ITI Technical Framework Volume 3 Section 4 (ITI TF-3:4) was originally authored in support of only the XDS profile. The organization, approach, and editorial style were restricted to support of a single profile within a single IHE domain.  Since that time, many IHE profiles have made use of the metadata defined by XDS, often called '_XDS Metadata'_ or '_XD* Metadata'_.  Some profiles have made small adjustments in the use of metadata to accommodate the needs of the environments the profiles are designed to support.  These adjustments, as well as Change Proposals incorporated over time, led the contents of Section 4 to become hard to comprehend, especially for those not implementing XDS.

In 2013, ITI TF-3:4 is rewritten. The update started by moving all content in ITI TF-3 somewhere within the current organizational scheme.  Once moved, content was revised to improve understanding and adjust for redundancy.  Whenever possible, the content from ITI TF-3 was kept as written, just moved to a new organizational structure.  In many cases, the original text was found to be imprecise and more specific text was developed. ** **

**_
_**
**_No technical requirements are changed or extended as part of this re-documentation effort._**

This re-documentation effort focuses on:

- Adding a conceptual overview of the metadata that is profile- and technology-independent. This is done in section 4.1.

- Re-organizing the rest of the content in section 4 to support profile/transaction-independent descriptions followed by profile and transaction-specific content.

- Adding clarifying material to section 4 in the form of UML diagrams and additional explanatory text where focus group and public comment feedback indicated they would be most useful.

- Clarifying statements that can be tested at Connectathon as SHALL statements, and disambiguating implementation guidance statements with SHOULD or MAY statements.

This approach limits implications outside of ITI TF-3 as much as possible but allows for future extensions and additions.

Re-organizing the content results in sections and tables getting new numbers.  In order to ease transition, frequently-reference tables, eg the Data Types table, are labeled to include the both the new previous table number, e.g. _"Table 4.2.3.1.7-2: Data Types (previously Table 4.1-3)"_.  ITI Technical Committee members have also reviewed existing Technical Frameworks and supplements across domains and have tried to ensure that references into ITI TF-3:4 have been updated with new section or table numbers in these documents published in 2013.

The ITI Technical Committee believes that the specification of "Metadata used in Document Sharing profiles" in ITI TF-3:4 is improved.   **_Use the current version of this and all technical framework documentation in your implementation work this year!_**  If you find errors or have suggestions for improvements, please send an email to [iticomments@googlegroups.com](mailto:iticomments@googlegroup.com) or submit a [Change Proposal](http://wiki.ihe.net/index.php?title=Change_Proposal_Template_-_Word_Doc).

Finally, with the publication of the new Technical Framework, the terms _"XDS metadata"_ and_ "XD* metadata"_ are replaced with "_Document Sharing metadata_".  We will give those who sleep with Volume 3 under their pillow some time to adjust.

- Lynn Felhofer

  IHE Technical Project Manager - ITI domain

**_**

**IHE IT Infrastructure Technical Framework Volumes Published **

The IHE IT Infrastructure Technical Committee has published the following Technical Framework Volumes as of September 27, 2013:

- Volume 1 (ITI TF-1): Integration Profiles

- Volume 2a (ITI TF-2a): Transactions

- Volume 2b (ITI TF-2b): Transactions (cont.)

- Volume 2x (ITI TF-2x): Appendices A through W and the Glossary

- Volume 3 (ITI TF-3): Contains Section 4 (Cross-Transactions Specifications) and Section 5 (IHE Content Specifications)

The profiles contained within these volumes may be available for testing at subsequent IHE Connectathons. The documents are available for download at [http://ihe.net/Resources/Technical_Frameworks/](http://ihe.us1.list-manage.com/track/click?u=a75e449ea24da34a9a89ed37a&id=f84aea0c80&e=c8e1e046d9). Comments on all documents are invited at any time and can be submitted at [http://ihe.net/ITI_Public_Comments/](http://ihe.us1.list-manage1.com/track/click?u=a75e449ea24da34a9a89ed37a&id=a313bebc0f&e=c8e1e046d9).

