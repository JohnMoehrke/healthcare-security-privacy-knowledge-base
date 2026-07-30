# FormatCode granularity 

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/01/formatcode-granularity.html
Published: 2018-01-31T17:42:00Z
Updated: 2018-01-31T17:42:36.468Z
Author: John Moehrke

---

I was asked the following question:

>
Confused as to the granularity required for formatCode.
The HL7 link seem to be at a course level:
[http://wiki.hl7.org/index.php?title=CDA_Format_Codes_for_IHE_XDS](http://wiki.hl7.org/index.php?title=CDA_Format_Codes_for_IHE_XDS)

>
but a recent update has format code at a document specific level:
[https://wiki.ihe.net/index.php/IHE_Format_Codes](https://wiki.ihe.net/index.php/IHE_Format_Codes)

>
This links to FHIR and I assume MHD
[http://hl7.org/fhir/valueset-formatcodes.html](http://hl7.org/fhir/valueset-formatcodes.html)

Any advice?

----------------------------------------------------
My response

The FormatCode is there to differentiate 'technical format'. It is a further technical distinction more refined than the mime-type. So it is related to mime-type.

FormatCode is not a replacement for class or type. In fact it is very possible to have the exact same type of content available in multiple formats.
    [See article: Multiple Formats of same document](https://healthcaresecprivacy.blogspot.com/2017/03/multiple-formats-of-same-document.html)

Including FHIR Document [See article on FHIR Documents in XDS](https://healthcaresecprivacy.blogspot.com/2017/01/fhir-documents-in-xds.html)

It is true that IHE defined FormatCodes tend to be one-per-Profile, where as all of C-CDA R2.1 is one FormatCode. This difference in scope seems like a very big difference, but is at the technical level not different. That is to say that the IHE XPHR profile defines a unique set of constraints on the format of the content, where as C-CDA R2.1 similarly defines a unique set of constrains on the format of the content.

This is a good time to explain that what IHE calls a "Profile" is commonly what HL7 would publish as an "Implementation Guide". Thus they are often very similar in purpose.

While it is true that XPHR has only one type (34133-9 Summary of Episode Note), where as there are a set of unique use-cases that are each unique clinical 'type' of document in C-CDA R2.1. This is a good example of why formatCode is not the same thing as 'type'. Type expresses the kind of clinical content, where as FormatCode expresses the technical encoding used.

So the FormatCode focuses on the technical distinction as a sub type on mime-type; and should be as specific as necessary to understand the Profile (or Implementation Guide) set of constraints.

---------------

Further questions are welcome.

