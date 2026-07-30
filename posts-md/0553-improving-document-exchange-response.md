# Improving Document Exchange Response with Asynchronous FHIR API

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/09/improving-document-exchange-response.html
Published: 2018-09-07T15:00:00.002Z
Updated: 2018-09-07T15:00:25.348Z
Author: John Moehrke

---

In the [last article I show how PDQm can be made Asynchronous by using the FHIR Subscription](https://healthcaresecprivacy.blogspot.com/2018/09/pdqm-using-fhir-subscription-as-async.html). This is just one step in the overall interaction that one does with a Cross-Community Document Exchange (XCA). It is however the one that typically has the largest delay.

Baseline using Synchronous API

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiMOc0GmlqXkpmHWdia3n8hpYevH42XkjGEm296TDe7oh7XvNtEDHvOVS5vXi70QU_5XZ33UNUNqviGGOowHDj5kk7EZYMgysjcVOkeTYylEHQY8S0bKyMBdHaHzoUXEIPSeoJM1FvE1_yV/s1600/High-Level+Community+Exchange.png

Here is a simplified view of a Consumer requesting through a synchronous API to do a Patient Discovery (PD), Query for Documents (QD), and Retrieve Documents (RD). A more detailed [view](https://healthcaresecprivacy.blogspot.com/2018/09/mhd-as-api-to-xca.html) in previous articles. This high-level view works for MHD as an API to XCA, just as well as using XCA/XDS old-school.

Lets imagine there is 200 partners within the exchange. The Patient Discovery must be sent to each one of them. This fan-out is not shown, it is being done by the Service on the right. The Service must wait for the response to come back from each of them. Only when all partners have responded, or some timeout has happened, can the results be returned back to the Consumer.  As I indicated before some of the 200 partners might take a few minutes to return a result. Thus this Patient Discovery can take minutes before the second step of Query for Documents can happen.

The Query for Documents is a bit more targeted, as you would only query the partners for which you got a positive patient identity match. In the example from 200 partners, only 10 of them know of the patient of interest. Thus the Query for Documents can be limited to just those 10. It is still possible that those 10 are slow.

The Query for Documents to those 10  can be done in parallel if your Consumer technology stack allows that. I show it here as 10 one after another. Thus the overall Query for Documents will be the combination of all the partners including the slowest partner that has data on the patient of interest.

This diagram shows that for every Document Entry found, a Retrieve Document will be done. This is not unusual for some [middleware that might be decomposing those documents, such as the mXDE environment I show.](https://healthcaresecprivacy.blogspot.com/2018/06/presenting-ihe-on-fhir-at-fhir-devdays.html) I guess I really need to blog that mXDE environment.

Also there are opportunities to detect the same document at multiple locations, thus eliminating the Retrieve Document being done multiple times. See [this article](https://healthcaresecprivacy.blogspot.com/2018/04/de-duplicating-received-duplicate-data.html).

Better Response using Async API

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEimP3DO0y95W4H-79CT_wVJdyoxlWDMz9WltRbu39V_FUprx9H2YzBUMH2-zH98H12ILFIn-2qrI-Fp97hFBjSPqdR4qHhkKKAzAO_MYjOLxnBBrPB-WIJs5OkTllV5ielhra_m0uu2LEI8/s1600/High-Level+Async+Community+Exchange.png

There is asynchronous support in XCPD/XCA; it is just not often used. For example the eHealth Exchange and CareQuality don't have any use of asynchronous while they have required everyone to support it.  I understand that the Epic Care Everywhere internal network that is based on XCPD/XCA does use the Asynchronous SOAP. Using Asynchronous SOAP gets the same improvement shown here.

This improvement can also be done using FHIR Subscription and orchestration of each notification. The diagram shows one full Patient Discovery, Query for Documents, and Retrieve Documents. The last notes shown just indicate the same could be done for each result returned.

Something that is hard to diagram is that all of these events are asynchronous so everything is overlapping in parallel.

The result is that the first full Document returned might be available in fractions of a second, while the last might take a long time. In fact the last one would only take as long as the three steps (PD+QD+RD) for that entry alone. This Asynchronous approach decouples the response of each partner.

Conclusion
Async is great... but it still must be managed, and the failure-modes are messy. If one has infinite resources, for example an infinite number of threads, then one can just let the system go. But often one has just a limited number of threads or memory or cache.. Thus some events might need to be queued to happen when resources come available.

Automating the Document Retrieve is not as important, but showing it can be orchestrated in just hammers home the message. This step would not be done for human view, but would be done for a middleware service that is decomposing the documents, like [mXDE describes](https://healthcaresecprivacy.blogspot.com/2018/06/presenting-ihe-on-fhir-at-fhir-devdays.html).

Even more advanced orchestration

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhVBkOJ4ms_oLr_l8vvRtTA-GqVC7qMSHIjYaetju51cH1BgEbkWbzrG-BSHosVpYcsvHeWep8mUvxLFzLlJ7W5F9Vle-uHGSY4r8GsU0vIUD0WgwJWmW2LJaa3mgUIvn1xm0V6fTed3yax/s1600/Automate+fully+Async+Community+Exchange.png

The other use-case is the one that **David Vazquez** and I worked together on as an internal API within the VA. It is David that made this vision come to life. He orchestrated PD->QD->RD completely. He made an internal API so had some design criteria to help him.  Used FHIR Subscription on DocumentReference. There was clear Patient search parameters that can be chained cleanly onto DocumentReference query. There is a need for cache of DocumentReference and Documents. By having this cache could then respond to requests from the app quickly.  He then changed the Web based application the Clinicians use to use this Async MHD like API, and showed the huge improvement in response time. The Clinician would normally sit waiting for many seconds before anything would happen (the slowest community wins), but with the Async API they would get results right away (the fastest community wins). What surprised us both is that overall the complete results were available faster.

Alternative Patient Discovery performance improvement
The biggest advance is gained by the Patient Discovery. The alternative architecture is the one CommonWell has implemented as their Record Localization Service. They get the equivalent of an Asynchronous performance by requiring all Partners to feed them an ADT, for which they do cross-reference correlation at that time, so that when a Patient Discovery is needed the answer is already known fully.  This is what IHE has in the XDS environment. The negative is that all Patient Demographics are stored locally regardless of if that patient will ever utilize the network (some patients never leave home). The performance improvement is significant. Likely also much better quality of the matching is possible.

The websequencediagrams

+-------------------------+

title High-Level Community Exchange

participant Consumer

participant Service

Consumer->+Service: Patient Discovery (PD)

note right of Consumer

time happens (PD)

end note

Service->-Consumer: 10 Patients found

loop for each Patient at 10 Communities

Consumer->+Service: Query for Documents (QD)

note right of Consumer

time happens (QD)

end note

Service->-Consumer: 10 Documents found at that Partner Community

end loop

loop for each Document (10*10)

Consumer->+Service: Retrieve Document (RD)

note right of Consumer

time happens (RD)

end note

Service->-Consumer: returned document

end loop

+-------------------------+

title High-Level Async Community Exchange

participant Consumer

participant Service

Consumer->+Service: Async Patient Discovery (PD)

Service-->Consumer: first Patient found

activate Consumer

par for each Patient

Consumer->+Service: Async Query for Documents (QD)

deactivate Consumer

Service-->Consumer: first Document Entry at that Community

activate Consumer

par for each Document Entry

Consumer->+Service: Retrieve Document (RD)

deactivate Consumer

Service->-Consumer: returned document

end par

Service->-Consumer: ... 10 Documents found at that Partner Community

note right of Consumer

each would kick off a par like above

end note

end par

Service->-Consumer: ... 10 Patients found in network

note right of Consumer

each would kick off a par like above

end note

+-----------------------------+

title Automate fully Async Community Exchange

participant App

participant Middleware

participant Service

App->+Middleware: Subscription (DocumentReference?Patient:fname="bob")

Middleware->+Service: Async Patient Discovery (PD)

note right of App

Middleware will notify App for each DocumentEntry found

end note

Service-->Middleware: first Patient found

activate Middleware

par for each Patient

Middleware->+Service: Async Query for Documents (QD)

deactivate Middleware

Service-->Middleware: first Document Entry at that Community

activate Middleware

par for each Document Entry

Middleware->+Service: Retrieve Document (RD)

deactivate Middleware

Service->-Middleware: returned document

end par

Service->-Middleware: ... 10 Documents found at that Partner Community

note right of Middleware

each would kick off a par like above

end note

end par

Service->-Middleware: ... 10 Patients found in network

note right of Middleware

each would kick off a par like above

end note

Middleware-->App: in realtime - notifiy of each more Document Entry

App->Middleware: GET DocumentReference...

App->Middleware: GET document

App->Middleware: deactivate Subscripiton

