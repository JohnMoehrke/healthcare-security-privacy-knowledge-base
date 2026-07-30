# Privacy-by-Design Data-Analytics Platform on FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/07/privacy-by-design-data-analytics.html
Published: 2016-07-12T14:52:00Z
Updated: 2016-07-12T14:52:08.146Z
Author: John Moehrke

---

In all the networking and [interviewing](https://healthcaresecprivacy.blogspot.com/2016/05/transition.html)I have been doing lately I have been thinking more and more about a really cool project that I would love to participate in. As far as I know someone must have tried this, but it will take many technology advancements yet. So if anyone is working on this, I want to talk to you and see if I can get on your team. Yes, I am [still looking for a job](https://healthcaresecprivacy.blogspot.com/2016/05/transition.html).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjyjYoq30sb_LmlShbVg2WplNxWlVHd2dmmURTzUz4ghgvhfEuOZlOwY-gOvbHwHUo4owms98-THcNzWoxUayEd94SAwTNPmhkXYRBSo9tJApBsU0LNeZXhY8gf9gbfo5JAWsVoPGNwfPBA/s1600/Privacy-Data-Lake.png

The idea is I want to use Privacy-By-Design to design a Data-Lake that will respect Privacy Principles in all data uses.

This would enable various uses of data:

- Data-Set extract that meet X criteria, with the resulting data-set being de-identified to a specified risk level, preserving specified data characteristics.

- Data-Summary report that is the result of R analysis. were the summary report is automatically assessed for data leakage.

- many other use-cases in-between

In my case, the data-lake is holding Personally Identifiable Information (PII) thus Privacy needs to be considered a key part of the system design. Thus application of Privacy-By-Design.

The solution is otherwise simply a [data-lake](https://en.wikipedia.org/wiki/Data_lake), as a method of storing -raw- data within a system that facilitates many uses of the data. I want to use the concept in a broad way, I don't know if some useses of the term are narrow.  Most use of data-lake are less sensitive, so they focus on the raw data storage and raw data access methods. This is very good foundation, I don't want to re-invent this. However the system does need to be re-designed in a Privacy-By-Design way.

I do want to restrict the Data-Lake sightly, Because my data-lake is full of PII, I want to impose that it is structured data, but not necessarily structured database. I am fine with the data-lake vs database or data mart. Meaning that the data is understood, such as using FHIR resource model; but that the data might also be made up of DICOM resource model, or CDA structure, or OpenEHR, or HL7 v2 messages, or other... The important part is that it is structured within any object well enough to know what the data are. Meaning it is not just a set of free-text (such is the internet, that google indexes).

I want all data to be clearly understood as having specific [Provenance](https://healthcaresecprivacy.blogspot.com/2016/03/provenance-vs-audit-it-is-not.html)and [specific](https://healthcaresecprivacy.blogspot.com/2016/04/patient-id-is-critical-to-enabling.html)[Policy](https://healthcaresecprivacy.blogspot.com/2016/05/simplified-fhr-privacy-consent.html)attached. I am not going to design here how this is attached, it might be like FHIR Provenance and FHIR resource meta tags.  This layer of Provenance and Policy is essential, and potentially not considered part of the accessible data-lake functionality. That is that this metadata might be maintained somewhere else, somewhere close, or within the data. After all some problems do need to be 'engineered'.

The most important part of this Privacy By Design is that all accesses are mediated not just by a Security infrastructure, that is responsible for the security of the data; but also by a Privacy infrastructure that is responsible for the Privacy Principles of the data and the subject that the data are about.

Where for each request only data that request purpose and method [are authorized](https://healthcaresecprivacy.blogspot.com/2016/05/simplified-fhr-privacy-consent.html) is used.  Where the exposure is controlled by the subject of the data (some subjects are fine with exposing some of their indirect identifiers (quasi identifiers).  This would be described through the Policy attribution.

The results data-sets have very powerful de-identification processing available. Including post-analysis, such as k-anonymity. Including various algorithms, such as[Differential Privacy](https://healthcaresecprivacy.blogspot.com/2016/06/apple-makes-difference-with-targeted.html), fuzzing, grouping, blinding, pseydonym, etc. Where [pseudonyms can be cross-correlateible or not](https://healthcaresecprivacy.blogspot.com/2016/05/healthcare-blockchain-big-data.html). Etc.

There is plenty of design yet to be done. There are many new standards needing to be written. There are many technologies needing to be invented. But my vision is that we can get there.

Of course Privacy Principles also include full [transparency](https://healthcaresecprivacy.blogspot.com/2016/03/provenance-vs-audit-it-is-not.html)to accesses requested and those granted.

