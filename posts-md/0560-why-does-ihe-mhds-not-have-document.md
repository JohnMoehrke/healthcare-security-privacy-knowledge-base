# Why does IHE-MHDS not have a Document Repository?

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/05/why-does-ihe-mhds-not-have-document.html
Published: 2024-05-02T17:47:00.003Z
Updated: 2024-05-02T17:47:42.184Z
Author: John Moehrke

---

The [IHE-MHDS](https://profiles.ihe.net/ITI/MHDS/volume-1.html) does not define a Document Repository Actor but does include architecture support for distributed FHIR Servers and thus the concept of a Document Repository is included in MHDS. The [MHDS](https://profiles.ihe.net/ITI/MHDS/index.html)profile specifies how a collection of IHE profiles can be used by communities for exchanging health information, which includes support for patient identification, health document location and retrieval, provider directories, and the protection of privacy and security [https://profiles.ihe.net/ITI/MHDS](https://profiles.ihe.net/ITI/MHDS).

The [Document Repository](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.1.1.4) and [Document Registry](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.1.1.3) is an architectural construct that is foundational to [XDS](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html), but not necessarily part of [Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html). For example: [XCA](https://profiles.ihe.net/ITI/TF/Volume1/ch-18.html)also does not make a distinction between a Document Registry or Document Repository, having a [Responding Gateway Actor](https://profiles.ihe.net/ITI/TF/Volume1/ch-18.html#18.1).

The MHDS profile defines a [Document Registry](https://profiles.ihe.net/ITI/MHDS/volume-1.html#150111-document-registry) Actor that persists, manages, and provides access using the MHD access methods. This supports [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) as described in the Health Information Exchange: [Enabling Document Sharing Using IHE Profiles White Paper](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html). The central HIE infrastructure defined in [MHDS profile](https://profiles.ihe.net/ITI/MHDS/index.html) might be a single FHIR Server implementing all the defined central service actors or may be a virtual cloud of systems implementing the defined profile actors.

IHE-MHDS does not define the Document Repository Actor, as the concept of a set of distributed FHIR Servers is very natural to REST architecture. Thus IHE did not add complexity by defining a formal Document Repository Actor, as the concept can be addressed naturally with REST. For more detail see the [Storage of Binary section in the MHDS profile](https://profiles.ihe.net/ITI/MHDS/volume-1.html#150112-storage-of-binary). This is also explained in the [HIE Whitepaper in section 3.2 Centralized Discovery and Retrieve](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html#32-centralized-discovery-and-retrieve)

If you're looking for details on the functionalities or its implementation, the [MHDS Volume 1 documentation](https://profiles.ihe.net/ITI/MHDS/volume-1.html) would be a good resource to explore further. It outlines the core business functions provided by the MHDS Profile, including the publication of document-based information, persistence and lifecycle management of documents, and patient identity management among others. For broader discussion on the [Document Sharing concept the whitepaper is more inclusive.](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html)

