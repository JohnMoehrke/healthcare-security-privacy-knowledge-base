# Proposal for confidentialityCode vocabulary

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/08/proposal-for-confidentialitycode.html
Published: 2011-08-30T15:43:00.001Z
Updated: 2011-08-30T15:43:29.524Z
Author: John Moehrke

---

I have been complaining about the definitions of the confidentiality codes both in the active HL7 development and in my past posts:

- [Data Objects and the Policies that Control them](http://healthcaresecprivacy.blogspot.com/2011/01/data-objects-and-policies-that-control.html)

- [ConfidentialityCode can't carry Obligations](http://healthcaresecprivacy.blogspot.com/2010/09/confidentialitycode-cant-carry.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

My main reason for not simply providing my own definitions was to allow for discussion on my concern that we have conflated the confidentialityCode meaning with consent status.  My point is that the current consent status can affect all of the confidentialityCodes, not just the R or V.

I figured we should learn from the experience of the [military data classification](http://en.wikipedia.org/wiki/Classified_information), a system that deals with very sensitive data in a different way. (Note that we are already ahead of the military in that we have a global vocabulary, take a look at the mapping mess that is military data classification).  In the case of the military classifications they use relative â€œharm to the countryâ€ as their measure. Yes this is different than healthcare information, but I think we can see that â€œharm to the patientâ€ is what we have been discussing. Especially if we look at â€˜harmâ€™ in a broad sense that includes

- reputation damage,

- emotional damage,

- family relationship damage,

- financial damage, and

- physical damage (safety).

(possibly more, I havenâ€™t fully described patient harm in this context yet).

I think it is very legitimate to include in our definitions contemporary examples from well-known countries policies. Such as in the USA with HIPAA vs 42 CFR Part 2.

**So, here is a potential draft using the existing codes, just new definitions**

- **U â€“ Unrestricted** â€“ No specific patient is identified and thus there is no patient harm risk

- **L â€“ Low** â€“ Data has been de-identified and there are mitigating circumstances that prevent re-identification such that there is remote harm risk to the patient if the data were exposed. The data however still requires protection from exposure outside intended use.

- **M â€“ Moderate** â€“ Data are identifiable but consists of modest clinical information that would present moderate harm risk to the patient if the data were exposed. Example include an emergency-data-set made up of non-sensitive problems, allergies, and medications.

- **N â€“ Normal** â€“ Data are identifiable and of typical health information that would present typical harm risk to the patient if the data are exposed. This code is used for the majority of clinical information. Examples include what HIPAA identifies as Protected Health Information.

- **R â€“ Restricted** â€“ Data are identifiable and of an especially sensitive nature that would present a high risk to the patient if the data are exposed. Examples include the data topics identified in USA 42 CFR Part 2 â€“ â€œCONFIDENTIALITY OF ALCOHOL AND DRUG ABUSE PATIENT RECORDSâ€.

- **V â€“ Very Restricted** â€“ Data are identifiable and of extreme sensitive nature that would present a very high risk to the patient if the data are exposed. Data in classified Very Restrictive should be kept in the highest confidence.

Just a start, feel free to take, leave, or update

