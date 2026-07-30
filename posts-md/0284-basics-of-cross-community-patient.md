# The Basics of Cross-Community Patient Discovery (XCPD)

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/basics-of-cross-community-patient.html
Published: 2012-03-21T18:10:00.006Z
Updated: 2012-03-22T21:00:36.682Z
Author: John Moehrke

---

_Guest blog by Karen Witting, co-chair of the IHE ITI Planning Committee and prime on the XCPD profile_

[Cross-Community Patient Discovery (XCPD)](http://wiki.ihe.net/index.php?title=XCPD) is an IHE profile which is designed to support a wide variety of policy environments.  All IHE profiles strive to be as policy neutral as possible in order to support world-wide use cases.  But during the development of XCPD there were found to be a particularly large number of overlapping policy issues that the enabling of a wide variety of policies results in a complex and confusing profile.  This article spells out some of the most significant policy environments effecting XCPD and how XCPD addresses the most common ones.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj3QbE5Ei4y5IRAYZ0_mKGXxHTlO34KIVGfU6Qo98d_1vSQ0NsZDwG2yDPV7XZ7ncm6SD8amsJcypDG7_Gwb1swcX1iQLyuPXdiPfuOagFyEA64lwuvKbiFvwXNQgVlkKllOWtgafiRzcMc/s1600/IHE-Patient-Identity-Mgmt-Overview-v014-742306.png

See previous blog article: [Patient Identity Matching](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html). IHE has a set of profiles all focused on Patient Identity Matching. Each has their focus. There is also recorded [webcasts available for replaying, and presentations available for download.](http://wiki.ihe.net/index.php?title=Current_Published_ITI_Educational_Materials)

**
**

**
**

**
**

**To Centralize or not:**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhpzqbtPqD5ih3V-v7SE06-a2sCNsRbSXGJoHSwXqunWPdYBFBTAaYT9QUvT9_u7hRv-60liLQM4AzhJrfzVB_qTmK6FZ3WXvkddwFB9qSmc9VenQRNHJSWtJTOpH1pWXzFDy6UHfNIJF-9/s1600/20061126-712992.pngTo start, XCPD assumes that the implementation of a centralized source of patient demographics, identifiers or record locations is unacceptable.  This is a fundamental assumption because if a centralized source of these types of information is acceptable there are many more effective means of solving the problems XCPD solves.  For instance, if all demographics can be sent as feed transactions to a central patient matching engine, like a PIX Manager, then a PIX or PDQ Query is much more effective at finding patient identifiers and correlating patients than any deployment of XCPD.  In fact, XCPD was created only because there were countries which felt that collecting demographics for all the patients in a country or region into one system would be dangerous.  So XCPD is only appropriate when it is used to link communities that are not closely tied and have only limited governance, in particular, are not willing to feed all patient demographics to a single, central server, or even a small number of duplicated central servers.

**To Federate or not:**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgZDmFXhpVvkSPqfcENx3WVQs6BNSd6H5qPoH1IV15SfDWbBNRwXxkrjgjuz_VlTb4v5teK8YP1wl_VWzgkImwE4ZqYvcOtw3QKkOubIMsZ5qebALchjEkJBeIeUC8INhAxmCyWMMSaFqwa/s1600/IHE-Cross-Community_2011-09-15-735949.png

So, in environments where there is no centralized source of patient matching or patient record location, the only way to find things is to â€œask aroundâ€.  Many people have pointed out that this is inefficient and will not scale.  That it is inefficient is self-evident and so those who can store the necessary content in a centralized service should do so.  Whether XCPD will scale depends wholly on the degree to which a balance can be achieved between some regional centralization and federation between regions.  A federated hierarchical environment is necessary, where local things are centralized locally and a reasonable number of peer-to-peer interactions are used to span across local regions.

The challenges are: what is a â€œreasonable numberâ€ and how do we encourage centralized approaches in every place where it makes sense.  XCPD does not design the architecture; that is for organizations, nations, and regions to do.  XCPD, plus many other IHE profiles and healthcare standards, can work together to allow interoperable participation in whatever the architecture turns out to be.

Once we have agreed that a wholly centralized source of patient matching is not acceptable â€“ due to policy or security/privacy concerns or others â€“ application of XCPD can begin.

**Flexible Requirements:**

XCPD is written to be flexible in its requirements.   During the development of XCPD organizations throughout the world expressed requirements to the IHE team and these requirements were designed in as optional behavior.  For instance:

- We want to use a national patient identifier instead of demographics.

- We want to only pull data, never support other peer networks to pull data from us.

- We want to restrict the demographics shared in a query/response due to privacy concerns.

- We want to restrict the number of matching responses due to privacy concerns.

- We want to collect patient record locations for selected patients and make that list available for other communities in order to enable efficient searching for the patients we select.

- We want to return multiple potential matches so that a local decision can be made for patient safety reasons.

- We want to avoid returning multiple potential matches due to privacy concerns but would like to request additional demographics to aid in disambiguation.

- We need to provide a cache value for matched patient matches to allow for refresh of that information.

- We need to revoke prior matched patient due to policy, consent or demographic changes.

- We need asynchronous behavior.

- We want to have enough security and privacy context to make an access control decision that respects the patient consent directives

These, and other, requirements resulted in several modes of behavior and options within XCPD which can be very confusing for those who want to do something simple.   For instance, XCPD supports a â€œmaybeâ€ response which suggests that there might be a match but more demographic data is needed in order to be sufficiently assured of the validity of the match.  A subsequent query could then be used specifying â€œmoreâ€ demographics as requested.  While not required, this feature complicates the interaction by implying potential follow-on behavior.

Because of all this optional behavior, XCPD cannot be effectively implemented out of the box.  An organization must first understand the environment in which it will be deployed, the balance of risks organizations are willing to accept (e.g. false negative/false positive criteria), and how the mitigations necessary for unacceptable risks should be applied to the optional behavior of XCPD.

**Modes of Operation: **

There are a few modes of operation of XCPD to allow for different types of typical interactions:

- Demographic Query and Feed mode: This is the base mode and allows the initiator to both feed knowledge or a local patient as well as query for a match at the responder site.  This mode allows both sides of the transaction to learn about matching patients.

- Demographic Query only mode: Here we see a simple demographic query, asking only for the responder to provide a match to a local patient.  This mode does not allow responder to know about a match with the initiatorâ€™s patient.  This satisfies the requirement for nodes that will not support other peer network pull requests.

- Shared/national Patient Identifier Query and Feed: This mode includes in the query only identifiers, no demographic data is shared.

As you can see, these modes are broad categories of interaction that themselves have fine grained behaviors that significantly affect the risks and results of the transaction.  How many matching records are returned, what â€œlevelâ€ of match is required, what demographic data is required/optional/required if available;  XCPD does not answer these questions but enables interoperable implementation conformant with the needs.

**XCPD asynchronous behavior: **

The XCPD Patient Discovery transaction, the base transaction discussed here, supports three interaction modes each of which satisfies a different interaction environment.  The chapter references given are within the XCPD supplement.






**Description**


**Target environment**




**Normal (synchronous) **


the SOAP request and response are carried in one TCP/IP connection


Response is expected in very short timeframe, e.g. less than 60
  seconds




**Asynchronous**


where the WS-Addressing support for â€œreplyToâ€ is used to return the
  response through a separate TCP/IP connection


Response is expected in short timeframe, e.g. less than 60 minutes




**Deferred**


where the request is decoupled from the reply so each are a separate
  SOAP interaction (Section 3.55.6.2)


Response is expected to have lengthy delay, e.g. more than 60 minutes



The example timeframes in this table are not prescriptive but only illustrations of the different ranges that these modes might apply to.  The specific timeframes depend on detailed technical issues like socket timeout, application up-times and retry behavior.

**XCPD as a Record Locator Service (RLS): **

A challenging requirement addressed by XCPD is the ability to use XCPD as a form of Record Locator Service.  There are several capabilities built into XCPD which enable this functionality.  But, as with everything else in XCPD, the architecture for doing this is not spelled out by XCPD since a variety of architectures may be desired.  Instead there are hooks within XCPD which enable the capability to be designed.  The particular capabilities for enabling this functionality are:

- Carry senders homeCommunityId and local patient identifier in the request (see 3.55.4.1.2.4)

- Carry responders homeCommunityId in response (see 3.55.4.2.2.4)

- Specify support for Health Data Locator in response (see 3.55.4.2.2.5)

- Specifies the â€œPatient Location Queryâ€ optional transaction

How do all these things support a record locator service?  Good question.   Section 27.3.2.1 Scenario #2 presents one approach but is not by any means prescriptive.  In fact, given the advance in knowledge and understanding of requirements and healthcare IT environments since XCPD was published, it might not even be a good approach.  So, the current hooks in XCPD may not be all that is needed and perhaps we should consider further extensions and enhancements to XCPD.  Most people see a need to connect the identification and correlation of the patient (purpose of XCPD) with knowledge about where records for the patient might exist.  But it is still unclear to me exactly how that connection can best be made.  I think the right collection of smart people could come up with a good solution and I hope that some of what XCPD has to offer will be useful.

**Security Considerations:**

See the [Patient Identity article](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html) for a short explanation of Security Considerations. The shorter is that XCPD uses SOAP, and therefore can be grouped with XUA. Thus there is plenty of security/privacy information available for a Privacy and Security decision to be made. Thus things like [Privacy Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html) can be enforced right away at Patient Identity discovery.

**Conclusion:**

XCPD is just a profile from IHE, in order to understand how it works and determine the scalability of the solutions that it enables one must include specific Policies, operational environment factors, application workflow, functionality, and safety/security/privacy. There likely is no perfect solution, the problem of patient identity discovery is a very hard one. If you can centralize or have a unified Identity, then that is a solution that is going to be far more efficient.

A more detailed and specific examination of the way that the NwHIN Exchange uses this profile is at [NwHIN-Exchange use of XCPD for Patient Discovery](http://healthcaresecprivacy.blogspot.com/2012/03/nwhin-exchange-use-of-xcpd-for-patient.html). This shows some of the ways that an operational environment can constrain XCPD, and some of the ways that one can get in trouble.

Obligatory disclaimer by Karen regarding IBM:  "The postings on this site are my own and don't necessarily represent IBM's positions, strategies or opinions."

**Resources:**

- [NwHIN-Exchange Specifications](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407)

- [Patient Discovery Production Specification v1.0 [PDF - 214 KB]](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_11673_910524_0_0_18/NHIN_PatientDiscoveryProductionSpecification_v1.0.pdf)

- [Cross-Community Patient Discovery (XCPD)](http://wiki.ihe.net/index.php?title=XCPD)

- [IHE webcasts, and presentations available for download.](http://wiki.ihe.net/index.php?title=Current_Published_ITI_Educational_Materials)

- [NwHIN-Exchange use of XCPD for Patient Discovery](http://healthcaresecprivacy.blogspot.com/2012/03/nwhin-exchange-use-of-xcpd-for-patient.html)

- [Patient Identity Matching](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html)

