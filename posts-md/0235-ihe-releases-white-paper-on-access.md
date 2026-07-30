# IHE Releases White Paper on Access Control

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/09/ihe-releases-white-paper-on-access.html
Published: 2009-09-26T02:56:00Z
Updated: 2009-09-26T02:56:32.154Z
Author: John Moehrke

---

[IHE](http://www.ihe.net/) has released the second version of the [Access Control white paper](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf). This is a fantastic paper, self-serving because I did have a hand in it. This is a simple abstract view of Access Control, specially focused on scalability to federated systems. This paper also ties together many of the concepts being worked at this time.

> This document looks at the issues of how to define and implement access control in healthcare networks that might even span across communities. The focus is mainly on issues that relate to the IT architecture and the flow of messages that are required for a distributed access control scenario. Therefore this paper will deal with the problems of (1) how to apply established principles of secure design and SOA security on the design of access control systems and, (2) how to model an access control solution in a way that is well suited for reasoning and evaluation. It also begins the discussion of how to deploy an access control solution using well understood patterns and interoperable system components as seen in appendix C.

> Given the strong focus on models and methodologies for designing access control solutions for cross-enterprise data exchange in healthcare, the primary intended audience are system architects and developers who are involved in the planning, design, and realization of regional healthcare networks and comparable infrastructures where the secure exchange of patient related data among enterprises is an issue.

> The concepts presented in this paper are evolving rapidly and are subject to manifold national and international standardization efforts. The goal is to expose the common concepts from all of these activities, match them with experiences from existing healthcare networks, and define common design methodologies and technological building blocks which allow for a variety of strategies and policies to be used. The building blocks are described on a conceptual level and on an integration level based on current state-of-the-art in security token handling.

> It is assumed that the design of the overall healthcare data exchange infrastructure is aligned to the principles of a service-oriented architecture (SOA). It is furthermore assumed that a dedicated security architecture is set up which provides a circle of trust among the security and business services which are deployed among independent XDS Affinity Domains. Nevertheless even if the focus is on cross-enterprise health information exchange (HIE) all concepts provided by this white paper can be scaled down to the organization or even department level.

Outline of the White Paper

- Chapter 2 gives an overview of all recommendations that are made in the entire document. These start with high level generic recommendations, then shift into detailed recommendations taken from chapters 3 and 4, and then into recommendations for IHE gap filling taken from chapter 6. The detailed recommendations and gap filling may be somewhat confusing when read out of context. Their full context is introduced later in the document, where the recommendations can be found again. The glossary may be useful to understand the terms used in this chapter.Chapter 3 reviews fundamentals of access control, the state of the art, and introduces the Access Control System (ACS).

- Chapter 4 reviews policies and relevant attributes which are needed in order to design a proper policy-aware healthcare solution. It illustrates how different shapes of policy concerns might be harmonized and relevant attributes are bound to policies.

- Chapter 5 presents the methodology for designing an ACS by presenting an example use case.

- Chapter 6 fills the gaps in the current technical framework. There are specific recommendations for IHE activities. Some of what the model needs are already present in the IHE Technical Frameworks. There are other specific actors and transactions recommended for profiling, as well as some recommendations for educational whitepapers and recommendations against some other proposals that are likely to conflict with this recommended model and methodology.

