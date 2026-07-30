# How are complex trust networks handled in http/REST/OAuth.

Originally posted: https://healthcaresecprivacy.blogspot.com/2025/10/how-are-complex-trust-networks-handled.html
Published: 2025-10-10T14:26:00.001Z
Updated: 2025-10-10T19:17:33.083Z
Author: John Moehrke

---

> How are http/REST authorized in complex trust networks handled?

I don't have all the answers. This has not been worked out. I am not holding back "the" answer just waiting for someone to ask.

Whereas in XCA today we use a network of trust (saml signers certificate authorities, and tls certificate authorities), and the network communication also goes through "trusted intermediaries".

In OAuth there are no "Trusted intermediaries". The search parameters and responses are always point to point between the one requesting and the one responding. The OAuth token used in that point-to-point request/response has been the hard thing to create. Where OAuth has a mechanism to "discover" who that responding service trusts. This is advertised as well-known metadata at that responding service endpoint. So, the Requester queries that well-known metadata, and from that data it then needs to figure out a trust arrangement between the requesting OAuth authorities and that responding trusted OAuth issuers.

A. Where no trusted third party is neededThe majority case that is used very often today is that the well-known OAuth metadata can be directly used by the client. Client asks that OAuth authority to create a new token, given the requester token, for authorization to access the responder system.

THIS is what everyone is doing today with client/server FHIR RESTful. This is what everyone looks to get their system to work with OAuth

The token has some lifetime and scope; and is used for multiple request/response. Again, this is normal. and this fact is normal for all uses of OAuth.

B. Where a trusted third party is neededThe case where the requester does not have a trust relationship with that responder defined OAuth authority is where the hard work comes in. In our use-cases where the requester and responder are in different communities. Like with XCA some trust authority is needed. Like with XCA discovering who that trust authority is the job of directory services. https://blogger.googleusercontent.com/img/a/AVvXsEhJP753DKQwdRPXp8R_Wog3PFpVa0VzMB2WzD8naU6HUwgf10EEjopXhzydXOr9ARfHeQN8FMZMC6KOm3x9-IRdegrwqcyl2_V8wscuMQvVyg51Jy4BxtwTEfUlDB62vKHYdUSMi5zelxR9MH_YzIe_CAtCsa_UsU4M8GfUCe0631uCCK9WMNS6z2DFf3Cb

Ultimately the requesting system finds a trusted OAuth issuer, and it asks for a new token, given the requesting system token, be generated targeting the responding system. Once this token is issued then the requester can do http/REST/FHIR direct to the responding service endpoint using the internet for routing, with that last OAuth token. The responding system can test that OAuth token is valid.

In the healthcare scenario we might want to force an unusual nesting of prior tokens. In this way the responding service can record who/why and from where the request came from. This nesting is not typical and considered complex to implement and parse.

see:

OAuth 2.0 Token Exchange (RFC 8698)

C. Where multiple trusted third parties are neededI think that the (B) solution can be iterated or recursed on infinitely.

SO:The main point of OAuth is that you get a new OAuth token issued for a given target/scope based on the OAuth token that you have. EACH OAuth authority makes a permit or deny decision; hence why an issued OAuth token is always a statement of authorization. If you were not authorized, you would not be issued a token.

In this way the authorization is established up-front; and the data transactions reuse that token until it expires. Thus, the up-front authorization may be expensive, but that token is reused 1000 times in the 60 seconds it is good for (simplified for illustration sake)

Caveat EmptorI have no idea if the above is right. I think it is close, but I don't know.

I welcome commentors to correct me, especially if they can point at standards profiles that have been established. Especially if these standards profiles are established in general IT, not specific to healthcare. I am suspicious of healthcare experts who invent healthcare specific standards profiles.

