# Using both Document Encryption and Document Signature

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html
Published: 2011-10-24T13:25:00.001Z
Updated: 2011-10-24T16:51:08.834Z
Author: John Moehrke

---

Sometimes one needs to have both a [Digital Signature](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html) and protect the content with Document Encryption. The [Digital Signature (DSG)](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html) content profile from IHE provides the Digital Signature. The [Document Encryption (DEN)](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html) content profile from IHE provides encryption of the document in a transport agnostic way.

Which should I do first, encrypt or sign?

- I would recommend signing first, as the signature is more likely to be a long-term signature; whereas the DEN encryption is more for a specific communication purpose (even though it is transport agnostic). The other reason is that logically one will unwrap the encryption protection then need to verify the authenticity of the content. One might also hang on to the signature within a protected system to prove authenticity long into the future.

How can the consumer tell which was done first?

- The fact that DEN produces a new document object, will make it obvious which document is being signed. Said another way the DSG signature identifies the document object that was signed. Thus the DSG signature could be across the original, unencrypted, document; or it could be across the encrypted document. The DSG would identify which of these objects was signed. If the signature is across the encrypted document then the DSG signature points at the _new _document object which is the encrypted document. If the signature is accross the original document, then the DSG signature points at the _original _document object, that is not encrypted.

But the DEN profile includes "Content Integrity"?

- The DEN profile is providing ONLY for encryption. It is not proposing to take the place of DSG. The DEN profile does include an integrity check on the original document. This integrity check (Content Integrity) is there to assure that the decryption produced the document that was encrypted. The integrity check is not intended to replace a digital signature. For example this integrity check does not include a 'purpose' for the signature.  This content integrity is there only to prove that the decryption 'worked ok'. It doesn't prove that the decrypted file is the one that you think the originator intended to send to you. It is likely that the decrypted document is the one intended, but the point I am trying to make is that DEN does not take the place of DSG.

Why keep these two functions so totally independent?

- If you want both Authentication of the content and Encryption of the content then you should use both profiles. The main reason to keep these independent functions is to recognize the long-term needs of both are very different. Specifically the impact on long-term key management. In the case of a digital signature, one must maintain knowledge of certificate validity, but one does not need to maintain the private key. In the case of encryption, if one wants to keep things encrypted for a long time, one must maintain the private key. Organizations will also want access to encrypted content of their individuals and often will archive the encryption keys (aka Key Escrow). Surely getting the key back must be a protected action, but there are legitimate needs. This is the reason why Keys are created typically for one or the other purpose and rarely for both purposes. Usually if they are created for both, the use is for communications (e.g., TLS, SSL, S/MIME).

Edited: Note there are many other reasons to have an independent signature such as to have multiple signatures, signatures at different times, counter signatures, co-signatures, signature just for source authenticity, signatures just to indicate the content was reviewed. See [Digital Signature](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html) for more on this.

For more information:

[IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

[IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

[Federated Identity](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html).

