# Time to kindle the FHIR - It needs ballot comments to grow

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/08/time-to-kindle-fhir-it-needs-ballot.html
Published: 2013-08-14T18:23:00.001Z
Updated: 2013-08-15T01:05:18.122Z
Author: John Moehrke

---

HL7 has released [FHIR to ballot](http://www.hl7.org/implement/standards/fhir/ballot-intro.htm). This is the very first DSTU ballot, with the expectation that there will surely need to be at least one more DSTU ballot followed by many cycles of maturity before going Normative in 2016.  It is thus time for everyone that likes RESTful to speak up. Now is the time for those that insist that all others are not as good as RESTful to prove it through providing constructive input. It is also time for those that are not RESTful advocates to also provide constructive input. Constructive comments that are persuasive are what is important.

UPDATED 8/14/2013 8:00pm: I got a comment from [Lloyd McKenzie](https://plus.google.com/u/0/111249147796095938651), (Chairman of the FHIR Management Group) on the dates. "The DSTU will be published in early 2014.  I wouldn't expect a normative version of FHIR until at least 2016.  We need significant depth and breadth of implementation before we start locking things down."

The first HL7 [FHIR DSTU ballot opened](http://www.hl7.org/implement/standards/fhir/ballot-intro.htm) on Aug 12, 2013. The ballot signup close date is Sep 09, 2013 and the ballot close on Sep 16, 2013. The list of resources that are contained in the ballot is found at [http://www.hl7.org/implement/standards/fhir/resourcelist.htm](http://www.hl7.org/implement/standards/fhir/resourcelist.htm)

This ballot contains some resources that come from IHE. I worked hard over the past year to get these into the FHIR specification. I brought [MHD](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html) to the attention of the FHIR developers as an example of where the industry needed simple access to healthcare documents. I give Grahame all the credit for getting it done.

- [DocumentResource](http://www.hl7.org/implement/standards/fhir/documentreference.htm) -- the document sharing model from XDS, XDR, XCA, XDM, [MHD](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html)

- [SecurityEvent](http://www.hl7.org/implement/standards/fhir/securityevent.htm) -- the Audit Logging component of IHE-ATNA

There is also recognition in FHIR of the use of IHE profiles.

- [Security layer](http://www.hl7.org/implement/standards/fhir/security.htm) -- use of the [IUA profile](http://healthcaresecprivacy.blogspot.com/2013/06/internet-user-authorization-why-and.html)

[Mobile access to Health Documents (MHD)](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html)

The [DocumentResource](http://www.hl7.org/implement/standards/fhir/documentreference.htm) will be brought back to IHE once it becomes a stable DSTU. I and IHE hope that we can use the FHIR standard in the next revision of MHD, because it really hits the mark. This is likely to be this winter or coming spring. At that time the Volume 2 part of Mobile Health Documents (MHD) will be replaced with the appropriate content describing  a profile of [DocumentResource](http://www.hl7.org/implement/standards/fhir/documentreference.htm)to meet the needs of MHD and the family of Document Sharing in XDS, XDR, and XCA.

[Security/Privacy Audit Trail (ATNA)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

The [SecurityEvent](http://www.hl7.org/implement/standards/fhir/securityevent.htm) is a RESTful implementation of the audit logging schema that IHE-ATNA uses. This schema has been slightly changed to meet the goals of FHIR, but is intended to be fully compatible. The future is not as clear with this resource, but I know there is interest in the community. First there is interest in having an HTTP mechanism to submit a new audit log event, rather than using SYSLOG which is required in IHE-ATNA. Second there is interest in having a standardized interface to support Audit Log Reporting and Alerting use-cases. Thus there might be an IHE  profile proposal in the future that uses the [SecurityEvent](http://www.hl7.org/implement/standards/fhir/securityevent.htm)resource.

Please Review and Comment on the HL7 FHIR Ballot

It is very important that everyone take a look at the FHIR Ballot. Those that want this to succeed as well as those that don't think it will work. It is only with everyone participating that we get a good solid specification. I think that there is certainly a place for RESTful to be used. I can see potential for IHE to utilize FHIR quite a bit in the coming years. I however don't think that RESTful is the solution to all needs ([Web-Services RESTful vs SOAP](http://healthcaresecprivacy.blogspot.com/2009/12/web-services-restful-vs-soap.html)).

mHealth

- [getting to mHealth solutions - real People](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-real-people.html)

- [getting to mHealth solutions - Users](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-users.html)

- [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html)

- [Privacy and Security in Designing an mHealth Application](http://healthcaresecprivacy.blogspot.com/2013/03/privacy-and-security-in-designing.html)

- [mHealth Solution](http://healthcaresecprivacy.blogspot.com/2013/04/mhealth-solution.html)

- [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/04/mhealth-solution.html)

- [IHE efforts in RESTful security](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)

- [IHE mHealth Hackathon](http://healthcaresecprivacy.blogspot.com/2012/11/ihe-mhealth-hackathon.html)

- [The Magic of FHIR](http://healthcaresecprivacy.blogspot.com/2012/09/the-magic-of-fhir.html) â€“ The HL7 movement toward REST resources, away from v3 and v2

- [IHE Mobile access to Health Documents - Trial Implementation](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html)

