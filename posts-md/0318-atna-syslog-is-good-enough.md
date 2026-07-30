# ATNA + SYSLOG is good enough

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/12/atna-syslog-is-good-enough.html
Published: 2012-01-03T02:48:00.001Z
Updated: 2012-01-03T15:51:39.847Z
Author: John Moehrke

---

There has been a renewed discussion on the IHE ITI Technical around the topic of [syslog and application level acknowledgement](http://groups.google.com/group/ititech/browse_thread/thread/a635d0ca2a34826e). There are calls for Healthcare to go away from SYSLOG and invent their own protocol with an application level acknowledgement. Rob has provided his [analysis and proposed one solution](http://fairhaven.typepad.com/my_weblog/2012/01/should-syslog-use-application-acks.html), then followed it with [more analysis](http://fairhaven.typepad.com/my_weblog/2012/01/explanation-of-tcptls-vulnerability.html). I simply don't think that the problem is worth fixing: there is a very small likelihood of it happening, and it is detectable. With good design, once the failure has been detected it can be completely recovered from.  This being the months leading up to [Connectathon](http://healthcaresecprivacy.blogspot.com/2011/11/ihe-na-connectathon-conference-january.html), the topic of design vs interoperability specification comes up quite often. For example the [ATNA audit log recording of Query transactions](http://healthcaresecprivacy.blogspot.com/2011/12/atna-audit-log-recording-of-query.html)

The concern is that there are cases where one can cause audit events to be lost by killing the network inbetween the audit sender and the Audit Record Repository. If you do this as a link in the middle, then neither side notices until re-transmission timeouts. In this time the sending side may nolonger have the messages to retransmit at the application level. The core concern is for integrity of Patient Privacy reports such as the [Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiL4Y2UrTptLhQ7Jp_HxzkSiZ6nVSx4M7jsKjVRA1MVLr8uLv42u3MfzMHd8VWLWioKkz36PMi42_119rzkbg6vT0UAHG4KFqRcyt5Q5fqSqpOVJgsjiT_c44q0D5GOeifrITInToG3vikn/s1600/Slide17.PNG

**Analysis**

This is the reason why ATNA has all systems involved, recording auditable events. Although one system might have lost an audit event, the other party involved in a transaction will likely have succeeded in recording the event. That is the client of a transaction (e.g., XDS Document Consumer) fails to get their auditable event recorded, but the server of that transaction (e.g., XDS Registry) does get their auditable event recorded. Further, each access to the data once it is inside the receiving system (e.g., XDS Document Consumer) must also be recorded. Among all of these audit records will be sufficient information, even if a few events are lost. This protocol was designed back when SYSLOG was completely UDP based, favoring the model of no-delay, possibly out of order, and no-queues to reliable transport (TCP) now with security (TLS).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLwV_fZyGsRWbzAUuVzCyzzB25Rp_KjNtmrmKJ8-aHiKQRYVOKyA2k2Fzn7aMpT6hZO6dA9NEnwy7cjRZUSnHzFbwr022RRhGOmG8ZT3Pn5RWkuPYEV8LeORTG3b2rAImJPigfHF7Bejna/s1600/Slide18.PNG

The security officer can see that there is a missing audit event, as all transactional events should be double, and can investigate the failure that caused the event. If the failure continues to happen, then they have knowledge to make the system that failed more robust. Like possibly putting an ARR closer to that system (such as the Distributed Accountability diagrammed), possibly inside on loopback with a filter auto-forwarding robustly. Using a standard like SYSLOG allows for using off-the-shelf building blocks.

I will point out that TCP protocol is a reliable transport (I wrote a complete commercial stack back in the 80s for Frontier Technologies Corp - throw stones if you wish). The TCP problem that people are pointing at is totally detectable, but requires that the application wait for the confirmation that the connection was closed gracefully (SO_LINGER, or shutdown).  I am assuming that the observed problems of lost audit events  are due to some implementations that are not doing graceful shutdown of the socket, so they can't notice if the connection closed abnormally. Applications have responsibility too. It is very true if you don't wait for a graceful shutdown to complete normally then you can't know if all the data you have sent has been received, or if you have received all the data the other side sent.

**Going deeper**

There is one case where the 'wait' can be very long and leave things indeterminate. The case is well documented by one of the leading thought leaders inside the SYSLOG community [Rainer Gerhards](http://blog.gerhards.net/)

- [On (un)reliability of plain tcp syslog](http://blog.gerhards.net/2008/04/on-unreliability-of-plain-tcp-syslog.html)

- [why you can't build a reliable TCP protocol without app-level acks...](http://blog.gerhards.net/2008/05/why-you-cant-build-reliable-tcp.html)

The case is where a network failure happens during communications. Normally the Audit Record Repository is only receiving, and thus there is no outbound TCP traffic from the Audit Record Repository to trigger a failure event. To protect these cases, the TCP protocol implementations have added a SO_KEEPALIVE, that would have the TCP on the ARR side sending negative traffic just to get a positive TCP-ACK or reset. So, I would suggest that ARRs should be using SO_KEEPALIVE.  The ARR would know all the data that was received and that the connection terminated non-gracefully. So the ARR side is detectable and deterministic.

The sending side would have data in the outbound queue (at least in the documented case), so this data in the outbound queue will be retransmitted until the TCP on the sending side gives up (yes, lots of retransmits later, with dynamic backoff). The sending side can also notice that it's outbound  wants to block, and based on application logic (queue+time configurations) presume failure. So, the sending side will know that failure has happened, just not 'when in the data stream'. Yes the sending side is very blind to the TCP outbound queue inside the stack. Thus for full record (which I argue above is not critical) the sending side would need to re-send all un-recorded audit events, which it doesn't know how far back to go. The sending side could also use SO_KEEPALIVE, it would help to detect failure when it happens, which might be while the outbound queue is empty.

Note that both the sending and ARR should really be recording this connection anomaly as an auditable event, thus flagging it for inspection by the security officer.

**Detect and Mitigate**

If you want to make sure you have all your audit events recorded, you could always gracefully close the SYSLOG connection (ShutdownOutput, SO_LINGER). Open up a new one for new events, while awaiting the graceful close notification on the old connection. This will have additional overhead, and no idea how well Audit Record Repositories would like this. Note more auditable events might be recorded on open and close of the SYSLOG socket.

I could imagine a robust design that has some outbound queue size or inactivity timeout that might be used to cause this confirmation flush shutdown. In this case, the sending side can know exactly all that should be re-sent if a network failure happens, possibly delivering duplicates to the ARR (an easy thing to detect at the ARR). This seems like a high level of logic to handle an event that doesn't happen often, is detectable, and duplicate events protects against. As Rob [points out](http://fairhaven.typepad.com/my_weblog/2012/01/should-syslog-use-application-acks.html), retransmitting an ATNA audit event will mostly be detected at the Audit Record Repository although Rob suggests we could make the protocol more robust.

Note that we did originally specify the "Reliable SYSLOG" protocol, which does include these application level controls. This protocol was rejected by the IHE developers, and also by the general SYSLOG community.  It was considered too complex, and too hard to implement. The SYSLOG community may continue to mature and head back to this more robust approach, but I don't see that happening very fast. The reality is that the problem does exist, but there are other ways to solve the problem without changing the protocol completely.

Updated: [Rob has posted an article on their experience with network failures](http://fairhaven.typepad.com/my_weblog/2012/01/actual-failure-experience-re-atna-syslog.html). This is more proof that one needs good design, design that has considered risks (including security risks).

