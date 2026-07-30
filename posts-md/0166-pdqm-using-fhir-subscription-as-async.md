# PDQm using FHIR Subscription as Async API to XCPD/XCA 

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/09/pdqm-using-fhir-subscription-as-async.html
Published: 2018-09-06T13:54:00.001Z
Updated: 2018-09-06T13:54:27.524Z
Author: John Moehrke

---

In the [last article I covered the basic flow of using PDQm and MHD as an API to an XCPD/XCA](https://healthcaresecprivacy.blogspot.com/2018/09/mhd-as-api-to-xca.html) environment. This is the classic intention of the current IHE Profiles.

But, the reality of XCA communities are that

- You likely have hundreds of communities to probe

- Some of those communities will be fast, some will be slow

- Some communities will be down and never respond

The reality is that the time between a Consumer asking a PDQm discovery request, and getting ALL of the results from ALL of the communities, might be many minutes. Yes, many minutes. That long of a time between a RESTful GET (query) and the response is unusual. A typical http RESTful api toolkit likely doesn't wait that long.

One solution is to just make sure all your Consumer implementations wait a very long time before giving up and assuming their Responder/InitiatingGateway infrastructure has failed them. How long to wait? This might be a value populated somewhere, like the CapabilityStatement on the Responder, or in a Service directory.

But that is not friendly to the user. You might be able to get the Consumer software to wait many minutes, but there is likely a human waiting that long too. It is possible to stream each result back as they become available, to the Consumer. I am not sure what that looks like. To stream the results would also require the design of the Consumer software to be expecting streamed results. Meaning it doesn't wait for the whole http response before it starts looking at what it does have... Again, not a friendly solution.

Lastly the Responder/InitiatingGateway must have a blocking thread for this many minutes too, taking up precious resources on the middleware.

Some of these problems are http RESTful, but most of them are general problems that exist even in the classic XCPD/XCA world using SOAP.

FHIR has a solution ready to be used... Subscription.... With Subscription the Consumer creates a Subscription resource with the subscription criteria equal to the PDQm query it might otherwise do.  The Consumer gets notified as data matching that Subscription becomes available.

The typical use-case for Subscription is to register a subscription for new data that might appear in the future as created by someone else. In the use-case I am describing here it is as an Asynchronous mechanism for a set of transactions (XCPD). In my case the creation of the Subscription is a trigger to start some backend XCPD discovery. Once all of that XCPD discovery is done, then the Subscription is useless. So the end of the Subscription is different than typical use-case for Subscription.

I worked with a developer who implemented this as an internal API to their implementation that interfaces with the eHealth Exchange (Sequoia Network). Where there are well over 100 partners, and some partners take many minutes to respond. The result was a much more responsive application behavior, in that case a web-interface. In fact the whole response-time from start to complete finish was faster as the critical processing could happen during what would normally be wait time, rather than doing critical processing after all the network interactions happened. So double win!

This looks more busy, and it is.. but the waiting is between the gaps. The best part of this approach is that the "new results - ping 1234" will happen once for each Patient match found, and will happen when that match is available. Thus the Consumer software will learn of matches from fast partners really fast. The Consumer can then start doing something right then, like minimally displaying the results. Unlike the classic solution that prevents the Consumer from knowing anything until everything is known.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh83DZLdpg8osHSB-tTlsBnkYftRy6dAzSdyQfHNtt6ac38p-nxs483TkpvFGgs08HEvoUu4lTCXkOsSg-ZuOds01f9zc-tRozRo11a0aI_1ZqDtjaB8Yg5fRFaGCCTIuCIUf7TGLvq8X9z/s1600/PDQm+Subscription+--+XCA.png

Note I used web-sockets here, which does require a the Consumer to query after each notification. There are other Subscription types that can pass the data back. I haven't experienced them, and don't see much written about them.

Here is the source for the UML diagram that can be used at [https://websequencediagrams.com](https://websequencediagrams.com/)

+------------------------+

title PDQm Subscription -- XCA

participant Consumer

participant Responder

participant InitiatingGateway

participant RespondingGateway

note right of Consumer

based on some need a patient is of interest

end note over

Consumer->+Responder: Create Subsubscription

note right of Consumer

Simply move the PDQm search on Patient

into the Subscription criteria:

Subscription.criteria = Patient? blah

Subscription.channel = websockets

end note

Responder->Responder: check if valid request

Responder->InitiatingGateway: start discovery

activate InitiatingGateway

Responder->Consumer: Subscription Create success = 1234

Consumer->Responder: Open Web-Sockets channel

note right of Consumer

endpoint of Web-Sockets is identified

in CapabilityStatement on Responder

uses websocket extension

end note

Consumer-->Responder: link this websocket to subscription -- bind 1234

Responder-->Consumer: successful link to subscription -- bound 1234

loop for --ALL-- Partners in Community

note right of InitiatingGateway

Design backend to be most responsive:

Could be thread pool, could be event driven

Might use XCPD synchronous or asynchronous

end note

activate InitiatingGateway

InitiatingGateway->+RespondingGateway: XCPD Patient Discovery

RespondingGateway->-InitiatingGateway: found patient alpha @ beta community

InitiatingGateway-->Responder: store result in cache

activate Responder

deactivate InitiatingGateway

end loop

Responder-->Consumer: new results - ping 1234

deactivate Responder

activate Consumer

note right of Consumer

normal PDQm query

plus Consumer remembers the time it last queried

Find Patient?blah&_lastupdated=time

end note

Consumer->+Responder: PDQm Patient?blah&_lastupdated=time

Responder->-Consumer: results from Cache

note right of Responder

cached entries returned

can be maintained or flushed

end note

deactivate Consumer

InitiatingGateway->Responder: notice all Partners have responded, or timeout

deactivate InitiatingGateway

note right of InitiatingGateway

Given no more can happen then done

end note

Responder->Consumer: Close web-socket

Consumer->Responder: Update Subscription(1234) inactivae

deactivate Responder

note right of Consumer

at any time Consumer can inactivate

end note

note right of Responder

take down web-socket if still up

flush cache

end note

