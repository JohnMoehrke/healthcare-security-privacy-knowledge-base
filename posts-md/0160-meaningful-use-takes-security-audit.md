# Meaningful Use takes Security Audit Logging back a decade

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/09/meaningful-use-takes-security-audit.html
Published: 2010-09-14T14:14:00Z
Updated: 2010-09-14T14:14:19.296Z
Author: John Moehrke

---

I am sure this is not intentional, but yet another example of poor attention to the details of a Requirement is going to hurt the advancement of Healthcare IT again. It appears that the Meaningful Use certification is going to take Security Audit Logging back a decade. I am reading clarifications from one of the certifying organizations.

First to recap what I said (highlighted in yellow) about  [the final certification rules](http://healthcaresecprivacy.blogspot.com/2010/08/meaningful-use-security-capabilities_03.html), specifically on 170.302(r)

- **Â§170.302 (r)  Audit log. **

- **(1)â€”Record actions. Record actions related to electronic health

information in accordance with the standard specified in Â§170.210(b).  **

- See above **Â§170.210 (a) - Encryption and decryption of electronic health information**** **

- **(2)  Generate audit log. Enable a user to generate an audit log for a  specific time period and to sort entries in the audit log according to  any of the elements specified in the standard at Â§170.210(b). **

- I read 'generate audit log' as 'create a report from the audit log'.

- I am not sure all the elements are really that important to sort on.

- Have the capability to produce reports based on the audit log

**Generate audit log. Enable a user...:**

Although the rule clearly says "**Enable a user...**", some certifying bodies have read this to mean that the EHR it-self must have the filtering, sorting and reporting built into the EHR. This means that any EHR that has followed our standards recommendations to offload the Security Audit Log to a Service will not be able to show compliance.

I have nothing against an EHR having this reporting functionality built in; what I object to is that they are forcing this functionality to exist in all EHR. This is a fine functionality for a small organization, but as EHRs get connected to larger HIE and NHIN; [the audit log will become very distributed](http://healthcaresecprivacy.blogspot.com/2010/08/pass-audit-ballot-pool-is-now-open.html). In order to get a full view one must be able to treat Security Audit Logging as a Service. See: [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html). The result is that a Meaningful Use organization will need to use 20 different tools with no way to bring all the audit logs together for analysis. This is putting an unnecessary burden on them.

I also understand that the certifying body will be testing that the EHR can sort on all '...the elements specified in the standard'. Even though it makes no sense to take 3 years worth of audit log and sort it by 'patient'. So you now need to scroll through millions of transactions to find the section where the patient you are interested in is. Wouldn't it make more sense to first 'filter' by patient, then sort? Yes it would make sense, but clearly why would a tester think that this is illogical. Just imaging taking 3 years worth of audit log data and sorting by 'time', not date and time, just time. All those things that happen at midnight at the top, those that happened a second earlier at the bottom. Logical, no, but will it be a test requirement?

**Record actions. **_(and protect them)_

I also understand that they really are going to require that the Audit Log be protected by SHA1 hashing. Now this is no surprise as the regulation text forces this understanding, and the comments enforces this crazy idea.  A SHA1 hash is not the best tool to use to assure that an Audit Log is authentic and not modified. A SHA1 hash can't protect against risks to confidentiality or availability. Isolation of the Audit Log in a Service that has strong Access Controls would be the SOA approach.

More to the point, what 'risk' would a SHA1 hash protect against? I think they assume 'all' integrity risks. It will not protect against a legitimate user abusing their rights. It does not protect against an Audit Log that is accessible by more users than it should. It does not protect the confidentiality of the audit log.

The IHE ATNA solution offered is to use the SYSLOG-TLS transport. This solution leverages a transport signature (TLS) to protect the audit log message between the creator of the message and the audit record repository. The expectation of IHE ATNA is that the Audit Record Repository 'functionally' protects the confidentiality, availability and integrity of the audit log. IHE ATNA does not get more specific as more specifics do not add any value, but rather restrict the solution space and thus lower value. There are many ways to protect the integrity of the audit log record, it should not be exclusively SHA1 (or any hashing algorithm).

Hopefully the EHR vendor will find in their database toolkit that they can turn on some settings to automatically calculate and check SHA1 hash on table entries. This will be a garbage-in garbage-out functionality; but it will be compliant.

**Optimist**

I am proud of what I did as co-chair of the Security Workgroup in CCHIT back in 2004-2009. We definitely did make the Security of EHR products better. We started simple and pushed little by little with 'functional' criteria consistent with those specified in identified standards (ISO, CC, INCITS, NIST, etc). In the pre-Meaningful Use days the criteria allowed for either strong  reporting functionality or export for external analysis. There are still very smart and good people in the CCHIT Security Workgroup, I hope that the CCHIT organization leverages their workgroup membership.

I am glad that Meaningful Use is pushing Healthcare IT to advance in clinical reporting and quality reporting areas, clearly it is not helping advance Security or Privacy.

