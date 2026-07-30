# IHE ATNA adjusts a little bit more

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/02/ihe-atna-adjusts-little-bit-more.html
Published: 2010-02-05T02:37:00Z
Updated: 2010-02-05T02:37:42.127Z
Author: John Moehrke

---

At the IHE meeting today we had a very interesting discussion of some unintended concequences of ATNA. Turns out the concequences were fully intended, but as 'systems' scale into highly networked systems the original mode is harder to conform to than it really needs to be.

When [ATNA](http://wiki.ihe.net/index.php?title=ATNA)was originally concieved of, IHE was made up only of the Radiology Domain. At that time, even a RIS or PACS system was sold as a single system on vendor provided hardware. So at the time the concept of "Secure Node" seemed logical. That is, that the whole system needs to be secure before it should be allowed to communicate to other systems, and that all systems it talks to should also be fully secured. It is this network of trusted links between trustable systems that ATNA was making.

A few years ago the first problem with Secure Application was uncovered, as the ITI domain matured and we started to see more healthcare software that was delivered to the hospital/clinic. These products are not whole systems but rather software that gets installed into the hospital/clinic server farm. For example an application that is web-application. The server-farm is managed by the hospital/clinic and not by the healthcare software vendor. Thus the healthsoftware vendor had trouble declaring that it had control over everything happening on the hardware (with server-farms it is even hard to figure out what is the hardware). Thus was born the Secure Application.

Secure Application simplifies the ATNA requirements by allowing the vendor/supplier to define what their 'Application' is, showing that the application can't possibly be responsible for hardware centric events like 'boot' or 'shutdown'. The ATNA secure-communications requirements need to be applied to everything that crosses that Application boundary. The IHE Integration Statement describes the product in the header, and thus the customer knows by looking at the Integration Statement what the scope of the product is. Any of the ATNA security-relevant events that happen inside that Application must be recordable via the ATNA audit message/transport. And any access to individually identifiable health information are controlled by reasonable Access Controls. A side note is that a Secure Node is simply a Secure Application where the boundary of the Application is the physical boundary of the System that makes up the Node.

The discussion today was that with EHR like products that have very many network communications this 'secure all network communications that communicate PHI' becomes technically hard, and the customers have not really asked for inherently internal network communications to be secured. It should not be surprising that vendors will not develop functionality that customers don't ask for. This is a typical problem of security, since generally speaking customers still today don't ask for any security. It is still very important to indicate that the product has applied the secure communications requirements to transactions that cross an enterprise boundary. So we came up with the following solution:

- We can't break older Integration Statements where indicating that the system has applied Secure Node or Secure Application means that they HAVE provided the secure communications capability to all network communications that communicate PHI.

- Thus we need to create a new OPTION on ATNA that indicates that the product uses a NEW model for ATNA secure communications. Thus if this option is on the ATNA Secure Node or Secure Application this is an indication that the only network communications that have the secure communications capability will be highlighted.

- This highlighting is done with another ATNA option that **_can be added to any IHE Profile/Actor_**. Therefore this option will indicate which Actors have the capability to use the secure communications channel.

This has the added benefit of dealing with another change proposal request to deal with Secure Nodes that operate only on protected networks and thus these products never need to support the secure communications. In these products case they can declare the option described in (2), and never indicate the option described in (3).

This will NOT change the requirement that within the context of the Secure Node or Secure Application that ALL accesses to PHI must be protected by reasonable Access Controls, and that ALL security relevant events must be audit-able using the ATNA audit message/transport.

