# Treatment based interop is best using Documents

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/08/treatment-based-interop-is-best-using.html
Published: 2019-08-21T13:58:00.001Z
Updated: 2019-08-21T13:58:07.784Z
Author: John Moehrke

---

I want to drive discussion on this, so will take a position that many may disagree with. This position is that for Treatment and Payment the best format for clinical data is Document based. The consumption side is a different topic, and today a big frustrating point. Although publication should be Document based, these documents must be decomposed and analyzed relative to the current Treatment situation.

**Why?**

Because the output of a prior Treatment needs to be tied off with conclusions supported by the evidence known at that time. The document must be Authentic and Authenticatible. The document must be complete story of the whole story around that treatment.  The [Clinical Document meets a set of Principles](https://healthcaresecprivacy.blogspot.com/2013/11/distinction-between-documents-and.html) that all are critical.

**How?**

The document must be both narrative and coded. This CDA is a good solution, but a FHIR Document is better. FHIR document is based on the fundamentals of [FHIR, but in a Document format](https://healthcaresecprivacy.blogspot.com/2017/01/fhir-documents-in-xds.html). A FHIR document is 100% FHIR. This it is well formed and easily understood.

Better, [publish both](https://healthcaresecprivacy.blogspot.com/2017/03/multiple-formats-of-same-document.html).

**Where?**

The document exchanges we have today can carry a FHIR document just as easily as CDA or PDF.

Documents can be anything, not just a highly coded discharge summary. They can be informal clinical notes. They can be fragments of data that do not meet the full principles of a Clinical Document. These do however fit the broader definition of a document. These documents are also well handled by the document exchanges.

**When NOT?**

Documents have narrative but this narrative should only be a last resort on the consumption side. Please don't expect the clinician or patient to directly view these Documents, no stylesheet will make this worthy.

**Discuss...**

