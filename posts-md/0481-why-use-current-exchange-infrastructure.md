# Why use current Exchange infrastructure rather than starting over?

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/03/why-use-current-exchange-infrastructure.html
Published: 2021-03-03T16:20:00Z
Updated: 2021-03-03T16:20:04.328Z
Author: John Moehrke

---

I proposed an [agile approach to improving Healthcare Information Exchange.](https://healthcaresecprivacy.blogspot.com/2021/02/agile-improvements-toward-fhir.html) Why should we keep the current? I covered this mostly with simply "that it is functioning", but did not enumerate why this is such a big deal. Many will say that http RESTful is functioning on a global basis with Google, Facebook, LinkedIn, Wiki, and Blogs. This is true, but these are all monolithic servers. Healthcare is a mass of 10 thousand organizations all with different systems. So Healthcare is special. This does not diminish the benefits of http REST, just points out that Healthcare is building on-top of an important concept, but that important concept has not addressed many of the things that Healthcare has needed to to give us the Nationwide Health Exchanges that we have.https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhSuIJYXvmPsKI0A84omiqHqlO0Ipmjxa_ml4fR4pjLghRKZLoZZYkmnlLlygYDG_Bg3AdGjC-iO1jtlaTKP4uWO2vFPmWAvKDVwIsYhpgGuw73hbnXuU1PZSXw7GRVbZAVLzg8XnbETX-s/s960/HIE_Graphics_6May11.png
The following already exists and is functioning nation wide today. These should be leveraged going forward, not ignored and re-invented.

- Federated infrastructure

- technology,
- domain name,
- directory of endpoints

- Trust agreements

- legal policy language
- evaluation of language,
- implementation in access rules
- policy bridging

- Trust infrastructure technologies

- Certificate Authorities
- Revocation system
- Proven change of CA methods

- Identity of organizations

- Directory, and
- TLS connection authentication
- SAML assertion mechanism

- Identity of initiating user

- Directory, and
- SAML assertion mechanism

- Purpose of use

- vocabulary,
- mapping to policy, and
- SAML assertion mechanism

- Provenance

- Home Community ID
- Registry/Repository IDs
- SubmissionSet, DocumentEntry, and Folders - Metadata
- CDA Content specifications

- Patient identity discovery and management

- XCPD mechanism,
- policy on minimal elements,
- acceptance criteria for cross-reference match

- Patient Privacy Consent and Authorization

- normal treatment use,
- point-of-care-Consent,
- access authorizations

- Notification of patient movements

- XCPD, or
- PIX feed

- Data content agnostic

- supports historic data that might only be available as scanned document
- supports CDA, CCD, C-CDA,
- supports FHIR
- supports HL7 v2 like lab results
- supports Imaging like DICOM, XDS-I, and other image formats
- supports text formats like BlueButton
- supports non standard such as coma-separated-values (CSV)
- supports future standards

- Timeframe of service

- document metadata, and
- query parameters

- Data integrity and signatures

- hash/size,
- transport (TLS),
- Document Digital Signatures

- Static and dynamic data

- Static,
- On-Demand, and
- Delayed-Assembly

- Audit logging and remediation

- ATNA,
- log characteristics,
- policy for incident investigation

- Proven system for Emergency response

- Edge system that can be deployed to natural disasters such has been seen in CA and TX

- ValueSets and Vocabulary agreed to by the community

- types of documents
- types of locations

- Various Participating Organizations

- Major Vendors
- Treatment Organizations
- Regional HIE
- Payer Organizations
- CMS
- Research

- IHE-Connectathon - mature testing for the Document Sharing exchange

- test tool based testing
- peer-to-peer testing
- formal test plans/procedures
- formal test results tracking

- Standards deployed and in use globally

- existing networks globally communicate likely close to a billion documents each month
- Not just a USA effort
- maturity benefits everyone

Are all of these perfect? No, but the infrastructure includes them, meaning they are ready to be used, rather than some future hope.

Does that mean we don't move to nationwide http RESTful FHIR? No, we will get there. I expect, as I have said before, that the green-fields will/should use http RESTful FHIR. But this should not be a default choice, this choice should be based on evaluating the "best" solution.

My main concern is that we are trying to apply http RESTful FHIR to the hardest problem (Treatment, Payment, and Operations) when we already have a solution there.  The use of http RESTful FHIR at the edges or point-to-point make good sense. But it is not logical to start with federated access to 10,000 organizations, while those organizations already have a network-of-networks.

I don't explain these in this article, but you likely will find that I have explained them in my other articles and the [HIE-Whitepaper](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html). That said, I am happy to have my comments challenged, or reinforced. So comments welcome.

