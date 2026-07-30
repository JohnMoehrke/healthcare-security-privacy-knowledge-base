# IHE mHealth Hackathon

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/11/ihe-mhealth-hackathon.html
Published: 2012-11-13T14:21:00.001Z
Updated: 2012-12-08T21:02:54.128Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSOylCVZ1sk9Gjg33D5KkWkhS57fvZo3YYmRcaK8T1PnOuVRZ7hbufr0nJJULZWUhLlmq8ENpOVEMp9Xb8wlA_IlhdLfow2aPgT4digxJ0ixMO73qo75YuoxAV86TBODTknIahUrQFym9w/s320/image001-736132.png

Updated: [Official IHE announcement of the mHealth Hackathon](http://www.iheusa.org/IHEUSA-Connectathon-Events.aspx#hackathon)

The [Mobile access to Health Documents (MHD)](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html) profile offers access to the [Document Sharing](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1-0_2012-01-24.pdf) environment from platforms that prefer to use more simple interface technologies. The MHD profile takes the approach of [REpresentational State Transfer (REST)](http://en.wikipedia.org/wiki/Representational_state_transfer), a resource centric view; and leverages the technologies readily found on Mobile Devices (HTTP, Atom, JSON). This new interface to the Document Sharing environments is expected to extend the reach to devices and workflows. This new interface is not a replacement for XDS, XDR, or XCA; but rather provides a new programming interface to these [Document Sharing](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_White-Paper_Enabling-doc-sharing-through-IHE-Profiles_Rev1-0_2012-01-24.pdf) infrastructures.

http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html

[Mobile access to Health Documents (MHD)](http://wiki.ihe.net/index.php?title=MHD)profile defines a simple HTTP interface to an XDS like environment. It defines transactions to a) submit a new document and metadata from the mobile device to a document receiver, b) get the metadata for an identified document, c) find document entries containing metadata based on query parameters, and d) retrieve a copy of a specific document. These transactions leverage the document content and format agnostic metadata concepts from XDS, but simplify them for access by constrained environments such as mobile devices. The MHD profile does not replace XDS. It can be used to allow mobile devices constrained access to an XDS health information exchange.

The Hackathon to be held at the [IHE Connectathon](http://www.ihe.net/connectathon/) on Wednesday afternoon and evening will provide the attendees insight into this profile and provide an opportunity to play around with it. The Hackathon will bring together implementers of the profile and those that might be interested in using it.  The goal is twofold: First to provide a social environment to share experiences with implementations of the profile, and Second to help improve the profile.  The profile use of languages that are implemented broadly in many devices and toolkits should offer a chance to develop rapid prototypes of applications. The goal of the rapid prototyping is to play around with the MHD profile interface. The environment will be an extension of the normal [IHE Connectathon atmosphere](http://www.ihe.net/connectathon/) to encourage creativity and problem solving.

Agenda:

http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html
- Presentation of [MHD](http://wiki.ihe.net/index.php?title=MHD) profile goal and content.

- Presentation of mobile authentication profile development in 2013 [IHE ITI Planning for 2013](http://healthcaresecprivacy.blogspot.com/2012/11/ihe-iti-planning-for-2013.html)

- Presentation of a few implementations of the server side of this profile

- Presentation of a few implementations of mobile applications?

- Examination of HL7 [FHIR](http://hl7.org/fhir) advancement of [the concept of MHD](http://hl7.org/implement/standards/fhir/xdsentry.htm).

- Hacking: given the programming tools of today we expect to see some quick prototyping of applications that could go onto mobile devices and leverage the MHD profile.

- Discussion and Summary

An Implementation Guide is being maintained at [mHealth Dossier Guide](http://wiki.ihe.net/index.php?title=mHealthDossier_Guide). We expect to continue to share practices using this wiki, and will publish the results of the hackathon as appropriate.

Updated: [Official IHE announcement of the mHealth Hackathon](http://www.iheusa.org/IHEUSA-Connectathon-Events.aspx#hackathon)

