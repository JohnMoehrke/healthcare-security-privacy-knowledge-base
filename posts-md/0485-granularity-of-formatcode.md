# Granularity of FormatCode

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/10/granularity-of-formatcode.html
Published: 2017-10-10T12:45:00.002Z
Updated: 2017-10-10T12:45:30.570Z
Author: John Moehrke

---

A Question was asked regarding FormatCode granularity, especially given that the [IHE defined FormatCode vocabulary](http://wiki.ihe.net/index.php/IHE_Format_Codes) seem to be defining much smaller concept relative to [HL7 defined FormatCode for C-CDA](http://wiki.hl7.org/index.php?title=CDA_Format_Codes_for_IHE_XDS).  Where the combined list is available in [FHIR as a ValueSet of FormatCodes](http://hl7.org/fhir/ValueSet/formatcodes) (updated in [current build](http://build.fhir.org/valueset-formatcodes.html))

Important background :: [Eating an Elephant -- How to approach IHE documentation on Health Information Exchange (HIE)](http://healthcaresecprivacy.blogspot.com/2013/12/eating-elephant-how-to-approach-ihe.html) and [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFd-3_0a93fvNYJZoiQI2mPVrsxQ1XTPMqNmMLL2DjQzhvLokFU6MIYwpnpoBNh0tfze0ruVKhRERPTAdA9hB2vhBC65oVj3SlXqf_NnZIlaTyHiOC_ftPFaz8PIoG1gOhaeqD1uYcmnCI/s1600/Slide2.PNG

**The FormatCode is there to differentiate 'technical format'. It is a further technical distinction more refined than the mime-type. So it is related to mime-type.**

FormatCode is not a replacement for class or type. In fact it is very possible to have the exact same type of content available in [Multiple-Formats](https://healthcaresecprivacy.blogspot.com/2017/03/multiple-formats-of-same-document.html). Including [FHIR Documents in XDS](https://healthcaresecprivacy.blogspot.com/2017/01/fhir-documents-in-xds.html)

It is true that IHE defined [FormatCodes](http://healthcaresecprivacy.blogspot.com/2015/10/ihe-formatcodes-are-mandatory.html)tend to be one-per-Profile, where as all of C-CDA R2.1 is one FormatCode. This difference in scope seems like a very big difference, but is at the technical level not different. That is to say that the IHE XPHR profile defines a unique set of constraints on the format of the content, where as C-CDA R2.1 similarly defines a unique set of constrains on the format of the content.

This is a good time to explain that what IHE calls a "Profile" is commonly what HL7 would publish as an "Implementation Guide". Thus they are often very similar in purpose.

While it is true that [XPHR has only one type (34133-9 Summary of Episode Note)](http://wiki.ihe.net/index.php/Exchange_of_Personal_Health_Record_Content_Profile), where as there are a set of unique use-cases that are each unique clinical 'type' of [document in C-CDA R2.1.](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=408) This is a good example of why formatCode is not the same thing as 'type'. Type expresses the kind of clinical content, where as FormatCode expresses the technical encoding used.

So the FormatCode focuses on the technical distinction as a sub type on mime-type; and should be as specific as necessary to understand the Profile (or Implementation Guide) set of constraints.

HL7 could have defined a set of FormatCodes for the second-level deep technical format within their C-CDA. They didn't, I was not there to explain why they didn't. However this should, in theory, not be a problem. It simply means that at the technical encoding level there is only one FormatCode, rather than a set for each sub-format. I don't know how useful this would be, but I would be glad to help the committee understand the benefit.

I am the one that maintains these vocabulary. Not because I am a party to the creation of the vocabulary values, but simply because I am willing.  If there are problems with any of these locations or values; please let me know. I hear rumor that there are problems, but until the problem is pointed out in specific detail, I can't fix it. This is especially true in FHIR where a Change Request (CR) must be filed.

- [Health Information Exchange: Centralized, Federated, or Distributed](http://healthcaresecprivacy.blogspot.com/2014/03/health-information-exchange-centralized.html)

- [Eating an Elephant -- How to approach IHE documentation on Health Information Exchange (HIE)](http://healthcaresecprivacy.blogspot.com/2013/12/eating-elephant-how-to-approach-ihe.html)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

- Other [articles on HIE](https://healthcaresecprivacy.blogspot.com/p/topics.html#HIE)

