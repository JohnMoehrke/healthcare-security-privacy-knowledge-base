# IHE-IUA - Internet User Authentication for HTTP profiles

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/11/ihe-iua-internet-user-authentication.html
Published: 2012-11-20T01:32:00Z
Updated: 2012-11-20T01:32:08.418Z
Author: John Moehrke

---

**Profile Proposal for 2013 development in IHE ITI**

This is a profile proposal that the IHE ITI committee will most likely take up in the 2013 timeframe. This is just a proposal so input is important as well as support from those interested and those with experience. Note I took liberties with the name, the author has called this "[OAuth for HTTPS access](ftp://iheyr2:interop@ftp.ihe.net/IT_Infrastructure/iheitiyr11-2013-2014/Planning_Cmte/DetailedProposalss/OAUTH-detailed-proposal%20.doc)". I simply think that this new title puts this new profile in the family of [Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html), and [Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html). Plus I don't like putting technologies into the title of a profile, actually don't like the solution to lead as the problem should be the point of the profile. This will next be discussed at the [IHE ITI Technical Committee meeting in December](http://wiki.ihe.net/index.php?title=Minutes_Nov_2012_-_Oct_2013#Agenda_December_5-6) at the [Mitre offices in DC](http://wiki.ihe.net/index.php?title=ITI,_PCC_%26_QRPH_Meetings#MITRE_to_Host_Technical_Profile_Evaluation_Meeting.2C_December_4-5.2C_2012.). The rest of this blog post is the  Detailed Profile Proposal unedited (note, I think OAuth 2.0 [[RFC 6749](http://tools.ietf.org/html/rfc6749)]) is now released, See the[IETF OAuth status page](http://tools.ietf.org/wg/oauth/)

**Summary**

The HTTP based transactions, like those in MHD, need authorization services as part of their security environment.  OAuth and Kerberos are examples of such services.  Kerberos is used within enterprise, but is not accepted for cross enterprise use.  OAuth is being used and extended for such use.

The authorization process must allow a healthcare service provider to support multiple authorization services.

The customer/client/patient must be able to select a preferred authorization provider independently of their selection of a healthcare service provider.  The authorization provider assures the healthcare service provider that the client software application is authorized to request and use the services of the healthcare service provider.

There is already a market for authorization services in the commercial environments on the Internet.  Early versions of OAuth 1.x are in use by Google, LinkedIn, Facebook, and other well known providers.  Experience with this has driven creation of a new version of the OAuth standard that can be profiled for different use environments.  OAuth 2.0 is not complete in itself; it must be profiled to meet the needs of specific market segments.

IHE has the expertise in the needs of the healthcare market, and is structured to create profiles of existing standards.  This should mesh well with the structure and methodology of the OAuth 2.0 standard.  By using the same standards as the commercial sector, we increase the acceptance of the healthcare profiling by commercial authorization providers.

There are already prototyping efforts by ONC and others to develop implementations and confirm usability of OAuth in a healthcare setting.  The regulatory and legal requirement for authorization services is clear.  The market demand that authorization services be independent of healthcare provider services is also clear.

**The Problem**

HTTP-based transactions, like the RESTful transactions in the MHD Profile, lack a standard authentication and authorization mechanism.  Many RESTful activities have no need for such mechanisms.  The RESTful activities used in MHD and other profiles take place in a healthcare environments, and an authorization mechanism is needed for some kinds of healthcare access.

An authorization mechanism is needed for MHD for patient access by tablets and smartphones, and in expected uses for provider access by tablets and smartphones.  Smart devices, such as blood pressure monitors, delivering their results to providers need authorization mechanisms.

Providing an authorization mechanism as a profile that can be grouped with MHD and other RESTful profiles will enable their use in the anticipated deployment environments.

**Target Environment**The devices are restricted in function and capability, typically tablet and smartphone devices. Their network and storage capabilities are constrained to those provided as part of the device environment.

- Ownership and control varies, the device may be

- Patient owned and controlled.

- Provider owned and controlled.

- Third party owned and controlled.

- Combinations of ownership and control.

- The authorization service must be usable over HTTPS. It is assumed that TLS will be available and used to protect and authenticate the communications. (Bi-directional authentication may be an issue. This needs to be resolved.)

- Use over HTTP is desirable, but the lack of protection within HTTP means that it would only be acceptable in controlled environments. Use within a single facility over protected networks like VLANs is an example of appropriate use.

- Only HTTP headers can be extended and used. It is too difficult to modify some of these devices to use completely new protocol stacks.

There will be multiple authentication and authorization servers in the environment. It is expected that a provider will negotiate with and accept at least several different authentication servers for use with that provider. It is expected that the person or organization controlling a device will select one of those authentication servers.

The authentication server and authorization servers may be provided by the healthcare provider or may be an independent third party. The system chosen must accommodate reasonable combinations of these.

The devices may have multiple applications and may chose to use different authorization servers for different purposes.

**Use Cases**

The following five use cases will be considered initially for profile purposes.  This is not an exhaustive list and one of the early tasks of this project will be re-examination of the use cases to combine those that are duplicative and add those that are considered appropriate.  (Appropriate additions will motivate and explain additional requirements on the protocol beyond those already driven by these use cases.  There are far too many different potential use cases to accept any further use cases unless they reveal new requirements for authorization services.)

- A patient with a mobile device wishes to retrieve a medical document to which they have authorized access.

- A provider with a mobile device wishes to retrieve a medical document to which they have authorized access.

- A patient with a mobile device wishes to provide a new medical document to their provider.

- A provider with a mobile device wishes to add a new medical document to a patient record.

- A smart device wishes to add a new medical document (containing a device report) to a patient record.

All of these need authorization steps, and the authorization transactions follow the same pattern.  The use cases may differ in terms of details about the individual transactions, etc.  The use cases also are likely to have different threat environments that need to be analyzed.

All of the existing standards follow a very similar transaction pattern.  The diagram below uses the terms from the OAuth standard, but the other standards fit this diagram with only the names of the transactions and actors changed.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEieA-XIfgQQz33rBNeH_S724aSIj8BGNoUk6JDUoZuoEJUvLbSdvJgXgXzL8bkPRNT-uGoX6qjb9A_DHLVzqjCZDL-e2mf9xYBrLCNhUcbuRv9P_Y8ShrlxyEswI_7e4Sfnpb42mvorJb_U/s1600/image001-777455.png

The Client will make a request of the Authorization Server.  There is may be other HTTP traffic involved as part of the authorization process.  This traffic might not be specified in detail by the authorization profile because they are provider specific.  The result is an authorization response providing a ticket of some sort that can then be used in communications with the Service Provider.

The client will use that ticket, and perhaps other related information, in the HTTP request headers to inform the Service Provider that it is authorized to make this transaction.

**Standards & Systems**

The most likely candidate standard is OAuth 2.0 http://datatracker.ietf.org/wg/oauth.

Other standards candidates exist, but none of these has gathered significant acceptance in the cross enterprise environment:

- HTTP Kerberos, which has moderate acceptance within enterprise but none across enterprises http://datatracker.ietf.org/wg/krb-wg.

- HTTP LDAP authentication

- HTTP Password

- HTTP SAML

- Other developing standards (To be explored)

- Proprietary systems

The OAuth 2.0 standard is a framework that is not in itself complete.  It is expected to be profiled to meet particular use case needs.

**Technical Approach**

All of the candidate standards take a similar approach.  They match the transaction flow shown above.  The ITI effort will not invent new methods.  It will profile an existing standard for authorization.  We do not expect widespread acceptance if we invent a new method.

**New actors**

- HTTP Authorization Client â€“ the client device

- HTTP Authorization Server â€“ the system providing authorization services

- HTTP Server â€“ the system providing the HTTP service.

**Existing actors**

These new clients will group with existing and other new actors.  For MHD, it is expect that the HTTP Authorization Client would be grouped with Document Source and Document Consumer.  The HTTP Server would be grouped with the Document Recipient and Document Responder.

(It may be that after review we will decide to use options rather than grouping to accomplish this function.  For now, we will proceed assuming that the grouping function will be used to document the behavior.)

**New transactions (standards used)**

The two new transaction will be:

- Authorization Request. This is likely to be an OAuth authorization request. It is between the client and the authorization server.

- Authorization Service Ticket: This is likely to be modifications to the HTTP headers in a RESTful transaction.

In the case of MHD, it would be modifications to the HTTP headers in the Put Document Dossier [ITI-65], Get Document Dossier [ITI-66], Find Document Dossiers [ITI-67] and Get Document [ITI-68] transactions.

**Impact on existing integration profiles**

HTTP based transactions like MHD may need to have options added so that implementations can indicate the ability to perform and use authorizations.

**New integration profiles needed**

A new profile will be created to describe the new actors that request, provide, and use authorization services, to describe the new authorization transaction, and to describe the HTTP header modifications needed to use the authorization results.

**Breakdown of tasks that need to be accomplished**

The major work items to be performed are:

- Identify the threat environment models for the use cases. One important issue will be the extent to which we attempt to deal with the problem of hostile platforms. The likelihood that patient owned and controlled devices are penetrated by malware is high. There is a near certainty that at least some of the devices involved should be considered hostile platforms. OAuth 2.0 has a threat document that may contribute to this effort. [http://datatracker.ietf.org/doc/draft-ietf-oauth-v2-threatmodel](http://datatracker.ietf.org/doc/draft-ietf-oauth-v2-threatmodel)

- Evaluate the available standards in terms of how well they protect against the expected threats.

- Select a standard

- Profile the standard for the expected threat environment and use cases

- Clearly identify the limits of applicability for this profile. One of the greatest risks for security profiles is their use in environments where they do not provide adequate protection.

**Risks**

None of the long existing standards has reached widespread acceptance in the cross enterprise environment.

The OAuth standard is still in draft form.  Publication as a draft standard is expected in mid 2013. The previous version of OAuth had a number of different problems, although these did not prevent adoption.  They did result in different vendors making choices that substantially reduced interoperability between different authorization servers.  This made it difficult to support multiple authorization servers for a single service provider.

Working with a draft standard poses risks, but in this case also provides advantages.  Since the intention is that the OAuth 2.0 be profiled, feedback from our profiling effort can be used to improve the OAuth 2.0 finished result.

We do not know whether the OAuth 2.0 approach will work and meet with widespread acceptance.  The proposal is already the subject of considerable controversy.

There are other less mature standards development activities that claim to be addressing this same problem.  They are all significantly behind the OAuth effort in terms of readiness.

