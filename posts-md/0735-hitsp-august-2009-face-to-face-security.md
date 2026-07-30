# HITSP August 2009 face-to-face -- Security, Privacy and Infrastructure

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/09/hitsp-august-2009-face-to-face-security.html
Published: 2009-09-04T17:12:00Z
Updated: 2009-09-04T17:15:05.696Z
Author: John Moehrke

---

The HITSP Technical Committee/Tiger Team Face to Face Meeting was held last week in Chicago. There were 120 attendees that participated in the continued work efforts and deliverables.

    **Standards Development Work**

    HITSP will be updating quite a few constructs and creating other constructs based on updates coming from Standards Development efforts. In all of these cases the standards work was initiated by HITSP:

  [IHE](http://www.ihe.net/)


- [XDS-I](http://www.ihe.net/Technical_Framework/upload/IHE-RAD_TF_Suppl_XDS-I-b_TI_2009-06-21.pdf) --> TP48/89
- [XDS.b](http://www.ihe.net/Technical_Framework/index.cfm#IT) --> TP13 == This is now Final Text and IHE has indicated that IHE.a is deprecated
- [DSUB](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_DSUB_TI_2009-08-10.pdf)--> TP13? == This is new profile that fills a gap identified in TP13 for the ability to subscribe to topics about documents and get notified when new publications that meet the criteria
- [MPQ](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_MPQ_2009-08-10.pdf)--> (unknown) == This is a new profile initiated by the quality reporting groups that allows a trusted system to make queries that are not constrained to a single patient. There are two output types: Full metadata and list of matched document identifiers.
- [XCPD](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_XCPD_PC_2009-08-10.pdf)--> TP13? == This is a new profile that fills a gap identified in TP13 for the ability to discover communities that contain information on a specified patient.

   [HL7](http://www.hl7.org/)


- Security Permissions catalog is out for ballot --> C19/TP20

   [OASIS](http://www.oasis-open.org/)


- XSPA specifications are continuing through the OASIS process.
- [XSPA-SAML](http://docs.oasis-open.org/security/xspa/v1.0/saml-xspa-1.0.html) --> C19;
- [XSPA-XACML](http://www.oasis-open.org/committees/document.php?document_id=33395) --> TP20

  HITSP needs to step up and [submit new work requests before IHE Planning](http://johnmoehrke.livejournal.com/14241.html)starts. It doesnâ€™t look like there is much that will hit IHE this year from HITSP.

      **Consumer Preferences**

    The most exciting aspect of the meeting is that representatives from ONC participated in the meeting to provide guidance and help kick off the Consumer Preferences Tiger Team effort. The _use-case_ will progress as an iterative work between ONC, HITSP, NHIN, and FHA-CONNECT. This will allow us to work through the details of what is desired with when it can be accomplished.

  Consumer Preferences is a larger category than previously discussed. The overall use-case will include Privacy-Policy-Acknowledgement (aka Consent and Authorizations) but will also include the patients ability to publish things like advanced-directives. These second class of preferences will be worked out by Consumer Perspective and likely the Care Management workgroup. SPI will continue a workgroup that will focus specifically on the privacy policy issues which are likely to be a continued development of CAP143 and TP30. The discussions included the need to prioritize the overall landscape of potential privacy policy.

    **Clinical Research**

  The SPI committee will be working on a new Anonymization construct to support Clinical Research. The data set needs to be defined before the SPI committee can go forward.

  There was discussion around pseudonyms. Much of this was to explain the differing uses of the words Pseudonymization, Anonymization, and de-identify. The prevailing approach in HITSP is:

  a) De-identification is the overall process

  b) Anonymization as the process used to lower the risk by assessing each data attribute in the context of the intended use which results in a specific handling of each attribute: pass through unmodified, remove as unnecessary, change dates to ages or ranges, etc.

    c) Pseudonymization â€“ create an alias for the subject (patient) that is not otherwise associated with the normal data.

  **Consumer Perspective**

  In addition to the Consumer Preferences work, there is the â€œLocationâ€ issue related to communicating from one PHR to another PHR. The use-case wants to be able to deliver all the data in one PHR to another PHR. We discussed the various topologies that a PHR would participate in.

  a) Media â€“ this is clearly the easiest as the PHR simply exports everything to the media and the other one imports from same

  b) Sharing â€“ In this case the patient has the one PHR export to the HIE or NHIN share all the data in document form. The second PHR can thus import from the HIE or NHIN.

  c) Point-to-Point â€“ In this case we donâ€™t have an HIE or NHIN infrastructure to communicate and donâ€™t have removable media.

  -- One solution is for the patient to mediate through downloading and uploading. But this doesnâ€™t involve infrastructural interoperability, just documents.

  -- So the outstanding issue is to determine how one PHR would communicate to another PHR. Kathleen (Microsoft) offered that this is not a problem today as the PHR vendors all have agreements on how to do this. But I suspect we will be looking at this.

  There are many groups that have a stake in this issue that Consumer Perspective will need to coordinate across.

      Provider Registry: There is also much talk about a Provider Registry. This seems to be highly overloaded and seems to mean different things to different people. We discussed and understand it to be focused on the kinds of registry attributes that a Patient could utilize including access to the human-provider demographics as well as the organization-provider services offered. We made it clear that they should keep out of scope the types of interoperability connection information such as those used to attach a web-service endpoint (IP address, Authentication credentials, WSDL).

  **Patient Care Devices**

  Continua is well on the path to deliver their specification that will eventually allow HITSP to expand their work from a small set of devices to the much larger set of devices that are available over-the-shelf. I have been working with this group to help them understand the IHE security profiles and HITSP constructs. There is a desire to support very low power end-user devices and under this concern they want to move to more modern standards, as todayâ€™s solution is based on HL7 v2 messages. Right now they are trying to move the transport from HL7 MLLP/TLS/TCP to Web-Services/HTTP/TLS/TCP. There does not seem to be interest in moving from the HL7 v2 message to a more XML friendly message encoding form. This results in an HL7 v2 message delivered using Web-Services. This is not desirable to most of the community, so I continue to help Continua.

      **Capabilities and Service Collaborations**

        We worked with the group that is taking IS107 and building independent documents for each Capability. We walked through the list of capabilities looking for Service Collaboration opportunities as well as potential cleanup on Capabilities. Possibly new Service Collaborations are TP49/89, T24, and TP50. In all of these cases it is not clear if a Service Collaboration is the best approach, but they clearly need some work.

  CAP135 and TP50 is a hard case to address as there are non-controlled systems involved as forms-fillers, and their use-cases donâ€™t always include PHI.

      CAP130 needs some kind of transport.

  CAP 138 and CAP142 do not fit the qualifications of a capability. They are NOT a binding of transport and content. They are just transports that can be used for many different purposes.

      I voiced a concern about the liberal use of Anonymization and Pseudonymization across the Capabilities. We need to get this back under control, and specifically called out only where we have analyzed the use-case and specified the constructs.

  SPI needs to also look at the cross-walk table that is in IS107 where we indicated how security and privacy constructs were applied to the capabilities. There seems to be some misunderstanding of the purpose and how it was filled out.

    **Common Data Transport**

    This item was initially developed when the NHINs were having trouble getting all parties to use the same web-services versions. They have since moved to using the specification found in IHE ITI Appendix V.  SPI leadership have asked that this extension be evaluated for itâ€™s current business need and priority.

  The group continued to analyze the current specifications according to the parameters found in the common data transport specification. There was only a few gaps in â€˜reliable messagingâ€™, the need for subscribe/notification (DSUB), and potential for a service directory.

    Possibility that we might update the Tier-2 criteria to favor web-services based transports. Also possible that we might provide more information on the categorization of our constructs. I took on an action item to update our master construct spreadsheet with columns for: Topology, WS/REST/HL7v2/Other/NA, and Internal/HIE/NHIN/Media/other/NA.

      **Infrastructure**

  TP22/T23 â€“ there is concern that HITSP has constrained the assigning-authority for patient identifiers to be an OID. HITSP did this to move the healthcare community along down a path where the assigning authority can be assured that it will be federatable. There is concern about this approach. We will either need to remove the constraint, or explain the constraint better. I suspect we will be keeping the constraint. This came up again this week as there is a group in HITSP that is gathering all the HITSP specified constraints and as a result they will be modifying TP22/T23 with the constraint identifier.

