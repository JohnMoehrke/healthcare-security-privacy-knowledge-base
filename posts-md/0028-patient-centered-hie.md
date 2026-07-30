# Patient Centered HIE 

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/04/patient-centered-hie.html
Published: 2018-04-06T16:57:00.001Z
Updated: 2018-04-06T17:00:40.570Z
Author: John Moehrke

---

The Patient is NOT the center of existing Health Information Exchange. Yet, the Health Information Exchange exists for the sole purpose of treating that Patient. These two factual statements are completely opposite. How can they both be facts?

The patient does not feel like the center. It is all about Experience. In agile terms "User Experience". If the user does not feel the experience they want, then they are NOT happy. Does not matter how hard the product is trying to make the user happy. If hey are not feeling it, then they are not happy.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg6UrOSNHHAhiYsOcnd4rW9FSXFR7TjaYeWSZ7KDe6K5EOSx4hNlIKU45SSh-3COFvyzVOxmCmJ2RZXGzLytMN8slJuAapgLQA08kCYXGEZlM362bpShysbun4lPrGkF-VlbAdI3tAOB8Em/s1600/Slide6.PNG

The Health Information Exchanges today have an existing Architecture. This architecture is a good architecture. Yes I am speaking about ALL of the various architectures of Health Information Exchanges. Centralized, Distributed, Federated, and discombobulated. They all are good architectures. **The architecture is not the problem. Yet, our healthcare leadership keeps looking for a new technical architecture to solve this problem. **

I assert this is NOT because of the architecture of Health Information Exchanges. BUT rather that this is because of a lack of considering how the would or could Patient Experience the impact available because of the Health Information Exchange.   The architecture supports the following Patient Centered use-cases.

Lets think about the Patient -- User Experience. I offer the [Privacy Principles](https://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html) as the use-case to drive this User Experience. You can certainly also consider healthcare treatment use-cases, I won't simply because I am not an expert there. I do fully expect that Care Plans covering chronic care conditions will be the killer-app (sorry) for Health Information Exchanges.

Patients controlling use of their data
Provide the ability of the Patient to set rules for how their data can be used. This is otherwise called Consent, but many people have a very constrained definition of Consent, so I am happy to indicate it is rules for how the data can be used. When I 'used' I also mean the broadest definition. Again some people see "Collection", "Use", and "Disclosure" as special words in Privacy. I don't mean that restricted word 'use', but also includes collection and disclosure and anything else that uses the data.

Yes these rules do need to consider "Treatment" as special, but not uncontrollable. There can still be rules of use in treatment. This recognizes the needs some patients have with sensitive health topics, or concerns about those in the privileged position of treatment.

Emergency Treatment should be seen as a special case of Treatment. Today it is all too often bundled into simply Treatment. I would argue that Emergency Treatment as a use allows a much broader audience of care providers (including Police, Fire, EMT, FEMA), access to a more constrained body of data (a customized Medical Summary holding the critical few data elements), to enable more optimized stabilizing of the patient.

Control of the data also includes allowing the patient to engage their data in use beyond treatment. How about allowing the patient to directly authorize clinical research projects? I should be able to authorize a research project to have full access to my historic and future data.

Controlling the data use is fundamental. The use is not without restrictions, but empowering.

Patients knowing how their data is used
Provide an Access Log. I would say Accounting of Disclosures, but there are simply too many exceptions that this results in a useless, and empty, log. I want an Access Log, that is a log of every time my data was accessed (Direct or Exchange or FHIR). Who requested the access? What did they ask for? What did they get? When was this? Where was this? Why did they access (PurposeOfUse)?

There no network that I know of that provides a view of how the HIE was used to expose the Patient data. I recognize the concern that Covered Entity have that gives us "Normal Operations" exceptions. I don't like these exceptions, but I understand why they exist. I think that ALL accesses over a Health Information Exchange need to be reported to the Patient.

Patients themselves using their data
Provide API access for applications the Patient chooses and authorizes. In the past this would be covered by a statement of "PHR", but that concept is too limited today. This item is inclusive of the older concept of a PHR, but is also inclusive of newer health Apps. Where a PHR was a system that would copy the patient data and give the patient the ability to connect apps to that copy of the data;

Now days we are looking to use FHIR as a way to connect these Apps directly to the data.  These apps will tend to just need read-only access, but...

The Patient should be able to be a peer on the Health Information Exchange

Patients authoring their data
Provide capability of the Patient to author data. Many patients, myself included, are using many home-care devices, personal-care devices, health-monitoring devices, and sports related devices. These are producing a wealth of information, much of it is just background measurements.

These measurements are not accessible to Providers unless they can be contributed on-behalf of the Patient. Clinicians might not want to be bothered by these volumes of data, from uncalibrated devices. But the fact the data is NOT accessible at all is a problem

How about the Patient and their Devices author directly into FHIR. Given this is a new concept, there should be no momentum to use old technology.

Patients correcting mistakes in their data
Provide the Patient to challenge the validity of data. Once we can see the data, we will surely find some mistakes. Being able to challenge the validity of the data is essential. Even HIPAA acknowledged the need for the Patient to 'Amend" their data. I say challenge as to be closer to "Patient-Centered" or "Patient-Engaged".

This would require some standards development. What does a patient challenge look like, what are the data elements, and trustworthiness of the challenge? How does the patient engage with this mechanism? How does the result of a successful challenge look to users (clinicians) of that data that has been challenged?

I'm sure there are others. I base these on the [Privacy Principles](https://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html)

Why NOT?

The reason why ALL of these are not done is because there is no obvious place where the Patient can go to get engaged. There have been attempts, [most recently by Apple](https://healthcaresecprivacy.blogspot.com/2018/02/apple-should-have-heart.html)., [technologists think Blockchain is the solution](https://healthcaresecprivacy.blogspot.com/2017/11/healthcare-use-of-blockchain-thru.html). They all have, and all will continue to fail because the Patient population is not a stakeholder. **Each individual is a stakeholder, but  individuals are not powerful enough. **They only become a **population of stakeholders** when they get together with a common demand.  Realistically the population of Patients don't want to pay for this. Follow the lack of money, and you see the problem.

This is not just a USA problem, but is true globally (comments welcome). However in the USA, the government's insistence on forbidding a federal identifier is [very](https://healthcaresecprivacy.blogspot.com/2012/03/nwhin-exchange-use-of-xcpd-for-patient.html)[detrimental](https://healthcaresecprivacy.blogspot.com/2013/12/policy-needs-to-get-out-of-way-of-good.html). It keeps anyone from being able to take this role.

So, the Patient must today get their engagement through their GP. Thus the GP is the Patient Experience. Thus how well the GP makes this experience determines how engaged the Patient is.  The GP is more likely to make engagement with the GP a better experience than engaging with other healthcare providers or outside researchers. Thus there are thousands and thousands of very different Patient Experience. **It is no wonder then that the Patient is not feeling like the center of the Health Information Exchange.**

I have no solution... sorry...  I do know that technology is not the problem. I do know that architecture is not the problem. I do know that standards are not the problem.  I do know that switching from [CDA to FHIR](https://healthcaresecprivacy.blogspot.com/p/fhir.html) is a good thing, but will not fix this. I like [blockchain](https://healthcaresecprivacy.blogspot.com/p/topics.html#Blockchain)architecture and capability, but it will not fix this problem.

To understand the solution from the perspective of the standards, technology, architecture, and theory... [This is my blog](https://healthcaresecprivacy.blogspot.com/p/topics.html)

