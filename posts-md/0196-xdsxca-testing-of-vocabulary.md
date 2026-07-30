# XDS/XCA testing of Vocabulary Enforcement

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/11/xdsxca-testing-of-vocabulary.html
Published: 2011-11-11T16:23:00.001Z
Updated: 2011-11-16T17:23:57.489Z
Author: John Moehrke

---

I was asked what vocabulary should be used to test to determine if system that has implemented XDS and/or XCA actors are compliant. The problem with the question is that it focuses on the technical specifications and ignores reality of how these standards are to be used over time. The technical specification does require a Registry to reject new document submissions with metadata entries having values not on the Affinity Domain approved list. So it seems logical to test that a Registry will enforce this code-set behavioral.

In general I point to the [Robustness Principle](http://en.wikipedia.org/wiki/Robustness_Principle) is also known as Postel's law, after [Internet](http://en.wikipedia.org/wiki/Internet) pioneer [Jon Postel](http://en.wikipedia.org/wiki/Jon_Postel) - "be conservative in what you do, be liberal in what you accept from others" . I would add to this Robustness Principle that you must apply the rules to the context of the situation/transaction. Let me explain:

In an XDS operational environment, such as a state [RHIO like Conneticut](http://healthcaresecprivacy.blogspot.com/2011/09/draft-affinity-domain-policies.html), there will be a code-set that defines the acceptable vocabulary values for any of the metadata entries. Today this is logically the vocabularies found in [HITSP-C80](http://hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=4&PrefixNumeric=80). But the operational code-set is a living list, it will change over time. This is already happening in S&I Framework (the new HITSP). This will happen in any implementation as there is always new documents being defined, and thus new vocabulary being needed. It is this change over time that is potentially not obvious when focused on the specifications and the here-and-now. More important is that a change overtime can't invalidate historically approved documents.

**Publication of New Documents**

In the case of an XDS Registry, there is a usefulness of the Registry warning a publisher that they are publishing a new data entry with metadata entries that have not-approved vocabulary. This is helpful as it allows the publisher to change the metadata values to acceptable values and try again.  This typically involves using a different document template, an updated document template. Publication does need to be specific to the currently accepted list of documents that should be allowed to be published.

Interesting twist is that the publication may want to be more restrictive than the overall acceptable. For example a document that was acceptable in the past may be found as unacceptable in the future. This doesn't mean that the old documents are bad, but that there is a better new way to document the same information. This has not been discussed in IHE, as it is really a sample of a policy statement that an operational environment can make. A decision that doesn't affect the interoperability specification.

**Query into the longitudinal Record**

XDS Query likely needs to be more generous as this is a probe into the longitudinal record. A probe back in time, to a time when a different set of documents were considered acceptable, documents that would be considered today to be incomplete. So, it seems to me that a XDS query should be allowed to ask for anything; and an XDS Query results needs to be allowed to respond with anything in the longitudinal record. If a new Document Consumer can't understand the old documents, then it needs to be robust to this possibility. The Document Consumer likely does need to notify the user that there are documents that it can't process. This because there might be a safety concern if data is transparently dropped. Hopefully all Document Consumers would try really hard to support anything that could possibly be in the longitudinal record.

**HIE merge**

A disjointed version of this is the use-case where a system publishes a document into their local HIE in a way that is fully compliant with that HIE; then later that HIE joining a larger HIE. Should those historic documents be not available across the larger HIE? Surely they should not be forced to be republished under the new HIE rules. This similar situation will also happen over time, as 20 years from now we will have a very different view of what is logical for publication, while we must accept all 20 years of data as legitimate.

**XCA (e.g. epSOS, NwHIN-Exchange)**

An XCA (NwHIN-Exchange) environment is just the Query and Retrieve side, so it should be treated according to the XDS Query comment above.

