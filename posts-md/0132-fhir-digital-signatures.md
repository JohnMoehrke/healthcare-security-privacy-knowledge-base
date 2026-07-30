# FHIR Digital Signatures

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/08/fhir-digital-signatures.html
Published: 2024-08-12T18:23:00.006Z
Updated: 2024-08-12T18:23:49.481Z
Author: John Moehrke

---

There is a FHIR leadership desire to have the [FHIR Data Type "Signature"](https://build.fhir.org/datatypes.html#signature) normative in FHIR R6. The ballots leading to FHIR R6 will give us a chance to test with the community their interest in this Data Type being ready to be called Normative. However so far to date it has not received much attention.

The [FHIR Signature Datatype](https://build.fhir.org/datatypes.html#signature) is less concerning than all of [Digital Signatures](https://build.fhir.org/signatures.html). That is to say that what would be declared normative in the FHIR Signature Datatype is the FHIR structure. The actual digital signature is a blob, that is ruled by other standards such as XML-Signature and JSON Signature. This makes the FHIR Signature Datatype not all that risky to make normative.

The[FHIR Signature Datatype](https://build.fhir.org/datatypes.html#signature) just exposes in easy to process FHIR structure some of the important elements of a signature. These elements are expressed as copies for convenience, and thus if you must trust these values, you must process the digital signature blob and pull the values from within that signature blob. This because the Signature Datatype is not cryptographically protected, but the Digital Signature blob is.
Electronic SignatureIf you don't need the protection provided by a Digital Signature, but only need an Electronic Signature, then the FHIR Signature Datatype is all that you need. In this case you would not have a Digital Signature blob. You would be trusting your infrastructure, and the Signature datatype carries

- What does the Signature mean
- When was the Signature applied
- Who Signed
- Who was the signer signing on behalf of (delegated signature)

An Electronic Signature can be considered a legal signature in many jurisdictions and for many purposes. An Electronic Signature trusts the infrastructure, but is still important as it provides for tracking the act of signing in a standardized way.

An addition to the above simplified Electronic Signature, could be some kind of an image of an ink on paper or equivalent (like is common on kiosks asking for a scribbled signature on the keypad). This would be recorded in the Signature.data (aka blob) but the mime-type would indicate that it is a JPEG or PDF. Thus not cryptographically proven, just a rendering.Digital SignatureDigital Signatures add a standards based cryptographic proof. Thus the technology does not need to be trusted, and does not need to be the same technology throughout the process. Cryptographic signatures use a Cryptographic Signature standard such as XML-Signature or JSON-Signature; to create a mathematical proof of the content at the time of signature, that can be validated at the time of use of the content.

Critical to a Digital Signature success:

- Agreed Key Management
- Agreed signature standard
- Agreed timesource or timestamp signature use
- Agreed encoding of the FHIR content that is signed (could be both forms if you need that)
- Agreed elements of the FHIR content that must not change (and thus what elements are allowed to change) -- aka canonicalization (see later)
- etc.

I'm not going to cover all of these. Just some of these that might be able to be nailed down by FHIR standard or by Implementation Guides that are purpose specific and/or regional specific.

Digital Signature Standard usedThere are some [profiles of XML-Signature](https://build.fhir.org/datatypes.html#XML) and [profiles of JSON Signature](https://build.fhir.org/datatypes.html#JSON)directly below the [FHIR Signature Datatype.](https://build.fhir.org/datatypes.html#signature) These are based on standards that are more broadly used that FHIR, so we have some confidence that they are good standards to recommend. These do emphasize "long-term" need for the Digital-Signature, this is a specifically recognizing that there may be months or years between the signing event and when that signature will need to be validated. When there is a "long-term" need, there is more requirements. With short-term, one can presume that the validator has the same kind of environment (such as time, revocation checking, pki access) as the signer. The use of short-term or long-term is a profiling possibility.
CanonicalizationCanonicalization is a very important part of Digital Signatures. The canonicalization algorithm assures that the validation is looking at the same elements in the same order with the same encoding as the signer used. The concept of canonicalization is more mature with XML, but is understood in JSON too.

Within that section we do point at some canonicalization rules that have been defined

- for XML -- [https://hl7.org/fhir/xml.html#canonical](https://hl7.org/fhir/xml.html#canonical)
- for JSON -- [https://hl7.org/fhir/json.html#canonical](https://hl7.org/fhir/json.html#canonical)

Within these there are canonicalization for everything, the mostly static stuff, just narrative, etc... These were things you were asking about. We do have these.
Use-case specific Canonicalization An important part of selecting a canonicalization algorithm is tied to your use-case. Specifically, what should be allowed to change over-time, while still proving that what the signer intended is preserved. An example given on a [zulip thread is Medication Prescription](https://chat.fhir.org/#narrow/stream/179247-Security-and-Privacy/topic/Signing.20resources.20that.20include.20a.20%27status%27.3F). That which is prescribed is a subset of the elements of the MedicationRequest resource over time, as the MedicationRequest will be embellished to follow the prescription path and workflow. For example when the prescription is written, the prescriber would be only intending it as a prescription, and thus the MedicationRequest.status as active, yet when the MedicationRequest is exhausted it is marked complete. This status is not important to the prescription signature proof; so it should be excluded. So, this is a good example of a need for an Implementation Guide to cover prescription digital signature workflow, and define a canonicalization algorithm.

The signature blob would indicate the canonicalization algorithm used, so the validator can be checking properly. However, this means that the validator must agree with the use of that canonicalization algorithm, signature purpose, signing time, and signer.

Note that the signer and the signature-validator do need to agree on what form (json/xml) will be signed, and what canonicalization is needed. We do have the Signature datatype able to carry many signatures, for those environments that want to force a signer to sign many ways.
Signature Chaining with ProvenanceAny exclusion from the signature is a potential problem. The whole resource should be signed. This can be done with some infrastructure. First, your server would need to be preserving history (versioning), thus the original signed resource is known not just by the id, but also the version.

Later, when the medication status changes from "active" to "complete", a version of the medication is created, AND new Provenance will be recorded for that change. This new Provenance expresses who/what/where/when/why that change was made. This new Provenance can state that prior to the change the signature was validated, and after the change was made this is the new signature.

How do you do this? You do it in the digital signature object itself so that there is cryptographic proof. In this way you are using digital signature standards to do what digital standards are designed to do. Thus, the Provenance.signature blob on an update covers both the original, and the updated.

You just need a policy for how the signature is derived when an UPDATE happens, vs when a CREATE happens. This is that policy that the signer and validator need to agree upon. The cryptographic proof is solid.

This method of using resource versioning, and Provenance signature transition proofs will work for any change. Even those pesky maintenance ones... provided the validator agrees that the maintenance signatures are acceptable... proving yet again that the validator must check everything. In this case, they must check all the Provenance.signature going back to the original, one by one.
ConclusionThe FHIR Signature Datatype is likely good enough to go into Normative when FHIR R6 happens. But I am sure there is still plenty of work to do on the Digital Signature front. What standard, what encoding, what canonicalization, what timestamp, etc. I think the important next steps are some high-value use-case specific Implementation Guides. I am not confident that there is any easy generic solution.
Archive of articles

- [Sign all the FHIR IPS](https://healthcaresecprivacy.blogspot.com/2024/07/sign-all-fhir-ips.html)
- [IHE IT-Infrastructure Summer 2024](https://healthcaresecprivacy.blogspot.com/2024/07/ihe-it-infrastructure-summer-2024.html) - Document Digital Signature with JSON signature option
- [FHIR Document Digital Signatures](https://healthcaresecprivacy.blogspot.com/2021/08/fhir-document-digital-signatures.html)
- [Blockchain Provenance Service](https://healthcaresecprivacy.blogspot.com/2019/03/blockchain-provenance-service.html)
- [IHE Document Digital Signature (DSG) Profile approved for Final Text](https://healthcaresecprivacy.blogspot.com/2017/04/ihe-document-digital-signature-dsg.html)
- [Extending the FHIR standard to handle provenance](https://healthcaresecprivacy.blogspot.com/2016/07/extending-fhir-standard-to-handle.html)
- [On-Behalf-Of - FHIR Signature datatype update](https://healthcaresecprivacy.blogspot.com/2016/06/on-behalf-of-fhir-signature-datatype.html)
- [IHE MHD and DSG now open for Public Comment](http://healthcaresecprivacy.blogspot.com/2015/01/ihe-mhd-and-dsg-now-open-for-public.html)
- [Digital Signatures on FHIR](http://healthcaresecprivacy.blogspot.com/2014/12/digital-signatures-on-fhir.html)
- [CDA Digital Signatures inside](http://healthcaresecprivacy.blogspot.com/2014/10/cda-digital-signatures-inside.html)
- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)
- [Signing CDA Documents](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html)
- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)
- [Non-Repudiation is a very old art](http://healthcaresecprivacy.blogspot.com/2011/11/non-repudiation-is-very-old-art.html)

