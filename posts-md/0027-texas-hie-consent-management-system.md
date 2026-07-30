# Texas HIE Consent Management System Design

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html
Published: 2012-08-01T15:45:00.001Z
Updated: 2012-08-01T16:14:30.324Z
Author: John Moehrke

---

http://hietexas.org/templates/txhie-home/images/logo.png

A fantastic [white paper from Texas HIE on their Consent Management](http://hietexas.org/component/docman/doc_download/387-thsa-consent-management-services-white-paper) system design. This paper can be found with other information on [Texas HIE](http://hietexas.org/index.php).

The white paper purpose:

>
Texas Local HIEs need a method to determine if a patient has expressed an "opt-out" or "opt-in" preference for exchange between HIEs. Local HIEs also need a way to determine if a patients have acknowledged or exercised local fine-grained consent, authorization, or other policy. Automation of the access control decision is highly desirable and should be possible in most, if not all, cases using the envisioned services.

This architecture covers consent management. It is the systems design, and because it is based on existing Standards it is being accelerated:

>
Given that the THSAâ€™s consent management approach is very
similar, in terms of technology components, to its approach to other identified
Phase II state shared services, it has elected to accelerate the deployment of
state-level consent management services from year 7 to year 1 to ensure that the
needs of the stateâ€™s Local HIEs are being met.

I am very happy to see that they are **designing Privacy in from the start**. I can't help but say, this is BIG. I guess it is true that they like to do things BIG in Texas. Note that it is actually a very solid first step only, plenty of room for advancement as standards advance; which they acknowledge at the end of the paper.

The Use-cases that are driving the work include

- A patient wishes to express â€œall inâ€ or â€œall outâ€ consent for exchange between HIEs.

- A patient within a Local HIE Grant Program awardee expresses authorization for use of his/her data for research purposes.

- A responding gateway needs to determine if a patient has expressed a consent preference that would prevent access to a record.

- A patient wishes to change his/her consent preferences.

- A Direct Project-based exchange participant emails a THSA consent document to the state consent service.

The standards architecture follows what I [outline](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html) and extends it with use of HL7 v2 and Direct:

>
As explained in more detail in the RFP Functional
Requirements Grid, the state consent services leverage industry standard
components and technologies.  IHE XDS.b
is used to act as an index to and optional storage of consent documents.  IHE BPPC is used to represent the patientâ€™s consent
expression.  Direct is being used to
receive consent documents from non-HIE/non-EHR sources.  PKI is used to ensure security of each web
services end-point of the exchange, and to ensure the communications channel is
encrypted.    The advantage of this leveraged
approach is that the state consent services essentially re-use existing
building blocks for a new purpose, allowing for substantial re-use of existing
production products.

The really important part, which I have failed to explain well enough, is the creation of a vocabulary. This white paper explains how to create this vocabulary very well.

>
In order to enable automated access control decisions regarding the release of a patientâ€™s medical record from one HIE to another HIE, it is necessary for each of those HIEs to understand each otherâ€™s policy.  Specifically, it is necessary for each HIE to have the ability to decide if a given patientâ€™s policy preference allows or disallows access.  In order to accomplish this, there must be a published and uniform vocabulary of each consent policy type used within the state.  Thus, Phase II state shared services includes a work stream to create such a statewide vocabulary of state, federal, and local HIE policy expressions.

Paraphrased from the whitepaper:

- create an inventory of each patient policy form for each Local HIE.  Since most Local HIEs only have one to three policy forms, this is not anticipated to generate a large number of polices in the initial inventory.

- add to this inventory all state and federal policies (of which there are also expected to be only a small number).

- reconcile similar policy documents and create the smallest possible list of discrete policies.

- This list will then be turned into a list of policy vocabulary identifiers (OIDs) that uniquely identifies each version of each policy in this statewide vocabulary.

- Once the statewide policy vocabulary list has been created, only values from this list will be used by each patientâ€™s consent acknowledgement IHE Basic Patient Privacy Consent (BPPC) document.

This resulting vocabulary allows for the automation of consent processing. My [diagram from the BPPC webinar](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html) on the right with the Texas HIE description on the left.:

>
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEixDFr9EWBhs4XTGakPXw_3_-p8L0qbF_im9YkXmfB9Qb2PTVFnv3mxDfIxFLD0jzoCQAKL6ZXXxrX9C8203jlQKYrxto8GnhIJIenn09-Kv6kuOOG6Qt02hSxvN3EpPSXT_ke1WG-qfFmr/s1600/Slide49.PNGEach request for each patientâ€™s medical information across HIE boundaries will result in the responding HIE gateway being required to search for, retrieve, and inspect any BPPC documents stored at the state policy servers.  This allows the policy engines at each responding HIE to automatically determine if they will allow or deny the request based on their local policy and based on the knowledge of the policy the patient acknowledged.

They are also creating a toolkit for the participants to use:

>
The toolkit contents will be determined in coordination with Local HIEs and are expected to contain: 1) sample BPPC documents with and without optional scanned signature and digital signature components; 2) a list of the current policy OIDs along with references to the officially-maintained statewide list of policy OIDs; 3) use cases with diagrams; and 4) other documentation covering rules of use, scope, etc.

There is far more in the white paper. Including explaining how existing Consent Management systems that use HL7 v2 consent message (CON segment) are integrated. How interfaces are going to be created to allow for Consent Documents to be submitted using Direct for those not connected into XDS or XCA. How BPPC documents will be managed in a flexible but fully discoverable way. How they support wet-signatures, and digital signatures through the BPPC defined methods. etc...

The summary from the [paper](http://hietexas.org/component/docman/doc_download/387-thsa-consent-management-services-white-paper)

>
The toolkit contents will be determined in coordination with Local HIEs and are expected to contain: 1) sample BPPC documents with and without optional scanned signature and digital signature components; 2) a list of the current policy OIDs along with references to the officially-maintained statewide list of policy OIDs; 3) use cases with diagrams; and 4) other documentation covering rules of use, scope, etc.

It is a very good document, although I do have some questions posted about the UML diagrams. Similar problems as I see with the S&I Framework - Data Segmentation for Privacy UML diagrams.

So, add this to the great work by [Connecticut RHIO](http://healthcaresecprivacy.blogspot.com/2011/09/draft-affinity-domain-policies.html)

See Also:

- [Health Information Exchanges (HIE)](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html).

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [Policy Enforcing XDS Registry](http://healthcaresecprivacy.blogspot.com/2012/03/policy-enforcing-xds-registry.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [Healthcare Access Controls standards landscape](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html)

- [Handling the obligation to prohibit Re-disclosure](http://healthcaresecprivacy.blogspot.com/2011/11/prohbition-of-re-disclosure.html)

- [Access Controls: Policies --> Attributes --> Implementation](http://healthcaresecprivacy.blogspot.com/2011/11/access-controls-policies-attributes.html)

