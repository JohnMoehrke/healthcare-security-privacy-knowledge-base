# State of Healthcare Provenance today

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/03/state-of-healthcare-provenance-today.html
Published: 2019-03-13T19:45:00.002Z
Updated: 2019-03-13T19:45:22.509Z
Author: John Moehrke

---

Today, there is some provenance that is built into the Healthcare standards that are used. Some of this Provenance is not obvious, so let me expose it.

**HL7 v2** has the least provenance information built into common use of the specification. This is not to say that there isn't provenance, but not much. In theory, one knows the sender of the message, but as a message, this sender information is usually discarded.

**HL7 CDA** has well implemented CDA header that holds Provenance. It isn't described as Provenance, but it is Provenance in that it describes: (a) Who authored the document, (b) What organization is the custodian of the document, (c) When was this document authored, and (d) Why was this document authored. Given that a CDA document is a document, and not a transport, it does not include to whom is it being sent, and from where is it being sent. These are gaps overall, but gaps that one should expect the transport to fill.

There is a [CDA PROV specification](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=420), but it is not used today. This specification clarifies the basics, but also adds functionality for comprehensive Provenance within CDA.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjUDDGP1p_Ds8vmKnF8rjogLj6jcR-8mvGtp-hF340N6hiOKSztrer6QAse7VzaDJI0-S4O98tt-JlpgFrddSG3OHyzKKbdD2_MQxxh7AgFqzZlkDYx1xb03pV3_oNVucKHhlT_fny7KEnr/s1600/Document+Sharing+Metadata-748946.jpg

**IHE XDS/XCA/XDR/XDM/MHD** is a document transport that is content agnostic. It can transport CDA, but it can also transport other content. With CDA, there is the above well defined basic Provenance. With other formats the document itself is not self declarative. Thus the XDS transports have defined metadata that explicitly carries these Provenance elements, along with other elements for other reasons (descriptive, identity, life-cycle, privacy, security, and exchange).

This metadata model was inspired by the CDA Header, but abstracted so as to work with any content type (which now includes FHIR  Documents), and many deployment models.

[One Metadata Model - Many Deployment Architectures](https://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html)

Future on FHIR

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhfEanjWyoBByxLe0IvVTeVQDi4S2cP1T46i4RYXy3PE07djC2TQZOZnSnjZgbehRruY1outJV0Q0hwZZLDodun4-KS6Yfkmhv7j112wkTJu-Gy1Pthkc6Wi5dhUEAVWkzdTc_eleHzZju7/s1600/W3C_Prov.png

**FHIR **has the most mature Provenance model. Not only does it have a Provenance Resource that can be used for any FHIR resource, but much of the Provenance data elements are often built into the core FHIR resource when that data element is fundamental to that FHIR resource. See the [fiveWs page for details on this](http://build.fhir.org/fivews.html).

This model is inspired by W3C PROV, and long history in HL7 on Provenance. Thus it is intended to be comprehensive in function and ability.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1AAR7GxtWgv5Lh8r-DE_Fk0Sirm9pTD7PE1XdLpy8axQP-YsQmKbl0OWUcPIMkqFIXuVFjZvISi1sNZIUyAfY12C81n-PZRSkz65yZ4EwemvxZwIg2kA6Q3_qYm5F1NAJ-XJduYqKzKLk/s1600/mXDE-decompose.png

FHIR Provenance Profile
There is a Profile of the FHIR Provenance resource to cover the use-case of data elements extracted from Documents that are shared in a Document Sharing (XDS/XCA/MHD) exchange, where the data are made available in Query for Element Data (e.g. Observations, Medications, Conditions, etc).  This use-case supports the case where someone is using the FHIR API to gain access to data, and they want to get the Provenance of the data they were given. Where the Provenance provides positive linkage to the Document(s) from which that data was extracted. [See my webinars](https://healthcaresecprivacy.blogspot.com/2018/09/webinars-on-mhd-and-mxde-available-from.html)

Provenance Service vs Provenance with the Data

The CDA, XDS, and FHIR models defined above are all ways to carry Provenance with the data. This model is historically what is done in Healthcare, when Provenance is done at all.  The advantage of this model is that the Provenance data is conveyed with the data so that it is available when the data is used.

However this is not the only model that could be done.

Provenance Service is a service that has the responsibility to support Provenance use-cases. When data are created, a record of that Provenance is submitted to a Provenance Service. When data are used, this service can be queried for evidence of Provenance on that data.

The **FHIR **Provenance resource could be managed in a standalone Service. A degenerate form of this Provenance Service in FHIR is where a FHIR Server that holds the clinical information also holds the Provenance. That is just a logical merging of the data custodian service with the Provenance Service.

The **XDS **model could be seen as a Provenance Service, much like FHIR. One can always lookup a document that you have in XDS to find a DocumentEntry. In that DocumentEntry is a hash and size of the document that you can confirm. There might be a digital signature association too.  If confirmed then you can look at the other elements in the DocumentEntry to see what the Provenance of that document is. Further one can see if the document has been replaced, transformed, or appended. This is not purely a Provenance Service, but the functionality does exist.

Elaboration [on Blockchain Provenance Service](https://healthcaresecprivacy.blogspot.com/2019/03/blockchain-provenance-service.html)

When is Provenance Created?
Simply whenever data are

- created,

- updated,

- verified / authenticated,

- transformed / translated / derivedFrom,

- appended / amended,

- de-identified / re-identified,

- destroyed / deactivated / deleted,

- exported / published / pushed,

- imported

That is just about all actions other than Query and Read. Note all actions are AuditEvent relevant. [Audit Log is not the same as Provenance](https://healthcaresecprivacy.blogspot.com/2016/03/provenance-vs-audit-it-is-not.html). They are similar in what gets recorded and when a record is made; but the intended use and retention lifecycle of the AuditEvent is different than for Provenance.

Having all of these records of Provenance is not valuable unless it is useful to those needing it.

When is Provenance needed?
The most important point of Provenance is that it is needed and used. A key part of use-case analysis is to look at the use of the data you are creating. If everyone created exhaustive Provenance records, but no-one used but 1% of those records, this would be wasteful.

So, lets look [at Use-case for Basic Provenance](https://healthcaresecprivacy.blogspot.com/2019/03/basic-provenance-use-cases.html)

