# MHD as an API to XCA

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/09/mhd-as-api-to-xca.html
Published: 2018-09-06T00:11:00.001Z
Updated: 2018-09-06T00:11:43.986Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhweqZ8AuAnqXisAtLyMfwztdg5i6NA9Gxd6xPG1Tts2gwnZCis7Ts_o5hb2W1mG-Fp6u1dbL5fvrzEcyZMjKeSQDD_FQ8nfhgDdDdzSew-MwRBUbxESkLKZ9rS3SOyJJZzBtAx9hraj4IO/s1600/image005-742659.pngI expected this configuration was well enough explained within the [MHD profile](https://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD)) with the one paragraph and one diagram in the informative section 33.6.2-1.

I find that I need to explain this a bit more than I expected, and have a follow on article that needs this baseline.

Often I have to address the fact that [XCA](https://wiki.ihe.net/index.php/Cross-Community_Access)is a federation protocol that is [addressing many communities](https://healthcaresecprivacy.blogspot.com/2017/08/mhd-fhir-documentreference-support-for.html). Federation is an important architectural capability allowing many communities to each act on-their-own, while cooperating in a Patient centric way.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi_Ftol-r9T5s41d3EK5jO3nrG88yzFOtLi31ot0csKTpttiIgR33FpUrPpMEKwzhXuLR54oDj0j7HHRLP-faeExAI4a5XNFEJd7Vk87PVFOFJlTKnNE9mtp0sigiD4klhilAGWIUE7d1Tx/s1600/Slide3.PNG

The concept of simply using [MHD](https://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD))as an API for [XCA](https://wiki.ihe.net/index.php/Cross-Community_Access)is over simplifying what actually needs to be done. Even the following diagram still oversimplifies in that not just PDQm and [MHD](https://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD))are needed, but also ATNA for basic security, and [IUA](https://wiki.ihe.net/index.php/Internet_User_Authorization) (or SMART-on-FHIR) paired with [XUA](https://wiki.ihe.net/index.php/Cross-Enterprise_User_Assertion_(XUA))for app and user security. This pairing of OAuth for FHIR with SAML for SOAP is not trivial, but is also not an unusual configuration for these security protocols. I am sure there is support in these product/stacks for this. Likely somewhere is needed a Consent management that might be based on [BPPC](https://wiki.ihe.net/index.php/Basic_Patient_Privacy_Consents)or [APPC](https://wiki.ihe.net/index.php/Advanced_Patient_Privacy_Consents).

What I will explain is the interactions between [PDQm](https://wiki.ihe.net/index.php/Patient_Demographics_Query_for_Mobile_(PDQm))/[MHD](https://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD))and [XCPD](https://wiki.ihe.net/index.php/Cross-Community_Patient_Discovery)/XCA.  The following diagram shows on the left the FHIR transactions, and on the right the SOAP transactions. This diagram shows the three steps: Patient discovery ([PDQm](https://wiki.ihe.net/index.php/Patient_Demographics_Query_for_Mobile_(PDQm))-->[XCPD](https://wiki.ihe.net/index.php/Cross-Community_Patient_Discovery)), Document query ([MHD](https://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD))-->[XCA](https://wiki.ihe.net/index.php/Cross-Community_Access)), and Document retrieve ([MHD](https://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD))-->[XCA](https://wiki.ihe.net/index.php/Cross-Community_Access)). The three steps are joined by some processing that happens on the client side.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjdS4tbX4yjC3yvyRymVCq-MWKUQenOq4AwV_oqR1yF2ZbSmYQ7N3_-SQztF5CcIuDppomz5DefuqEWp5uUk1kBazZfhci6DIAQ_AjhqVJj35ircC20q9zNmJSam_cphfn4AYl8vueDikxs/s1600/MHD+--+XCA.png

It is very possible that the processing on the client side is to simply do a Document query against all Patients found, and for each DocumentReference returned a Document retrieve. However I would hope that some kind of processing happens to select only the communities of interest, and only the documents of interest.

I don't show the design needed to convert PDQm (FHIR queries) into XCPD queries. I assert that for a given set of normally used queries this is possible. Note that the normally used queries are still a much smaller capability than PDQm or XCPD support. So, think about what is minimally needed, and work on that first.

I don't show the design needed to convert the MHD (FHIR queries) into the XCA queries. I assert that for a given set of normally used queries that are possible, there is a subset that is not hard to convert from FHIR to XCA. See [Timebound XDS queries done right](https://healthcaresecprivacy.blogspot.com/2018/07/timebound-xds-queries-done-right.html)

Note that I have not done any extensions beyond what is documented in the PDQm/MHD or XCPD/XCA profiles. It is possible to do some short-cuts. It is possible to do some optimizations. I however here just wanted to put the facts on the table.

The above diagram is built from [https://websequencediagrams.com](https://websequencediagrams.com/) using the following script. I provide it here for your use and enhancement, but also for my own archive of it:

+------------------------------+

title MHD -- XCA

participant Consumer

participant Responder

participant InitiatingGateway

participant RespondingGateway

note left of Responder

Consumer is used as PDQm-Consumer, and MHD-DocumentConsumer

Responder is used as PDQm-Supplier and MHD-DocumentResponder

end note

note over Consumer

based on some need a patient is of interest

end note over

Consumer->+Responder: PDQm Patient? blah

Responder->Responder: check if valid request

loop for all Partners in Community

Responder-->InitiatingGateway: trigger discovery

activate InitiatingGateway

InitiatingGateway->+RespondingGateway: XCPD Patient Discovery

RespondingGateway->-InitiatingGateway: found patient alpha @ beta community

InitiatingGateway-->Responder: store result in cache

deactivate InitiatingGateway

end loop

Responder->Consumer: Found all Patient reesources in cache

deactivate Responder

note over Consumer

based on Consumer processing of

Patient resources returned

some or all Patients are interesting

end note

loop for all Patient entries found

Consumer->Responder: MHD DocumentReference?Patient=ABC&class=XYZ

activate Responder

Responder->Responder: check if valid request

Responder-->InitiatingGateway: trigger

activate InitiatingGateway

InitiatingGateway->+RespondingGateway: XCA Find Documents for given parameters

RespondingGateway->-InitiatingGateway: (n) Document metadata entries found

InitiatingGateway-->Responder: store results in cache

deactivate InitiatingGateway

end loop

Responder->Consumer: Found all document metadata entries in cache

deactivate Responder

note over  Consumer

based on Consumer processing of

DocumentReference resources returned

some or all Document Entries

describe Documents of interest

end note

Consumer->Responder: Retrieve XYZ document

note right of Responder

URL found in DocumentReference is just retrieved (GET)

That URL might have been encoded by Responder to

have all the information necessary to do the XCA

or it might rely on information in cache

end note

activate Responder

Responder->Responder: check if valid request (look in cache)

Responder-->InitiatingGateway: trigger Retrieve

activate InitiatingGateway

InitiatingGateway->+RespondingGateway: XCA Retrieve Documents

RespondingGateway->-InitiatingGateway: document returned

InitiatingGateway-->Responder: trigger doc available

deactivate InitiatingGateway

Responder->Consumer: document returned

deactivate Responder

