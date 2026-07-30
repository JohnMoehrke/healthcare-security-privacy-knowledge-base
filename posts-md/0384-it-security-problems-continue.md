# IT security problems continue (Designing a Secure HIE)

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/02/it-security-problems-continue.html
Published: 2010-02-11T18:58:00.001Z
Updated: 2010-02-11T20:51:20.713Z
Author: John Moehrke

---

A new articile â€œ[IT security problems continue](http://ehr.healthcareitnews.com/blog/it-security-problems-continue)â€ is one of many articles that seem to hint that Healthcare IT, EHR, PHR, and all of the Healthcare Internet are stalled because of **_IT Security Issues. _**Yet Nowhere is there an list of these _**Issues**_. This article points at a press release â€œ[Hacker Attacks Targeting Healthcare Organizations Doubled in the 4th Quarter of 2009 according to SecureWorksâ€™ Data](http://www.secureworks.com/media/press_releases/20100126-healthcare-attacks/)â€ by a security vendor â€œSecureWorksâ€.

Actually the security vendor press release is more informative than the â€˜newsâ€™ article. The press release is pointing out that based on statistics that they have from their customers, attacks on healthcare have increased where others have not. This _seems_ to indicate an intentional shift in the attacker community.

> SecureWorksÂ®, Inc., a leading global provider of information security services protecting 2,700 clients worldwide, reported today that **attempted hacker attacks launched at its healthcare clients doubled in the fourth quarter of 2009**. Attempted attacks increased from an average of 6,500 per healthcare client per day in the first nine months of 2009 to an average of 13,400 per client per day in the last three months of 2009. Attempted attacks against other types of organizations, protected by SecureWorks, did not increase in the fourth quarter. [More](http://www.secureworks.com/media/press_releases/20100126-healthcare-attacks/)
This vendor then goes on to advocate for â€œDefense-In-Depthâ€, and implementation of the kinds of services that they offer. All good ideas. What they donâ€™t cover is some architectural solutions that can be put inplace.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg87fTn1QA99nj-FPJ3yRyO7OOG2B_3cI1NZzfJFgQRMjHLQmcNnrQXZcLOfibjsEcO8-1mb3vmbp0T3qkfpqej6qJvGyuQS_l0Lz7uPDgWKxt0yE7nm3GjxGFMw8U3WI-RCcUBp4lVXJS_/s1600-h/N-factoral-connections.JPG
The concern that people are having with Healthcare IT movement today is that this is an effort that will connect many healthcare organizations to each other. This connection can be done the way it is today with point-to-point solutions. This kind of a solution means that each connection between two organizations requires that one of them open up a hole in their defenses, and sometimes can mean both must open up.

The alternative architecture that I have been advocating for, due to my involvement, is the model around an XDS based HIE. In this model each healthcare organization will be making outbound connections to some common infrastructure, and only needs to have one inbound connection. There is a central set of services (Registry, PIX Manager, PDQ Manager, Audit Record Repository, Time Source, and XCA Gateways) that do need to be highly protected.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgupdOmmydKaj9slAkTaZZxxaJlwAZi3czUG2-ZrLeSA36vV4-WP74xkaGF4Si5zNvZUDx1eVj3rBLqm2YIk5cYhfHqKn75PoNAP2ZEMbz-suXuqhkpvIicuJrOQyewWgxcbciC8tAv6jCx/s1600-h/Strong-central-core.JPG
These central services are critical, but contain very minimal healthcare information as they are focused on different types of indexes and cross-references. In all cases IHE has also provided in the ATNA profile a way to highly-authenticate both sides of any connection and protect all communications. Any hacker would be incapable of this authentication step, so would not be able to attempt other secondary attacks like SQL injections. This is also true of the potential inbound connection to the healthcare organization to give access to the high-fidelity documents in the Repository (this could also be outsourced for the really small organizations).

As an architecture the XDS family has other Privacy and Security benefits that are beyond this core approach. These are nicely outlined in an IHE white paper on [Security and Privacy in an HIE](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_and_Privacy_of_HIE_2008-08-22-2.pdf)

