# Double Standard?

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/12/double-standard.html
Published: 2009-12-11T20:26:00.001Z
Updated: 2009-12-12T05:40:09.134Z
Author: John Moehrke

---

I find it strange that John Halamka is [willing to spend top-dollar for a Gortex suit because it has long term benefits that he sees will payout over time](http://geekdoctor.blogspot.com/2009/12/clothing-experiment.html), while in the same blog telling the [whole healthcare community](http://geekdoctor.blogspot.com/2009/12/advice-to-health-information-exchanges.html) that they should settle for a low grade solution even when that solution is known to be deficient in security,  determinism, versioning, reliability, flexibility, etc.

There have been many attacks on XDS/XDR as being overly complex including that they are SOAP based. These have also included questions of if HITSP should offer an alternative transaction that is RESTful.

The requirements that XDS/XDR satisfy are well documented in the [IHE Technical Framework](http://www.ihe.net/Technical_Framework/index.cfm#IT). I will highlight a few that are relevant to why the benefits of the SOAP stack are important:

- User Authentication supported by HTTP alone is inadequate for healthcare information. WS-Security includes support for many user authentication methods including Federated ID using SAML Assertions.

- URL representations of healthcare resources (e.g., Medical Record, Patient Chart, or provider ID, et cetera), can:

- Expose PHI in web URLs (probably the most common security error made in web-based healthcare apps)

- Create easily exploitable web pages (another very common security error).

- Formal interface definition language in WSDL.

- Support for end-to-end security while leveraging a flexible WS-Addressing and built in asynchronous support.

Although all of these are enabled by the SOAP stack, they are not mandatory and the minimal stack is profiled for XDS/XDR. The point is that adding the additional support from the SOAP stack is as simple as adding building blocks, where as one would need to code this into the application with a RESTful approach. Further point that is often lost in these discussions is that REST is an architecture, there is no standards that define REST. Where as SOAP is a standards based protocol.

We either clothe Healthcare in a [â€˜simpleâ€™ jumpsuit](http://www.workinggear.com/gc/customer/product.php?productid=17821), or we build a long-term HIE architecture out of strong durable fabric.

