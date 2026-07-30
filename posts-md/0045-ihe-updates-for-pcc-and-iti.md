# IHE Updates for PCC and ITI

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/12/ihe-updates-for-pcc-and-iti.html
Published: 2024-12-13T14:42:00.001Z
Updated: 2024-12-13T14:42:56.505Z
Author: John Moehrke

---

Updated Releases:

- [PCC](https://profiles.ihe.net/PCC/index.html)

- [Occupational Data for Health (ODH) 1.0.0](https://profiles.ihe.net/PCC/ODH/index.html)
- [Query for Existing Data for Mobile (QEDm) 3.0.0](https://profiles.ihe.net/PCC/QEDm/index.html)

- [ITI](https://profiles.ihe.net/ITI/index.html)

- [normative Technical Framework](https://profiles.ihe.net/ITI/index.html#1.2) - updated with approved CPs
- [Add RESTful ATNA (Query and Feed)](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_RESTful-ATNA.pdf) - updated with approved CPs
- [Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/index.html) - updated with approved CPs
- [Scheduling (formerly published by Argonaut in STU3 flavor)](https://profiles.ihe.net/ITI/Scheduling/index.html) - 1.0.0
- [Document Digital Signature JSON signature option](https://profiles.ihe.net/ITI/DSGj/index.html)
- [Finance and Insurance Services](https://profiles.ihe.net/ITI/FAIS/index.html)

Public Comment

- ITI [Extensions to Document Metadata Subscription](https://profiles.ihe.net/ITI/index.html#1.3)

Formal Announcement

- [PCC](https://mailchi.mp/ihe/ihe-pcc-tf-supplements-published-ti-2024-12-12)
- [ITI first](https://mailchi.mp/ihe/ihe-iti-tf-documents-published-2024-12-12) and [second](https://mailchi.mp/ihe/ihe-iti-tf-documents-published-2024-05-10930825)

See all at [https://profiles.ihe.net](https://profiles.ihe.net)

Some ExplanationsMost of these releases are incremental updates that don't require much comment. Either addressing the public-comment from last quarter or integrating formal Change Proposals (CPs) that were balloted and passed. If you need to understand these changes, there is traceability within the representative [IHE GITHub](https://github.com/IHE) repositories. All issues and CPs are indicated with individual github issues and pull-requests.

The biggest news is:

- [Scheduling (formerly published by Argonaut in STU3 flavor)](https://profiles.ihe.net/ITI/Scheduling/index.html) - 1.0.0
- [Finance and Insurance Services](https://profiles.ihe.net/ITI/FAIS/index.html)

with an important mention of:

- [Document Digital Signature JSON signature option](https://profiles.ihe.net/ITI/DSGj/index.html)
- [Query for Existing Data for Mobile (QEDm) 3.0.0](https://profiles.ihe.net/PCC/QEDm/index.html)

QEDm
This is mostly a conversion to IG publication of the QEDm profile that has before this been only published in PDF form. In PDF form, the supplement was nothing but narrative. There was some conformance resources but there was little assurance they were right. Now that QEDm is published in IG form there is a full set of conformance resources, and examples. There is a clear connection to [MHD](https://profiles.ihe.net/ITI/MHD/index.html)using [mXDE](https://profiles.ihe.net/ITI/mXDE/index.html).

The future of QEDm is still in play. We are intending to adjust [QEDm to be a derivative](https://github.com/IHE/PCC.QEDm/issues/11) of the [HL7 IPA](https://www.hl7.org/fhir/uv/ipa/). In this way there will be little mismatch between the two.  This effort will need to address that IPA includes functionalities that IHE covers with PDQm and MHD. I expect this might be ready in Summer 2025, assistance is always welcome.
DSG - JSON signature optionThis is an addition of an Option to the normative [Document Digital Signature](https://profiles.ihe.net/ITI/TF/Volume1/ch-37.html). Original Profile used XML-Signature, as that was the best solution at the time. However, there is more tooling support for JSON Digital Signatures now days, and less interest in XML-Signature. So IHE adjusted the DSG profile to have two options, the original XML-Signature (which is assumed if no option is declared), and the JSON Digital Signature. The use-cases supported have not changed, the DSG is about Document Digital Signature and has some variations for the various ways that Documents can be moved around using [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html).
Finance and Insurance ServicesThis [supplement](https://profiles.ihe.net/ITI/FAIS/index.html)is a new domain for IHE. Although there is a robust community in the USA that is profiling the FHIR standard to support Finance and Insurance Services; there is a need outside the USA for similar profiling. This is the scope of this supplement, mostly "Not the USA". This does not mean it is conflicting with USA needs, but rather to indicate that the intended audience is everyone outside the USA.
https://blogger.googleusercontent.com/img/a/AVvXsEi7vTS5kY-71YKCHoaztr51ouo1e_s5fkPfwqEcjP56jWESAdJTEZ1C9OqyyyDvK54kIO-qZJ7PpWMj2KsZnUDRCNWptMzOTzoPH2pn_VxQQLy2WdfG898xNF27Wcxsvn4iHTVj6qNlIRNHEIlQ6jeRr7FtzptaZaaEOo-kzoA8ZKkDfBSxo4VIPD5MChcw

The current profiling is not all that much different than the use-case analysis found in the FHIR Core for the Finance profiles but does define some capabilities that have been identified by some open-source implementations. The initial deployment is expected to be by WHO. I would expect we will receive robust comments as this gets "Trial Implemented", which is an admission that this IG is rather immature and open for discussion.
SchedulingThis IHE profile is based on the [Argonaut Scheduling Implementation Guide](https://fhir.org/guides/argonaut/scheduling/release1/), originally published back in the FHIR STU3 days. Argonaut has agreed to hand over the FHIR R4 and future to IHE. Thus, this IG is mostly a conversion to FHIR R4, but includes significant improvements based on experience.
https://blogger.googleusercontent.com/img/a/AVvXsEgD5dJogMN0rgvPTx8g1KGbFYvPcFszVWk2DDUr84bJ9_vS9YKjuiBDeX399Ukq1fcITMBkMmWbDA5OP6enCTZsusyT1lRKU2skc_QO8f9ZoQQyQ5d0fbjidqoKF-DIDv_a9PBi7H9lHo0hg1Qw8sPoYRBKlLpzokT3qrPVRx6lnWBH9RmuY1hGT8PjrJfV

The following are some of the major differences from the Argonaut IG:The IHE Profile is based on FHIR R4

- The IHE Profile is intended for international use, and it does not have required bindings or any dependencies to national profiles
- The operations described are $find, $hold, and $book
- A separate transaction describes the use of FHIR Search for the Appointment resource
- The operation parameters use explicit data types, and support only POST transactions

