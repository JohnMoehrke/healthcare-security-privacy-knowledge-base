# Complexity

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/complexity.html
Published: 2012-03-30T13:25:00.002Z
Updated: 2012-03-30T13:25:29.664Z
Author: John Moehrke

---

HIE solution that is **Just as complex as it needs to be and no more complex**. (analogous to [Occamâ€™s razor](http://en.wikipedia.org/wiki/Occam))

I have had multiple discussions this week around how complex this or that HIE standard is. This usually comes back to the statements from the [HIT Standards NwHIN Power Team evaluation of Direct vs Exchange](http://healthcaresecprivacy.blogspot.com/2011/08/hit-standards-committee-nwhin-vs-direct.html). In their recommendation they indicate that Exchange was complex. It is amazing how these things keep coming up. I argue that they have two different goals that have overlap. The solution to this overlap is logical progression, not totally different. Thus, we should not be looking to choose one or the other; but rather choose both and apply them to the use-case that they target.

 **Page count:**Given that our government continues to back projects like HITSP and S&I Framework that consider Page Count an important aspect, letâ€™s look at the page count between Direct and Exchange.

 [Direct Project](http://wiki.directproject.org/Documentation+Library)                                                                   **89 Pages**

- [Applicability Statement for Secure Health Transport](http://wiki.directproject.org/Applicability+Statement+for+Secure+Health+Transport)        20 pages

- [XDR and XDM for Direct Messaging](http://wiki.directproject.org/XDR+and+XDM+for+Direct+Messaging)                      23 pages

- [The Direct Project Overview](http://wiki.directproject.org/The+Direct+Project+Overview)                                   14 pages

- [Direct Project Overview Presentation](http://wiki.directproject.org/file/detail/Direct+Project+Overview+Presentation+-+November+2010.pptx)                      15 slides

- [Direct Project Security Overview](http://wiki.directproject.org/Direct+Project+Security+Overview)                              7 pages

- [Deployment Models](http://wiki.directproject.org/Deployment+Models)                                                10 pages

[NwHIN-Exchange](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407)  Currently in Effect                             **133 pages**

- [Authorization Framework](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_11673_910545_0_0_18/NHIN_AuthorizationFrameworkProductionSpecification_v2.0.pdf)                                       23 pages

- [Document Submission](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_0_5158_1407_16910_43/http%3B/wci-pubcontent/publish/onc/public_communities/k_o/nhin/resources/resources_home_portlet/files/nhin_document_submission_production_specification_v2_0.pdf)                                           22 pages

- [Messaging Platform](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_11673_910523_0_0_18/NHIN_MessagingPlatformProductionSpecification_v2.0.pdf)                                               19 pages

- [Patient Discovery](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_11673_910524_0_0_18/NHIN_PatientDiscoveryProductionSpecification_v1.0.pdf)                                                   23 pages

- [Query for Documents](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_11673_910546_0_0_18/NHIN_QueryforDocumentsProductionSpecification_v2.0.pdf)                                             20 pages

- [Retrieve Documents](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_11673_910547_0_0_18/NHIN_RetrieveDocumentsProductionSpecification_v2.0.pdf)                                              15 pages

- [Web Services Registry](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_11673_910663_0_0_18/NHIN_WebServicesRegistryProductionSpecification_v2.0.pdf)                                           11 pages

So using page count alone, Exchange is only 50% more complex than Direct, for all the more functionality of Exchange over Direct. At this rate, I wonder why we would want to use Direct over FAX, FAX doesnâ€™t require any healthcare documentation. Or pony-express, very simple just a man and his horse. Or better yet, smoke signals.

**Reality**
Yes you caught meâ€¦ I didnâ€™t include the page counts of the IHE specifications, OASIS specifications, W3C specifications, or IETF specifications that they both reference.  It is clear page count is a hard thing to figure out. I would argue too that complexity is also a hard thing to figure out. The only reason why e-mail seems easy today is because the last 20 years have worked out the kinks. In the 80s wrote an SMTP system for DOS, it ran as a TSR. That was not easy to do, but I will admit that anything that could run as a DOS TSR must be pretty simple. Well it didnâ€™t support all the protocols we include today in the simple term â€˜e-mailâ€™, and didnâ€™t support S/MIME at all.

 There is far more similarity in technology between the two. Where Direct uses MIME, this is very similar to the Exchange use of SOAP carrying multiple parts. One can easily argue that the Direct use of S/MIME to secure the communications is far harder than mutually-authenticated-TLS; yet both rely on X.509 Digital Certificates to prove identity and authentication. I would actually argue that none of this matter at all as these are off-the-shelf libraries that are not specific to healthcare. Even in the healthcare space:  Where Direct includes XDM and XDR, Exchange uses XCA and XDR. Much of the complexity of XD* shows up in both, just different modes.

In both cases there are Open-Source reference implementations. Actually for Direct there is only ONE that I know of, whereas Exchange has 2 or more (NIST, Open Health Tools). See: [http://wiki.ihe.net/index.php?title=Implementation](http://wiki.ihe.net/index.php?title=Implementation)

**complex or needed**So, yes the NwHIN-Exchange specifications are harder, significantly harder. They are more complex because they are trying to achieve more than simple push. This is not in any way to say that Direct isnâ€™t what it should be, it was designed to be a simple push replacement for FAX.  What angers me is that blanket arguments of complexity are being used to indicate that Exchange is bad.

The [NwHIN-Exchange provides in addition to what Direct](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html) can do:

- Service Endpoint Configuration Discovery

- Patient Identity discovery

- Patient data location discovery

- Patient data query, when the data is needed

- Pull of documents, when the data is needed

- Security model that supports federated identity and layers

- Privacy model that supports confidentiality classifications and consents

- Metadata that is queryable, yet independent of the document format

- type of document (clinical type, format type, mime type)

- provenance (author, role, specialty, institution, type)

- the patient identity

- tags the privacy/security classification

- integrity protection independent of transport

- relationships between documents (predecessor, successor, signs, transform, amendment, etc)

- date ranges of the healthcare information

- Support for Digital Signatures

- Platform for multi-organizational workflows

- Deployment models for XDS or other HIE architecture

I likely overstated Exchange, but not by much. And my overstatement is far less than the negativity promulgated by those that do nothing but spread Fear, Uncertainty, and Doubt. I am very glad to help anyone understand, [go ahead and ask me a question](http://healthcaresecprivacy.blogspot.com/p/ask-me-question.html).


The complexity is really needed. In order to support the above capabilities we need to define a [Metadata model](http://healthcaresecprivacy.blogspot.com/2011/08/metadata-got-questions-here-is-my.html) that is comprehensive enough without being tied to a specific document type, or being overly descriptive of the healthcare condition. This is a difficult tradeoff but I think XDS* got it right, and have it defined in a way that local policy can choose to be expressive or conservative. In the absence of a National Patient ID, we are forced to do all kinds of tricks to discover where a patient's data might be in a way that doesn't expose that patient unnecessary and has enough controls to allow a really high quality match. See: [NwHIN-Exchange use of XCPD](http://healthcaresecprivacy.blogspot.com/2012/03/nwhin-exchange-use-of-xcpd-for-patient.html). In order to support a privacy and security model that can handle patient consent, yet also handle the fact that this exchange is between competing healthcare organizations, IHE called upon the [power of SOAP, SAML, and TLS](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html). Yes these are not a simple as REST, OpenID, and HTTPS; but the additional capabilities are [needed in the backbone](http://healthcaresecprivacy.blogspot.com/2012/03/policy-enforcing-xds-registry.html). This is not inconsistent with [mHealth](http://healthcaresecprivacy.blogspot.com/2011/09/securing-mhealth-role-of-ihe-profiles.html)use of REST, OpenID, and HTTPS. There are more...

I am involved in S&I Framework â€“ Data Segmentation for Privacy workgroup. This is not a simple topic, but it is made simple by the fact that IHE considered these use-cases when making that â€˜complexâ€™ XDS profile. The thing is that IHE didnâ€™t even consider these things complex, they were very clearly needed given the use-case needs that were brought before us. This long term, yet realistic term, view has paid off. The XD* profiles could have been far more complex. Take a look at all that is in [the OASIS ebXML Registry specification](http://www.oasis-open.org/committees/tc_home.php?wg_abbrev=regrep#technical), really great stuff that we simply donâ€™t needâ€¦ yet.

**Conclusion**

Getting to some goal requires stepping stones. I do think that Direct is an appropriate stepping stone, I think the next one is XDS for regional exchanges, XCA for federation of regional exchanges. Eventually we might get to the attribute level exchanges defined in the PCAST report.

**References**

- [What is the benefit of an HIE](http://healthcaresecprivacy.blogspot.com/2012/03/what-is-benefit-of-hie.html)

- [HIE using IHE](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html)

- [One Metadata Model - Many Deployment Architectures](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html)

- [Critical aspects of Documents vs Messages or Elements](http://healthcaresecprivacy.blogspot.com/2011/10/critical-aspects-of-documents-vs.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- [Document Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html)

- [XDS/XCA testing of Vocabulary Enforcement](http://healthcaresecprivacy.blogspot.com/2011/11/xdsxca-testing-of-vocabulary.html)

- [Where in the World is CDA and XDS?](http://tinyurl.com/wwxds)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [HIE/HIO Governance, Policies, and Consents](http://healthcaresecprivacy.blogspot.com/2012/01/hiehio-governance-policies-and-consents.html)

- [Patient Identity Matching](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html)

- [The Basics of Cross-Community Patient Discovery (XCPD)](http://healthcaresecprivacy.blogspot.com/2012/03/basics-of-cross-community-patient.html)

- [NwHIN-Exchange use of XCPD for Patient Discovery](http://healthcaresecprivacy.blogspot.com/2012/03/nwhin-exchange-use-of-xcpd-for-patient.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [Healthcare use of Identity Federation](http://healthcaresecprivacy.blogspot.com/2010/07/healthcare-use-of-identity-federation.html)

- [Federated ID is not a universal ID](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

