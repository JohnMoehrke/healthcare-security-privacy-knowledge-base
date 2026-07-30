# NwHIN-Exchange use of XCPD for Patient Discovery

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/nwhin-exchange-use-of-xcpd-for-patient.html
Published: 2012-03-22T20:57:00.001Z
Updated: 2012-03-26T13:08:13.154Z
Author: John Moehrke

---

_Guest blog by Karen Witting, co-chair of the IHE ITI Planning Committee and prime on the XCPD profile_

**
**

As an example of the flexibility inherent in [XCPD](http://healthcaresecprivacy.blogspot.com/2012/03/basics-of-cross-community-patient.html) and the detailed analysis needed to refine it to fit local policy and requirements, I will review the primary discussion topics and results associated with developing the [NwHIN Patient Discovery specification](http://exchange-specifications.wikispaces.com/file/view/NHIN_Patient_Discovery_Production_Specification_v2.0.doc).  This specification adopts XCPD with several refinements in function.  Its adoption by the[Nationwide Health Information Network Exchange (NwHIN-Exchange)](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407)  in 2009 entailed detailed discussion and compromises.

**Requirement for single exact match: **

XCPD is designed to return a list of possible matches which are then narrowed by the receiving system.  NwHIN-Exchange made a policy decision to restrict responses to a single match.  This was due to the concern that returning patient information for a mis-matched patient would expose that data to a non-treating entity.  Multiple matches suggests that some data is a mis-match so the exposure is likely.  This policy brings its own challenges because the responding system may have more than one match that are equally good.  To enable resolution of this case the NwHIN-Exchange specification makes use of the â€œmaybeâ€ capability provided by XCPD (see blog article on XCPD) to request additional demographics to aid in disambiguating the match.  In fact NwHIN-Exchange extends this capability to add the ability to respond by requesting specifically an SSN value.

A subtlety inherent in the NwHIN-Exchange specification is the difference between a single match versus multiple matches from different parts of the responding community.  Enabled in the specification is the ability for a responding system to represent multiple distinct entities, each using its own patient identity domain.  A patient identity domain is represented by an assigning authority and the specific restriction in the NwHIN-Exchange specification is a single patient identifier per assigning authority.  This means that while it is disallowed to provide multiple matches from which the initiating system must choose, it IS allowed to provide multiple matches which all must be used to have a complete view of the patient information from all entities represented by the responding system.

**Privacy concerns associated with demographics sent: **Determining the right set of demographics to be specified in the request and response resulted in lengthy debate which was partly documented in [Appendix B in the NwHIN-Exchange Patient Discovery](http://exchange-specifications.wikispaces.com/file/view/NHIN_Patient_Discovery_Production_Specification_v2.0.doc) specification.  The debate centered on the conflict between, on the one hand, the more demographics provided the more certainty of the match.  On the other hand, the more demographics supplied the higher the privacy risk to the patient.  Many felt that all available demographics must be provided to ensure the best possible match.  Others wished for a much more restrictive set.  Note that the participants in the NwHIN-Exchange are a constrained set of organizations that have agreed to the [Data Use and Reciprocal Support Agreement (DURSA)](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407), but keeping the risk low is a core principle that everyone tries to achieve.

The result is a minimal set of demographics required, which is: first & last name, gender and birthtime.  In addition there is a set of -required-if-available- which means that these attributes must be included if the system has access to them and local policy and patient consent allows them to be shared.  These are: one or more addresses, a single phone # and Social Security Number (SSN).  These requirements apply to both the sender and the responder, which are both required to include demographics for the recipient to use for its local demographic matching process.  Typically the address, phone and SSN are sent, along with additional names or aliases when available.  Other optional attributes supported by XCPD are not commonly used.

**Patient identifier mutability and revoke:   **A concern that came out of sharing local patient identifiers is the desire to allow them to change over time.  Some participating systems were using short lived patient identifiers.  XCPD makes no statement about the lifetime of a patient identifier but generally has assumed it is a long lived identifier.  Because of the requirement to support short lived patient identifiers, the NwHIN-Exchange does stated that, once shared, an identifier can never be associated with a different person, but cannot be assumed to be valid forever.  Once invalid the issuing system would send an error the next time the value is received and the holder is encouraged to re-discover that patient.  So, once shared, a patient identifier is either valid, and still associated with the same original person, or is no longer valid.  Much discussion centered around the opinion by some that re-discovery of the patient identifier at each patient encounter was necessary.  Others saw concerns with this approach and preferred to re-discovery only upon error response.  The specification supports either approach.

Another approach to the short-lived patient identifier would have been to adopt the revoke transaction supported by XCPD.  It was decided not to adopt revoke due to concerns that in order for it to work it would need be mandatory and not every implementer wanted to deal with that extra complexity.  So the re-discovery approach was adopted but the issue is still debated by some.  In particular, revoke could support lifecycle events like merge and link.

**Support for local matching algorithms: **A primary requirement of the NwHIN-Exchange participants was the need for local autonomy in matching patients.  Typically a demographic query results in the responding side performing a demographic match through a local algorithm and returning the results of that match to the initiator.  NwHIN-Exchange participants wanted the option of verifying a match on the initiating side.  Thus, requirements for demographics are necessary in both the request and the response in order to enable a possible initiating side matching step.  The result is that a single query can cause two matching steps, first on the responding side which provides its opinion of a matching record, and then on the initiating side which is allowed to confirm the match using its local demographic algorithm.  The interaction must enable this autonomy but be agnostic about the internal methods used for demographic matching.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgZDmFXhpVvkSPqfcENx3WVQs6BNSd6H5qPoH1IV15SfDWbBNRwXxkrjgjuz_VlTb4v5teK8YP1wl_VWzgkImwE4ZqYvcOtw3QKkOubIMsZ5qebALchjEkJBeIeUC8INhAxmCyWMMSaFqwa/s1600/IHE-Cross-Community_2011-09-15-735949.png

**Broadcast vs. Targeted Query: **A central challenge when using a demographic query like XCPD is deciding who to send it to.  NwHIN-Exchange does not supply a service which automatically locates and send the query to multiple participants.  It is up to the initiator to do this work.  Some have suggested that the query should be sent to every known endpoint.  Finding every known endpoint is possible through the NwHIN-Exchange Service Registry.  But sending to every known endpoint would result in bandwidth problems on the responding side as the NwHIN-Exchange scales to significant numbers of endpoints.

So far the NwHIN-Exchange has not scaled particularly large (there are currently 25 exchange partners in the service registry).  Even so the guiding principle in the NwHIN-Exchange specification is to do targeted queries, focusing on a limited set of partners that are most likely to have data.  Finding that limited set could be through a regional type query or some information received from the patient.  But targeted queries are recommended although broadcast queries are also allowed.  Eventually the NwHIN-Exchange, as it grows, will need a better mechanism for selecting the targeted partners, perhaps through adoption of the patient location query (see [prior XCPD blog](http://healthcaresecprivacy.blogspot.com/2012/03/basics-of-cross-community-patient.html)) or some other mechanism.

**Scaling challenges: **Scaling was a topic of significant discussion during the development of the NwHIN-Exchange Patient Discovery specification.  Demographic matching is a complex process and demands significant CPU and memory load.  So scaling of the demographic matching process needs to be done in a way that systems do not become suddenly overwhelmed with requests.

As discussed in the [XCPD blog](http://healthcaresecprivacy.blogspot.com/2012/03/basics-of-cross-community-patient.html), using a patient correlation engine like [PIX scales better](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html) because it does the matching a-priori and can respond to requests without performing demographic matching.  But this requires collecting all demographics into a single place and, at a national level, this was felt to be an unacceptable level of privacy risk.

So use of the NwHIN-Exchange Patient Discovery query must be limited to some degree and this suggests that some additional approach is needed.  The Patient Location Query was designed to enable this capability by enabling the collection of patient specific record locations within various spots in the general network.  NwHIN-Exchange has not adopted the use of this query at the moment but we hope that, as things evolve and the need for scaling becomes more pressing, further work on its adoption will come to fruition.

Another issue related to scaling is the need for â€œDeferred Modeâ€ (see [XCPD blog](http://healthcaresecprivacy.blogspot.com/2012/03/basics-of-cross-community-patient.html)).  NwHIN-Exchange first identified this need in its use of XCPD.  Participants presented use cases where the response to an query could take days, or even weeks, to return.  The use case involved the potential for human involvement in resolving the demographic match.  The Web Services Addressing based asynchronous mode did not satisfy this requirement due to the limitations within the chosen Web Services toolkit.  Thus NwHIN-Exchange defined and implemented the Deferred mode and IHE has since adopted it within XCPD.

**Consent: **

Consent enforcement is designed into every aspect of NwHIN-Exchange Patient Discovery specification and is an additional driver for some of the required capabilities.  For example, a successful query may share a patient identifier of a patient that later withdraws from consent to share data.  This is another reason why patient identifiers must be seen as mutable and re-discovery is used to discover that there is no longer a match for a previously matched patient.  Again, revoke could have been used in this case but was not adopted.  In sharing of demographics consent is fundamental to allowing whether to acknowledge the patient exists in the responding system and even which demographics can be provided.  NwHIN-Exchange Patient Discovery is designed to allow flexibility on the part of the participating systems in processing various approaches to consent.

**Two-way and one-way pull environments: **

Most participants in NwHIN-Exchange are both receiving and sending data.  For XCPD this means most participants will operate in Demographic Query and Feed mode (see [XCPD blog](http://healthcaresecprivacy.blogspot.com/2012/03/basics-of-cross-community-patient.html)).  But some participants, like the Social Security Administration (SSA), will never have data for others to pull and need to do use Demographic Query only mode.  So both these modes were adopted for NwHIN-Exchange.  But the Shared/national Patient Identifier Query and Feed mode is not supported since the U.S. does not have a national patient identifier.

**Conclusion: **

Adopting XCPD for use in the United States NwHIN-Exchange resulted in many trade-offs.  In many cases the functionality was constrained due to privacy and complexity concerns.  Because of this the specification is good at the limited scope it was designed to operate in.  But more work is needed, especially in terms of broad searches for patient specific information.

Obligatory disclaimer by Karen regarding IBM:  "The postings on this site are my own and don't necessarily represent IBM's positions, strategies or opinions."

**Resources:**

- [NwHIN-Exchange Specifications](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407)

- [Patient Discovery Production Specification v1.0 [PDF - 214 KB]](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_11673_910524_0_0_18/NHIN_PatientDiscoveryProductionSpecification_v1.0.pdf)

- [Patient Discovery Production Specification v2.0.doc](http://exchange-specifications.wikispaces.com/file/view/NHIN_Patient_Discovery_Production_Specification_v2.0.doc)

- [Cross-Community Patient Discovery (XCPD)](http://wiki.ihe.net/index.php?title=XCPD)

- [IHE webcasts, and presentations available for download.](http://wiki.ihe.net/index.php?title=Current_Published_ITI_Educational_Materials)

- [The Basics of Cross-Community Patient Discovery (XCPD)](http://healthcaresecprivacy.blogspot.com/2012/03/basics-of-cross-community-patient.html)

- [Patient Identity Matching](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html)

**Updates:**

- Fixed references to the Patient Discovery specification to version 2.0

- Fixed a unclear word in the conclusion

