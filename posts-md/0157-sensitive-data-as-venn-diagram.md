# Sensitive data as Venn diagram

Originally posted: https://healthcaresecprivacy.blogspot.com/2026/04/sensitive-data-as-venn-diagram.html
Published: 2026-04-28T14:11:45.849Z
Updated: 2026-04-30T12:58:32.989Z
Author: John Moehrke

---

In Healthcare, Normal data is all data that is linked to an identified Patient and not specifically sensitive. Any data that is sensitive would be Restricted. "Normal" refers to the normal average curve, thus the majority of data. Sensitive data can be categorized into sensitivity topics, and some data may fall into multiple sensitive categories, as illustrated in the Venn diagram below.

Sensitive topics are generally potentially stigmatizing information, for which exposure would present high risk of harm to an individual's reputation and sense of privacy.

In a data tagging architecture, sensitivity topics are indicated as a "sensitivity" code in the FHIR Resource.meta.security tag of FHIR resources, and can be used for access control decisions in a Privacy Consent driven access control model.

Normal data is often not tagged as Normal, but rather is just the absence of any sensitive tag. This is recognizing that the vast majority of medical data are Normal (algorithmically average). The presence of any sensitive tag would make the data Restricted, indicated as R restricted Confidentiality code._
The data are tagged with the kind of sensitivity purely due to their data content, and not due to any other factors such as the Patient consent status. The labeling does not imply that there is any particular access control policy in place, but rather that the data is sensitive and may require special handling.

The access control policies would be defined separately and could use the presence of these sensitivity tag to make decisions about who can access the data and under what circumstances.

For example, when a given patient indicates that broad treatment use of their data is not restricted, but their Sexual Health sensitive data must not be shared beyond their PCP and never with non-Treatment purpose of Use. So, in this case, note that the other sensitive tags beyond Sexual Health have no effect on accessibility. Note that this Consent policy just needs to see the Sexual Health tags, it does not care about Normal vs Restricted.

**Resources:**

- An Implementation Guide with various ValueSet(s) that could be used by a Security Labeling Service (SLS) to tag data according to specific sensitivity. - [SLS ValueSets](https://build.fhir.org/ig/SHIFT-Task-Force/SLS-ValueSets/branches/main/index.html)
- A Reference Implementation (OpenSource) of a Security Labeling Service (SLS) that I created using Vibe coding with AI - [SLS RI GitHub Repository](https://github.com/SHIFT-Task-Force/sls-ri)
- An Implementation Guide defining that API, and specifically a Profile on ValueSet to identify sensitivity type and the codes for that type. -- [SLS RI Implementation Guide](https://build.fhir.org/ig/SHIFT-Task-Force/sls-ri-ig/branches/main/index.html)
- Example Patient Data [SHIFT Demo Scenarios IG](https://build.fhir.org/ig/SHIFT-Task-Force/demo-fhir-data)

ðŸŽNote, this is one of those projects I do pro bono but would love if someone would care enough about it to contract with me. [Sustaining the Work That Sustains Trust: Why Iâ€™m Seeking Support for Some of My Standards Efforts](https://healthcaresecprivacy.blogspot.com/2026/01/sustaining-work-that-sustains-trust-why.html)

