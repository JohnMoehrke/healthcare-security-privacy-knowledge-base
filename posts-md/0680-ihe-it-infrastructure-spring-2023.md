# IHE IT-Infrastructure Spring 2023

Originally posted: https://healthcaresecprivacy.blogspot.com/2023/05/ihe-it-infrastructure-spring-2023.html
Published: 2023-05-04T21:18:00Z
Updated: 2023-05-04T21:18:06.392Z
Author: John Moehrke

---

The [IHE IT-Infrastructure](https://profiles.ihe.net/GeneralIntro/ch-1.html) committee continues to produce new and improved specifications for HIE interoperability. This spring we are publishing a supplement that was out for public-comment, a whitepaper that was out for public-comment. We are placing into Public-Comment an IG publisher formatted Profile that was previously published, and a brand-new Implementation Guide supporting Privacy Consents and enforcement.

All of these can be found on the IHE publications site: [https://profiles.ihe.net](https://profiles.ihe.net) The publications listed below are from the [IT-Infrastructure Domain](https://profiles.ihe.net/ITI) where these publications and instructions can be found.

Publications of past Public-Comment:These two specifications were in public-comment this summer, and now are published for use.
**Cross-Community Patient Discovery (XCPD) Health Data Locator and Revoke Option - Rev. 3.1  **

> The Cross-Community Patient Discovery (XCPD) Health Data Locator and Revoke Option Supplement enhances the existing IHE XCPD Integration Profile by adding two new capabilities. The first is the ability to exchange a list of health data locations, which enables Record Locator Services to interoperate with consumers wishing to discover the location of patient records within a health information exchange. The second is the ability to revoke a previously exchanged patient ID correlation, which is used in the case where patients in different health information communities were linked with XCPD, but must now be unlinked due to some circumstance such as patient merge.

This update is an editorial enhancement to the existing supplement which improves the layout of the standard by separating the Revoke interaction into a separate, isolated transaction. There are no functional changes in this update. Health IT Vendors should review this supplement and determine if the capabilities within meet their interoperability needs.

**Document Sharing Across Network Topologies- Rev. 1.0  New! **

> The Document Sharing Across Network Topologies White Paper expands upon the concepts in the Health Information Exchange White Paper by providing additional guidance on how existing document sharing communities can be interconnected to form a unified federated exchange ecosystem. This type of ecosystem typically emerges in environments composed of several jurisdictions that each began developing their own health information exchange and now wish to become interconnected.

This white paper primarily illustrates how such a network could be represented in a Mobile Care Services directory. It is intended to be read by HIE and Healthcare IT Executives and Architects, Standards Development Architects, and health data exchange stakeholders in academia.

New Public-Comment SupplementsThese are new publications entering Public-Comment. We welcome comments from IHE members and those that are not IHE members. Both of these are very relevant to current developments in HealthIT.
**Mobile Cross-Enterprise Document Data Element Extraction (mXDE)**

> The Mobile Cross-Enterprise Document Data Element Extraction (mXDE) Profile provides the means to access data elements extracted from shared structured documents. The profile enables the deployment of health data exchange infrastructures where fine-grained access to health data coexists and complements the sharing of coarse-grained documents and the fine-grained data elements they contain.

> This update is primarily a conversion from the PDF supplement form to using the IG Publisher. This conversion enabled better and more comprehensive definition of the Provenance linkage between the derived FHIR clinical Resources and the source documents from the HIE. This Provenance definition is now in mXDE along with examples and requirements CapabilityStatement. This update also leverages the other IHE implementation guides that profile FHIR, and specifically the Basic Audit Log Patterns (BALP) for security and privacy audit logging.

_



**Privacy Consent on FHIR (PCF)**

> The Privacy Consent on FHIR (PCF) Profile provides support for patient privacy consents and access control where a FHIR API is used to access Document Sharing Health Information Exchanges. This profile includes both Consent profiling and access controls profiling of oAuth access token.

https://blogger.googleusercontent.com/img/a/AVvXsEgffMH0SbiCUaTvuAYYccLQjbMiVkRSXrTXXVas11TBUiF8TqyTdjb5yhtk6bzJxfUmrNJcjKNCQ5BnOqW-_MOpY85loV2fwX0bw-BePwYqQzvzIUviiA8MYS2eXCjM4Z46i-HjXYJ0rXIPO3OW7oDJCdPpGtPc1DRrFBrWS2m5an7Lo-E8zxd0lZAFBg



> This first release to Public Comment includes both Consent profiling and Access Control decisions and enforcement. The Consent profiling supports many Basic, Intermediate, and Advanced needs. There are a rudimentary set of privacy policies, and an Appendix that discusses the various attributes and considerations one must consider when writing the privacy policies to be used. This Appendix also includes discussion about refrains and obligations, the FHIR Consent fundamentals, and Security Labeling Service models. The PCF includes technical profiling on the oAuth (IUA) access token to enable decisions to be based on Consent and to carry residual rules for the enforcement point to enforce. The PCF includes technical profiling of the Consent with various complexity represented in Options to enable basic systems to improve over time to add features in support of intermediary and advanced use-cases. The profile includes 21 examples of Consents using the profiling, and for each of them shows the oAuth access token impact.

_



I will write more about the PCF in the future, but I think the IG explains itself well.

Details on who [IHE is and how to engage are available on their web site.](https://profiles.ihe.net/GeneralIntro/index.html) Comments are always welcome from anyone regardless of if you are an IHE member or not.

May the 4th be with you.

