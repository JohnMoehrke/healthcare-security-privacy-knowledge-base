# Document Encryption

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html
Published: 2011-09-26T23:32:00Z
Updated: 2011-09-26T23:32:16.693Z
Author: John Moehrke

---

IHE has a new supplement [â€œDocument Encryption (DEN)â€](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_DEN_Rev1-1_TI_2011-08-19.pdf) out for Trial Implementation that explores all the possible ways that encryption could be applied to Documents. This supplement went to great extents to define a large set of different use-cases, each with their own concerns regarding protecting documents. As such it also explored all the existing profiles capabilities to meet these use-cases, and thus identified a few gaps.

The following is a table (Table Q-2.  Use cases for existing and new IHE profiles with encryption) found in the supplement (reformatted slightly to fit in the blog). For details on each of the use-cases, please see the document. In this table each use-case is shown in a row, and each solution from IHE is available in a column. Where the profile is designed to directly address the use-case an â€œ**X**â€ appears, where the solution partially supports the use-case a â€œ**(x)**â€ appears.

Use case

_new_

Doc Enc

_new _XDM Media Enc optn

ATNA (TLS)

ATNA (WS-Sec)

XDM
Email optn

PDI optn(CMS)

Point-to-point network exchange between machines

**(x)**

**X**

**(x)**

Network exchange between machines in different trust domains

**(x)**

**X**

**(x)**

Online exchange of documents where partially trusted intermediaries are necessary

**X**

**X**

Exchange of medical documents using person-to-person Email

**(x)**

**X**

Media data (DICOM) exchange between healthcare enterprises using physical media

**(x)**

**(x)**

**X**

Exchange health records using media

**X**

**X**

**(x)**

Media to media transfer

**X**

**(x)**

File clerk import

**X**

**X**

Unanticipated work-flows

**X**

**(x)**

Clinical trial

**X**

**X**

Multiple recipients of secure document

**X**

**X**

Sharing with receivers only partially known a priori, a group or a role

**X**

**X**

**(x)**

Partial encrypted XDM submission set

**X**

As such there are some use-cases that are not really fully satisfied by the existing profiles, so the supplement goes on to define how to (a) Encrypt an XDM media, and (b) Encrypt a Document alone independent of any transport.

As such it comes up with a nice table that explains when one of the IHE Profiled solutions is most useful. The following is Table Q-1, IHE Encryption Solution Overview

Profile

When to use?

IHE ATNA
(point-to-point using TLS)

Â·  environment uses networking transactions (e.g., XDS/XDR); or

Â·  to be protected data concerns (representation of) XDS/XDR transactions and packages; and

Â·  confidentiality need applies between internet hosts (point-to-point)

IHE ATNA
(end-to-end using WS-Security)

Â·  environment uses web-services (SOAP); and

Â·  to be protected data concerns (representation of) transactions and packages (e.g., XDS/XDR); and

Â·  (partial) confidentiality need applies to intermediaries between end-points (end-to-end); and

Â·  where encryption between hosts is not sufficient

IHE XDM Email Option
(using S/MIME)

Â·  environment uses XDM with exchanges based on Email (SMTP); and

Â·  to be protected data concerns (representation of) XDM media content; and

Â·  confidentiality need extends from the sender up to the final recipientâ€™s Email system (end-to-end)

IHE Document Encryption

Â·  environment uses any means for data exchange, in particular non-XD* means; or

Â·  to be protected data concerns (representation of) arbitrary data (documents), in particular non-XD* packages; or

Â·  confidentiality need applies between arbitrary end-points (end-to-end), in particular where intermediaries or unanticipated workflows are involved

IHE XDM Media Encryption option

Â·  environment uses XDM; and

Â·  to be protected data concerns (representation of) XDM media content (content and metadata) on physical media; and

Â·  confidentiality need matches path from creator to receiver (importer) of media

IHE PDI privacy option
(using CMS)

Â·  environment uses PDI; and

Â·  to be protected data concerns (representation of) DICOM data on media; and

Â·  confidentiality need matches path from creator to receiver (importer) of media

 Implementing the Document Encryption (DEN) profile should be very easy, as the profile is leveraging a commonly implemented standard. The standard used by the DEN profile is the same standard that the IETF profiled for use by e-Mail uses for S/MIME. The DEN profile clearly is not S/MIME, but rather a more general purpose use of this underlying standard.

To help the implementer, there is a page on the [IHE wiki that points to toolkits and implementation notes](http://wiki.ihe.net/index.php?title=Document_Encryption_-_Implementation_Notes_and_Examples). On this page an implementer can find different solutions that they can simply leverage. There are examples of files that have been encrypted so that you can test that your system can decrypt them. There is very little need to implement the details when there are so many current implementations available.

IHE expects that when others implement this profile, that they can use this information. As a wiki, the expectation is that as new information is discovered the community (thatâ€™s you) will update the page. Donâ€™t wait for some â€˜authorityâ€™ to fix something that is wrong on these wiki pages. Feel free to update them as necessary (common wiki behavior is expected).

