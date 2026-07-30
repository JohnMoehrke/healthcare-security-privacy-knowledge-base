# Healthcare Metadata

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html
Published: 2012-05-14T17:26:00.004Z
Updated: 2012-05-22T01:59:15.713Z
Author: John Moehrke

---

Metadata often results in meta discussions. Unfortunately these discussions are simply fun, and not productive. There are far too liberal understandings of metadata, especially in the S&I Framework Data Segmentation for Privacy, where there is a flat bucket of any describing attribute without recognition of purpose or how/where it will be used.

**The Purpose of Metadata**

Metadata is associated with data to provide for specific data handling purposes. These domains of data handling purposes fall into some general categories. Each metadata element typically has more than one of these purposes, although there are some metadata elements that cover only one purpose. It is important to understand these domains of metadata purposes. Often sited [PCAST report did identify Patient Identity, Provenance, and Privacy](http://healthcaresecprivacy.blogspot.ca/2011/01/data-objects-and-policies-that-control.html); three good purpose categories but not sufficient. I have [covered this before](http://healthcaresecprivacy.blogspot.ca/2011/08/one-metadata-model-many-deployment.html), but revisiting it because of HL7 work on metadata and IHE re-documentation of XD*.  For example here is a view of the metadata purposes in Document Exchange models, such as XDS/XCA/XDR/XDM.

- **Patient Identity** â€“ Characteristics that describe the subject of the data. This includes patient ID, patient name, and other patient identity describing elements

- **Provenance** â€“ Characteristics that describe where the data comes from. These items are highly influenced by Medical Records regulations. This includes human author, identification of system that authored, the organization that authored, processor documents, successor documents, and the pathway that the data took.

- **Security & Privacy** â€“ Characteristics that are used by Privacy and Security rules to appropriately control the data. These values enable conformance to Privacy and Security regulations. These characteristics would be those referenced in Privacy or Security rules. These characteristics would also be used to protect against security risks to: confidentiality, integrity, and availability.

- **Descriptive **â€“ Characteristics that are used to describe the clinical value, so they are expressly healthcare specific. These values are critical for query models and to enable workflows in all exchange models. This group must be kept to minimum so that it doesn't simply duplicate the data and to keep risk to a minimum. Thus the values tend to be from a small set of codes. Because this group is close to the clinical values the group tends to have few mandatory items, allowing policy to choose to not populate. For Healthcare data this is typically very closely associated with the clinical workflows, but also must recognize other uses of healthcare data

- **Exchange**-- Characteristics that enable the transfer of the data for both push type transfers, and pull type transfers. These characteristics are used for low level automated processing of the data. These values are not the workflow routing , but rather the administrative overhead necessary to make the transfer. This includes the document unique ID, location, size, mime types, and document format.

- **Object Lifecycle** â€“ Characteristics that describe the current lifecycle state of the data including relationships to other data. This would include classic lifecycle states of created, published, replaced, transformed, deprecated.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjLN7PfHUwdEgVIlaSI2bs2wweuCNLUwOs9h2ojylFfQyoTDepTR9N0dcZHYyBGDevKgrQ2wzYUCDIjIcjlJ9H4dK60bb7RrVlFwDxjtyrrwP1L9dlyP4oxOBaii1ip1mZq-OHXfJYeqQbi/s1600/Document+Sharing+Metadata-760050.jpg

All proper metadata elements are indeed describing the data and are not a replacement for the data. Care should be taken to limit the metadata to the minimum metadata elements necessary to achieve the goal. Therefore each metadata element must be considered relative to the risk that exposing it as metadata. A metadata element is defined to assure that when the element is needed that it be consistently assigned, and processed. Not all metadata elements are required, indeed some metadata elements would be used only during specific uses. For example the metadata definition inside a controlled environment such as an EHR, will be different than the metadata that is exposed in a transaction between systems, vs the metadata that would describe a static persistent object.

**Not MetaData, but Meta something**

There are other things that are often considered metadata, and they might be â€˜metaâ€™ in some way. For example when information is being pushed there are attributes on the transaction that are critical to the transaction. Thus for the purpose of the transaction they are critical, but they donâ€™t really describe the data as much as they describe the transaction. For example: The Direct Project uses secure e-mail; in this context there is a sender address and a set of recipient addresses. These are â€˜metaâ€™ in the context of the transaction, but are not 'meta' about the data.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhqg5ZhCMP5mFR2ei7FqrKdBY_fN3HwRYknV6Y-SHzzfCusKA9Hdw2NZG7VC-qqEV5FQbmjKJ2TYfwucOlwWTnJzmsxHiv_BYJPPaNYnqlkfeXxoz2xI0Hli4tgGVOchGHFNhjYMMBtjI5Y/s1600/Slide32.PNG
Another layer that is often confusing is the Privacy and Security layer. As indicated in the metadata model above there are some metadata elements that are specifically metadata that are there (purpose) of being used to protect privacy and security. The most referenced here is confidentialityCode; but also dates of service, individual author, author institution, class of document, as well as the patient and document ID themselves.

However security and privacy are also specific layers at the transaction level where there are other attributes that are critical to protecting the transaction: Endpoint authentication, encryption keys, endpoint addresses, user identity, user role, user purposOfUse, policy identifiers, obligation codes, etc. These are critical to transaction success, but are not meta about the data; they are meta about the transaction.

**Dublin Core**

I looked at Dublin Core, which is often cited as a Metadata definition with abstract modelâ€¦Dublin Core defines 14 categories. It is interesting, and should not be ignored. I think that Healthcare has matured beyond Dublin Core, not to say that Dublin Core is immature but rather that we have identified specific needs of metadata to our industry. Similar to how Video files have metadata defined that are beyond Dublin Core. Healthcare should show traceability to Dublin Core, but not more than that.

- [http://dublincore.org/documents/abstract-model/](http://dublincore.org/documents/abstract-model/)

- [http://www.ietf.org/rfc/rfc5013.txt](http://www.ietf.org/rfc/rfc5013.txt) -- The Dublin Core Metadata Element Set

- ISO15836 - [http://www.iso.org/iso/search.htm?qt=15836&searchSubmit=Search&sort=rel&type=simple&published=on](http://www.iso.org/iso/search.htm?qt=15836&searchSubmit=Search&sort=rel&type=simple&published=on)

**Conclusion**

IHE has a good set of metadata, it is not formally modeled abstractly; I am working with IHE to do this modeling as an effort to better communicate with the IHE reader. HL7 is working on metadata, but this work is far too tied to functionality triggers. We are not done, but we are moving in the right direction.

**Update:**

May 15th - Added back in "Routing", I had removed this thinking I could pack them into Discoverability. But it just doesn't work out. Later changed "Routing" to "Exchange" as it really is the characteristics needed to successfully exchange. Added a diagram showing how the XDS metadata can be shown in this topology.

May 16th - Updated some text and image for readability.

