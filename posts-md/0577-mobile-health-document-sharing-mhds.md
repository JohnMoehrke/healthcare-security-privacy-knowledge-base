# Mobile Health Document Sharing (MHDS) Profile

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/02/mobile-health-document-sharing-mhds.html
Published: 2020-02-29T23:06:00Z
Updated: 2020-02-29T23:09:58.081Z
Author: John Moehrke

---

This profile shows how to build a Document Sharing Exchange using IHE profiled FHIRÂ® standard, rather than the legacy IHE profiles that is dominated by XDS and HL7Â® v2. This profile will assemble profiles and define a Document Registry.

The MHDS Profile specifies how a collection of IHE profiles can be used by communities for exchanging health information. These IHE profiles include support for patient identification, health document location and retrieval, provider directories, and the protection of privacy and security. MHDS shows how several IHE profiles work together to provide a standards-based, interoperable approach to community health information sharing. The IHE IT Infrastructure Domain has published several resources to support document sharing:

- [ITI Technical Framework: Vol. 3 - Section 4.0 Metadata used in Document Sharing](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol3.pdf#nameddest=4_0_Metadata_used_in_Document_S)

- [Health Information Exchange: Enabling Document Sharing Using IHE Profiles](https://www.ihe.net/wp-content/uploads/Technical_Framework/upload/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1-0_2012-01-24.pdf)

- [Document Sharing Metadata Handbook](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Handbook_Metadata_Rev1-1_Pub_2018-08-20.pdf)

- [Template for XDS Affinity Domain Deployment Planning](https://www.ihe.net/Technical_Framework/upload/IHE_ITI_White_Paper_XDS_Affinity_Domain_Template_TI_2008-12-02.pdf)

Document Sharing on FHIR

This MHDS Profile defines a Document Sharing Exchange that is based around the HL7 FHIR standard, following the principles described in the [Health Information Exchange: Enabling Document Sharing Using IHE Profiles](https://www.ihe.net/wp-content/uploads/Technical_Framework/upload/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1-0_2012-01-24.pdf) whitepaper. This Document Sharing exchange requires the same management of metadata as described in the [Document Sharing Metadata Handbook](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Handbook_Metadata_Rev1-1_Pub_2018-08-20.pdf).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgKC2JIe3Xe6YYIyrRZsX_02bzyD6L9koePd7gBJ0tr5lr_M0pz4fWcFYwUCFzfj4gZFDet3dI7ouhGfm-q0bbx0kLrjwNVdPutU_tBRE8DnhcpRgqHReHN264X2wNJbVwvsK65L4vgt1Lm/s1600/Slide9.PNG

more...

The MHDS Document Registry
This profile orchestrates actors in many existing IHE profiles and creates one new actor. The actor that is specific to this profile is a Document Registry. The following Figure shows a detailed Actor diagram for the MHDS Document Registry.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjnHE2DIDkSbGcWHDGQaLZMz9m3bShRA4CRnMfPj_KGz6f4v-Lc4_BselEKzDtUJJQm88wEAqwDCRIN1PlQ7XIhtK0gvWxZN9tKYuRfkOTJYuuf8_c8J55vJvhU1l3yOB54V4Mok4IrDvNx/s1600/Slide2.PNG

The Document Registry is grouped with a set of actors from other profiles to provide the following functionality.

- [MHD](https://wiki.ihe.net/index.php/MHD) - Document Responder supports publication requests by the MHD Document Source. The Comprehensive Metadata Option is required.

- [MHD](https://wiki.ihe.net/index.php/MHD) - Document Recipient supports the discovery and retrieval of documents by MHD Document Consumer.

- [PMIR](https://wiki.ihe.net/index.php/PMIR) - Patient Identity Consumer provides patient identity synchronization and specifically the merge function to be applied to any data managed in the Document Registry.

- [SVCM](https://wiki.ihe.net/index.php/SVCM) - Consumer enables the Document Registry to gain access to ValueSets that the Registry is enforcing Metadata consistency.

- [mCSD](https://wiki.ihe.net/index.php/MCSD) - Consumer enables the Registry to have access to Organization and Practitioner resources.

- [IUA](https://wiki.ihe.net/index.php/IUA) â€“ Authorization Server and Resource Server enforces access control decisions.

- [ATNA](https://wiki.ihe.net/index.php/ATNA) - Secure Node enable the Document Registry to be secure, record audit records, and support secure transactions.

- [CT](https://wiki.ihe.net/index.php/CT) - Time Client assures that all records of time done by the Document Registry are aligned with the Time Source.

MHDS Options

- **SVCM Validation Option** -- The Document Registry will do metadata validation against ValueSets managed in the SVCM Terminology Repository

- **UnContained Reference Option** -- The Document Registry will allow author, authenticator and patient references rather than forcing contained resources

- **Authorization Option** -- authorization using IUA is included in the Document Registry

- **Consent Manager Option** -- Patient Privacy Consent Management is included in the Document Registry for simple Permit and Deny (requires Authorization Option)
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi3YGP0497DGJwJGv2g8laDcg97_3QcW0H6FAZafnzW-dDC6WUU9K8Q_1J4uUWR9EGJ552FDUHy1fjEIcslbn32WLgp5KeBzSpy52xRZHrKm7LduakzUoLUJqnVumkoAucAnvgwxFSD_r13/s1600/Slide8.PNG

HIE Central Infrastructure
In MHDS, the Document Registry is part of a Document Sharing Health Information Exchange (HIE). The Document Registry relies upon services that would be hosted within the HIE Central Infrastructure with a set of Service endpoints as illustrated in the yellow â€œHIE Central Infrastructureâ€. The HIE also contains systems, illustrated in green, that submit and consume documents.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj1XL6rNCbpF6BNdWAdd9yLoU3CXatP3ykrfWUA2Ey63MlR6whtQj-Ri78fjQxntta48XonoG9G5XaoH-KPwblkYGMQQvuwRs4Y2f9AANNXw-Jkg2qsD23HNUOG5JQkqe_zpXEFhqtnsE4o/s1600/Slide1.PNG

The Document Sharing Health Information Exchange will also host a set of Services based on IHE Profiles as shown in the figure. These provide services to the Document Sharing Community (aka Community):

- [CT](https://wiki.ihe.net/index.php/CT) Time Server â€“ to provide consistent time to all participant systems

- [ATNA](https://wiki.ihe.net/index.php/ATNA) â€“ Audit Record Repository with support for the ATX: FHIR Feed Option â€“ to capture audit events and provide appropriate audit log access for security and privacy use-cases

- [PMIR](https://wiki.ihe.net/index.php/PMIR) â€“ Patient Identity Source and Patient Identity Manager â€“ to provide patient identity lookup by demographics or identity, and to receive create and update of patient identity from participants

- [SVCM](https://wiki.ihe.net/index.php/SVCM) â€“ Terminology Repository â€“ Provide vocabulary and value set management within the Community

- [mCSD](https://wiki.ihe.net/index.php/MCSD) â€“ Care Services Selective Supplier â€“ a Provider Directory to enable endpoint lookup and optionally provider identity management

There are other useful actors that are compatible with MHDS, but are not required by the MHDS Profile:

- [NPFS](https://wiki.ihe.net/index.php/NPFS) â€“ File Manager â€“ Provide files that are needed in the community but are not patient specific such as policy documents

- [mXDE](https://wiki.ihe.net/index.php/MXDE) â€“ Data Element Extractor â€“ to enable QEDm access to data elements derived from published documents

- [QEDm](https://wiki.ihe.net/index.php/QEDm) â€“ Clinical Data Source â€“ to enable access to data elements (aka FHIR clinical Resources)

- [mACM](https://wiki.ihe.net/index.php/MACM) â€“ Alert Communication Manager â€“ to enable community supported alert communications

In addition to these IHE-defined actors, the Community will also select how they will manage Digital Certificates through a Certificate Authority, and other functionalities and non-functional requirements such as response-time, service-level-agreements, remediation-planning, remediation-access, etc. The Document Registry and the supporting services listed above provide a set of services that make up a Document Sharing Infrastructure that is based on FHIR. This set of services enable Systems that Publish Documents and Systems that Consume Documents.

Consuming Resources, not Documents

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1AAR7GxtWgv5Lh8r-DE_Fk0Sirm9pTD7PE1XdLpy8axQP-YsQmKbl0OWUcPIMkqFIXuVFjZvISi1sNZIUyAfY12C81n-PZRSkz65yZ4EwemvxZwIg2kA6Q3_qYm5F1NAJ-XJduYqKzKLk/s1600/mXDE-decompose.png

Additionally, the mXDE profile may be used to make the information in the Document Sharing infrastructure more consumable as FHIR Resources using QEDm. These client of the MHDS services use the existing profiles and are not specifically constrained by the MHDS profile. See section X.6 for more details on Cross Profile Considerations of System that publishes documents, System that consumes documents, and System that consumers clinical data elements.

Public Comment #2
This supplement will be in Public Comment in March. This is a second public comment phase in order to assure it gets broad and deep review.

