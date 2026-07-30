# 2014 Draft Test Methods: Wave Four Released for Public Review and Comment

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/10/2014-draft-test-methods-wave-four.html
Published: 2012-10-16T16:30:00.001Z
Updated: 2012-10-16T16:32:49.106Z
Author: John Moehrke

---

Wave 4 added a few more Security functionalities. The short of it is that these functional requirements are rather broad, and thus the testing needs to be rather broad. I do however see the test procedure hitting upon the specific key functionalities without being overly specific to one architecture. There are exceptions, but I suspect they can be handled in testing. I am glad to see that the writers of the test scripts is leveraging the preamble to the rule, something that is really not a formal part of the regulation. For those that want to understand MU2 better, I think these test scripts are the place to go. They include the rule, the preamble text, interpretation, and test script.

I have comments below on the following test scripts:

- Test Procedure for Â§170.314(d)(1) Authentication, access control, and authorization

- Test Procedure for Â§170.314(d)(2) Auditable events and tamper-resistance

- Test Procedure for Â§170.314(d)(3) Audit report(s)

- Test Procedure for Â§170.314(d)(7) End-user device encryption

- Test Procedure for Â§170.314(e)(3) Secure messaging â€“ ambulatory setting only

>

>

http://links.govdelivery.com/track?type=click&enid=ZWFzPTEmbWFpbGluZ2lkPTIwMTIwOTI4LjEwODQ4NjcxJm1lc3NhZ2VpZD1NREItUFJELUJVTC0yMDEyMDkyOC4xMDg0ODY3MSZkYXRhYmFzZWlkPTEwMDEmc2VyaWFsPTE3MTgwNTk5JmVtYWlsaWQ9am9obi5tb2VocmtlQG1lZC5nZS5jb20mdXNlcmlkPWpvaG4ubW9laHJrZUBtZWQuZ2UuY29tJmZsPSZleHRyYT1NdWx0aXZhcmlhdGVJZD0mJiY=&&&100&&&http://healthit.gov

2014 Draft Test Methods: Wave Four Released for Public Review and Comment

The Office of the National Coordinator for Health IT (ONC) is pleased to announce the release of the fourth set of 2014 Edition draft Test Methods (test procedures, tools, and applicable test data and files).

All Test Methods will undergo public review and comment before being finalized and approved by ONC for use in testing and certification. The final set of Test Methods is expected to be available for use in early 2013.

Comments and suggestions should be submitted to [ONC.Certification@hhs.gov](mailto:ONC.Certification@hhs.gov). ****All submissions should include "2014 Test Methods" in the subject line****. Please be as specific as possible in your comment submission.

For additional information, and to access the 2014 Edition draft Test Methods, please visit the [2014 Edition Draft Test Procedures webpage](http://links.govdelivery.com/track?type=click&enid=ZWFzPTEmbWFpbGluZ2lkPTIwMTIwOTI4LjEwODQ4NjcxJm1lc3NhZ2VpZD1NREItUFJELUJVTC0yMDEyMDkyOC4xMDg0ODY3MSZkYXRhYmFzZWlkPTEwMDEmc2VyaWFsPTE3MTgwNTk5JmVtYWlsaWQ9am9obi5tb2VocmtlQG1lZC5nZS5jb20mdXNlcmlkPWpvaG4ubW9laHJrZUBtZWQuZ2UuY29tJmZsPSZleHRyYT1NdWx0aXZhcmlhdGVJZD0mJiY=&&&101&&&http://www.healthit.gov/policy-researchers-implementers/2014-edition-draft-test-methods).

**Test Procedure for Â§170.314(d)(1) Authentication, access control, and authorization**

This test procedure does basic user provisioning, use of that user, and de-provisioning to prove that use is now forbidden. There is a good balance in the procedure on testing the key functionality.

The hard part will be an EHR that totally uses standards to do User Identity, user Authentication, and even user authorizations. Meaning that the EHR software is not the one that will be tested, but rather the third party identity management system. For example in large hospitals Microsoft Active Directory is commonly used. It is this software that will be primarily tested by this test procedure. Although the EHR will still need to prove that they act properly. So, in the end good testing will be done.

It was disappointing that they didn't leverage the steps in this test procedure to test that audit events were recorded. Back when I was involved with CCHIT, we had a test procedure that tried to optimize the testing of these kinds of security functionality. One workflow that would test many functions at the same time. Including audit logging here would have been an easy thing.

**Test Procedure for Â§170.314(d)(2) Auditable events and tamper-resistance**

A minor victory, the testers recognize that NTP is for time clock synchronization, not the format of a timestamp.

Failure: The tests still seem to think that the only way to protect an audit log is to have a hash across it. This is actually a very unlikely method, but legitimate for some architectures. The test in "Detect Audit Log Alteration" should really be functional, and not specific to the technology of using a hash.

Disappointing: I expect that NIST can come up with better and more correct ways to test NTP. The tests in "Network Time Protocol (NTP) Test" will not work if the time clocks are off by too big of a jump. Good NTP implementations will not skew the time when it is so far out of alignment, and with good reason. The NTP is a long-term maintaining protocol, not a protocol for gross adjustments. Please check within NIST, surely there are standalone tests already available for general use. Why invent a special test for healthcare, especially inventing and being wrong.

Audit testing of changes to patient data "DTR170.314.d.2 â€“ 3: Record Actions": I really wish the tests verified that egregious health information didn't make it into the audit log. The audit log should be as free of health information as possible, yes it will be very full of identifiers. This is not because I think that the audit logs don't need to be protected, but rather as a risk reduction method. Given that there is no need for health information in the audit log, it shouldn't be there. Once it is there, then it raises the risk of inappropriate exposure. Recognize that audit logs are reviewed for many reasons by non-doctors.

**Test Procedure for Â§170.314(d)(3) Audit report(s)**

I think this test procedure is written well enough to be testing useful functionality without imposing a specific way to implement it. I would like them to spend less time focused on steps of "Generate Audit Report", then focus on "Sort Audit Log". These two functionalities can be just as effective when implemented as one step. That is to identify the filter criteria, sort criteria, and reporting layout - then execute to produce the report. I suspect that this architecture would be seen as compliant, it would just be rather clumsy getting it through the test.

**Test Procedure for Â§170.314(d)(7) End-user device encryption**

I spent much time in HIT Standards Privacy and Security workgroup meetings on this topic, so I hope that the result is truly useful.  The first approach, which happens to be the second one listed, is to design your client software in a way that it simply doesn't leave behind PHI when it normally exits. There are all kinds of supporting comments in the preamble to recognize as out-of-scope misbehaving browsers, non-normal termination, etc. Note that the test steps don't recognize these exceptions, so make sure you remind them.

The criteria is mostly focused on EHR architecture that pull databases onto the client. Even these simply need to encrypt the database onto the client then they will be able to show they are compliant. Simple.

I do have to laugh that the test procedure asks the tester to prove that locally stored PHI is encrypted to FIPS spec... This should be impossible, right? The best the tester can do is take vendor claims and record them. Then inspect to see that it isn't obviously PHI. To the tester the data might simply be base64 encoded.

I would highly encourage ALL architectures to 'not get in the way of transparent and automated hard-drive encryption'. The real concern is that some EHR vendors are forbidding their customers to do this. I don't know how real this concern is. I find it hard to believe it really happens in EHR space (I know it happens in Medical Device space, but that is a very different issue).

**Test Procedure for Â§170.314(e)(3) Secure messaging â€“ ambulatory setting only**

This test procedure is again well written. I am somewhat concerned that it is written a bit too close to a Patient-Portal functionality. This is likely the prevailing method that will be used. My concern is that it seems to be overly prescriptive on how the patient will interact with technology. Meaning if I am a patient that is using a tool like Keith is building for ABBI, I might have to do things that are not in the control of the user. Or if I am a patient using a standalone PHR, such as HealthVault, I would not be logging into the EHR but rather HealthVault. These other models are clearly outlined in the Preamble text, but it is simply not clear how they will be tested properly.

**See also:**

[MU2 Wave 1 of Draft Test Procedures -- Integrity Problem](http://healthcaresecprivacy.blogspot.com/2012/09/mu2-wave-1-of-draft-test-procedures.html)

