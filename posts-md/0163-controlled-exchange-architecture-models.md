# Controlled Exchange Architecture Models for Scale on #FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/10/controlled-exchange-architecture-models.html
Published: 2019-10-24T22:12:00.002Z
Updated: 2019-10-24T22:12:14.958Z
Author: John Moehrke

---

In the [previous article I discuss the various Modes of Patient Centric Exchange models](https://healthcaresecprivacy.blogspot.com/2019/10/nationwide-health-information-exchange.html). I cover Mediated Exchange, Directed Exchange, and Negotiated Exchange. These are all good solutions for scaling, but fail when the patient doesn't actively get engaged. When [a patient wants to actively get engaged they MUST be given their damn data](https://www.epatientdave.com/2012/08/27/gimme-my-dam-data-the-story-the-video-the-next-speech/).

Reminder that I am discussing how to scale Patient Centric Exchanges given the following challenges:

- How do I find all the data holders for a given Patient?

- How do I prove I am secure and trustworthy?

- How do I get data and assure it is authentic?

There are more challenges, but this article is long enough with these big three.

**Controlled Exchange** --
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhnxang6tObmIJ_WMEyPx_XLOB7QWsz7Qlfypv57FzcYh9RjAP4ONAX6efaaPmPfjbI3qiOnolbt3dfra4nGPihPM1x6Z5zciBWN3le-l_nSI088ytrNK7aC50yjaGMuFHN76G1U-cTowDY/s1600/Controlled+Exchange.png

where the Patient does not get directly involved in the communication, but should be understanding of the communication and possibly have control. over that communication ---- Like using Health Exchange between Provider organizations

(See the [previous article for Mediated, Directed, and Negotiated](https://healthcaresecprivacy.blogspot.com/2019/10/nationwide-health-information-exchange.html))

Controlled Exchange can scale for both those patients that are active participants and for those that simply want the system to work without them doing anything. BUT, Controlled Exchange scaling requires architecture.

The Controlled Exchange is the dominant model preference by Clinicians, Payers, Population Health, and Data Analytics organizations. As it enables access to data without the Patient being an active participant. These exchanges often have regulated exceptions to Patient Control. They tend to be the preference of these organizations with excuses like the need to have full-fidelity of the data to enable patient and clinician safety, to enable access when the patient is not conscious, and to protect the population at large. This model is the only one that 'could' support a "[Break-Glass](https://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir-solution.html)" function. This is often seen as paternalistic, but can also be seen as anti-Privacy.

**Quality: **In the Controlled Exchange there is some governance. This governance might be strong (Central), moderate (Federated) . So there is no guarantee that these are perfect quality.

**Authenticity**: In the Controlled Exchange there is end-to-end path of the data, so authenticity can be discovered. It is not strong in some cases, but there is a much more distinct action where authenticity is found to be failed. Digital-Signatures might be more likely to succeed in a Controlled Exchange.

Controlled Exchange Architecture Models for Scale
Within Controlled Exchange there are multiple Architectures available. The overall models between XD* and FHIR are the same. There are two basic architectures: Centralized Administration vs Federated Administrative.

- **Centralized Administration** - there is a single central authority for a trust domain, organizations, patient identity, and data quality rules. -- Examples: XDS

- **Federated Administration -  **there is a directory of participating organizations and there is _management_ of the trust domain; less control of data quality. -- Examples: XCA

- **Centralized data** - there is a single database that everyone uses for all storage and access. I don't see this as legitimate as it would require far too many policy and regulation changes; and it would not really solve enough problems for this overhead.

- **Decentralized **- this is actually a Negotiated, or Directed exchange model; as the patient must point at where their data are.

Centralized Administration

In XDS

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhSuIJYXvmPsKI0A84omiqHqlO0Ipmjxa_ml4fR4pjLghRKZLoZZYkmnlLlygYDG_Bg3AdGjC-iO1jtlaTKP4uWO2vFPmWAvKDVwIsYhpgGuw73hbnXuU1PZSXw7GRVbZAVLzg8XnbETX-s/s1600/HIE_Graphics_6May11.png

This architecture is long standing Document Sharing Health Information Exchange based around PIX and XDS. Participating organizations would provide Patient Identity information to a central Patient Identity Manager, and publish document metadata to a centralized Document Registry.  Thus enabling discovery of cross-referenced patient identity, and discovery of documents related to that patient.

- PIX:

- use of patient identity feed of demographics and identifiers on all patient registration events to a central authority who correlates patients into a cross-reference and assigns a centrally managed patient ID (Affinity Domain ID)

- minimally: their local patient identifier, and national identifier

- optionally: patient demographics (quality criteria)

- query given local patient identity to get central authority identifier (Affinity Domain ID)

- optionally a query on demographics (PDQ)

- ATNA + XUA:

- Certificate Authority (CA) manages certificate trusts: TLS and SAML

- point-to-point mutually-authenticated and encrypted connections (one or more certificate authorities)

- audit log is managed for all transactions and other security/privacy relevant events

- transactions carry assertion of requesting organization, user, and purposeOfUse

- assertions signed by a federation of assertion providers (one or more authorities)

- XDS:

- One central Registry

- query given the central authority patient identifier (Affinity Domain ID)

- results indicate data holding organization and location of the data (repository)

- on publication of new data, Registry enforces a set metadata and document formats:

- Metadata Handbook and selection of CDA or FHIR document profiles

- metadata is all that can be queried upon, and is all that is centralized

- Repository holds the documents. May be one central Repository, or many distributed at the data source organizations

- CDA or FHIR documents (see mXDE)

Note: participants are usually manually configured into PIX and XDS Registry authority, This is usually done as the quality of the edge systems usually need to be strongly confirmed. Usually less than 100 endpoints to manage per Affinity Domain. A directory could be used like HPD or CSD.

detailed webSequence Diagram [available](https://www.websequencediagrams.com/cgi-bin/cdraw?lz=dGl0bGUgWERTIENvbnRyb2xsZWQgRXhjaGFuZ2UKCnBhcnRpY2lwYW50IFNvdXJjZQAGDVBhdGllbnQAGg1NUEkAKg1DQQA5DURpcmVjdG9yeQBPDUF1ZGl0IFJlcG8AZg1SZWdpc3QAHQ9SZWNpcAByBQpub3RlIG92ZXIgQ0EgCkFsbCAoQVROQSkgc3lzdGVtIAphbmQgb3JnIGlkZW50aXRpZXMKY2hhaW5lZCBoZXJlLgAuBlhVQSkgYXNzZXJ0aW9ucwpzaWduZWQgYnkANwVJRCAAJg9lbmQgbm90ZQB1DACBTgpBbGwAdwllbmRwb2ludHMgYXJlIApwdWJsaXNoAHcHADMVAIF_CwBEBWVjdXJpdHkAgUUFcHJpdmFjeQpldmUASglsb2dnAD4Sb3AAgxQJAIF0CHkgKFBJWCBmZWVkKQoAgzIHLT4Ag08GOiB2aXNpdHMgcwCDXgYAg2UGLT5NUEk6IHVwZGF0ZQBGCUkASAcKTVBJABsHY3Jvc3MtcmVmZXJlbmNlIHRvIEFmZmluaXR5IFBJRAAkBgCDRAgASAkAFg1lbmQAgTAGAIIcByBuZXcgZG9jdW1lbnQgKFhEUyByAIQIBWVyKQCBEQ5kaXNjAII0BgBnDACBOggAbAoAUQhOZXcgRABRCEVudHJ5AHMKAEMJcACCNQcoUElYKSBhbmQgZGF0YQCBAwUAgjILAIUBCQCCMBAAhRoJAIIlHgCDBgwAgiQqAE0QAIFsFQCDZwZxdWVyeSkAgQMMKwCCfQoAgjEIeQCCAAYocykAgmIGACwJAIZ2Bi0-LQCBXQtoZXJlAIVHBQAsCABQDQCERghBc2sgZm9yAIIrCiByZXRyaWV2ZQCDMworAIg2BzogaXMgdGhpcwCHTwogYXV0aG9yaXplZABCBQAZBWRhdGE_AIdsBnJpZ2h0IG9mAIh3CWxpa2VseSBpbnRlbmFsIHRvAIklCGNvdWxkIGJlIEJQUEMvQVBQQwCHMwoAhXsJLQCFfQh5ZXMAhXIJAIFpDEgAgW0IZGF0YQCFJQYAiHAKAIkFCgCBNgptAIEcBW1ha2UKdGhlAIU-Cm1vcmUKYWNjZXNzaWJsZSBsaWtlIAp0aHJvdWdoIG1YREUvUUVEbQCIWAkgCgo&s=rose)

In FHIR

Following the architecture similar to XDS, one would have a central Patient Identity management function represented by the PRIM profile, and a centralized Document Metadata Registry. There is a project underway in IHE to develop a centralized Document Metadata Registry. Same diagram would work.

- PRIM + mCSD

- See this article on [Patient Identity Management using FHIR](https://healthcaresecprivacy.blogspot.com/2019/05/record-location-on-fhir-aka-patient.html)

- all organizations feed Patient updates upon registration to a central authority.

- minimally their patient identifier, national identifier, and managing organization

- usually also includes some set of demographics (quality criteria)

- central authority manages a master patient identity (like Affinity Domain ID)

- query given local patient id to get master patient identity (PIXm)

- optionally a query on demographics (PDQm)

- master patient identity includes managing organization

- ATNA + IUA

- With REST the TLS tends to be just server side, but does still cover authenticity of the server to assure one is going to the destination they wanted to go to, encryption of all traffic, and integrity validation of that traffic.

- Audit Logging can be done using the ATNA method now supported with FHIR AuditEvent

- alternative is logs are kept locally and one can as needed uset the ATNA method now supported to do queries against FHIR AuditEvent

- Client authenticity is the struggle

- If we assume that for every organization within the domain, that they have a client_id and thus client_secret for all outbound requests

- User at a Client is even harder

- cascading of OAuth would be very combersome

- When Source or Recipient is communicating to Registry

- IUA model (unlike SMART) presumes that the requesting actor knows to preemptively get a token from the authority recognized by the Registry. This is similar model to XUA. Thus the requesting actor would take the local knowledge of the user and organization, and send that to the OAuth authority

- One model has this initiated by way of a SAML token

- get OAuth (IUA) token from Registry defined OAuth authority

- that OAuth authority reflects OpenID-Connect back to requesting organization

- not clear how trust is built between all these

- When Recipient is communicating to Source

- get OAuth (IUA) token from Source defined OAuth authority

- not clear how the source cascades to somewhere trustworhy. This is likely some centrally managed OAuth authority that cascades to

-

- MHD or QEDm (or mXDE)

- for each FHIR endpoint with MHD support or QEDm support

I tried to figure out how the SMART model would work, and fail as it seems to require a known identity at each endpoint. This identity might just be an account associated with an identity, but there seems to need to be an identity established. I am not sure how that scales. The OpenID-Connect mechanism leads us to the ability for it to scale, but seems to create a local account for every new identity. This certainly could be done, but is it really needed given that the request is coming from a remotely approved identity that may never re-connect. Might the client identity be only organizations, and no users?

detailed webSequence Diagram [available](https://www.websequencediagrams.com/cgi-bin/cdraw?lz=dGl0bGUgRkhJUiBNSEQgQ29udHJvbGxlZCBFeGNoYW5nZSAoMTAwJQAeBSkKCnBhcnRpY2lwYW50IFNvdXJjZQAGDVBhdGllbnQAGg1NUEkAKg1DQQA5DURpcmVjdG9yeQBPDUF1ZGl0IFJlcG8AZg1SZWdpc3QAHQ9SZWNpcAByBQpub3RlIG92ZXIgQ0EgCkFsbCAoQVROQSkgc3lzdGVtIAphbmQgb3JnIGlkZW50aXRpZXMKY2hhaW5lZCBoZXJlLgo_Pz8KZW5kIG5vdGUARAwAgR0KT25seQCBAAkgYW5kIAoAgSQKIAplbmRwb2ludHMgbmVlZCAKcHVibGlzaABaBwBHGQCBZgtBbGwgc2VjdXJpdHkAgSwFcHJpdmFjeQpldmVudHMgYXJlIApsb2dnAEwIAIEmCm9wAIJ7CQCBWwh5IChQUklNIGZlZWQpCgCDGgctPgCDNwY6IHZpc2l0cyBzAINGBgCDTQYtPk1QSTogdXBkYXRlAEcJSQBJBwpNUEkAGwdjcm9zcy1yZWZlcmVuY2UgdG8gR29sZGVuIFBJRAAiBgCDKggARgkAFgtlbmQAgS0GAIIdByBuZXcgZG9jdW1lbnQgKE1IRCkAgQQOZGlzYwCDWQUAXAogKFBJWG0pAIN0BnJpZ2h0IG9mAIUTCGtlZXAARwphAIUqCWkuZS4AhWsFUHJvdmlkZQCDQQUAhFYGZXIgd2l0aCBubyBCaW5hcnksIApidXQgLmF0dGFjaG1lbnQudXJsIHRvAIV5ByBzZXJ2aWMAgnwKIACCPQkAgXIKAIFZCE5ldyBEAIFZCFIAgi8JKE1IRCBwAIEGBikAgg0KAIFmCXAAg0wHAIFmBgCEbwVkYXRhAIIcBwCDSwkAhgAJAINOCXIAhhIJAIYcCQCDPx4AhCANAINBKABMEACDDhkgcXVlcnkpAIEBDCsAhBcKAINWCHkgRW50cnkocykAghMGACwJAId2Bi0-LQCBXgtoZXJlAIYNBQAsCABQDQCFXghBc2sgZm9yAIIsCiByZXRyaWV2ZQCEWAorAIk2BzogaXMgdGhpcwCITwogYXV0aG9yaXplZABCBQAZBWRhdGE_AIRpDwCJeAhsaWtlbHkgaW50ZW5hAIQiCwpjb3VsZCBiAIpsB0NvbnNlbnQgCm9yIEhFQVJUAIhxCgCHIAktAIciCHllcwCHFwkAgXYMSACBeghkYXRhAIZOBgCJfQoAihIKAIFDCm0AhiEFbWFrZQp0aGUAhmcKbW9yZQphY2Nlc3NpYmxlIGxpa2UgCnRocm91Z2ggbVhERS9RRURtAIVeCwo&s=rose)

CommonWell variant for multiple Communities

I'm including this as I know of this architecture, but I am not an expert.

CommonWell has centralized administration, they support this for a set of XCA communities. XCA protocol is designed to be a federation protocol, but CommonWell has implemented central administrative services. This is my understanding of the CommonWell RLS, which I understand acts like a PIX manager for many communities, and where XCA queries are initiated as if one is looking for their own patient Identity and the infrastructure uses the RLS to fan-out the queries to everyone they know about. Please correct me if I am wrong.

- PIX

- feed to create cross-reference. (yes, HL7 v2 ADT feed, which has the advantage of informing them of activity at a organization/community even if no data are created)

- recipients don't need to lookup patient identity, they will just use the one they know

- ATNA + XUA

- i don't think they support audit log repository

- XCA

- XCA query is done given the local patient identity

- infrastructure uses the RLS to fan-out queries to all communities/organizations they know

- results are returned

_Might there be a similar model for FHIR? The difference from above is that the query for data would go to one intermediary that would fan-out the query to many source services and combine the results. _

Federation

In XCA --

- CSD + XCPD: directory of participating organizations in the federation and their endpoints

- ATNA + XUA (alternative end-to-end web-services security and AS4)

- XCA

These get progressively more difficult to diagram without oversimplification

In FHIR - Federated

- mCSD + (PIXm | PDQm)

- master directory of all possible endpoints where data might exist

- query each endpoint for patient records

- hopefully there is a national patient ID to give deterministic positive results with very low false-positive and very low false-negative

- for each Patient returned

- given the Patient.managingOrganization lookup

- PRIM + mCSD

- See this article on [Patient Identity Management using FHIR](https://healthcaresecprivacy.blogspot.com/2019/05/record-location-on-fhir-aka-patient.html)

- all organizations feed Patient updates upon registration to a central authority.

- minimally their patient identifier, national identifier, and managing organization

- usually also includes some set of demographics (quality criteria)

- central authority manages a master patient identity (like Affinity Domain ID)

- query given local patient id to get master patient identity (PIXm)

- optionally a query on demographics (PDQm)

- master patient identity includes managing organization

- ATNA + IUA (or SMART)

- at each Patient found

- Patient.managingOrganization points at an Organization

- Organization.endpoint will point at a set of endpoints

- for Endpoint.status == active

- Endpoint.connectionType == hl7-fhir-rest

- get endpont's CapabilityStatement

- and confirm support for (3) queries desired

- and confirm support for security model desired

- look at this endpoint for OAuth authority

- use OAuth to get authorization token

- likely cascaded to your organization

- MHD or QEDm (or mXDE)

- for each FHIR endpoint with MHD support or QEDm support

detailed webSequence Diagram [available](https://www.websequencediagrams.com/cgi-bin/cdraw?lz=dGl0bGUgRkhJUiBNSEQgQ29udHJvbGxlZCBFeGNoYW5nZSAoMTAwJQAeBSkKCnBhcnRpY2lwYW50IFNvdXJjZQAGDVBhdGllbnQAGg1NUEkAKg1DQQA5DURpcmVjdG9yeQBPDUF1ZGl0IFJlcG8AZg1SZWdpc3QAHQ9SZWNpcAByBQpub3RlIG92ZXIgQ0EgCkFsbCAoQVROQSkgc3lzdGVtIAphbmQgb3JnIGlkZW50aXRpZXMKY2hhaW5lZCBoZXJlLgo_Pz8KZW5kIG5vdGUARAwAgR0KT25seQCBAAkgYW5kIAoAgSQKIAplbmRwb2ludHMgbmVlZCAKcHVibGlzaABaBwBHGQCBZgtBbGwgc2VjdXJpdHkAgSwFcHJpdmFjeQpldmVudHMgYXJlIApsb2dnAEwIAIEmCm9wAIJ7CQCBWwh5IChQUklNIGZlZWQpCgCDGgctPgCDNwY6IHZpc2l0cyBzAINGBgCDTQYtPk1QSTogdXBkYXRlAEcJSQBJBwpNUEkAGwdjcm9zcy1yZWZlcmVuY2UgdG8gR29sZGVuIFBJRAAiBgCDKggARgkAFgtlbmQAgS0GAIIdByBuZXcgZG9jdW1lbnQgKE1IRCkAgQQOZGlzYwCDWQUAXAogKFBJWG0pAIN0BnJpZ2h0IG9mAIUTCGtlZXAARwphAIUqCWkuZS4AhWsFUHJvdmlkZQCDQQUAhFYGZXIgd2l0aCBubyBCaW5hcnksIApidXQgLmF0dGFjaG1lbnQudXJsIHRvAIV5ByBzZXJ2aWMAgnwKIACCPQkAgXIKAIFZCE5ldyBEAIFZCFIAgi8JKE1IRCBwAIEGBikAgg0KAIFmCXAAg0wHAIFmBgCEbwVkYXRhAIIcBwCDSwkAhgAJAINOCXIAhhIJAIYcCQCDPx4AhCANAINBKABMEACDDhkgcXVlcnkpAIEBDCsAhBcKAINWCHkgRW50cnkocykAghMGACwJAId2Bi0-LQCBXgtoZXJlAIYNBQAsCABQDQCFXghBc2sgZm9yAIIsCiByZXRyaWV2ZQCEWAorAIk2BzogaXMgdGhpcwCITwogYXV0aG9yaXplZABCBQAZBWRhdGE_AIRpDwCJeAhsaWtlbHkgaW50ZW5hAIQiCwpjb3VsZCBiAIpsB0NvbnNlbnQgCm9yIEhFQVJUAIhxCgCHIAktAIciCHllcwCHFwkAgXYMSACBeghkYXRhAIZOBgCJfQoAihIKAIFDCm0AhiEFbWFrZQp0aGUAhmcKbW9yZQphY2Nlc3NpYmxlIGxpa2UgCnRocm91Z2ggbVhERS9RRURtAIVeCwo&s=rose)

In FHIR - Decentralized Federation -- BlockChain Negotiation

Imagine a decentralized model such as would be used for the Negotiated Exchange. Where the Patient gets the choice of which service to put their data. The Patient thus manages who has access to their data.

The difference from purely Negotiated Exchange is that the patient publishes the location(s) of their data into a decentralized service. Such as a blockchain ledger.  The Patient relationship with a data source or recipient (Clinician, Payer, or Researcher) is bounded by assertions on the blockchain. Thus the Patient is not discoverable unless the Patient chooses to be found, and then a blockchain contract with terms of the relationship can bind a source/recipient access to the data.

I thus don't see this one as really a Federation, but put it here for completeness sake.

Conclusion

The one thing that gets in the way of scale, is client side user identity. I think there would need to be a trust domain, so as to enable this trust without replication of user accounts that have no added value.

