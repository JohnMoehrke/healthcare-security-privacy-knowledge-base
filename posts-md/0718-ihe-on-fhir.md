# IHE on FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/01/ihe-on-fhir.html
Published: 2017-01-16T18:26:00Z
Updated: 2017-01-16T18:26:08.878Z
Author: John Moehrke

---

IHE is still relevant in a FHIR world. But FHIR has changed the world, and IHE needs to adjust to this new world.

Profiling is still needed
The concept of profiling FHIR is still needed. The difference today is that FHIR is ready and instrumented to be Profiled. It even has a set of Profiles coming from HL7. This is not a threat, this is an opportunity for IHE.

IHE has a set of [10 profiles today](http://wiki.hl7.org/index.php?title=FHIR_Profiles_from_other_Organizations) (MHD, PDQm, PIXm, mACM, (m)ATNA, CMAP, GAO, RECON, DCP, MHD-I). These mostly are basic profiles, where a basic profile is not a complex profile, one that simply points to a FHIR Resource as the solution for a defined problem. This is helpful to the audience, but not adding much value. It is this lack of value-add that makes what IHE has done today with FHIR Profiling to seem to conflict with core FHIR.

Given that FHIR needs to be Profiled is a fact. A Profile is fundamentally a set of constraints and interactions applied to a Standard, to achieve a specific purpose. This is just as true with FHIR as with any other standard.

IHE Needs to focus on Larger profiles. The basics of transaction (http RESTful -- for FHIR) is not helpful. But there are many larger workflows, larger data integrity, larger system-of-systems.

FHIR is Profile Instrumented
FHIR is ripe for being Profiled, and is ---Instrumented--- to be profiled. That is that it has mechanisms built into the specification to make Profiling more easy, effective, repeatable, reusable, and discoverable.

- Technical instrumentation within FHIR -- [http://build.fhir.org/conformance-module.html](http://build.fhir.org/conformance-module.html)

- FHIR has tools and community support -- [http://www.fhir.org](http://www.fhir.org/)

- Reference Implementations (e.g. Grahameâ€™s Server)  -- [http://wiki.hl7.org/index.php?title=Publicly_Available_FHIR_Servers_for_testing](http://wiki.hl7.org/index.php?title=Publicly_Available_FHIR_Servers_for_testing)

- Testing Toolings (automation of testing scripts using TestScript)  -- [http://www.fhir.org/conformance-testing](http://www.fhir.org/conformance-testing)

- Profile writing (IG) tools  -- [http://fhir.furore.com/Forge](http://fhir.furore.com/Forge)

- Registry of Profiles (IG) â€“ [http://www.fhir.org/guides/registry](http://www.fhir.org/guides/registry) and [https://simplifier.net/Search](https://simplifier.net/Search)

- Discussion Forums -- [http://chat.fhir.org/](http://chat.fhir.org/)   and    [http://community.fhir.org/](http://community.fhir.org/)

IHE needs to modernize

- Audience expects use of Conformance resources and tools (see above)

- can only publish PDF â€“ FTP is not good

- does not have a usable mechanism for creation, publication, and maintenance of vocabulary, value-set, and URL

- canâ€™t publish conformance constraints in technical format (XML, JSON)

- PDF clunky, not hyper-linked, not helpful with programming tools

- Audience canâ€™t find IHE if they start at the FHIR specification

- Yet, those Implementation Guides that use FHIR.ORG are found

- IHE has little development and deployment community engagement

- FHIR has multiple tools to help outreach and interaction with community

- IHE has email

- IHE workgroups are randomly engaged and acting different

IHE needs to leverage FHIR

IHE should not fear HL7, HL7 should not fear IHE. But working together with defined and distinct purpoose is best for both.

IHE supports FHIR.ORG. It is my understanding that FHIR.ORG is where activities outside of the specification will happen. Much of the things IHE does are in this space. This includes the tooling capability and support for profiling, but also involves community engagement.

IHE Profiles of FHIR must be â€˜builtâ€™ using FHIR â€œIG Publisherâ€ . They would be Balloted and published by IHE. The normal IHE supplement (pdf) might be okay, or need slight changes to Volume 2 (Volume 1 is good). Possibly a new Volume 5 to â€œholdâ€ technical pointers from FHIR â€œIG Publisherâ€. This because today's format of Volume 2 is overly complex for a FHIR profile, especially http REST transport. Besides the Supplement form, the Technical bits would be published on FHIR Registry with pointers back to the IHE

IHE and HL7 Leadership engagement needed. We have gotten this far based on Individual efforts, but the scale of the solution is to big for individual efforts. We need formal agreements, formal sponsorship, and formal recognition. I think the time is ripe now.

