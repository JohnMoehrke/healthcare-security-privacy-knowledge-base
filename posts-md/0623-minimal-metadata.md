# Minimal Metadata

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/08/minimal-metadata.html
Published: 2012-08-30T02:42:00.003Z
Updated: 2012-08-30T02:42:28.741Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjLN7PfHUwdEgVIlaSI2bs2wweuCNLUwOs9h2ojylFfQyoTDepTR9N0dcZHYyBGDevKgrQ2wzYUCDIjIcjlJ9H4dK60bb7RrVlFwDxjtyrrwP1L9dlyP4oxOBaii1ip1mZq-OHXfJYeqQbi/s1600/Document+Sharing+Metadata-760050.jpg

This is related to Meaningful Use Stage 2, at least that is my theory in [Karen's Cross or just Minimal Metadata](http://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html). So, what is â€˜minimal metadataâ€™? I have discussed [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html). This discussion includes background on why metadata exists in the first place, and breaks down the IHE metadata into metadata purposes. This maximum viewpoint of Metadata for Healthcare Sharing is far more focused on supporting a Publication and Discovery model of a Longitudinal Health Information Exchange. Note that even with XDS much of this metadata is not mandatory, but is defined so that those that need to communicate the concept do it in an interoperable way.

The scope of Metadata to support a short-term PUSH transactions is a bit more simple. Further even in a short-term PUSH transaction there can be a minimalistic viewpoint, actually 2 flavors of minimum. When IHE re-used the XDS transactions and metadata model for PUSH like transactions in XDM and XDR; there was not a critical review of the minimal metadata. For the most part we published the very same requirements and figured Public Comment or Trial Implementation would push-back if it was unreasonable. There was very little push-back. But in hindsight IHE needs to recognize that the audience at the time was mostly those with a XDS viewpoint, so there was not a critical view.

Along came the Direct project. Where there was a totally new audience, and as Wes is known for saying â€œChange the consensus group, change the consensusâ€.  So, the Direct Project looked at the metadata requirements for IHE XDR, and downgraded some from mandatory to required-if-known.  This is to some a huge change, but I really donâ€™t see it as a big change. Most who would have seen a mandatory field and not having an answer would have either already sent it blank, or would have put static filler there. But, letâ€™s look at the details.

**What is Direct Minimal Metadata?**You can get the full details from the [XDR and XDM for Direct Messaging specification â€“ Section 6.0](http://wiki.directproject.org/XDR+and+XDM+for+Direct+Messaging+Working+Version#XDR and XDM for Direct Messaging Specification-6.0 Metadata) Here is the short version of the **_13 metadata items_** Downgraded from  Mandatory (R) to Required-If-Known (R2). The main reason is that this information is really not all that useful to a PUSH, it is more useful to a Query. The second reason is that this information is not typically found in an ambulatory or very low end clinic, or at least not in a highly structured and coded way.

Direct Downgraded from Mandatory (R) to Required-If-Known (R2)

- Document Entry Metadata

- classCode

- confidentialityCode

- creationTime

- formatCode

- healthcareFacilityTypeCode

- languageCode

- patientId

- practiceSettingCode

- sourcePatientId

- typeCode

- Submission Set Metadata

- author

- contentTypeCode

- patientId

**IHE Liked it!!!**
IHE looked at this evaluation and ACCEPTED ALL and downgraded even MORE

- Document Entry Metadata

- author

- Folder

- codeList

- patientId

Actually IHE not just accepted these but for XDM it made this the base rule. For XDR there is a special Actor â€œMetadata-Limited Document Sourceâ€ that is allowed to use these relaxed rules. This was done to allow the Recipient to know which validation rules it can enforce, and to allow deployment specifications to be specific.

 **So why bother with metadata?** The reason is that if the sender DOES know this information, it is useful to the recipient. Therefore if the sender has it, then it should be communicated (R2); and if it is useful to communicate that it should be communicated in an interoperable way. Given that these are just XML attributes, being empty or full doesnâ€™t much matter. Remember the Transports are content agnostic, capable of carrying a CDA just as well as a PDF. This enables historic information, current information, and future formats we have not yet thought of. Content agnostic transport is a powerful thing, as is a reasonable set of metadata.

**Additional Direct Special Considerations**In order to code Direct Address elements in the metadata, extensions were defined for the author and intendedRecipient attributes. Tricks (Profiles) on how to make this happen in a reliable way. Again to assure best interoperability.

 **Conclusion**If ONC only wanted to specify that Minimal Metadata should be considered acceptable, they could have done that using the base XDM profile without modifications, which happen automatically to the already "[Direct Project Applicability Statement](http://wiki.directproject.org/file/view/Applicability+Statement+for+Secure+Health+Transport+v1.1.pdf)" otherwise know as Transport (a). Meaning they already get minimal metadata with the base Direct specification, as the base XDM specification is already built into Direct.

And for XDR they could have called upon the â€œMetadata-Limited Document Sourceâ€ actor.

Even if they donâ€™t like calling upon IHE specifications they could have just called on section 6 of the [XDR and XDM for Direct Messaging specification](http://wiki.directproject.org/XDR+and+XDM+for+Direct+Messaging+Working+Version#XDR and XDM for Direct Messaging Specification-6.0 Metadata)

I hope that this is what [Transport (b) means](http://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html)

