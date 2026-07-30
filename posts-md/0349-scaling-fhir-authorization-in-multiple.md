# Scaling #FHIR authorization in a multiple organization HIE

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/10/scaling-fhir-authorization-in-multiple.html
Published: 2019-10-29T13:17:00.001Z
Updated: 2019-10-29T13:17:20.878Z
Author: John Moehrke

---

In my last article on  [Controlled Exchange Architecture Models for Scale on #FHIR](https://healthcaresecprivacy.blogspot.com/2019/10/controlled-exchange-architecture-models.html). One issue I ran into is the question of how OAuth at healthcare scale works when an HIE is made up of multiple organizations in a federation.

In XDS environment we describe that the SAML assertion in the transaction is authenticating the Organization requesting the information, it includes PurposeOfUse, and it includes user identity that triggered the request. We are careful to distinguish that this is an organizational assertion vs a user assertion. This is important as in an HIE the data returned is not exclusive to that user, but will be used by the whole organization.

Further in an XDS environment, this is a community of organizations. The trust framework (Affinity Domain) is based on organizational participation. These organizations, as part of that trust-domain, agree to rules of user authentication and user authorization. They agree that they will not issue a cross-enterprise transaction unless they have appropriately authenticated the user, and that they have proven that user has authorization to initialize the transaction. They also agree that any data returned will not be used for any other PurposeOfUse beyond that asserted in the XUA.

This is an important part of how HIE scale.

- First because requests from organizations are often the whole organization, not limited to the user who triggered the request

- Second because to use user level assertions would require that all services (Registry, Repository, etc) would need to keep a user database that is inclusive of all possible past/current users.

The drawback is that consents within an HIE are limited to blinding of external organizations (they can still have user level blinding within their organization). This seems like a big issue, but it is often impossible for one organization to know the identity of a user at another organization with sufficient accuracy. There are alternatives, just not realistic in a reasonable deployment.

This was originally said in the appendix as part of XDS, but was further elaborated on in the HIE white paper (see section 6).

[https://www.ihe.net/Technical_Framework/upload/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1-0_2012-01-24.pdf](https://www.ihe.net/Technical_Framework/upload/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1-0_2012-01-24.pdf)

It is not to say that SAML can't be a user assertion, but rather that there is a well understood model of XUA for use in an HIE.  We don't address how an HIE might switch to user level., mostly because no one has asked.  There are some that 'think' they are using user level assertions, and they continue to think that the results returned would only be used by that user. There might be some cases where this is true, and it would be good to express these as different. One usually needs to know something about the organization requesting to understand if the requests are restricted to the user or not.   There are mechanisms where transactions can carry multiple assertions. There are mechanisms where results can carry restrictions (obligations). These are all theoretical solutions, not practical in reality. These are all much more advance than we should try to support at this time.

OAuth tends to be described as authorization statement about the client application and/or user using that application. The typical deployment of OAuth, like shown in SMART-on-FHIR, is to deploy an OAuth authority next-to the resource server to make authorization decisions. That authorization decision is often cascaded to OpenID-Connect to get the user identity, and the expectation is that a decision will be made wrapped in the OAuth token with scopes. These discussions are very user focused.

However sometimes OAuth is intended to be used between organizations, such as in bulk-data transfer. Or my use-case of an HIE. In these cases the token is not representing a user, but rather an organizational service.

SO to support an HIE that scales to many organizational partners in the community. We need an OAuth token (IUA profile) that is architecturally similar. My original vision of IUA was this, but I am not sure this came through in the text. This is why we did not include where the OAuth authority existed. This is why we focused on JWT, and made it a set of attributes. This is why we left unsaid the authority model that a recipient would use to confirm that the token was legitimate.

Do we need a distinction between a single domain use of IUA where the assertions are authorizing the user and client ONLY; and another which is a cross-enterprise where the assertions are authorizing an organization (client) and including user identity only as the triggering agent?

Or am I missing a solution due to my ignorance? If so, please comment.

