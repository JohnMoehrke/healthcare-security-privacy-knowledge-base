# What is MHD beyond XDS-on-FHIR?

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/03/what-is-mhd-beyond-xds-on-fhir.html
Published: 2015-03-16T16:45:00Z
Updated: 2015-03-16T16:45:07.423Z
Author: John Moehrke

---

I have been working on a Profile in IHE now for three years. It normally doesnâ€™t take this long, but in my case I had the good luck of being the in the right place at the right time. I saw the tidal wave of â€œHTTP RESTfulâ€ coming, felt it strongly back when I was on â€œThe Direct Projectâ€ creating a sub-optimal solution.  At that time, IHE only had the XDS solution, which is based on Web-Services using SOAP, SAML, and ebRegistry. This XDS solution was and is still the best solution for business-to-business. However this solution is very hard to use if one is using programming tools more common on lightweight systems such as Mobile.

So back in 2011 I wrote the first profile in IHE that was targeting â€˜ease of use by lightweight application platforms such as Mobile Health Applicationsâ€. Thus it targeted use of HTTP RESTful, using JSON encoding.  The Mobile Health Documents (MHD) profile was born to provide a more simple API to an XDS environment. This happened to be the same timeframe that [Grahame was fanning the FHIR flames](http://www.healthintersections.com.au/?p=502). So we joined forces and brought the concepts needed for XDS into FHIRÂ®.  So now, I take those [FHIR based Resources](http://hl7.org/implement/standards/fhir/) and re-write the profile.

Note there will be yet-another re-write (hopefully just tweaks) this summer after HL7 completes their DSTU2 ballot process. There are a set of gaps identified this winter that we have fixed in the proposed content for DSTU2.

The Mobile Health Documents (MHD) is the result.

- [Mobile Access to Health Documents (MHD)](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_MHD.pdf) - Revised 2015-03-12

I am not going to go into deep details, but take the perspective here that the reader is a FHIR expert, and wants to understand this MHD profile. I will assume you also have some understanding of XDS, but only as an overall concept.

The basics are shown here.
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGDkghkr1Mm6cXtNYoD2LdQbOnDxiaUrVFFtMicYMfQPE7re_9aBxZZ6tEquf5_SftHfQzmypuWN0Nouq28oLMGz2y5VnWvtc0_viX-zJ6o3Y4ogEsFlU1KDQDrkWk-cMi3a0wx7cFe4U3/s1600/Slide6.PNG

The MHD abstract actors are:

- Document Source - the  producer and publisher of documents and metadata

- Document Recipient - receives documents and metadata

- Document Consumer - queries for documents metadata, and requests to retrieve documents

- Document Responder - responds to requests for document metadata entries and documents.

The MHD abstract transactions are:

- Provide Document Bundle - This transaction is used to transfer documents and metadata, and is analogous to a Provide and Register Document Set-b transaction.

- Find Document Manifests â€“ This transaction is used to provide parameterized queries that result in a list of Document Manifest resources.

- Find Document References â€“ This transaction is used to provide parameterized queries that result in a list of Document Reference resources.

- Retrieve Document â€“ This transaction is used to get documents.

MHD uses few FHIR Resources:

- [DocumentReference](http://hl7.org/implement/standards/fhir/documentreference.html)

- [DocumentManifest](http://hl7.org/implement/standards/fhir/documentmanifest.html)

- [Binary](http://hl7.org/implement/standards/fhir/http.html#binary)

- [Patient](http://hl7.org/implement/standards/fhir/patient.html)

and

- [HTTP REST API](http://hl7.org/implement/standards/fhir/http.html)

- [Bundle](http://hl7.org/implement/standards/fhir/extras.html#bundle)

The MHD Profile enables many deployment models:

As and API to XDS environment

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjd_GtOV4SYDmfboLe8jA6ULGh6sqTZU-A04TaAl7OB2wG-flSwaedeaF6C-0z-IWOMSVQ0fyQSRP8ppuQ_7jJr8tADygn3IvOqPeYzFfFKG0Xcbk7l6fSPlmf3KzezFZkH0TbYHH1E3mwh/s1600/image004-740773.png

This is what is mostly talked about, but this was just the master pattern. The functionality provided is a more simplified API to a backbone that is fundamentally based on XDS. This simplified API is based on the HL7 FHIR RESTful API. It is therefore available in simple XML, or JSON. The elements of the metadata are thus more accessible to a Java Script application.

As an API to XCA environment

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi5OA1za8y339UJeKhZY_PuhSt_fz5ysKyP95qb9wmovX1stBG8kgocStfg9V0y_eE-E41f5uu3_xQovOnzOC4sixZ0kv5oKjU0Z99sYxseAp94dVNBbzyFczG50_KHI608YcFGHxEPfGz_/s1600/image005-742659.png

Just like with XDS, this is a more simplified API to a federated set of Document Sharing infrastructure. The interactions of the Document Source and Document Consumer MHD actors are just the same as with XDS. The implementation of the Document Recipient and Document Responder MHD actors might be more specialized.

As a standalone Document Sharing infrastructure

Similar to XDS or XCA, but without the need for XDS or XCA on the backend.

As an API to XDR environment

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmrvlIWtgxuA25cB12TJZC9rJFmJch-VGLu6x0kwEpaCe5bK6bBypOI0iwWWdZIacKUvfJessyrIDrYGbsNNh_4qO7rz8y02gQOb08zpGiSzHTlB9Jl2PBQGNFjZYAqZ010o6JmYXy5PPg/s1600/Slide7.PNG

Either end of an XDR could be implemented

As a standalone PUSH environment
Similar to XDR without XDR. Use your imagination that everywhere XDR might be used, the MHD Document Source to Document Recipient could be used.

As an API to the Direct Project HISP

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjajH4jay67djBALCYAa3opD8sPV6Yf3uc0bimjSG7bI_Ip6BVZR5JuHmqmqJIHBMlfyLYkU4_X2Li3cs6nSVXGyqCYnlMMjrIYF65GfJ6pcbU9b09AYjiUYmi5ntCAMNrEnvN1p8tN_9Ll/s1600/MHealth-Diagrams-Direct.png

Either as PUSH based API, or including support for Query side interaction. The Direct Project is a secure email protocol for pushing documents from one place to another. There are value-add service providers that provide a hosted environment for this. They offer a few different APIs to their hosted service. Some are the secure email, some are based on XDR, some have their own HTTP REST API. These could be augmented through the addition of the MHD API as the front-end of the HISP.

As an API to any document based system
The backend just needs to have a document concept

As simply a profiled FHIR service

At the IHE Connectathon we showed that Document Sources and Document Consumers could just direct their API toward FHIR Servers and it would simply work.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFZVbbpTWpNBjp67RD2aSbf1WZlRvUrb0OSzwTuJ6CzWjyFVRw1a7eJkm8M789fBVDfMAYapFlNjrEUQS7j7iWkEuq6JvounHGFqMlLLKcpkLvcBTBDEGqqWTaviL7fGowJX3N-TLPRtd-/s1600/Slide9.PNG

Security and Privacy
As with any Interoperability API dealing with Healthcare information, Security and Privacy

are important. IHE doesnâ€™t mandate a specific Security or Privacy model, as that would be Policy. But IHE does encourage the use of ATNA, and IUA.This also described on the [FHIR Site on the Security](http://hl7.org/implement/standards/fhir/security.html) page.

For More information

- [User Identity and Authentication](http://healthcaresecprivacy.blogspot.com/p/topics.html#UID)

- [Patient Privacy Controls](http://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

- [Access Control (including Consent Enforcement)](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC)

- [Audit Control](http://healthcaresecprivacy.blogspot.com/p/topics.html#Audit)

- [Secure Communications](http://healthcaresecprivacy.blogspot.com/p/topics.html#Com)

- [Document Sharing Management (Health Information Exchange -  HIE)](http://healthcaresecprivacy.blogspot.com/p/topics.html#HIE)

- [Patient Identity](http://healthcaresecprivacy.blogspot.com/p/topics.html#PID)

- [mHealth](http://healthcaresecprivacy.blogspot.com/p/topics.html#mHealth)

- [Meaningful Use](http://healthcaresecprivacy.blogspot.com/p/topics.html#MU)

- [The Direct Project](http://healthcaresecprivacy.blogspot.com/p/topics.html#Direct)

