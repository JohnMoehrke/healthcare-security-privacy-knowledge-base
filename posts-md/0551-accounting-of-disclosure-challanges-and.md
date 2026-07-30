# Accounting of Disclosure Challanges and Top Information Security Concerns

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/01/accounting-of-disclosure-challanges-and.html
Published: 2010-01-21T23:47:00Z
Updated: 2010-01-21T23:47:18.529Z
Author: John Moehrke

---

The following is contributed by [Glen Marshall](mailto:glen@grok-a-lot.com). He sent this in an email earlier today to the HIMSS workgroup. I felt it was so well done that I asked him if I could post it on my blog.

> HIMSS Information Security Workgroup members were recently asked to:

- Provide information describing administrative, operational and technical challenges, burdens or barriers for the [ARRA] expanded accounting of disclosure requirement.

- Forward their top three information security concerns for 2010.

Here are my responses:

1.    The biggest technical challenge is that "accounting of disclosures" is a larger matter than security auditing, but many people do not understand this.

- Key Issues:

- The  collection of security audit data for healthcare is standardized, e.g., by HITSP/T15 and the underlying IHE ATNA specification.

- As a practical matter, many security audit data that could be reportable disclosures are not captured according to the HITSP standard, e.g.:

- legacy system issues

- vendors' non-conformance

- reliance on cross-industry security audit data in the operating platform.

- In addition, under the HIPAA privacy rule provisions still in force, a complete accounting of disclosures must include non-electronic disclosures that are not within the TPO exclusion.

- The baseline of data defined in HIPAA and ARRA is less than that defined by HITSP/T15, and is less data than would be reasonably required for disclosure reporting.

- The means to normalize and select audit data and identify reportable disclosures is not standardized.  This includes the need to define standardized vocabularies for data query and selection that are provided for in the underlying security audit record defined by RFC 3881.

- The means to identify and collate events that occur among multiple enterprises and computer systems is not standardized, at least not beyond the audit repositories defined in HITSP/T15.

- The form of reporting for disclosures is not standardized.

- The means to identify recipients of accounting of disclosures and send the reports to them is not standardized.

- The means to request an accounting of disclosure, who can request it, how, where, to whom, etc. is not standardized.

- This all suggests a non-trivial application system design issue.  It also suggests a market need that could be met by vendors, and that will not be free and probably will not be met by mature products in time for regulatory compliance.

- My guess is that we'd have suitably mature products available no earlier than mid-2011 if work starts now.  There will be premature announcements before then, of course.

2.     My top three concerns:

- Lack of specificity in current federal rulemaking with respect to healthcare IT security and infrastructure standards, with consequent non-interoperability in implementations, will produce near- and mid-term havoc in healthcare provider networks.  The resulting costs will eat-up funds that would be better spent of care quality and availability.

- ONC does not acknowledge that the CDA-vs-CCR debate was settled amicably over two years ago, and that the CCR standard explicitly excludes itself for the ON-defined uses. (The CCR standard clearly states in section 1.3.1 of the standard that "The CCR XML is not a persistent document, and it is not a messaging standard." And defines persistent document in section 3.1.41  as "a document that remains as a document within a data structure or file system once it has been used for its original intended use.")  This will cause added delays and costs to healthcare IT systems, eating-up funds that would be better spent of care quality and availability.

- In its regulatory language, ONC does not adequately distinguish requirements for system-to-system interactions versus end-user interactions.  The "debate" about SOAP versus REST flourishes due to this, and the resulting lack of focused conclusive leadership will add delays and costs to healthcare IT systems, eating-up funds that would be better spent of care quality and availability.

