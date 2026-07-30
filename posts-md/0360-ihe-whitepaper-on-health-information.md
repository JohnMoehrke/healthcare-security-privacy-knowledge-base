# IHE whitepaper on Health Information Exchange models

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/02/ihe-whitepaper-on-health-information.html
Published: 2021-02-05T15:12:00.005Z
Updated: 2021-02-05T15:12:49.860Z
Author: John Moehrke

---

The [Integrating the Healthcare Enterprise (IHE)](http://www.ihe.net/) standards profiling organization has developed a [collection of profiles](http://profiles.ihe.net/ITI/TF/Volume1/index.html) which can be leveraged for use by healthcare communities for the purposes of document sharing. One of the most significant applications of healthcare information technology is the exchange of health information among disparate clinical information systems and otherwise unaffiliated care providers. Across the world, various communities have developed or are developing methods for exchanging health information among healthcare providers, patients, and other authorized parties. The purpose of[this white pape](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html)r is to provide an overview of the collection of IHE profiles which are intended to be used by communities for exchanging health information. The collection of profiles includes support for patient identification, health document location and retrieval, provider directories, and the protection of privacy and security. [This white paper](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html)will show how various profiles work together to provide a standards based, interoperable approach to community and cross-community health information sharing.

Here is [the HIE-Whitepaper](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html)

Those looking to deploy a Health Information Exchange will find guidance on recognized principles and mechanisms. There are solutions that are intended to support small, medium, large, and federations of communities. Where an exchange is based on legacy IHE profiles of XDS or XCA, there is guidance on how to enable a more easy on-ramp and off-ramp in the MHD profile that uses FHIR for the API. There is important considerations on how to evolve from a working legacy exchange to an exchange that enables modern technology. There is also a model in MHDS for those that have no legacy environment that builds the full infrastructure using FHIR services.

There is guidance on how to enable more fine grain access to the data already available in your network through the use of mXDE and QEDm. This model enables FHIR clients to access Observations, Allergies, Medications, etc; as if they were published as FHIR resources, while preserving Provenance back to the Documents and Organizations that published the data. Giving credit where it is needed, and providing critical context for the fine grain data.

The clinicians will find that this paper recognizes their interests in being properly recognized as authors of documentation. Some clinicians are comforted with the document concept, some clinicians are more comfortable with the fine grain access that FHIR brings. Both models are described as integrated.

The Health Information Exchange model presented is an Infrastructure, it is not constraining the content. Today it is common to communicate CDA documents, but the future may switch over to FHIR Documents. Along the way there may be fragments of FHIR bundles dedicated to a specific need, such as the patients current allergies, or the patients current medications. These may not be seen as a fully qualifying document in the eyes of CDA, but they are perfectly legitimate in the Document Sharing infrastructure.

The patient is not to be left out of the discussion. Like the clinician the patient is a recognized potential participant in these Health Information Exchanges. The patient based application is more likely one that will need and want a FHIR based interaction, so the MHD based on-ramp and off-ramp are very important to the Patient access. The Patient would also be a participant in setting rules of access in their Consent. This paper discusses three different Consent mechanisms that IHE offers to enable this. The actual accessibility and control is driven more by policy.

The population health communities can also be a participant on the Health Information Exchange. They typically would not be publishing documents, but would be consuming documents published, receiving content that is pushed to them, and analyzing the data for population trends and reporting.

All of these communities would need to be carefully managed, carefully authenticated, authorized, and monitored. The paper goes into the interoperability solutions in Privacy and Security that are foundational to local policies to be enforced. There is some additional papers that discuss some of these policy considerations, and how the policy interacts with the infrastructure.

Lastly the whitepaper is stressing the use of FHIR available today, while showing that there is a much bigger and better future that gets built upon the legacy and FHIR tooling.

Find the [whitepaper here](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html)

