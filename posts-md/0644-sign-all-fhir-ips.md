# Sign all the FHIR IPS

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/07/sign-all-fhir-ips.html
Published: 2024-07-31T15:38:00Z
Updated: 2024-07-31T15:38:32.534Z
Author: John Moehrke

---

The International Patient Summary (IPS) is gaining more and more visibility as it gets more mature. The IPS is a Document, and there is a definition for this document using CDA and using FHIR. The [FHIR Document](https://www.hl7.org/fhir/uv/ips/) is the one most are interested in. At the technical level, they are equivalent, and they meet the same abstract definition defined by ISO/CEN. But FHIR is the hot new standard, so everyone wants to use it. More details on [IPS background and process is available](https://international-patient-summary.net/).

The IPS can be carried in all of the [Document Sharing methods that IHE](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) has available. This is explained in the [IHE Sharing of IPS Implementation Guide](https://profiles.ihe.net/ITI/sIPS/index.html).

The IPS can also be carried by many other methods. Including where the patient just emails it, or uploads it, or otherwise shares it.

Is it AuthenticSo, when an IPS is consumed, how does one know that it is authentic to what the author intended?

This could be simply trust in the transports that got the IPS to you. IHE Document Sharing includes trust frameworks. Most patients are not out to deceive, so they tend to provide authentic data.

But any method of getting you the content has the possibility of having 'trusted intermediaries' or 'malicious intermediaries'.  Some IPS may bounce around many places before getting to you. Anyone that is between you and the author have the possibility to change the content, so how can you detect a change?

CDA and FHIR Documents don't come with a form of integrity check. So, changing them along the way is easy.  The change might be an appropriate change, like adding consistent clinical codes to all the data so that it is easier to consume. These changes may be beneficial, or malicious. These changes might be appropriate, or dangerous. So detecting changes is important but not enough, see discussion at the end of this article.

Thus, how do you have "end-to-end", vs "point-to-point" trust?

Digital SignatureThe only way to get end-to-end **authenticity proof** is to have Digital Signatures. A Digital Signature uses cryptographic algorithms, not to encrypt the content, but to provide a mathematic proof that the content you got is the content that was signed. It is important to know that a Digital Signature does not keep the content from being seen or copied; and there is no way to keep the Digital Signature from being removed. But if there is a Digital Signature available, then it can be used to validate that the content you got is exactly what was the content that was signed.

FHIR R4 has some Signature datatypes and recommendations. But there is very little experience with these, and there is not a defined way to sign a FHIR Document. That is to say that the 'canonicalization algorithms' that are defined for use with digital signatures do not exclude the Bundle.signature element, and thus will fail to work. This method of [signing is a focus for FHIR R6, so experience and improvement](https://hl7.org/fhir/signatures.html).

IHE Document Digital Signaturehttps://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjK7W_jeufOE41iUq7ANEjtLFc0gzzj7eO32kUhsS0NgOEvzYHWhsUA93Oxwa-6wugfxE1PmAfRdug1m_Mg3XmLxnf5ujZdQ0gv72CzSFC8PWnCfLGOtKUGpcCpb6plBSxf9G79OvgwwBuouu4KkVQXNQEJHtcY7ZqQ72uOL_r1LVUwMxmILt59FBPCqLkJ/s1280/Figure_37.4-1.png
IHE has a [Document Digital Signature (DSG)](https://profiles.ihe.net/ITI/TF/Volume1/ch-37.html) profile that can be used to sign ANYTHING. Thus it can be used to sign a CDA document, and also a FHIR Document. The DSG has historically profiled XML-Signature but has now been updated with a profile JSON Signature.

DSG is mostly used with IHE Document Sharing, where the document is shared normally and there is an association to the signature document. The signature document is either an XML-Signature or a JSON Signature. The signature technology has no relationship to the technology of the signed document. Thus, one can use JSON Signature to sign a CDA document, and you can use XML-Signature to sign a FHIR Document encoded in JSON. The signature is across the bytes that are stored of the signed document. Thus, there is no canonicalization of the signed document, just the serialization to put that document into Document Sharing. With this method, when you have a document received over Document Sharing, you can look for a SIGN association to find any signatures. You can then validate that signature against the document you received.

DSG also has options for enveloping of the document. This would tend to be used when Document Sharing is not used. In this method the signed document is enveloped within the Signature. The benefit is that the signature and document are in one object, thus less likely to be accidently lost. But, any use of the document must pull it out of the envelope, which makes use of the document significantly harder.

Long-Term Infrastructure The signing of a document is rather easy, many tools are available that can do these for you. The validating of a signature is also mostly easy, using available tools.

The hard part is that when validating a signature, you MUST check the date/time stamp and validate that the signing certificate was valid at that date/time.

And to support that, the PKI must be designed and managed to support this certificate validation well into the future. Thus, the signature must be able to meet "Long Term" requirements, and the certificate management must also meet "Long Term" requirements. This is unusual with Certificate Management today, which focuses on TLS (https) certificates that don't need to be remembered for decades.

Governance of SigningIt might be a good idea for all authors of IPS documents to sign them. However, this might also not be helpful overall. So, let's look at some factors involved in the signing.

- What is the meaning of the signature. The signature will/should include an [indication of the intended type](http://hl7.org/fhir/ValueSet/signature-type) of the signature. Such as ProofOfOrigin, ProofOfCreation, Author's Signature, Source Signature, or Timestamp Signature.

- The signature may be applied by someone other than the author as an endorsement of the IPS content: Review Signature, Modification Signature, Addendum Signature, etc.

- What format of digital signature will be used and what encoding of the IPS will be signed. Any conversion of the IPS (e.g. from FHIR XML to FHIR JSON) will break any signature, thus you want to be sure to sign the encoding form that the recipient will get.

Governance of ValidatingWith Digital Signatures there is an important need for governance on how to handle receiving an IPS.

- Do you process an IPS that has no signature?
- Do you warn the user that there is no signature, but continue to process?
- Do you not validate the signature?

- not unusual to only validate the signature when there is a specific need, such as a legal challenge.

- What do you do when a signature is present, but it is invalid?

- Do you not process the IPS at all?
- Do you allow the user to continue to process the IPS?

Authorized modifications
Any modification will break the signature. However, there are methods that can be used to support authorized modifications.

When using IHE Document Sharing, the original document will still exist, and the modification can have an association with the original. This one can validate the original and new.

A more general solution would leverage the trust in the authorized modifier. This authorized modifier would be required to validate the signature of the content it consumes, and it would be required to place a signature on the new content. In this way the new signature on the new content is a proof of authenticity on the new content, and by way of the purpose of the signature it can also be viewed as a statement that the original signature was validated.

This could be done using FHIR Provenance, but that is a much more detailed article.
ConclusionsThis article started with an assertion that all IPS should be signed by the author of that IPS. I point out that the signing and validating technology is very mature; but that the long-term need presents special requirements for the PKI supporting the signing identities.

One could rely on Document Sharing to provide the infrastructure for making the signatures available, or one could use enveloping signatures. The enveloping signatures add even more requirements regarding signature format, content encoding, content serialization, and content accessibility.

I have been involved in the Digital Signature domain for 30 years. Not much has changed in that time, but there is also no broad use of Digital Signatures as described above. This is because the infrastructure and governance are far more difficult and expensive than the benefit that signatures bring.  There are far more to it than I have expressed here. There is no shortcut, these are all needed.

