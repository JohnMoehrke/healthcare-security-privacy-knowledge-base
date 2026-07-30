# Policy Enforcing XDS Registry

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/policy-enforcing-xds-registry.html
Published: 2012-03-19T02:53:00.001Z
Updated: 2012-03-19T17:21:37.487Z
Author: John Moehrke

---

In the S&I Framework - Data Segmentation for Privacy we are looking at the standards that could satisfy one of the use-cases. The usecase is one where a Health Information Organization (HIO) is told about the patient consents, and is responsible for enforcing that consent. This arrangement has been implemented in a few HIO that I have been apart of , and I know that there are others. The advantage of this arrangement is that the Edge systems (EHR, PHR, Departmental, Imaging) don't need to concern themselves with consent. It is magically done in the HIO. This nicely centers all the consent logic. The disadvantage is that the passing of the security context from these edge systems to the central core needs to be far more complex to handle the vast number of exceptions to the rules (e.g. Break-Glass). It is a nice clean way to get an HIO going.

In this case we are actually defining a new system that will leverage multiple XDS Actors/Transactions. The IHE use of Actor is context independent. So, although an XDS Registry actor from IHE may seem like the Actor that implements the core of the HIO; it just appears to look this way. The HIO is actually made up of many things. In the terms of HITSP, we are creating compositions out of Actors; but that might be ancient history.

**XDS Background**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjP2fgOQC-kc2pvAs_t2b-fkSw0HQTiJRDfGe7KZN7NnVSWfPE6wK1LILdEm_IvUW-91-BTclZjQLCmSYHXO3AYqCEjWPsMZZ7WEXPPI2IHjLVYXGeASBEb4pbTUd69VyOmkxXgYvLdFRzR/s1600/IHE-XDS_overview-760761.png

XDS is equally good at managing clinical documents as it is consent documents. So Publication of a consent document is the same as publication of a clinical document (see 1 in the figure at the right).  The abstraction of XDS allows for a central document Repository, but can also handle where these are distributed; likely hosted in the publishing organization. The Central Registry just holds document entry metadata, and naively supports data segmentation based on any of the metadata entries; most often this is simply confidentialityCode. But can also be by document type (clinical vs consent), authoring organization (kaiser, va, betty-ford).

The XDS Query is equally good at querying for clinical documents as it is for querying for consent documents (see 3 in the figure at the right). They are all simply documents to this abstract transaction. The context (clinical document vs consent document) is simply a difference in the query parameters. And retrieving the consent document it-self is done just like any clinical document (see 4 in the figure at the right).

Lets start with the most outside view:

- A System (EHR, PHR, etc) queries the HIO for all longitudinal documents on Patient X.

- The HIO looks in the registry and compiles a response with all the documents matching the query

- The HIO returns the response to the query back to the System that made the request.

This is Classic XDS, and from the view of the "System"; this is exactly what it will do.

**Policy-Enforcing-Registry:**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhZs1Kcpp8Y7NuFXC04QZZs0EBHV6MW7_V2P9ZcRvJuGOSrNMGHMF-1zoHAHIxQQ39mQo_JYR27t3Jj-IO5KvHpy-xHEk3qesJVsfivEYRJ4aFCpAWf5qrOEzrnh9cMH0LclSv3p4Moo6wP/s1600/image001-734661.png

The Magic is that the HIO is actually a complex system: The system that actually receives this query is the new uber-Registry -- Lets call it a "Policy-Enforcing-Registry".

- This Policy-Enforcing-Registry will be intercepting the query and

- doing some initial Access Control decisions. Very much like XACML is modeled with a PEP/PDP.

- Of the Access Control decisions that this  Policy-Enforcing-Registry does, it needs to

- determine what the current state of consent is. It can do this by it-self becoming a Document Consumer actor, and formulating a very specific query for â€˜consentâ€™ documents on Patient X.

- Depending on the response and the information in metadata, and the information cached; it

- might need to also be a Document Consumer actor and pull the consent documents found from the Repository that it exists in, as defined by the metadata.

- Ultimately it will determine what the consent rules are, along with all the other various rules in the HIO (e.g. Role-Based-Access-Control, Break-Glass, Organizational-restrictions, etc).

- At this point the Policy-Enforcing-Registry simply knows if it should reject the original Query, or allow it to partially happen.

- If the patient has not given positive consent, then an audit log should be recorded; and the original query returned with a failure of some kind (Some HIO like to say that consent is missing, other HIOs like to act like the patient doesnâ€™t exist).

- If the query should be allowed, the Policy-Enforcing-Registry will allow the original query to be executed; but intercept the response.

- It now needs to inspect the response to determine if there is specific concerns between the access control rules and the content.

- It might need to remove some or all of the returned metadata entries.

- It can then return the legitimate results to the original clinical system; possibly attaching constraints/obligations.

Now this is a full scenario; and our scenario in S&I Framework - Data Segmentation for Privacy  is just a query for consents; so this is just the very inside set of queries; the ones I describe as the Policy-Enforcing-Registry acting as a Document Consumer. I outline the whole thing as it is important to see the overall context as we will surely get pulled down that rabbit hole. Note that I also don't talk about Patient Identity, which ultimately at the HIO level needs to be factored -- designed -- into this system.

**Key notes for understanding the Diagram**

- Yellow circles show sequence of transactions.

- transactions 1 and 5 are broken into two parts simply to show time passing between the time the EHR sends their request and the time they get back their response to that query. This is all just one XDS transaction â€“ â€œRegistry Stored Queryâ€. As far as the EHR is concerned it has just done a simple XDS transaction. It is totally unaware of all the processing happening inside the Policy-Enforcing-Registry.

- Transaction 2 and 4 are also just XDS transaction â€œRegistry Stored Queryâ€.

- Transaction 2, 3, and 4 are shown as double-head arrows because there is no need to show time passing between the request and the response. So for this diagram they are considered combined for simplicity.

- the Repository could exist inside or outside the Policy-Enforcing-Registry box.

**Conclusion:**

Yes, the XDS profile was designed with this Policy-Enforcing-Registry in mind; but it is a systems design that puts the parts together. IHE only defines profiles to the point of assuring Interoperability, never including all possible systems that  could be designed using those profiles.

**Updated Noon March 19th**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEinpI3mM4yRzfKytr1L5bhQPNWGRTdPJ4IhEqiXhK7JzV_4W4-FBIEJQeb0WIKE4s0GYuEmba5nKOM2HzdeyeIjj-yQTBMd_Cc0y8XAHz3PW6dFi1egYheC7D30wLIOZKE-afUBX0nV4Sjp/s1600/image001-711546.png

During the S&I Framework discussion of this approach, the question came up if there is a strict adherence to the sequence of events and definition of the transactions. Underlying this question could be many things, but I know that one of the approaches is to leverage XACML concepts. I offer the following diagram that integrates XACML policy repository into the picture without changing the XDS transactions. Essentially what this new diagram shows is that there is some task that is responsible for adjudicating the policies as they are created or updated; thus when the EHR asks for clinical data the policies are much quicker and more simple to execute.

I left the yellow sequence numbers the same where the transaction didn't change. Clearly they no-longer represent the order of events. There are now two distinct flows:

**Resolve Policy**

- Based on a new policy being registered, or some other 'event' the 'Resolve Policy' service would use the #2 "Query (consents)", and #3 "Request Consent Documents"

- Pull the existing policies from the XACML Policy Repository using #6

- Resolve these new policies with the existing policies

- Push the updates back into the XACML Policy Repository using #6

**Real-time Query for Clinical Content**

- Query request for clinical content #1

- Access Control engine looks up existing policies from XACML Policy Repository using #7

- If access should be granted then the Query request for clinical content is reflected in #4

- The results is inspected relative to the existing policies

- The results appropriate is returned.

There is no lesser or greater functionality, although this model is more likely to execute fast for the Real-Time Query. To me this model is exactly consistent with the above model, it is just optimized for performance; something that I would expect good service developers would do anyway.

