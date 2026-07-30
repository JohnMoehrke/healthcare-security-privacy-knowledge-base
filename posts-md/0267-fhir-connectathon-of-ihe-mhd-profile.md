# FHIR Connectathon of the IHE-MHD Profile

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/09/fhir-connectathon-of-ihe-mhd-profile.html
Published: 2017-09-11T17:58:00.002Z
Updated: 2017-09-11T20:32:18.199Z
Author: John Moehrke

---

There were three brave soles willing to try IHE-MHD Profile here at the FHIR Connectathon.

- Diego Kaminker (ALMADOC project / Argentina)

- Fernando Campos (ALMADOC project / Argentina)

- Simon Knee (NHS Digital / UK)

They did all the hard work. I just answered questions and such...

They had a specific goal: They wanted to test the IHE-MHD Profile against general purpose FHIR Servers. Specifically FHIR Servers that have not declared IHE-MHD Profile, but which do declare support for the fundamentals that IHE-MHD needs.  This task is important as it is a way of testing how well I did at writing the IHE-MHD profile. How well did I stick close to FHIR (STU3), and how well did I inform the audience of the deviations.

I tried really hard to write IHE-MHD in away that a general purpose FHIR Server would work. However this was not the intended scope for IHE-MHD. The intended scope or IHE-MHD was as an API to an XDS, XDR, or XCA environment. Thus when I wrote IHE-MHD, I did have to constrain it in ways that a general purpose FHIR Server might not support.

This said, there was some big surprises.

I will summarize the reportout, It is [available](https://www.dropbox.com/s/hrbuj69fs1x61er/MHD_STU3_TRACK.pptx?dl=0), with the actual XML examples and evidence.

Test Procedure

>
1. Document Source: New Document (1 binary attachment included in the bundle)

2. Document Source: No binary attachment in the bundle â€“ binary file referenced from external server

3. Document Consumer: Search by Filter Combination

>
1. Subject  by identifier

2. Document Class / Type

3. Document Creation Date Range

4. Document Consumer: Direct Binary Document Retrieval

>
Notes: For this connectathon, we had not specified security / authentication requirements, like token / RBAC / etc.

>
Testing: Servers: with HAPI, Vonk, Grahame's server

>
Clients: plain REST with Chrome Restlet Client (Almadoc), Postman/Eclipse (LDP)

 Results
1 - During a ITI-65 "Provide Document Bundle", that carries both a Binary and a DocumentReference that points at that Binary, MHD expects that the DocumentReference.content.attachment.url would be "fixed up" by the server. That is when the server persists the Binary, and thus fixes up the Binary id from a URI (GUID) to a URL on the server, that new URL would be placed into the DocumentReference.content.attachment.url, which previously held the same URI (GUID) from the Bundle. This behavior does work when the FHIR Reference datatype is used, and did work in prior versions of FHIR (Prior to the Reference becoming a complex datatype vs just a flavor of URL), and the example in the FHIR specification shows this fixup behavior.

- I created a CP to fix this See [GF#13823](http://gforge.hl7.org/gf/project/fhir/tracker/?action=TrackerItemEdit&tracker_item_id=13823)

- Recommend that in a Transaction, that URL fixup is done just like it is with Reference.

- some zulip chat recommended that DocumentReference.content.attachment.data be used, but there are many problems with that. Most of all that it is very counter to the IHE XD* use-case need.

- If this isn't resolvable, then the next revision of MHD might need to define ITI-65 as a FHIR Operation, rather than using the Transaction. I don't think this should be done until FHIR STU4. But I would entertain someone wanting to define this as an option. However I would remind everyone that IHE-MHD is not trying to use general purpose FHIR Servers, it is as an API to XD*.

- One cold just do two transactions. One to create the Binary, then create the DocumentReference with a client fixedup URL. This can be done with general purpose FHIR Servers, but would be counter to the target for IHE-MHD being an API to XD*.

- I will write a CP to MHD to make this more clear as an MHD imposed requirement of MHD servers.

2 - Already known issue #MHD_048 -- This was not a new issue, since we knew of it. But this issue was not obvious in the MHD text, so it caused issues. The default behavior for a general purpose FHIR Server is that one can't search against "contained" resources. In IHE-MHD we just left this as an open issue, we didn't try to solve it completely.

- Turns out that one [CAN query on contained resources](https://www.hl7.org/fhir/search.html#containedType).

- The bad news is that one can't tell if this will work from a servers conformance resource.

- I will write a CP that uses this feature that I didn't notice.

3 - Search on Patient.identifier -- An issue I simply didn't expose as much as I could have. This is a chained search, and will only work when the server you are querying against also hosts the Patient resources. For example: Imagine a FHIR Server that holds all of the DocumentReferences (the MHD server), and a different FHIR Server that holds the Patient resources (likely available via PDQm or PIXm). You can do a PIXm or PDQm query against this second server, and use the resulting URL in your MHD queries against the first server. This is just URL matching. But if you try to query the MHD server using Patient.identifier, that server will not know how to find the Patient.identifier.

- This might be an important problem, or might not. It depends on deployment needs and capabilities.

- I will likely write a CP to make this more clear in MHD

Conclusion

Overall this was really cool to do this kind of testing of the MHD specification. Especially since it resulted in some CR to FHIR, and likely a CP to IHE.

