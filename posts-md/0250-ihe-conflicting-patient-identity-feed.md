# IHE conflicting Patient Identity Feed patterns

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/11/ihe-conflicting-patient-identity-feed.html
Published: 2021-11-12T16:19:00.001Z
Updated: 2021-11-12T16:19:21.160Z
Author: John Moehrke

---

Now that IHE has added a[PIXm Feed transaction](https://profiles.ihe.net/ITI/PIXm/ITI-104.html), there is now confusion between [PIXm](https://profiles.ihe.net/ITI/PIXm/index.html) and [PMIR](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PMIR.pdf). Let me explain.

Overall

https://profiles.ihe.net/ITI/HIE-Whitepaper/images/PatientManager.png
The PIXm and PMIR implementation guides are intending on solving two very different models of managing Patient Identity. There is no expectation that a community would deploy both models.

- [PMIR model is about one master Patient instance](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PMIR.pdf);
- [PIXm model is about cross-references to identifiers](https://profiles.ihe.net/ITI/PIXm/volume-1.html#1414-pixm-overview);

This is further explained in the "[HIE Whitepaper - Patient Identity Management](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html#5-patient-identity-management)"

PMIRPMIR model is one where a community wants to cooperate on a master Patient identity for each patient, a "golden" patient. This model has each authoritative party in the community cooperatively keeping the single Patient identity for a patient up-to-date. When a patient is seen one of the locations in the community, the master Patient identity is pulled from the PMIR Registry. If there is anything that needs to be updated, then that system will send the update back to the PMIR Registry. Thus there is only one Patient identity (demographics, addresses, phone numbers, national numbers, etc). This cooperation is what PMIR is all about.

There are additional features in PMIR that enable those that rely on this master Patient instance to be notified of changes. This is another use of the feed. This feed does enable the data custodians to be notified of important changes like when two master identifiers were determined to actually be about the same patient and thus have been merged. In this case the data custodian is expected properly update their data to represent the merge.

PIXm [PIXm model is one where a community wants to cooperate on Cross-Reference](https://profiles.ihe.net/ITI/PIXm/volume-1.html#1414-pixm-overview)s between each community members instance of the Patient identity as they know it. Where a cross-reference is simply a list of  Patient.id and Patient.identifier (that is a patient identity such as MRN). The cross-reference is derived at using the other elements in the Patient resource, but a cross-reference does not expose on a query interface these other elements in the Patient resource. The PIXm query is just a set of identifiers (id and identifier) that are cross-referenced.

Each time a community participant updates their local instance of the Patient identity, they do feed those updates to the PIXm Manager. The Manager looks at the details with the ONLY output that the PIXm Manager updates the cross-references that it would return in the future when a PIXm client asks for the cross-references. It is very likely that the PIXm Manager does remember the demographics, addresses, phone numbers, national numbers, etc... but there is no effort to harmonize these at the element level.

PMIR uses PIXmPMIR does include the [PIXm Query transaction](https://profiles.ihe.net/ITI/PIXm/ITI-83.html). This is useful when a client in the PMIR environment for a very few cases:

1. When the client does not want the whole Patient, just the .id so that it can record that value. There are plenty of client use-cases where it is not important to have access to the full, and sometimes sensitive, elements in the Patient resource. For example a weight scale wanting to record a new body-weight observation, where the scale knows the PMIR Registry and knows that the weight scale GUID is recorded as a Patient.identifier. Thus this device can do a PIXm Query given the scale GUID and get the Patient .id value. It can put that value into the Observation.subject element.

2. When the client does not want the whole Patient, just knows the Patient .id and wants a local MRN value. Not as clear why this client does not want to be exposed to the Patient Demographics, but it is possible.

PIXm and PMIR feed are not compatibleSo the above should make it clear that PIXm and PMIR are solving different community models, and that those models would not exist in the same community. It is possible that a PMIR community would want to be a community participating in a broader PIXm community. Thus the PMIR Registry would participate as a PIXm Patient Identity Source.

The elephant in the room is... WHY did PIXm and PMIR feed choose totally different technical approaches at the FHIR interaction? If you didn't notice this, let me explain.

- PMIR uses a "history" Bundle for the Feed.
- PIXm uses more basic RESTful Create/Update/Delete (mostly)

Neither model is great. It is very possible that in the spring we update PMIR to more closely align with PIXm. I say "more closely" because the "expected actions" of the PMIR Registry are very different than the those of the PIXm cross-reference Manager. But the communication on the wire might be possible to be 'closer'...
Trial-ImplementationAll this said... these implementation guides are both in "Trial-Implementation" state. This is the state used when IHE wants implementers to try it out, and give feedback to improve the future. So, please try them out, and give us feedback. Would prefer you join the ITI-Technical committee, but would also take input on the [Public-Comment forum](https://www.ihe.net/resources/public_comment/) or [GitHub for PIXm](https://github.com/IHE/ITI.PIXm/issues). I would also welcome comments on this blog article.

