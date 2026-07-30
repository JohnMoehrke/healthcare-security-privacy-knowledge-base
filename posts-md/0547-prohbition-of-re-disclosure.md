# Handling the obligation to prohibit Re-disclosure

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/11/prohbition-of-re-disclosure.html
Published: 2011-11-30T17:43:00.001Z
Updated: 2011-12-01T14:41:21.813Z
Author: John Moehrke

---

There is much discussion lately on a need to communicate along with Patient Data that the Patient Data canâ€™t be re-disclosed. This very specific â€˜obligationâ€™ comes up often. This is just one of a set of â€˜policiesâ€™ or â€˜policy fragmentsâ€™ that need to be discussed when putting together an Organization, HIE, Community, National system (NwHIN-Exchange and Direct Project), or Multi-National System (epSOS).

I think if people were to think through all of the use-cases, there is almost always a need for the obligation to not re-disclose the data that was communicated. It is actually simple data governance regardless of Privacy Policy. One should only publish, or more generically disclose, data that they themselves created. That is not to say that you should not include in your documents fragments or knowledge from previous documents. You should always include relevant evidence, with attribution. This is the topic of â€˜Data Provenanceâ€™ discussions. This is typically a topic of Medical Records Retention.

So back to the specific obligation to not re-disclose. I would assert that this obligation simply becomes part of the rules-of-the-road, or data-use-and-reciprocal-support-agreement (See [NwHIN Exchange DURSA](http://jira.siframework.org/wiki/display/OBTI/DURSA+Overview) â€“ section 16). That is that this policy simply is elevated to an overarching policy. Thus it doesnâ€™t not need to be encoded in the transaction level. It is already implied through the fact that there is a communications pathway that is acceptable, acceptable because of out-of-band agreements. By not trying to include it at the transaction level, we have a more simple transaction.

We do this for any â€˜ruleâ€™ that we can. The more we can move into high level policy or governance the better. We are always trying to have simple transactions. This simplicity drive is not because we want to ignore Privacy, Security, Data Governance, or anything else. We strive for simplicity because it is more â€˜simpleâ€™ to implement and thus more likely to be implemented. Simplicity also a prime factor in robustness.

Update: Based on some conversations... It might be better to think about having a way to let the receiver of data to know that they are explicitly allowed to re-disclose. hmm. That is not quite an obligation. That would be  an allowance-beyond-baseline-rules.

