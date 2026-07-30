# Web-Services RESTful vs SOAP

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/12/web-services-restful-vs-soap.html
Published: 2009-12-02T22:42:00.001Z
Updated: 2009-12-02T22:45:10.942Z
Author: John Moehrke

---

This isn't exactly Security or Privacy related but has been politically a hot potato that I must participate in because I am co-chair of the Security, Privacy and **_Infrastructure _**Workgroup of HITSP. The good news is that HITSP is getting a chance to deal with this formally in response to the "Common Data Transport" work item. This item first came to HITSP back when SOAP was king and no one had even heard of RESTful. Well the winds have changed and now RESTful is king and SOAP is a 'four letter word'. So I penned the following section for HITSP, much of the material does come from Wikipedia, but the text did jive with other resources I used.

**_3.1 Web  Services_**

A web service is traditionally  defined by the W3C as "a software system designed to support interoperable  machine-to-machine interaction over a network. In common usage the term refers  to clients and servers that communicate over the HyperText Transfer Protocol  (HTTP) protocol. Such services tend to fall into one of two camps: SOAP Web  Services and RESTful Web Services.

SOAP Web Services use Extensible  Markup Language (XML) messages that follow the Simple Object Access Protocol  (SOAP) standard and have been popular with traditional enterprise. In such  systems, there is often a machine-readable description of the operations offered  by the service written in the Web Services Description Language (WSDL). Some  industry organizations, such as the WS-I, mandate both SOAP and WSDL in their  definition of a web service.

More recently, REpresentational  State Transfer (RESTful) web services have been regaining popularity. RESTful  Web Services leverage more completely the HTTP protocol including: negotiations  for media types, caching, authentication, and the HTTP methods as the verbs: PUT  (replace or update), GET (list or retrieve), POST (create), and DELETE (delete).  Unlike SOAP-based web services, there is no "official" standard for RESTful web  service. This is because REST is an architecture, unlike SOAP, which is a  protocol. Even though REST is not a standard, a RESTful implementation such as  the Web can use standards like HTTP, URL, XML, GIF,  etc.

Web API is a  development in web services (in a movement called Web 2.0) where emphasis has  been moving away from Simple Object Access Protocol (SOAP) based services  towards more direct Representational State Transfer (REST) style communications.  Web APIs allow the combination of multiple web services into new applications  known as mashups. When used in the context of web development, web API is  typically a defined set of HyperText Transfer Protocol (HTTP) request messages  along with a definition of the structure of response messages, usually expressed  in an Extensible Markup Language (XML) or JavaScript Object Notation (JSON)  format.

**3.1.1 Selecting  Web-Services **SOAP Web Services and RESTful Web  Services are both very useful tools that have advantages and disadvantages. When  defining a concrete implementation of a service it is important to pick the best  tool for the specific job. The Common Data Transport Technical Note outlines  some of these attributes that a transport may need to have. Not all of these  attributes are always needed, so it is important to use the most simple tool  that can get the job done.

Where the advantages of SOAP are  necessary to meet the transaction requirements then a SOAP Web Service will need  to be chosen.

RESTful Web  Services

-           Best for Web-Application  deployment

-           Leverages Browser for user  authentication

-           Synchronous request/response  pattern

-           Simple to  program

-           Simple to deploy -- publish new  URL

http://www.blogger.com/post-edit.g?blogID=4201874739367831894&postID=7121598922218368458-           Secured using TLS, server or mutual  authenticated

-           More friendly to  mashup

-           Leverages HTTP header negotiations

SOAP Web  Services

-           Best for Cross-Organization  Interoperability

-           Best support for User  Assertions

-           Secured using TLS, server or mutual  authenticated

-           Supports end-to-end security with  WS-Security

-           Intermediary  support

-           Synchronous and  Asynchronous

-           Well formed interface definition --  WSDL

-           Support for Reliable  Messaging

-           Support for Binary  attachments

-           Support for multiple  attachments

3.1.1.1 RESTful Web Services

HITSP has selected RESTful Web  Services as follows:

- T18 - View Laboratory  Result from a Web Application

- TP50 - Retrieve Form  for Data Capture

- T66 - Terminology  Service

- T81 - Retrieval of  Medical Knowledge

- TP89 - Sharing Imaging  Results (Image retrieve)

3.1.1.2 SOAP Web  Services

HITSP has selected SOAP Web Services  as follows:

- TP13 â€“ Manage Sharing  of Documents

- TP21 â€“ Query for  Existing Data

- TP31 â€“ Document  Reliable Messaging

- T63 â€“ Emergency Message  Distribution

- T85 â€“ Administrative  Transport to Health Plan

