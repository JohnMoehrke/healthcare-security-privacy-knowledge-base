# Where do I get 'the' IPS?

Originally posted: https://healthcaresecprivacy.blogspot.com/2023/03/where-do-i-get-ips.html
Published: 2023-03-07T17:34:00.002Z
Updated: 2023-03-07T17:34:42.882Z
Author: John Moehrke

---

At a panel discussion at the IHE-Connectathon there was much discussion about the new [IPS](http://hl7.org/fhir/uv/ips/)specification. This is a new FHIR specification that expresses what a [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/) would look like. This is a FHIR-Document, much like a CDA Document, but using FHIR fundamentals rather than the HL7 v3 model that is the basis of CDA. The IPS is further designed to support modern informatics and health use-cases, so it is really closer to the C-CDA

https://blogger.googleusercontent.com/img/a/AVvXsEh3Tj4dW9LYx97Up8lcKo3StAf1mXUToj6QjkIF44esGqQIJJy1kmRn6NQI86o_8EQQaISnLjRNMzd61M9hDApCnM6IX0SY7-JFXdl2vRek9iGeVsj0LewRv-R5A7kg2bCN2m1bjIX4b1E3Ra4r5bbHvqIxk5Tc533s23p4LK34Udkn6pcsPzfWgm6BFA

A question was asked of the panel... "Where do I get the IPS for a patient?"

The panel did an excellent job given an ad hoc question. I would like to further refine this.

There was one answer that was focused on an HIE architecture that collects all the data within a region, and thus can produce a current summary perspective of this collection of all that patients data within that region.

I think this approach to the question is missing a key point. The IPS is a specification of what a International Patient Summary would look like using the FHIR standard. The IPS is not a policy or procedure document for how the IPS data was acquired. Thus to ask this question is not really a question about IPS, but rather about policies and deployment decisions. The IPS specification did somewhat address the fact that the [creator of the IPS might be human driven, or automated](http://hl7.org/fhir/uv/ips/design.html#provenance). The committee writing the IPS understood this scope focus.

This question did bring up that there is a perspective on the IPS that is being seen as critical. That is that the author has a perspective on why they are creating the IPS. That is that the consumer has a specific need and that there are a diverse set of consumers all with very different needs, needs that can be in conflict.

Note that the [Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) exchanges can handle very well this new FHIR-Document. The design of XDS/XCA/MHDS are content preserving but content format agnostic.

I suspect that some IPS will be created much like a C-CDA is created today. As a report from a healthcare organization representing what that organization knows about the patient. It might be created by a Patient managed application based on the collection of the health information that the patient has collected. It might be created by a regional or vendor driven organization that covers a larger domain of scope. And it might be created by organizations that pull from these authors and further refine a broader focused IPS.

Critical to this maturity is a strong need to maintain basic Provenance on all data elements to enable de-duplication. We must agree to always include business identifiers that have ever been assigned to data elements. I call this basic provenance, in that the global unique identifier enables de-duplication.

