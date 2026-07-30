# XDS sha-1 is still okay

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/06/xds-sha-1-is-still-okay.html
Published: 2019-06-13T17:27:00Z
Updated: 2019-06-13T17:27:40.388Z
Author: John Moehrke

---

I get the following question about every other month. Here is the version I just responded to:

>
In this project I encountered a requirement to use SHA-256. Apparently this was in reaction to the SHA-1 collision vulnerability ([https://shattered.io/](https://shattered.io/)) from late 2017. IHE XDS requires the hash to be SHA-1. Have you heard of any requests to change that?

There is no requirement in IHE that a Document Consumer must check the **size+hash **against the document they have received. This would be a policy choice. This is a policy choice that IHE does enable. That is to say that IHE includes a requirement to set the size/hash value to enable this downstream check.  The main reason to not mandate it is that there are few cases where the normal transport, especially TLS, doesn't already confirm integrity. If we added mandatory check of the hash/size, then we would need to express what must then be done if a failure is detected.

Intended failure detection
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEioSa-5VDmZEBZKFj-JdW2KYi2X9JdZXbTBYd7ZOlM1Np_8YzL0bAr8DmW4MN28dqgh7WPNAM551crzYHJHlp9OFYhlMB_qJKCzCjkw4ROYkyzoIpKToDzWZjM5cJkTqvbU2TheJNWtTr9i/s1600/XDS-hash%252Bsize.pngThe **hash **element is intended to be used with the **size **element to detect storage, encoding, or transport errors. Where a Document Consumer receives the metadata (DocumentEntry) from a Query from the Registry; and the Document Consumer receives the document via Retrieve transaction from the Document Repository; the check of **size+hash** is a mechanism available to the Document Consumer to assure that the document they got is _very likely _the document described by the DocumentEntry.

In the most distributed configuration of XDS there is one Registry managed centrally, and many Repository servers maintained at each of the custodians of the documents. The kind of errors this can detect are errors such as bit loss while in storage, encoding loss due to errors in encoding algorithms, or transport failures due to multiple hops or intermediary.

Note in the diagram above, that the Green line is the pathway the DocumentEntry follows, where as the Orange line is the pathway the Document follows. The loops represent persistence for hours or decades.

The other transport options in the Document Sharing (XD*) family are less distributed, but the metadata is always separated from the Document itself.

The failures of **sha-1** are all specifically failures to detect attack by a malicious and well-funded attacker. The failures of **sha-1** are not the kind of failures that would randomly happen due to technical failures.  It is important that one recognize that XDS mechanism is both a** sha-1** hash and a size.  So an attacker must get a **sha-1** collision without changing the size of the document. A determined attacker will just replace the hash/size elements in the Registry, for which this kind of successful attack would not matter if the hash was **sha-1** or **sha-256**.

I emphasize that the **size+hash **is a mechanism that leverages the fact that the metadata (DocumentEntry) traverses a different pathway than the Document. They both are managed in different systems. So the intention of the **size+hash **is to detect technical (accidental) failures in these various systems and interconnections.

High Security
The metadata **size+hash** is not a high-security mechanism. If one is concerned about malicious acts of deception, then one must use Document Digital Signatures.

[Document Digital Signatures](https://healthcaresecprivacy.blogspot.com/2017/04/ihe-document-digital-signature-dsg.html)would use SHA-256 (or better), and also have timestamp, purpose of the signature, and are counter signed by a verifiable identity backed by a certificate chained to a certificate authority that manages trust and revocation status. Without the signature across the hash, and a timestamp, one does not know that the digital signature is valid.

So if an organization is really serious about digital signatures, then they should be mandating Document Digital Signature. Further, they must then make a clear policy on what Document Consumers must do, Such as when is it mandatory to check the signature, what is to be done if there is no signature, what is to be done if certificate revocation checking can't be done, what requirements of timestamp are necessary.

Once all this analysis of overhead involved in Digital Signatures discussion happens, they realize that this overhead is likely too expensive for the benefit. Backing back from that, they realize that sha-1 plus size checks are sufficient most of the time.

There is an alternative mechanism built into Document Digital Signature Profile that many people may not be aware of. This mechanism has been promoted by the Italian domain. The mechanism is to upon Provide and Register, they sign the SubmissionSet as a Document Digital Signature, and thus at any time downstream a Document Consumer can confirm that the documents they are using are those in the original SubmissionSet as published by the original Document Source. This Document Digital Signature is a end-to-end, but is not a declaration of the author.

**Good for Intended use**

I would never advocate for use of SHA-1 within a Digital Signature today... but the XDS mechanism is not a Digital Signature, it is an integrity protection. There is a high security mechanism in Document Digital Signatures or SubmissionSet signature.

