# Is IUA (OAuth) useful in Service-to-Service http REST (#FHIR)?

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/11/is-iua-oauth-useful-in-service-to.html
Published: 2016-11-30T20:19:00.004Z
Updated: 2016-11-30T20:19:49.330Z
Author: John Moehrke

---

My last article was regarding if [XUA (SAML) was useful in a Service-to-Service SOAP exchange](https://healthcaresecprivacy.blogspot.com/2016/11/is-xua-useful-in-service-to-service.html). The same question came to me regarding FHIR and http REST. It was not as well described, as it was in a phone call. But essentially the situation is very similar. There are two trading partners that have an agreement (Trust Framework) that one will be asking questions using FHIR http REST interfaces of the other party.

Using Mutual-Authenticated TLS

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjBQkttTVZ7Q_xpKtCBQyH-2xQ3w3y1kGtI4NrFRAR2hyzUjGqcpRkzDchzMbwpk3_5hyphenhyphenpSj5U7MP6J1NZlHJC6MMx29OuSFlZ4x1DS40GmqHhuMODIJ6f0hSVhAcyN9zreaoR_JRnWLMZr/s1600/Slide15.PNG

The initial solution they were thinking of was to simply use Mutually-Authenticated TLS in place of the normal (Server Authenticated) https.

This is easy to specify, and is [consistent with IHE-ATNA.](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

This solves authentication of the server to the client, and authentication of the client to the server.

This solves the encryption and data integrity (authenticity) problem.

Thus keeping EVERYONE else on the internet out of the conversation.

The negative of this is that one must manage Certificates. One issued to the Client, One issued to the Server. The more clients and servers you have, the harder the management of these Certificates become. As this number approaches a large number (greater than 2 by some peoples math, greater than 20 by others) it becomes more manageable to involve a Certificate Authority. You can use a Certificate Authority from the start, but it is not that critical. Some Operational-Security-Geeks will demand it, but often they are misguided..

So at this point we have a simple solution, that addresses the issues.  It looks very good on paper.

Problem with Client authenticated TLS

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgnwnTfaQY12fsSeJN5QXGxhrL5yc6xFKOEACeUTtoZtHZGWi4LAAzxl-Z_uc4msaI8V6m5bB_iG5fTJV9BuUKO2El3uW_-VrPfDe3A49lGMpejXBzxsoDFeVlFGWUr9dsBn4wOZLuEA1FT/s1600/image002-758580.png

There is however an practical problem that might cause you pain. It caused me pain as soon as the project I was on tried to implement this at scale. At scale, one tends to use hardware assistance with the TLS protocol. There are many solutions, in my example it was F5 based load balancing hardware based TLS support. These fantastic device make TLS --- FAST --- But their default configuration doesn't include Mutual-Authenticated TLS. They have Mutual-Authenticated TLS, it can be configured.

The next problem is that the TLS acceleration box strips off TLS; meaning that my web-server gets no indication of the identity of the client. If the situation is that I don't have different Access Control rules, this might not be a big problem. However I don't have a way to record in the Audit Log who the client is. If the client is exactly ONE system, then I can guess that it is that system.

The good news is that the TLS acceleration box can likely be configured to pass along that client identity from that TLS client authentication. In my case, there was a chapter in the F5 documentation that told me how to write the script to be inserted in the F5 so that it would extract the Client Identity, and stuff it into a http header of my choosing. Thus my web server could look at that header for the identity of the client. Of course I had to make sure that the header NEVER came from the external world, or it wouldn't be an indication of a authenticated client.  This is a kludge, but a defendable one.

Using OAuth is better?

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgP19dOegyFToYfHxLPcJ-wqnRMfVin5Cpq-P4m7llPfydU49-_YQio_xtyEPB1bIwUNgWCOCLrzQivU6XJImI7mGltovqCrXwL638VgCMBnIgOp3-NiTLBVGRovEoyh4I01TMCpYZOguUk/s1600/image001-777455.png

So, using OAuth for client authentication, while just using normal https (server only authenticated TLS) is far easier to configure on the server. In fact it is supported by the default cloud stacks.

The advantage of this is that the OAuth token gets forwarded directly to your web stack, where it can be used for Access Control and Audit Logging.  It can be verified, based on OAuth protocol (and all the security considerations left open by OAuth). Really nice for both service orchestration and 'scale' is that it can be further forwarded to sub-services which can validate it, use it for access control, and audit logging.  This is really important feature if you have a nice modular service oriented architecture.

The drawback of OAuth is that you must include an OAuth authority in the real-time conversation. Where as with Mutual-Authenticate-TLS, the certificate is issued once and good for a couple of years; the OAuth token is often only good for 24 hours, or 8 hours, or less. You could issue 2 year OAuth tokens, but that is unusual.

I need to note that in order to use OAuth you do need to deal with registering the client 'application'; which is often done via a static secret (password like), or via a certificate... Everything ultimately does come down to a secret or certificate. I would recommend certificate, but realize that is not the common solution. Most implement only secret key.

Both is better?
Not really. The only benefit you get by using both Mutually-Authenticate-TLS and OAuth is that the hardware accelerated TLS box (F5) can reject bad clients with less overhead on your web-stack. This is a benefit, but you need to weigh this against the cost of certificate issuing and management.

It is however better in that it has the fewest hacks to get it to work fully.

Conclusion
As easy as http REST is, aka FHIR, it is very hard to get security right. Sorry, but the vast majority of http REST is either completely non-secured content, simple security. Such as Wiki, Blog, or Social networks. None of them are dealing with sensitive content that is multi-level sensitive. It is this that makes healthcare data so hard to secure and respect Privacy.

