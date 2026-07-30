# IHE FormatCodes are mandatory

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/10/ihe-formatcodes-are-mandatory.html
Published: 2015-10-16T20:27:00Z
Updated: 2015-10-16T20:27:00.852Z
Author: John Moehrke

---

The expectation that the IHE ITI Technical Committee had on formatCodes was that the Affinity Domain would not want random and unspecified documents registered. As documents that can't be understood by Document Consumers are not helpful to the Affinity Domain. The Affinity Domain, which is some kind of an organization, would have some Process where those that had a new format would argue the usefulness of their document format. This Affinity Domain process would, if approved, add that formatCode to the acceptable formats in that Affinity Domain, thus triggering the Registry requirement to validate formatCodes.

These codes would be either pre-coordinated, such as with IHE Document Content profiles; or would be assigned by the Affinity Domain.   In this way the Affinity Domain would be able to make sure that only document types that they agreed with would be registered, and those that were not approved would be rejected. The rejection of a document type in this case could trigger the people using that specific Document Source to come to the Affinity Domain organizers and follow their Process to get their format approved. In this way the Affinity Domain starts with nothing approved. Even the IHE defined Document Content profiles are not pre-approved. Just because a formatCode exists does not mean that it is understood by Document Consumers, or that it is considered useful within that Affinity Domain.

Formats not defined by IHE are thus registered as Affinity Domain specific codes. Cases where a JPEG or PNG mime-type is needing to be registered could be discussed within that Affinity Domain to understand the details on what kind of a document is actually being recorded. The Affinity Domain could decide that the JPEG or PNG file is appropriate to register as it has a specific value, and it would assign an Affinity Domain specific code to be used. It is likely that the Affinity Domain would assign a more specific code than the Mime-Type, as they would recognize the medical significance of the JPEG. Thus the Affinity Domain could recognize multiple JPEG files for various purposes (One could point out that this variance is better managed with typeCode and classCode).   This does not diminish the usefulness of mime-type, as often that is all the Document Consumer cares about.

I am not sure IHE ever said that the Registry couldn't have been told that it's validation requirement for formatCode was to accept all codes (.*). We simply put in that it was required that validation rules would existâ€¦

The question that triggered this post is one that asks for a general
mechanism where the document is really not more distinguishable at the
FormatCode level than is already defined by the mime-type. One
alternative suggested is a blanket FormatCode (undifferentiated), a set
of blanket FormatCodes (image, text, etc), or allowance to use mime-type
 as the FormatCode (which would need some codesystem). For example where the file is simply a picture from a phone-camera, a JPEG. Note that all the other metadata is useful and not in question, just not clear what to do with FormatCode.

I would push back on requests to just accept all JPEG; as I am sure
there is more detail. I am guessing that we would understand that
although the file format is JPEG, that the use-case is specific to
something. (Note I am not picking on JPEG specifically, but using it as a
 representation of any class of mime-type identified document)

So this is why we defined formatCode as mandatory, and why we didn't define a type for 'any'â€¦ We wanted the Affinity Domain to be in control.

More blog articles on [Document Sharing Management (Health Information Exchange -  HIE)](http://healthcaresecprivacy.blogspot.com/p/topics.html#HIE)

