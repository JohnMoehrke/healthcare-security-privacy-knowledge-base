# AI use Transparency in Healthcare: Building Trust Through Provenance

Originally posted: https://healthcaresecprivacy.blogspot.com/2025/09/ai-use-transparency-in-healthcare.html
Published: 2025-09-18T18:40:00.001Z
Updated: 2025-09-18T18:43:00.163Z
Author: John Moehrke

---

I want to bring some additional visibility to a project I am involved in regarding AI transparency in Healthcare. The goal of Transparency is to be able to indicate when data in the Medical Record has been influenced by AI, this is an important goal to providing Integrity of the use of AI.

The Challenge: A Spectrum of AI Influence

The goal of our project is to indicate the level of AI influence on medical data. This isn't a simple "yes or no" question, but a spectrum that includes:

- **AI-authored data:** The data was created entirely by an AI.

- **AI-recommended data:** An AI suggested the data, and a human approved it.

- **AI-assisted data:** An AI helped a human in some way, but the human was the primary author.

To address this, we're using two key approaches: data tagging and provenance.

Data TaggingWith data tagging, this is simply a tag of the kind of interaction that the AI had with a data object. So it is not useful to explain the details of the interaction beyond a generalizable kind of interaction. This tag is however helpful as a flag for those who want to know when data was influenced.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhFvbJyFk5B1YEbhwc5IvltBJm2dI4GnHu-94900ocqTu9_BESiAYP57-wGcI7cRlXSNCKHWVSuvquCWdp8ajFTu8-bY2ky0E2ZpS2J2Hwxk0-n_QpL5T_Qun6JPqnmSenM94Ic9HLhCCT4Zfio3Wq0O74bFqAR3Iuw0h9sId0VxgiNGtWBgzckG-jqS98F/s1408/Gemini_Generated_Image_5wcex5wcex5wcex5.png

One use of a simple tag is to recognize that the object may be not original thinking. There might be recognition that data that has been influenced by AI might not be as useful to train future models. The tag might also be used simply to know that there is more details in a Provenance.

ProvenanceWith Provenance we can carry details about what AI, what version, what model, what prompt, what card, etc. The FHIR Provenance is a derivative of W3C PROV, reformed to the data encoding standard that HL7 has based on RESTful Resources.

We are trying to reuse more general AI standards such as model-card, but find that there is a lack of consensus. I am confident that the HL7 group will use external standards as appropriate.

One might need to know this level of detail to understand the usefulness of the output. One might also use this Provenance to track down AI influence that may have been determined to be suspect or incorrect. This might find decisions that need to be reevaluated.

Element level, not just Resource levelBoth data tagging and Provenance have methods of focus on the element level, rather than the whole Resource. For some resources the whole resource is all that is needed to be tagged or referenced, but for some more workflow specific Resources like CarePlan, there are some data within that might be influenced while the whole is not. So, this element level is supported by both Data Tagging and [Provenance](https://build.fhir.org/provenance.html#element)solutions.

Concerns with Provenance modelA concern I heard was voiced at the connectathon this weekend is that Provenance is hard to work with. I think this is just an educational issue. Provenance is different in that Provenance.target points at the resources for which it is describing the provenance of; and thus the targeted resource does not contain some evidence of the Provenance. There are a few solutions to this:

- Use the Data Tag to indicate that the data was influenced by AI, and this gives evidence that searching for Provenance might be useful. When the AI tag is found, one just searches for Provenance with a target equal to the resource you have.
- Put the Provenance inside the Resource. FHIR supports a concept of a Resource "containing" another resource. This is used when the contained resource can't stand alone, but can also be used where the outer Resource really wants to carry the inner Resource
- Searching for resources, one can use the ["_revinclude" parameter](https://build.fhir.org/search.html#_revinclude) to also include any Provenance. Indeed, _revinclude is defined for anything, but the example given is Provenance.

Developing Implementation GuideThe HL7 implementation guide is in development so I don't, yet, have a formal publication to point at. The CI build is -- [https://build.fhir.org/ig/HL7/aitransparency-ig/branches/main/index.html](https://build.fhir.org/ig/HL7/aitransparency-ig/branches/main/index.html)

All of the above discussion is already included in this Implementation Guide.

I have other blog articles on [AI controls](https://healthcaresecprivacy.blogspot.com/2025/02/ai-privacy-controls.html)

Learning Dataset ProvenanceWearing a different hat, I was a standards expert contract with [Data and Trust Alliance](https://dataandtrustalliance.org) to help them define a Provenance standard for the datasets that are offered to be used as source-learning material. [https://dataandtrustalliance.org/work/data-provenance-standards](https://dataandtrustalliance.org/work/data-provenance-standards)

ConclusionThese are developing, so please get involved to help us address your use-case and learn from your experience.

