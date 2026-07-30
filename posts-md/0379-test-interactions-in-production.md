# Test Interactions in a Production Environment

Originally posted: https://healthcaresecprivacy.blogspot.com/2023/10/test-interactions-in-production.html
Published: 2023-10-13T13:18:00.004Z
Updated: 2023-10-13T13:33:40.642Z
Author: John Moehrke

---

I covered how to include [Test data in Production Environments](https://healthcaresecprivacy.blogspot.com/2023/03/test-data-in-production.html) using the HTEST tag. That article explained how data that is not real patient data, that is to say 'test' data, would be tagged with HTEST. This is a clear indication of what data in the Production Environment is test data vs not test data. Thus enabling clients to test while connected to the Production Environment, vs having a second environment just for testing. Where having a second environment may still be useful, but the switching from test server to production server can result in errors, usually configuration errors. So being able to do some form of testing in the Production Environment is useful, and testing with test data does not present Privacy concerns.

What that article did not cover is how a client indicates that it knows that it is testing. This has been part of some discussions lately.

Test PatientsFirst, there could simply be a list of well-known test patients. A request for a test patient is clearly a "test". However, agreeing on a list of well-known test patients is hard at a very large scale, like a nationwide exchange. So, this is possibly of limited use. It still should be attempted, even if other methos are also used.

Custom headersSome have proposed that additional http headers be created for this 'testing' purpose. My worry about this is that the intention of testing in production is to get as close to exactly what would happen in production as one can get. Using well-known test patients is the least change. Adding headers seems to be very extreme. Further everyone would need to add to their infrastructure knowledge of these headers.

Getting everyone to add custom headers to indicate that a request is 'different' is not likely to succeed. Further, as custom headers it is less obvious when someone forgets to turn off testing mode.

PurposeOfUseBest case is that the HTEST be used as a PurposeOfUse. HTEST does exist in the PurposeOfUse vocabulary, so it is ready to be used as PurposeOfUse in a request. In the previous article, I don't make mention that HTEST is a PurposeOfUse, but that was for simplicity of explaining things in that article. Data should be tagged with the PurposeOfUse under which it was collected, and test data is collected for the PurposeOfUse of ... testing.

So, add to your requested PurposeOfUse HTEST, and you are now signaling your testing purpose to the authorization and server environments. The big benefit of this is that it is clearly part of the security infrastructure, and secondly it is just one more PurposeOfUse.

Use of PurposeOfUse also is tracked into AuditEvents naturally as it is part of the security layer.

Note that HTEST is ontologically within HOPERAT. This is because it is for the purposes of healthcare operations that you are testing. Testing is not for the purpose of treatment; it is explicitly not treating as it is using test patients. Testing is clearly not payment, one would hope that the test patients will not be billed (well testing billing end-to-end flows would be useful, but it is still testing).

And HTEST can be combined with the normal treatment, payment, and operations so that one can cover flows that would be distinguished. Even combined with [BTG (Break the Glass)](https://healthcaresecprivacy.blogspot.com/2022/08/break-glass.html), yes [Break the glass](http://build.fhir.org/security-labels.html#break-the-glass) is a PurposeOfUse.

PurposeOfUse concernsThere are issues that have been brought forward on this use of PurposeOfUse:

1. Not everyone supports multiple PurposeOfUse. It is understood that some systems were designed back in the day when we thought that only "TREAT" was needed. These systems are really not using PurposeOfUse properly. One really should be asking for Treatment, Payment, and Operations; as it is very likely that any data returned will be potentially used for those other purposes.

2. SMART App Launch does not include PurposeOfUse. Well, this is a problem that I tried to point out at the first and second revision of the SMART specification. Their failure to recognize the importance of PurposeOfUse is simply wrong. The argument that I heard is that the PurposeOfUse is confirmed during the User Experience at application authorization; and from that point forward just implied by the app client configuration. The SMART specification continues to need formal security modeling.

**Note **that [UDAP](http://hl7.org/fhir/us/udap-security/STU1/), [IHE-XUA](https://profiles.ihe.net/ITI/TF/Volume1/ch-13.html), and [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) do include PurposeOfUse... and recognize that PurposeOfUse is multiple values.

ConclusionArguments that changing PurposeOfUse is hard really are not compelling to me when the alternative is to invent something totally new. If a change needs to be made, then make that change using standards. There is no good justification to ignore legitimate standards.

PurposeOfUse concept has not been tested well.. adding in HTEST will help get PurposeOfUse the attention it needs. The order should not matter; TPO, OPT, POT, etc. Including adding purpose of use codes that clearly should not be accepted, like "foobar".

