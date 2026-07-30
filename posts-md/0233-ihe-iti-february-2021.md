# IHE ITI February 2021

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/02/ihe-iti-february-2021.html
Published: 2021-02-20T16:26:00.003Z
Updated: 2021-02-20T16:26:57.954Z
Author: John Moehrke

---

The IHE ITI-Tech committee finished our meeting this week a bit overtime, but very satisfying.

We finished with a **toast to Bill Majurski**. The ITI committee and the whole Healthcare Information Exchange market has benefited from, The originator of the concept that became XDS.
    [https://www.ihe.net/in-memoriam-bill-majurski/](https://www.ihe.net/in-memoriam-bill-majurski/)

Accomplishments this Quarter:This week the ITI committee has moved three work items along on their milestones:

**IUA **- the Internet user authorization profile needed some revisions to update it to the latest standards from OAuth community. Along the way we added clarity and features like introspection.

**HIE-Whitepaper **-- the whitepaper needed to be updated to include the FHIR based models that we have published in the MHD family. This was somewhat addressed in the MHDS profile, but the whitepaper addresses the need and all the solutions that IHE has to offer. This also includes the use of QEDm and mXDE to make FHIR Resource level data available from the shared documents, making consumption more easy. This update also links deeply to the newly published html rendering of the ITI Final-Text Technical Framework.

**MHD **- MHD is our first IHE-Profile to be published using the Implementation Guide publishing platform. This platform, managed as an open-source platform, originally developed by HL7 (Grahame) for FHIR based Implementation Guides. It is widely expanding beyond this scope, and IHE is looking to use it for our publication needs. The Implementation Guide publisher encourages use of conformance resources (e.g. StructureDefinition) and inclusion of examples. Thus a major benefit of this publication means is more accuracy and more specificity. In addition to this, MHD version 4.0 is moving away from using DocumentManifest toward using List FHIR Resource., This to aid with moving toward Normative status.

Each of these works has received conditional approval by the committee, where the condition is to cleanup some minor issues expected to be cleaned up soon. Each of these will get formally published on the new IHE [http://profiles.ihe.net](http://profiles.ihe.net) web site in html form only. This may take 2-3 weeks to achieve.

**Next Quarter: **Given that we have moved two moderate sized work items off of our plate, we have accepted two new moderate sized work items from our prioritized backlog:

**mCSD whitepaper **- Since mCSD doesn't require a particular set of FHIR resources to support, there is a need to define various implementations and the additional requirements they would have. For example, a Facility Registry would require supporting mCSD with Location and Organization resources, and a Health Worker Registry / Provider Directory would require Practitioner resources. This whitepaper would describe these various use cases and how mCSD can be utilized to support various implementations.

**MHD to a Federation **- The concept of federation is relatively underspecified in FHIR at this time. The notion of "home community" is used by numerous IHE profiles to enable complex, large-scale heterogeneous networks. See [IHE ITI TF-1] E.9 "XCA Integration with XDS and non-XDS communities" for a number of examples of federated deployments enabled by XCA. FHIR does not have an explicit analog for home community. We would like to add this to the IHE FHIR-based profiles. This would support all-FHIR cases requiring federation (for example, crossing security boundaries) as well as bridging FHIR with non-FHIR mechanisms such as XCA. Our initial use cases address mCSD and MHD, but other profiles could be considered, as well as Appendix Z for common capabilities, such as a consistent encoding of HCID as a business identifier.

We will continue to improve the **html rendering of the Final Text Technical Framework**

We will continue to work on **Change Proposals **across the portfolio.

Lastly, there has been fantastic input on our **PMIR **profile that will likely result in some improvements of the profile and possibly some new work items. This is an excellent example of a group trying to develop to our specification and finding difficulty, bringing that difficulty to the committee, and we ALL benefit from clarity that will result.

**This was a fantastically successful week. Proof that virtual face-to-face can be successful.**

As these get formally published, i will post more articles. The committee drafts will take some care and feeding until they get formally published. A few weeks.

