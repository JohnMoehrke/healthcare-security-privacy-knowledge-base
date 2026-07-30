# Introduction to IHE impact on Meaningful Use

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html
Published: 2011-05-25T13:00:00.005Z
Updated: 2011-05-25T14:32:34.733Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi3M0QCz6b19q9tgObO3VMQIqUq4PO0kvf7LRoSpoMtG55o7hGEBhC51T2pNx59eQasZAjyxltNeQKP02zci6tPG63NjxkyP767Irp-cXx99cDcHB4R98l4c5ZmCsC9IiYUfCTuBLHp0fvr/s1600/Slide1.PNGI was asked to present at the [12th International HL7 Interoperability Conference.](http://www.hl7.org/events/ihic2011/schedule.cfm) All of the final presentations and papers are now available on the [HL7 Web site](http://www.hl7.org/events/ihic2011/papers.cfm). The topic I was asked to cover is to [introduce IHE (Integrating the Healthcare Enterprise) and provide input on how IHE contributes to Meaningful Use](http://www.hl7.org/events/ihic2011/papers/saturday/S_Q1_2_Moehrke_IHE%20Contribution%20to%20MU%20Interop-V9.pdf). The simplified message is quite easy:

- Profiling (documentation that focuses on a use-case, specifying the standards to use and the constraints on the standards)  is an International need that [IHE](http://www.ihe.net/)and [Continua](http://www.continuaalliance.org/index.html)are addressing:

- IHE is increasingly adopted world-wide (see [Where in the World is XDS and CDA implemented](http://tinyurl.com/wwxds))

- In the context of the stage 1 choices there is consistency in many area.  Going forward, in Stage 2, IHE is consistent with [DIRECT](http://directproject.org/)and can bring the most robust and already implemented solution that address the needed use cases deployed approach to point-to-point, HIE and [NHIN Exchange](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjphI1ii0FIclWLvXSV5JnKd1Y60F0Nb628gjHd6IkPYJYoBnCtEMPQVanCPeItNirahQLXoaSOV24fQKviVSFesZgsjsPwhlNTkIgf7cBUJyiTCVWNPkSxhg0tmgEbkySNKHht385paAp3/s1600/Slide6.PNG
A slide that I spent a good bit of time on, as many don't realize how formal the IHE process is.

- Use-cases are submitted from any interested party. These must be justified and go through a priortization process to pick the few that will be worked on

- The use-cases are then decomposed into the abstract actors and abstract transactions, and available standards are identified. This results in the Public Comment

- After Public Comment the Profile is further developed into the technical specification that goes out for Trial Implementation.

- Trial Implementations are used by developers that bring their solutions to the Connectathon. This tests both the software implementation, which must show interoperability with two other independently implemented solutions. The result tends to also uncover issues with the Profile text, what IHE calls a Change Proposal. Once a Profile has been proven at Connectathon, then it gets frozen in the Final Text phase. No breaking changes are allowed once a Profile enters Final Text. This is also when the Profile gets translated into the formal documentation publication form of the Technical Framework.

- Those products that pass Connectathon are allowed into some form of trade show demonstration, with HIMSS being the big one for the IHE ITI committee. These demonstrations leverage the capabilities provided by the Profiles implemented in as close to a real world setting as possible.

- Products are expected to publish an IHE Integration Profile as a statement of their products capabilities. This is a binding statement that they are expected to back through fixing any issues of non-conformance found.

- The result of this is that products are available in the market space that are easy to identify their capabilities through the IHE Integration Statement, and have proven them-selves at Connectathon

- Ultimately the result for everyone is better Interoperability. The Providers participate through offering up problems to solve, and by agreeing that they want the solutions. The Vendors participate through working through a solution and implementing it because they have assurances that the solution is desired. Both sides win.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkhPYfSqCnYl_tRPv7n9dLeO9U0-bgqHVVNZBypuvkmipZMPzBHTDjZuPB4Tad5DFXcdlxtGZ7NFoPJy14bdGTkCQXzFNd_rB5wz6ERdsQAjNnVoNLuTvT3Lv_ksTgpjdttcAYwyxvaoq4/s1600/Slide17.PNG
The other slide that I think really says a great story in pictures is the one showing the Health Information Exchange Transport options. The message here is that there are 5 different patterns to a Health Information Exchange, shown across the bottom:

- e-mail Push of a document without metadata

- e-mail Push of documents with metadata to enable automated processing (XDM)

- Web-Services Push of documents with metadata between automated systems (XDR)

- A Community Exchange using Publication and Discover/Retrieve (XDS)

- Multiple Communities Exchanging using Discover and Retrieve (could be XDS or proprietary source)

In each of these there is a richer and richer capability, but there is also a common use of Documents as the objects and a common definition of metadata to describe these Document objects.

This was a fun experience and I really enjoyed the other presentations. I encourage everyone to review all the [presentations and papers that are now published on the HL7 site](http://www.hl7.org/events/ihic2011/papers.cfm).

