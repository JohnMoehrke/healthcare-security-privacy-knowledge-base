# FHIR does not need a deidentify=true parameter

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/06/fhir-does-not-need-deidentifytrue.html
Published: 2015-06-12T14:29:00.003Z
Updated: 2015-06-12T14:29:32.687Z
Author: John Moehrke

---

There has been a very short discussion of this topic on the FHIR Implementers skype. The question was asked if there was a need for FHIR to explicitly support de-identification. Fortunately Grahame is smart enough to say NO. I then added this detail.

What everyone keeps forgetting to recognize is just how [hard it is to de-identify, and how easy it is to mess it up](http://healthcaresecprivacy.blogspot.com/2015/02/is-it-really-possible-to-anonymize-data.html).

There is nothing preventing someone from creating an intermediary that looks like FHIR, and talks FHIR to the backend, while de-identifying the data according to some algorithm. However the algorithm is very use-case and risk specific.  This is the model IHE proposes, with a handbook to help with the algorithm selection, backed by ISO standard. [De-Identification: process reduce risk of identification of entries in a data-set](http://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html).

There is no need for a parameter  deidentify=true.... as you are already indicating WHO (OAuth) is making the query and why. This is information used by the Access Control Service, in keeping with enforcing RBAC, ABAC, Consents, and laws/regulations. This access control decision can determine that 'less' information shall be returned. Where 'less' is specific to the request, authentication, etc. Where 'less' might be a de-identification algorithm, or might be to return '200 zero results found'.

Unless one comes up with a NULL-set, you are leaving RISK in the de-identified data-set.

Other articles:

- [Access Control (including Consent Enforcement)](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC)

- [De-Identification, Anonymization, Pseudonymization](http://healthcaresecprivacy.blogspot.com/p/topics.html#DEID)

**
**

**
**

