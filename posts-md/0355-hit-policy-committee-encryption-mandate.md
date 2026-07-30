# HIT Policy Committee - Encryption Mandate is either misguided or misunderstood

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/05/hit-policy-committee-encryption-mandate.html
Published: 2010-05-26T14:33:00.001Z
Updated: 2010-05-26T14:35:13.715Z
Author: John Moehrke

---

Last week the HIT Policy declared that Encryption was necessary in NHIN-Direct. This was reported in many forums: [Government Health IT](http://www.govhealthit.com/newsitem.aspx?nid=73799), [Health Data Management](http://www.healthdatamanagement.com/news/encryption-mandate-recommendation-meaningful-use-security-rule-40312-1.html?ET=healthdatamanagement:e1276:10865a:&st=email&utm_source=editorial&utm_medium=email&utm_campaign=HDM_Daily_052010), [iHealthBeat](http://www.ihealthbeat.org/articles/2010/5/21/health-it-policy-panel-considers-privacy-recommendations.aspx), [Federal Computer Week](http://fcw.com/articles/2010/05/19/hhs-advisory-panel-considers-patient-privacy-rules.aspx?sc_lang=en), etc. But in all of these cases there is little discussion of the potential unintended consequences of this 'policy' decision.

The following comes from the presentation given at that committee meeting (Slides 6 and 7)

>
- We need specific policies, as well as technology requirements,  to  govern all forms of electronic health information exchange.

- Implement  the Nationwide Privacy and Security Framework principles.

- Work  should take place ideally before, or at least in conjunction with,  technology standards work.

- Technology should implement policy and  not make it

- Fill gaps in current law.

- Address â€œfacilitatorâ€  access to identifiable information

- Constraints on collection,  access, and use of identifiable data

- Constraints on data retention  and re-use

- Security requirements

- One-to-one exchange from  one provider to another for treatment purposes â€“ even with no  â€œfacilitatorâ€ - must be governed by policies that at least include:

- Encryption  (no ability for facilitator to access content)

- Encryption ideally  should be required when potential for transmitted data to be exposed  (mandate through meaningful use/certification criteria or HIPAA security  rule modification)

- Limits on identifiable (or potentially  identifiable) information in the message

- Identification and  authentication

- If strong policies such as the above are in place  and enforced, we donâ€™t think the above scenario needs any additional  individual consent beyond what is already required by current law.

So, this has been taken by some inside the NHIN-Direct project as a mandate for end-to-end encryption and the forbidding of any intermediary. There is evidence on Slide 8 that the HIT Policy committee really is worried about intermediaries, as they continue on to explain that their is concern that regulations are not covering these Business Associates. I believe that this is not true anymore. The HITECH Act did update this.

More importantly the HIT Policy committee should be defining policies that bring the Health Information Exchange (HIE) 'into' control. They are rather telling the standards committees to make sure that the HIE is kept 'out' of the conversation. This is a miss-guided policy, even if it is the easy policy statement.

When this 'facilitator' is indeed only 'routing' the information it is surely possible that they only need to have access to the information necessary to 'route'.  Those that read my blog will recognize that when using Mutually-Authenticated-TLS with Encryption/Hashing; that all of the Internet IP-Routers will only have access to the necessary IP-Addresses to route the communications from the Source to the Destination. In this case one can surely understand that this meets the requirement.  I have been very careful to always indicate that in this case the 'routing' and 'Address' are at the IP level. When communicating in a point-to-point way between these two endpoints TLS works wonderful.

Some within NHIN-Direct are looking at what NHIN-Direct defined as a NHIN 'Address'. In this case an address includes more than the IP-Address, but also includes the target user/group/process. The NHIN Address looks very much like an e-Mail Address, and it is possible that it is indeed an e-Mail Address.

There some in NHIN-Direct that want to use e-Mail as the transport, and thus the whole NHIN-Direct Address would need to be 'known' by the e-Mail infrastructure (aka 'facilitator'). They could isolate their e-Mail infrastructure with TLS, but they would like to potentially use the 'Internet' e-Mail infrastructure. The advantage of using the 'Internet' e-Mail infrastructure is that it already exists and is very common and well understood by many. When they use the e-Mail infrastructure they thus are bringing in 'facilitators' that need to see the NHIN-Direct Address, but clearly don't need to see the contents. The e-Mail architects would logically use Message level security to satisfy the requirement. There is two solutions here: S/MIME and PGP. These two solutions have benefits and drawbacks that make them about equal but not compatible.

When using a point-to-point protocol, such as HTTP or SOAP, there is  no need to expose this additional part of the NHIN 'Address' to the  'IP-Routing'. So, these architects are pushing this NHIN-Direct Address  inside the TLS envelop. Note that in the case of SOAP there is the possibility to use WS-Security to enable message level security, but the community of architects recognize that message level security is today very immature and more burdensome. So for simplicity sake we start with TLS knowing that operationally message level security could be used as the technology and infrastructures mature.

All that said, there is an very large elephant in the room. That is that there is very legitimate reasons why a 'facilitator' might need to see the contents. This need would clearly need to be 'authorized' by the endpoints. This 'authorization' would be based on the fact that the 'facilitator' truly does need to see the content. It is this point that the HIE-Policy committee seems to have missed, or chosen to ignore. It is very possible that the HIT-Policy committee is explicitly recognizing this use-case and explicitly forbidding it. I hope that this is not the case as not all Providers or other NHIN-Direct endpoints are equally enabled. Some Providers really will need 'facilitators' to add value to the communications. This value might be in packaging, distribution, reformatting, archiving, etc.

The HIT-Policy committee needs to recognize that some 'facilitators' should be allowed to be 'authorized' to see the contents of the transactions because they explicitly do add value to the exchange.

