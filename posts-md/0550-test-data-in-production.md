# Test Data - in production

Originally posted: https://healthcaresecprivacy.blogspot.com/2023/03/test-data-in-production.html
Published: 2023-03-14T19:35:00.007Z
Updated: 2023-03-14T19:35:59.301Z
Author: John Moehrke

---

As FHIR systems get bigger and bigger, and support more and more clients... It is more and more important to have Test Data to use to assure that:

- Your client is connected to the right server
- Your client is properly connected to the oAuth service
- Your client understands the profiled data

This could be done with a sandbox server that contains only test data, but this only can address #3.

There is a security tag available in the HL7 ValueSets for Security tagging.

> * meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST

HTEST -- Healthcare Test Data --

> To perform one or more operations on information that is simulated or synthetic health data used for testing system capabilities outside of a production or operational system environment. *Usage Note:* Data marked with a HTEST security label enables an access control system to permit interfacing systems or end users provisioned with a clearance, which includes a HTEST purpose of use attribute, to test, verify, or validate that a system or application will operate in production as intended based on design specifications.

I use this tag in the Implementation Guides that I write to distinguish the examples I provide. In this way it is clear that this data is "know as example test data" and can't be confused with real patient data. I also expect that this tag is a clear flag to someone that might copy/paste these examples and pass them off as real data. I don't always use this tag, as sometimes it is a distraction from the message the example is trying to convey.

So, going back to the use-case above... If I have a production FHIR Server, I could include the test patients with test data in the real server. This does not mean you should not have a sandbox, you should still have sandboxes for testing prior to being an approved app. But once you have an app that is approved, this HTEST data would be used first to assure that they are well connected. Testing #1 and #2 in addition to #3.

This real server HTEST data can also be used on a regular basis to test connectivity. Might be used when the client or server system is booted, to make sure it is well connected. Or might be tested after the system is updated. Could be regularly tested. Could be used when there is a network failure detected.

Note that HTEST is not just for server data, the client applications should also be testing their full CRUD abilities with test data. Thus creating new resources for the test patient, with the HTEST tag. Indeed, the Access Control should be sure that any data Created or Updated on test patients does have the HTEST tag.

Note that HTEST data should also have full variability expected of real data. That is to say that if you support security/privacy sensitivity segmentation, then you should have variously distinguished sensitive data, and the test patient should have a complex Consent. If you have a real-time Security Labeling Service, it can be tested against this test data.

Note that Test Data should be reset on a regular and known schedule. Test Data is not just for sandboxes.

