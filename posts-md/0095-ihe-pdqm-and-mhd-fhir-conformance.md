# IHE PDQm and MHD - FHIR conformance resources

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/12/ihe-pdqm-and-mhd-fhir-conformance.html
Published: 2017-12-18T23:39:00Z
Updated: 2017-12-19T03:52:44.779Z
Author: John Moehrke

---

I have been pushing IHE to add FHIR conformance resources to their publication mechanism. I now have published the full set of FHIR conformance resources for PDQm and MHD profiles. Also available is mCSD by Luke.

A bit of background. FHIR conformance resources are available to carry programatically the constraints that historically IHE has written narratively into an IHE Profile. An IHE Profile is a standard that takes a Use-Case and creates an Interoperability solution. This is done using long standing [IHE Governance](http://www.ihe.net/IHE_Process/) through a standards selection process, standards development process, public comment review, trial-implementation phase, and connectathon testing.

An IHE Profile is very similar to an HL7 Implementation Guide. Each organization has variances, but both can do similar effort. [IHE has been doing Profiling since 1998](http://www.ihe.net/FAQ/#How_did_IHE_get_started?)

IHE as an standalone organization can very easily and cleanly Profile large use-cases that require the interaction with many different standards. Profiling that needs to simultaneously invoke HL7 v2, DICOM, and eb-Registry are the biggest strengths of IHE. Where as HL7 is more limited to writing focused Implementation Guides around the HL7 specific standards like FHIR (US-Core) or CDA (C-CDA). Much more is likely going to be said about this in the future. HL7 and IHE are working to find a good way to cooperate and complement.

Patient Demographics Query for Mobile (PDQm)

I will be clear the reason this is an IHE profile is because of long standing set of Profiles of the exact same use-cases that show how to constrain HL7 v2 messaging, and HL7 v3 messaging. Thus, they are historically in IHE from 2003 (14 years ago). Given that IHE had PDQ and PDQv3 published, the IHE audience wanted to see the FHIR flavor. Thus PDQm exists. The reality is that this profile is about as unconstrained as a profile can be. But because it exists, we need to publish FHIR conformance resources.

The best place to go is to the [IHE wiki page for PDQm](http://wiki.ihe.net/index.php/Patient_Demographics_Query_for_Mobile_(PDQm)), as any updates that happen in the future will be updated on that page. There is a section on this wiki page [dedicated to PDQm FHIR resources.](http://wiki.ihe.net/index.php/Patient_Demographics_Query_for_Mobile_(PDQm)#FHIR_Implementation_Guide) That page is also what all of the FHIR conformance resources point to as the narrative 'implementation guide'.

Informatively the PDQm profile is also published on Simplifier. See [https://simplifier.net/IHEPDQmimplementatio](https://simplifier.net/IHEPDQmimplementatio)

These conformance resources are also registered at [https://registry.fhir.org](https://registry.fhir.org/)

The following links are to current copy in Simplifier. The canonical URI is also given as the permanent URI. The canonical URI is not usable in a browser, but may be used at the [FHIR registry](https://registry.fhir.org/)

- [PDQm](https://simplifier.net/IHEPDQmimplementatio/IHEPDQm) ImplementationGuide

- canonical URI [http://ihe.net/fhir/ImplementationGuide/IHE.PDQm](http://ihe.net/fhir/ImplementationGuide/IHE.PDQm)

- [IHE PDQm Consumer](https://simplifier.net/IHEPDQmimplementatio/ITI-PDQmclient) Actor CapabilityStatement

- canonical URI [http://ihe.net/fhir/CapabilityStatement/IHE.PDQm.consumer](http://ihe.net/fhir/CapabilityStatement/IHE.PDQm.consumer)

- [IHE PDQm Supplier](https://simplifier.net/IHEPDQmimplementatio/ITI-PDQmserver-2) Actor CapabilityStatement

- canonical URI [http://ihe.net/fhir/CapabilityStatement/IHE.PDQm.supplier](http://ihe.net/fhir/CapabilityStatement/IHE.PDQm.supplier)

Note that previously we did publish a StructureDefinition for the PDQm Patient Resource. This has been removed as IHE PDQm does not constrain the Patient Resource at all, and therefore the STU3 Patient StructureDefintion is now referenced.

The conformance resources are also available on the FTP site [ftp://ftp.ihe.net/TF_Implementation_Material/fhir/](ftp://ftp.ihe.net/TF_Implementation_Material/fhir/)

Mobile Healthcare Documents (MHD)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiqoFK2nK_s2BWIE4s2XjZCBJye3cpZwtsLi9Y24YPs0UrKWHXSuV6S4MaDky5KoAwq8uWMzU4N9x1TJIDUFZhts_AM50iXvO1fv_odpGcxBoIE0aJSNulD_SyeJxGm8rRt2FMy-H8d39E2/s1600/DocumentReference_SD.png

The MHD profile is also an IHE profile due to the history of IHE XDS/XCA/XDR/XDM etc. The Document Sharing family. Thus IHE shows how to use the FHIR standard as an API to these XD* environments.

The best place to go is to the [IHE wiki page for MHD](http://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD)#FHIR_Implementation_Guide), as any updates that happen in the future will be updated on that page. There is a section on this wiki page [dedicated to MHD FHIR resources](http://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD)#FHIR_Implementation_Guide). That page is also what all of the FHIR conformance resources point to as the narrative 'implementation guide'.

Informatively MHD profile is also published on [Simplifier as a set of FHIR conformance resources](https://simplifier.net/IHEPatientDemographi), that are also registered at [https://registry.fhir.org](https://registry.fhir.org/)

Note the following links are to current instances maintained in Simplifier. This URL may change over time, which is why the canonical URI is provided. The canonical URI can not be used for browser navigation, but can be used for lookup at registry or simplifier as search capability allows.

- [IHE MHD Implementation Guide](https://simplifier.net/IHEPatientDemographi/IHEMHD-2)

- canonical URI [http://ihe.net/fhir/ImplementationGuide/IHE.MHD](http://ihe.net/fhir/ImplementationGuide/IHE.MHD)

- [FormatCode CodeSystem](https://simplifier.net/IHEPatientDemographi/IHEFormatCodecodesystem)

- canonical URI [http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem](http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem)

- Identifier [urn:oid:1.3.6.1.4.1.19376.1.2.3](urn:oid:1.3.6.1.4.1.19376.1.2.3)

- [FormatCode ValueSet](https://simplifier.net/IHEPatientDemographi/IHEformatcodevs)

- canonical URI [http://ihe.net/fhir/ValueSet/IHE.formatcode.vs](http://ihe.net/fhir/ValueSet/IHE.formatcode.vs)

- Identifier [urn:oid:1.3.6.1.4.1.19376.1.2.7.1](urn:oid:1.3.6.1.4.1.19376.1.2.7.1)

- Actor Capability Statements

- [MHD Document Source](https://simplifier.net/IHEPatientDemographi/IHEMHDDocumentSource) Actor CapabilityStatement

- canonical URI [http://www.ihe.net/fhir/CapabilityStatement/IHE.MHD.DocumentSource](http://www.ihe.net/fhir/CapabilityStatement/IHE.MHD.DocumentSource)

- [MHD Document Recipient](https://simplifier.net/IHEPatientDemographi/IHEMHDDocumentRecipient) Actor CapabilityStatement

- canonical URI [http://www.ihe.net/fhir/CapabilityStatement/IHE.MHD.DocumentRecipient](http://www.ihe.net/fhir/CapabilityStatement/IHE.MHD.DocumentRecipient)

- [MHD Document Responder](https://simplifier.net/IHEPatientDemographi/IHEMHDDocumentResponder) Actor CapabilityStatement

- canonical URI [http://www.ihe.net/fhir/CapabilityStatement/IHE.MHD.DocumentResponder](http://www.ihe.net/fhir/CapabilityStatement/IHE.MHD.DocumentResponder)

- [MHD Document Consumer](https://simplifier.net/IHEPatientDemographi/IHEMHDDocumentConsumer) Actor CapabilityStatement

- canonical URI [http://www.ihe.net/fhir/CapabilityStatement/IHE.MHD.DocumentConsumer](http://www.ihe.net/fhir/CapabilityStatement/IHE.MHD.DocumentConsumer)

- Structure Definitions

- [Document Manifest](https://simplifier.net/IHEPatientDemographi/IHEMHDDocumentManifest)

- canonical URI [http://ihe.net/fhir/StructureDefinition/IHE.MHD.DocumentManifest](http://ihe.net/fhir/StructureDefinition/IHE.MHD.DocumentManifest)

- [List (Folder)](https://simplifier.net/IHEPatientDemographi/IHEMHDList)

- canonical URI [http://ihe.net/fhir/StructureDefinition/IHE.MHD.List](http://ihe.net/fhir/StructureDefinition/IHE.MHD.List)

- [DocumentReference from Query with Comprehensive Metadata](https://simplifier.net/IHEPatientDemographi/IHEMHDQueryComprenensiveDocumentReference)

- canonical URI [http://ihe.net/fhir/StructureDefinition/IHE.MHD.Query.Comprenensive.DocumentReference](http://ihe.net/fhir/StructureDefinition/IHE.MHD.Query.Comprenensive.DocumentReference)

- [DocumentReference from Query with Minimal Metadata](https://simplifier.net/IHEPatientDemographi/IHEMHDQueryMinimalDocumentReference)

- canonical URI [http://ihe.net/fhir/StructureDefinition/IHE.MHD.Query.Minimal.DocumentReference](http://ihe.net/fhir/StructureDefinition/IHE.MHD.Query.Minimal.DocumentReference)

- [DocumentReference in Provide with Comprehensive Metadata](https://simplifier.net/IHEPatientDemographi/IHEMHDProvideComprehensiveDocumentReference)

- canonical URI [http://ihe.net/fhir/StructureDefinition/IHE.MHD.Provide.Comprehensive.DocumentReference](http://ihe.net/fhir/StructureDefinition/IHE.MHD.Provide.Comprehensive.DocumentReference)

- [DocumentReference in Provide with Minimal Metadata](https://simplifier.net/IHEPatientDemographi/IHEMHDProvideMinimalDocumentReference)

- canonical URI [http://ihe.net/fhir/StructureDefinition/IHE.MHD.Provide.Minimal.DocumentReference](http://ihe.net/fhir/StructureDefinition/IHE.MHD.Provide.Minimal.DocumentReference)

- [MHD Provide Document Bundle with Minimal Metadata (ITI-65)](https://simplifier.net/IHEPatientDemographi/IHEMHDProvideDocumentBundleMinimal)

- canonical URI [http://ihe.net/fhir/StructureDefinition/IHE.MHD.ProvideDocumentBundle.Minimal](http://ihe.net/fhir/StructureDefinition/IHE.MHD.ProvideDocumentBundle.Minimal)

- [MHD Provide Document Bundle with Comprehensive Metadata (ITI-65)](https://simplifier.net/IHEPatientDemographi/IHEMHDProvideDocumentBundleComprehensive)

- canonical URI [http://ihe.net/fhir/StructureDefinition/IHE.MHD.ProvideDocumentBundle.Comprehensive](http://ihe.net/fhir/StructureDefinition/IHE.MHD.ProvideDocumentBundle.Comprehensive)

Prior conformance resources have been registered, they should now be marked retired

Conclusion

I likely have made mistakes... Please point them out to me so I can fix them. I am very open to opportunities for improvement.

