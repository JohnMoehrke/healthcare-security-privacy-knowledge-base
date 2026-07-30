# FHIR really was positively different

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/03/fhir-really-was-positively-different.html
Published: 2018-03-19T21:09:00.001Z
Updated: 2018-03-19T21:09:33.722Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjDdW01WQHDE7RYHDbOxnsVvn2299unAtboeu7RucCBU0-LPdExHWRNLrMEpqhKq32UkRCACj76LaYAurcMG_ssxJpQYKBJRWZYx455eJSmUbnLdGRKfeG6XLLAWqkQ4oob3t9ate7AXrTU/s1600/Slide1.PNGI had a short but very satisfying interaction with a developer at HIMSS 2018. They had implemented a pilot project using FHIR. Their use-case was to instrument the DoD systems with a FHIR Server API, and similarly instrument a VA Vista system with a FHIR Client. The goal was to show how providers at the VHA could see the DoD data while using the Vista experience they are familiar with.

They found that adding a FHIR Server API in the front of the DoD system to be quite achievable.

They found that placing a FHIR Client API behind an instance of a VHA Vista to be quite achievable. I spent a bit more time to understand this, as I have been working within the VHA for over a year. What he actually did was stand up a new instance of Vista. It should be noted that each VHA site has their own instance of Vista. Vista is an open-source project. So it is easy to stand up your own instance of Vista. What he did differently is that rather than have a data-base under that Vista instance, he placed a service that implements FHIR Client. Thus as Vista would want to hit its own database, he would intercept that database request, and he would make the equivalent FHIR API call, providing the response to FHIR Client request as the database response. I suspect he did some optimization, but you get the picture.

He had this fully working, and it worked very fast. A VHA user could interact with this instance of Vista just as if it was their own site data. The interaction, User Experience, was identical to what they are used to.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjrLahn6whGGxnvrzj9nromm-ufZvXW9pchzW5dMVPXTVq9z9uxgSfVUcW1e-aPaWtPIGnc9Ka6Qb40fdTzKdjaBr0xKYCenFy9K2KRAVhlxnpQd1FihJf_yYRS8gI-7D6_llycTR2Py10K/s1600/Slide2.PNGKnowing that VHA might be switching over to Cerner, and knowing that Cerner has a FHIR sandbox available... He directed his Vista FHIR Client to speak to the Cerner sandbox FHIR Server. With only making the endpoint configuration and security token settings; he found that his Vista instance worked almost flawlessly. This system was not designed to work with Cerner FHIR Server... BUT... because FHIR is actually delivering on Interoperability, by being simple and well defined, the system just worked.

When I presented that I am part of the FHIR standards development team, he wanted me to know how overly excitedly happy he was at this experience. He expressed that he has had long experience with networking standards, including HL7 v2, CDA, and others. He wanted me to know that "FHIR really was [positively] different."

I have no idea what will happen with this pilot. It was not part of the VHA Lighthouse project. It was also not part of the FHIR work going on with MyHealthVet (The project I am now assigned).

