# IHE Winter 2020 

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/02/ihe-winter-2020.html
Published: 2020-02-25T19:53:00.002Z
Updated: 2020-02-25T19:53:59.176Z
Author: John Moehrke

---

The IHE Winter 2020 face-to-face capped off a 5 week road-trip for me. I am so very glad to be home and able to sleep in my own bed, work at my own desk, surrounded by my kittens and family.

The ITI committee has finalized three work items that will soon be seen open for Public Comment: Public Comment on a whitepaper, and two profiles (Implementation Guides).

SNIF - Survey of Network Interfaces Form
This is a whitepaper outlining a problem that is faced by many healthcare software or device vendors when they attempt to integrate with a customer environment such as a hospital or clinic. The problem is that there are some critical networking details that are needed to make the connection successful. Things like, what is the IP address of the patient registry.

The whitepaper is attempting to bring together those that manage a network, with those that will eventually need to be integrated into the network. There are a large list of potential ways that this critical information can be managed, but none of them are dominant or comprehensive. By bringing this group together, IHE is attempting to get these stakeholders to work together to a common agreed solution.

One leading proposal is based on our experience running IHE Connectathons, the schema behind Gazelle and how it manages partner testing.

SVCM - Sharing Valuesets Codes and Maps
This profile addresses defining reusable Actors for managing and using terminology using FHIR. There is not much constraints within the IHE profile, but rather setting well defined abstract actors to enable use-case orchestration. There are two actors defined: Terminology Repository and Terminology Consumer. There are seven defined transactions between them. All of the use-cases are focused around use of terminology. There is no intention of supporting the 'management' of terminology, the management is an important functionality of a system declaring the Terminology Repository.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEioVS-qeh9OLD8GC_93sKNoH8H3HpruTfa3zkgeEtjNIyCrP65OZluK430wmtQB2rH2en35YO7LKAPU0iFQm4iE_rOMIjV5LLa_0IY52dCWN3_5AxVQ8UQ6TfvLylFdokgKUwEn6IzPzh4j/s1600/SVCM-actors-transactions.png

MHDS - Mobile Health Documents Sharing
This profile went through one public comment, so this will be an unusual second public comment. The reason for the second public comment is to assure that we get broad review. The first public comment was on a far less mature text, and was over the Christmas break and January. So we expect that the second public comment can get comment more deep. The biggest improvement is in the diagrams.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg9qcvVMh3RrObza-DHyVgB7a3KY56BHVF4CTXZlhmCn3SNURsyc6OffBND2hk9TdnapbYX94VUNpDd051i9-45C-jenynj7I7yzbf4lkJ94oiJqHhbf1EpBgDBXIBDufZcOStV9tpvbCr2/s1600/Slide9.PNG

MHD defines a full Health Document Sharing infrastructure by assembling many profiles such as the SVCM, mCSD, ATNA, and PMIR. There is one new Actor, the MHDS Document Registry, that takes on the central Document Registry. This Document Registry actor is required to act as a document repository, but this does not force organization sourcing documents from managing their document repository within their organization like is set forth in XDS. The following shows a detailed Actor/Transaction view given two stereotypical clients "System that publishes documents" and "System that consumes documents" pictured in green on the left. The supporting infrastructure is represented in the middle in yellow, this supporting infrastructure is simply the use of these services from the given supporting Profiles.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjrWwsYkJ_NdQ1CzsrXxAKc4P1gc4Y56GRMyAa-Sv1Z4RtBAD-BRBBD2ljkflvXyeoo-n9L94yM7dSOqGKFVcrJljIoJFLWxtCjXBf0y8IHfqRHOMec_jyp8eEb6T7UUCnBwQPuX1-DehJj/s1600/Slide1.PNG

I will cover more on MHDS in a follow on article.

