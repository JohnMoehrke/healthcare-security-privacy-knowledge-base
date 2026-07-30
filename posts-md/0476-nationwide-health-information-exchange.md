# Nationwide Health Information Exchange on #FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/10/nationwide-health-information-exchange.html
Published: 2019-10-24T22:06:00Z
Updated: 2019-10-24T22:06:19.770Z
Author: John Moehrke

---

Most use of FHIR today is as an API to an organizations health information (EHR). This solution is maturing nicely, although it has issues that are being worked on. However what is being asked latey is how does one scale FHIR to a nation. I spoke of this [scale problem in past articles](https://healthcaresecprivacy.blogspot.com/2019/08/fhir-scaling-to-nation.html). It is very different than the scale success that REST is often sited as solving, which is one server to millions of clients. In healthcare we have 100s thousands of servers to millions of clients; and likely 10s thousands of intermediaries.

I have plenty of articles on how a Nationwide Health Information Exchange (HIE) could be built with the IHE XD* family of profiles. What is missing is a similar architecture for HL7 FHIR family of technology. I will show a few alternatives, none of them have been tried, as far as I know. The alternatives are inspired by what is working well in the IHE XD* family, but using FHIR. So I do expect new alternatives to come up, I just have not seen any evidence of fundamental new alternatives.

There are various challenges at the scale of a nationwide health information exchange:

- How do I find all the data holders for a given Patient?

- How do I prove I am secure and trustworthy?

- How do I get data and assure it is authentic?

There are more challenges, but this article is long enough with these big three.

Patient Centric
When it comes to Patient Data exchange, I want us to be inclusive of "Mediated" exchange, "Directed" exchange, "Controlled" exchange, and "Negotiated" exchange. I have not seen these formally defined elsewhere, I first defined them [here](https://healthcaresecprivacy.blogspot.com/2018/08/modes-of-patient-centric-communication.html)

****

****
****
****Note the diagrams below are "one" rendering, there could be variations not shown. The diagrams are abstract, thus not representing exactly network transactions. The text in courier font are the essential source for [WebSequence Diagram](https://www.websequencediagrams.com/) rendering.****

**
**

**Mediated Exchange** --

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi0ne-0ml1Nx_EUtbWWskKmVT-4xq8lX8mbD0o8BRspD9V1JgYzTF2j6389xCH5ODiTFfFj5hrrlphkIW60cAqn4Etc_LHSEBMjS9ba6VnDzHthcTKVuomkoC0vQVckpJDLqGwrJHjdjle6/s1600/Mediated+Exchange.png

where the Patient themselves is an active part of the communication pathway. Such as carrying the data within their possession, using a personal device and application, --- Such as using a phone resident App using FHIR to download their data, then upload that data to some recipient. Mediated might also be by way of a Cloud service that is completely controlled by the Patient (PHR model)

loop get data

Patient->+Source: Request for data

Source->-Patient: data

end

loop gives data

Patient->+Recipient: Give data

Recipient->-Patient: Thanks for data

end

**Directed Exchange** --

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjkqPD6Q2dfbidcPSj_J9o7yVpc7m6CUnSW4E16u4FmIWp9U_AXGxISg8iKnhMOdglKrysk28-0Svg1Wa_3e5JRhAV4ewHFOmeYEEEt-K9L5Lh3aADf4xxBJAq9bCO0wjqo-2WSL1PbC6Nw/s1600/Directed+Exchange.png

where the Patient actively requests that the information flow to a selected destination. --- Such as a patient using Direct Secure Messaging, or where a patient requests that the data be pushed.

loop send data

Patient->+Source: Request for data to be sent

Source->+Recipient: Give data

Recipient->-Source: Thanks for data

Source->-Patient: data has been sent

end

**
**
**Negotiated Exchange** --

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiDnXnA7kpzaZhSGWnAKXU7WtiFzB5OVGeNTXxT5fvIC3_cxe0Ppc1zyfqnxqdGpQ2_EqUJPRb-47M3MhY4F26uqtsXr9U-X08qWnXlJsxCzX7fneC6uyiTAqh4DvTxQAAtdOPYo50ikni9/s1600/Negotiated+Exchange.png

where the Patient themselves connects two parties and authorizes the flow between those two parties. --- This might use the HEART standard for authorization, and FHIR apps.

Patient->Recipient: I have data at Source

loop for all the data

Recipient->+Source: Ask for data

Source->+Patient: is this Recipient authorized for this data?

Patient->-Source: yes

Source->-Recipient: Here are data

end

Controlled Exchange --

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgmRGG2wcnZ8UZxzCf1xZBsfonexPZmPrmbLuahI58kkxnRtEoQYxrpBKLc57H2L61WwyMpyTrWz8xlD1SIqWY86l1jVD7x6a7kpNOEwIRKwWrlvbn0a6HMY_uOJKzKpHcbHghrR_quwCP2/s1600/Controlled+Exchange.png

where the Patient does not get directly involved in the communication, but should be understanding of the communication and possibly have control. over that communication. The discovery of the data locations is architecture specific. --- Like using Health Exchange between Provider organizations

Recipient-->Source: Discover data

loop for all the dataRecipient->+Source: Ask for data Source->+Patient: is this Recipient authorized for this data?Patient->-Source: yesSource->-Recipient: Here are dataend

All data movement only by authorization by the Patient
In all of these models there is NO movement of the data except through authorization by the Patient. This is the fundamental of "Patient Centric".  They each 'should' offer the [same level of Patient control](https://healthcaresecprivacy.blogspot.com/p/consent.html), right down to the ability to permit or deny access to any specific data. They each 'could' provide the recipient proof of integrity, authenticity, and provenance.  They each can do this, but they each can also fail to do this. They differ in technical mechanics, and thus they differ in how well supported these factors are.

Mediated, Direct, and Negotiated Exchange Models

Mediated, Directed, and Negotiated scale only when the population of patients chooses to take an active role. Some patients are very active, most are not. Those that [are active should be given their damn data](https://www.epatientdave.com/2012/08/27/gimme-my-dam-data-the-story-the-video-the-next-speech/).

So for our three factors:

- The patient themselves through direct action makes the connection. The patient must have a direct relationship with both parties. (yeah, I know someone is going to say the patient will hide data they don't want shared. yes, they will. I assert they can do this in ALL correctly patient centric models)

- The patient themselves decides who to share their data with. (yeah, I know someone is going to say that the patient is ignorant and can't be trusted. This is a tired, and paternalistic, position that is getting in the way of progress while not having any proof. I assert that if a patient has taken action, it should be done. )

- The patient themselves directs the exchange of data.

**Quality**: In these models there is no overall governance that could assure quality of the data. So a recipient is stuck with the format and quality of the data they are given.

**Authenticity**: In these models, the biggest technical problem is "Trust of the data received". The place where this breaks down is when the direct relationship is with the destination, and that destination needs to understand the trustworthiness of the source data. The Direct Exchange and Negotiated Exchange have mechanisms under which the destination understands the source identity and can thus build "Trust" on that.  The backup solution is that the recipient organization uses some out-of-band mechanism to confirm the data prior to accepting it. This might be a conversation between the clinician and the patient; conversation between the clinician and the source organization.

[Digital-Signature](https://healthcaresecprivacy.blogspot.com/p/topics.html#DSG): There are digital-signature technologies that could be used, but they require that there is a trust-domain of all possible signatories and their legitimate role in signing legitimate content in a given context. Provided there is a trust-domain for signatures, then digitally signing all content will work regardless of how the data are transported. [I am a fan of digital-signatures](https://healthcaresecprivacy.blogspot.com/p/topics.html#DSG), but they often fail for policy, procedure, and human reasons.

**Funding**: I am not sure how any of these models are economical. That is, who pays for the mechanics of scale. The mechanics are small, but they are not zero; and we have seen many PHR products fail due to no ability to have a legitimate funding model.  The hidden costs is that the health data keep growing larger and larger, while engagement by the patient falls off.

- Mediated -- the storage is either on an app held by the patient, or in the cloud. On app storage is limited by the storage of the device, but this likely scales reasonably. On cloud storage has a very low cost of bytes, but does need to deal with eventual purge of the data when the patient expires.

- Directed -- this is currently funded by Provider-to-Provider use-cases, which is getting in the way of being offered to the Patient. So we already see how the funding model of Directed is a problem.

- Negotiated -- the funding problem here is on how to fund the negotiation infrastructure. This is a problem that the [HEART community is having today](https://healthcaresecprivacy.blogspot.com/2018/02/apple-should-have-heart.html).

Conclusion on Mediated, Directed, and Negotiated
These only scale to the extent that the population of patients engages. I think that if the full population engaged, these solutions would technically scale. However I think that there are too few patients that want to be this engaged.

The issues around Quality and Funding are major problems.

Controlled Exchange Architecture Models

Controlled Exchange can scale for both those patients that are active participants and for those that simply want the system to work without them doing anything. BUT, Controlled Exchange scaling requires architecture.

The Controlled Exchange is the dominant model preference by Clinicians, Payers, Population Health, and Data Analytics organizations. As it enables access to data without the Patient being an active participant. These exchanges often have regulated exceptions to Patient Control. They tend to be the preference of these organizations with excuses like the need to have full-fidelity of the data to enable patient and clinician safety, to enable access when the patient is not conscious, and to protect the population at large. This model is the only one that 'could' support a "[Break-Glass](https://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir-solution.html)" function. This is often seen as paternalistic, but can also be seen as anti-Privacy.

 -- [Part 2: Controlled Exchange Architecture Models for Scale](https://healthcaresecprivacy.blogspot.com/2019/10/controlled-exchange-architecture-models.html)

