# What is a Connectathon?

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/11/what-is-connectathon.html
Published: 2013-11-30T16:00:00Z
Updated: 2013-11-30T16:00:41.079Z
Author: John Moehrke

---

Connectathon has two very important purposes and one very important principle. A Connectathon is an event that is centered on an open consensus built Interoperability (Connection) specification. The purpose of a Connectathon is both to prove that the specification is complete as well as to prove that implementations written to that specification can â€˜connectâ€™. The most important principle of a Connectathon is that it is a safe place for failure in these endeavors. That is that it is free of negative consequences of a mistake in someoneâ€™s implementation and that the specification might need to be refined.

In healthcare today many people might view that [IHE invented the concept of Connectathon](http://www.ihe.net/connectathon/), this is not true. It was invented back in 1986 by those that had written the Internet specification and those struggling to implement it. In 1986 there was also "Interop" which focused more on the infrastructure standards of TCP/IP, and DNS, while "Connectathon" focused more on the application standards such as NFS, FTP, Telnet, and e-Mail. This quote is pulled from the [Internet Archive WaybackMachine describing Connectathon](http://web.archive.org/web/19990128152940/http:/www.connectathon.org/) as first introduced by Sun Microsystems in 1986:

>
â€œConnectathon is an excellent opportunity for vendors to verify that their distributed computing software interoperates with a wide range of client/server implementations on different operating systems. Everything from laptops to supercomputers can be linked together under one roof, encouraging interaction among vendors, engineers and developers in a confidential atmosphere. Implementations are tested and debugged at Connectathon. There are panel discussions as well as open sessions on the latest developments in technologies and solutions by Connectathon participants. Connectathon is a place where engineers can gather without marketing hype and can exchange ideas and information.â€

You can see in this quote the purpose and principle that make a Connectathon successful.

Up to this point most networking protocols were proprietary. This meant that they were designed, specified, and implemented within the confines of the vendor that invented the protocol. Thus that vendor knew exactly what they intended the specification to say. That vendor knew exactly what other  implementations (none) they needed to work against. That vendor could fully test their implementation in simulated deployment all safely within that vendors walls. Any bugs found during this pre-release testing were only the concern of that vendor. Actually any bugs found at a customer site were also only truly known by that vendor.

So it was considered critical to the success of the Internet that we know and love today that with open consensus â€˜standardsâ€™ for connectivity have a similar but clearly different mechanism. Thus the Connectathon.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiljKoNBdEl-tfEBf4WyV72p_sRQEyWnJ91zUfxf9JWixH796yl1XcWpC46SXcKrgzVgNthghhUILhLmJ6VJBqTcKP3_DzlbweD5-8ZOnJRnGLpCDVMt2qlBN-Oj-1XZRxBm9sbohsJIe-d/s1600/image001-769131.jpgConnectathon is a Safe place to Fail
This simple principle has many dimensions that are worthy of exploring. The alternative to using a Connectathon as a safe place to fail, is to first try connecting to others at the customer site. One can see very quickly that this is not an optimal situation. The customer is expecting to use the product, not participate in debugging. The customer has likely paid money for the honor of having the systems fail to communicate. The customer will hold the two (or more) parties against each-other. But the customer really canâ€™t tell which party is the one with the broken implementation. Thus finger pointing happens, and likely the most powerful vendor wins. This win means that the smaller vendor creates a custom implementation just for connecting to that powerful vendor. This means that the powerful vendor doesn't ever fix their implementation. This situation repeats with all the various vendors, great and small. Each time two vendors are integrated, they need to debug their various differences. Thus no-one is actually implementing the standard, thus there really is no â€˜standardâ€™ there is just a specification that hints at some concepts that might or might-not be implemented.

This situation is not good for the customers, they must each push their vendors hard to solve problems that simply shouldn't be. This causes delays in deployments. These deployments are also very fragile to changes. This is very expensive.

This situation is not good for the vendors, unless you have an alternative proprietary solution that you want to succeed.  Vendors are pitted against each other in a very hostile environment under the watchful eye of the customer. Time is short, tools to debug are few. It is very hard to reproduce that specific environment. The software was written months ago, possibly years ago. The software developer has likely been working on something else in the last few months, so is not thinking about their implementation.

A Connectathon is a purely testing environment, so no worry about exposing real patient data or creating real patient safety risks.

Connectathon provides a Referee
At Connectathon there are others besides the vendor peers, including those that wrote the specification itself. There is often a set of people who have taken the specification and written test tools. Test tools are a form of implementation as well. As a test tool, it is not expected to be used at a customer production environment. Those that wrote the test tool are not a vendor and are thus not bias in a debugging dispute. Thus the test tool tends to be a non-biased implementation. Those that wrote the test tool are seen as the referee. Those that wrote the specification are also often consulted when a dispute comes up.

The whole purpose for a â€˜standardâ€™ is to have a single specification that is highly reusable. The fact that an implementation can be re-used at many deployments drives down the time and costs and drives up quality.

Connectathon is about Cooperation not Competition
As a â€œSafe Placeâ€ a Connectathon is an environment where those that are close to the implementation can come and be blunt. The participants of a Connectathon agree that they will not speak negative of their peers. One is allowed to speak of their successes, and they are encouraged at Showcases. But everyone must agree that the most important Principle of a Connectathon is that it is safe to fail, and one aspect of this is that one can fail without their competition blabbing about it. This principle is typically part of the agreement to participate, but most of the time is just socially encouraged. It is in the best interest of all parties.

The main reason why failure must be allowed, is that it must be encouraged. Everyone wants to get through Connectathon having cross-tested with all possible peers. This because by testing in a Connectathon means that they will likely not have problems at a customer site. Thus the more testing that can be considered â€˜successfulâ€™ the better for yourself. The best case is that you  can walk away from Connectathon with a huge list of your peers that you have successfully tested with. These successes can be spoken of, and are often included in a press release by your marketing department after the event.

The fact that Connectathon is a safe place to fail, means that vendors are more likely to send the developer that implemented the specification in their code. In fact it is useless for a vendor to send marketing or sales, there are no customers to speak to. Developers really want their code to succeed too. Thus the developer is much more likely to work with their peer to get the systems working. Often times the developers from competing vendors will be sitting right next to each other at Connectathon, often times reviewing source code. Yes, they are sharing their source code so that another can help them debug it. This concept is totally foreign to most vendor-to-vendor interactions, but it happens often on the Connectathon floor.

This does not mean that a Connectathon eliminates Competition, far be it. There is plenty of aspects of the software that are kept very well hidden during Connectathon. Some social networking is built, but the vendor organizations are clearly direct competitors.

Connectathon is not a Showcase

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiSnVm5MP1rtWuko6Z2S4CcwoIJQ8zCh5V_sH0Nwa58e-nopf2r6W-oeMCRbX4I9FSaWe7ttmUN3ESjFLxrOwxxGLR15TCVlPG3tPRzAGGD0nf5mVcFE4vJVcF7uBRY3RLDvwSS5uVNFymL/s1600/image003-775160.jpg

This because there are no customers present at a Connectathon. Sometimes customers are allowed on the Connectathon floor but this needs to be highly orchestrated and announced in advance. It is not uncommon for there to be a very detectable atmosphere change during these customer visits, the room gets more quiet, the participants do tests that they know from previous testing will work. During these customer visits everyone is on their best behavior, essentially the Connectathon event stops for a dog-and-pony show.  The participants do want to show-off for their customers, they want to be seen at these events by their customers. This is because there is a common good that both vendors and customers see in the event. However one must recognize that Connectathon is not happening while customers are in the room.

Connectathon might fix the Specification
A less visible but just as important aspect of a Connectathon is that the Interoperabilty Specification is also open for discussion. Specifications that are early in their maturity are more open for debate. When two vendors find that they had to fix something in their code, one must ask the question of the specification. Was the specification at fault? Presumably both vendors wrote their implementations from the same specification, and came to different solutions. This could be because one of them simply didn't read the specification correctly, but it could also mean that the specification was not complete enough. Thus the specification is often improved during Connectathon too.

This is so fundamental that IHE requires that their Profiles go through a â€˜Trial Implementationâ€™ state. A Profile canâ€™t move to â€œFinal Textâ€ state until three independently implemented systems prove that they can interoperate at a Connectathon event. This governance is there to show that at least three different development groups were able to read the same specification and end up with the same interoperability implementation. There are other governance measures for IHE â€œFinal Textâ€, but that is a different topic.

Connectathon principles and purpose are critical
A Connectathon is not the only event where developers gather, some other concepts that are related but are different:

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhjrtoAA6ctG2iI7urYkR-lEv7dxkpLLc01nnyM-y0tSZZgEyIbXqvS4QQi8BK0OC_HzXsUhQjQ-M5z4Jb81LVA7VFJJXIOGxpl38T2Ev-lqoU0HoUr11m_F9fhifsdemvJ2TXUgvhcsLz-/s1600/image002-772482.jpg

- **Hackathon â€“ **More focused on the development of code to implement some goal. A Hackathon, or **Hackfest, **or **Codeathon, **has a targeted solution as the goal. Those that come to the hackathon are cooperating to achieve a goal. There might be more than one independent solution, but generally the goal is the writing of code. A Hackathon might not be focused on an Interoperability Specification, it might be a functional need. A Hackathon is a cooperative environment, again where it is safe to fail. A Hackathon succeeds when it builds buzz, educates the developers, and proves out alternative designs

- **Plugfest â€“ **This is similar to a Connectathon, but typically focuses on a [physical â€˜plugâ€™](http://en.wikipedia.org/wiki/Plugtest). That is that it is a Connectathon plus it tests physical and electrical interoperability too.

- **Bake-off -- **This is an event where different technical solutions to a problem are brought together to be compared to the goal. This is used to evaluate each potential solution so that the best solution can be picked. This is a form of implementation first consensus system. In healthcare this is how the "Direct Project" selected [secure e-mail](http://healthcaresecprivacy.blogspot.com/2013/04/direct-incompatibility-with-off-shelf-e.html) as the solution to the problem of 'replacing the FAX'.

- **Showcase â€“ **To build awareness, educate, and display success.  A showcase has been a follow-on event going back to the original Connectathons that were followed by a Telecommunications tradeshow. For much of the  IHE profiles the showcase is part of [HIMSS Interoperability Showcase](http://http//www.interoperabilityshowcase.org//www.interoperabilityshowcase.org/), or [RSNA Demonstration](http://www.rsna.org/RSNA_2013_Image_Sharing_Demonstration.aspx)

- **Certification â€“ **Organized testing to prove a system conforms to a specification. Needed when the customer is incapable or unable to prove conformance to the specification. Automobile example.  Crash safety is based on certification.  Engine oil ratings are based on certification.  Style, interior, features, handling, etc. are not subject to certification.  An automobile buyer is genuinely unable to evaluate engine oil or crash capabilities of their purchases.  They are able to decide what kind of car they want.  There is no such thing as a complete automobile certification.  Certification is limited to those items that the purchaser is unable to evaluate.

A Connectathon must be a safe place to fail, and be focused around an interoperability specification. If these are not true then you are not at a Connectathon, and you will not be benefiting from the Connectathon concept.

