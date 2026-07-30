# Directed Exchange vs Publish/Discover Exchange

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/10/directed-exchange-vs-publishdiscover.html
Published: 2010-10-29T17:08:00Z
Updated: 2010-10-29T17:08:31.748Z
Author: John Moehrke

---

The NHIN-Direct Project - now trying to re-brand to "[The Direct Project](http://nhindirect.org/)" - is addressing the use-cases where the very small healthcare clinic that has little or no current Healthcare IT technology can take some initial steps into the Healthcare IT world. This project has now released a formal "[Overview](http://nhindirect.org/file/view/DirectProjectOverview.pdf)" document. Given that I was a contributor to this document, I think it is a good document. This document is a really good introduction, it is not a technical document, specification, or deployment guide. These other topics will be produced over the coming months.

A Directed Exchange (NHIN-Direct) is a useful model and will continue to be a useful model. A Directed Exchange model will not take the place of a Publish/Discover model, primarily because a Directed Exchange (aka Push) model does not work for many use-cases. **Directed Exchange only works where the data holder knows that an individual needs information and knows fully what information they need.  **The receiver generally does not know that they need this information before the sender decides to send it, yes there are exceptions. The sender must pick and choose the specific receivers, they canâ€™t broadcast.

The Directed Exchange, especially the NHIN-Direct specification, are good starting points as they are more simple. They are more simple in the technology given that they are simple point-to-point conversations. They are more simple in the security model, because they are simple point-to-point conversations. They are more simple from a privacy model, because they are simple point-to-point conversations. This means that much of the complexity that is necessary in a Publish/Discover Exchange are not needed. For example: the network infrastructure, policies, operational environment, auditing, authorization, encryption, and consent.  See: [NHIN-Direct Privacy and Security Simplifying Assumptions](http://healthcaresecprivacy.blogspot.com/2010/05/nhin-direct-privacy-and-security.html)

The kind of use-cases for a **Publish/Discover Exchange are those where the data user (or hopefully their system automatically in the background) discovers historic information, determines how relevant it is based on metadata, pulls the relevant information, decomposes it into the super-relevant information, and provides all of this at the time of need**.  These use-cases do require some rich metadata, which is why XDS includes such rich metadata. Some Examples of use-cases where a Directed Exchange doesnâ€™t work (or works less effectively):

- Onset of a new condition, where some prior conditions may be relevant

- Open Referral, where the patient is allowed to choose the specialist

- Highly mobile patient

- Emergency

- Patient with many medical conditions

- Patient with complex condition

- (Surely there are more)

There is also the ever present, yet shunned use-case of secondary use or quality monitoring. When appropriately de-identified, this is a very valuable use of the data that does ultimately benefit the patient. The Privacy concerns are real, and do need to be addressed; specifically the patient must be given the choice to participate or not.

**The Directed Exchange and the Publish/Discover Exchange are not mutually exclusive**. I fully expect some day that all data will be published, but a Directed Exchange will be used to push what the sender thinks are the most critical information along with a work-order (Referral, etc). In this case the receiver can verify that they could have pulled the documents as all documents have globally unique IDs, but they also have access to other historic data. The data user can discover new versions of the document, transforms of the document, related documents, and grouped documents. This combination of the richness of the Publish/Discover Exchange with the directeness of a Directed Exchange work well together. There are strong parallels of this combination in the FAX and HL7 messaging environments.

