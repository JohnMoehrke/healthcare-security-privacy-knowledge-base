# Reflecting FHIR FMM in IHE Profiles

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/04/reflecting-fhir-fmm-in-ihe-profiles.html
Published: 2017-04-27T16:55:00.001Z
Updated: 2017-04-27T16:55:26.877Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhpw5eaODBLip-0pToqQJYejGXqI1hk1TbFc8ObWcdZppymB1A_8UFpQtShaklQ0zq2NgtVhBEl8TvZX-_iXNGmO2rOvCNJj3Cc8l6CQmWE6RuU9fDFEKDa3wy3XPFrNBgz-zyqkvN-aEG2/s1600/PDQm_with_FMM.tifIHE is creating many Profiles using [FHIR](http://hl7.org/fhir/STU3/index.html). Given that FHIR is still "Standard for Trial Use" (STU), and thus there is a "Maturity" concern. This maturity concern is communicated in FHIR STU3 through a ["FHIR Maturity Model" (FMM)](http://hl7.org/fhir/STU3/versions.html#maturity) evaluation number on each Resource and other parts. These FMM number indicate to the FHIR audience a stability and readiness for use. This is an important communication tool.

I am proposing within IHE that they reflect these FMM to the cover page of the IHE Profile so that the reader of the IHE Profile supplement understands the stability and readiness for use evaluation.

These FMM evaluations are only a construct for the STU and "Trial Implementation" phases. The FHIR Resources used must go to Normative, before the IHE Profile can go "Final Text".

So for example PDQm is based on [Bundle](http://hl7.org/fhir/STU3/bundle.html), [OperationOutcome](http://hl7.org/fhir/STU3/operationoutcome.html), and [Patient](http://hl7.org/fhir/STU3/patient.html). All of which are at FMM level 5. So the title page of PDQm looks like:

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgICfB9R3JPvSJL191zl-x7ZvKdc0w672LcKdG9lzBvzpgc2CRnNwuccpbVoro7-XbZZ3835EzCNOCWN3tQIOXH9cO8GelsJb-Wr-Mt8D3lVTHySvAvoh3t7ELPvPvuXuRA09e_4tnD5dUD/s1600/MHD_with_FMM.tif

Where as MHD is based on a broader set of  FHIR STU3 defined resources --  [DocumentReference](http://hl7.org/fhir/STU3/documentreference.html)3, [DocumentManifest](http://hl7.org/fhir/STU3/documentmanifest.html)2, [List](http://hl7.org/fhir/STU3/list.html)1, [Patient](http://hl7.org/fhir/STU3/patient.html)5, [Practitioner](http://hl7.org/fhir/STU3/practitioner.html)3, [OperationOutcome](http://hl7.org/fhir/STU3/operationoutcome.html)5, and [Bundle](http://hl7.org/fhir/STU3/bundle.html)5. FHIR Maturity Level (FMM) range 1-5

These updates to the IHE profiles will soon be seen in a CP ballot, and then published on the IHE web site. Right now they are being worked by the ITI workgroup.

