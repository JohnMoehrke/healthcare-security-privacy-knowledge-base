# IHE IT-Infrastructure Summer 2022

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/08/ihe-it-infrastructure-summer-2022.html
Published: 2022-08-13T18:57:00.008Z
Updated: 2022-08-13T18:57:52.380Z
Author: John Moehrke

---

Four publications released from IHE IT-Infrastructure, three in development:

- **Release for Public-Comment** -- [Sharing of Valuesets, Codes, and Maps (SVCM)](https://profiles.ihe.net/ITI/SVCM/1.4.0/index.html) -- This is now published in Implementation Guide format, previously in PDF supplement format. This IHE-Profile (aka Implementation Guide) provides guidance on how to implement the sharing of terminology ValueSets, CodeSystems, and ConceptMaps. It is not a full Terminology Service, just the basic starting point that can be used to get a Community aligned.
- **Release for Public-Commet** -- [Secure Retrieve (SeR)](https://profiles.ihe.net/ITI/SeR/index.html) -- This is now a html publication, previously in PDF format. In addition to the conversion, the scope of the Access Control Decision and Enforcement is expanded beyond the Document Repository to the other services in a Health Information Exchange -- Community.
- **Release to Trial-Implementation** -- [Patient Master Identity Registry (PMIR)](https://profiles.ihe.net/ITI/PMIR/index.html) -- This is newly converted to Implementation Guide format, previously in PDF supplement format. The release recognizes the reconciliation of public comment. This IHE-Profile (aka Implementation Guide) provides for a Health Information Exchange Community to cooperate on a golden (master) identity for the Patients. This is distinct from a PIXm, which is a Community cooperation on cross-references of many identities for each patient. The PMIR does not forbid local participants from having their own internal identifier for patients, but rather expects that organization utilize the Community agreed to Patient Identity when communicating outside the organization.
- **Release to Trial-Implementation** -- [Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/index.html) -- This release is in Implementation Guide format, and has also been improved to support Communities using a variety of network topologies. The mCSD provides a Directory/Registry feature to enable a Community and/or Cross-Community discovery of Organizations, Facilities, Locations, and Endpoints.

https://profiles.ihe.net/ITI/HIE-Whitepaper/images/mXDE.png

These releases are continued improvement and advancement of the [Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html), and enabling of Community exchanges that are more than Document Sharing. Very focused on #FHIR, but also enabled by existing and successful XDS/XCA Health Information Exchange.

In developmentThe IT-Infrastructure committee is continuing to advance the state of the art. There are three specifications in development at this time.

- Improvement to Mobile Health Documents (MHD) to support more simple Document Source applications. Recognition that the current methods for Publishing or Pushing documents is not always needed to be fully implemented in Document Source actors. Thus there is developments to support a more Simplified Publish, an operation that will extract the metadata out of a well-formed CDA or FHIR-Document, and a few more clarifications. Current [committee draft](http://build.fhir.org/ig/IHE/ITI.MHD/branches/Improvements-2022/index.html)
- New Implementation Guide on Scheduling (aka calendar). This work item is taking lessons learned from the Argonaut project on scheduling that has stalled at STU3. The work is in cooperation with the Argonaut project approval. The project is focusing on simple appointments with proposed #FHIR Operations for finding appointment slots, holding an appointment slot, and booking an appointment slot. Current [committee draft](https://build.fhir.org/ig/IHE/ITI.Scheduling/)
- A whitepaper that focuses on how various Health Information Exchange topologies can be architected. Indicating the various design decisions, with benefits and drawbacks. These topologies that will be described will start with simple single-depth, but will be more focused on the complexity as multiple-depth networks are needed and where various sub-networks have different architectures.

I welcome participation in IT-Infrastructure to help with these work items, and propose work items of your own. IHE is a much lower overhead than HL7, yet focuses on producing tightly conformance specifications that are formally tested at IHE-Connectathon.

Future projectsSome potential next projects, based on interest and resources:

- Basic Patient Privacy Consents on FHIR
- Profiling of $match for Patient lookup
- Federating MHDS communities
- etc.

