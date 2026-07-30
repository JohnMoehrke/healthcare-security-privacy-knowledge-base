# NHIN-Direct Privacy and Security Simplifying Assumptions

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/05/nhin-direct-privacy-and-security.html
Published: 2010-05-06T01:10:00.001Z
Updated: 2010-05-06T02:46:10.412Z
Author: John Moehrke

---

There is an article [Policymakers explore  patient consent triggerpoint](http://www.govhealthit.com/newsitem.aspx?nid=73616) that is a good high-level summary of the discussion going on inside NHIN-Direct around the the Privacy/Security simplifying assumptions of the NHIN-Direct and the more complex situation in the longitudinal Health-Information-Exchange model (e.g. XDS and XCA -- aka NHIN-Exchange).

> â€œWe need to talk about data, access, use and retention policies, even  when their functions are just transport and some minimal business  operations,â€ McGraw said. [More](http://www.govhealthit.com/newsitem.aspx?nid=73616)

The simplifying assumptions of the NHIN-Direct are very powerful yet very important to keep in mind. The NHIN-Direct model says that the Sender is responsible for doing a bunch of things before ever sending the data. These things are not unusual, they are needed today when using a FAX, which is the model for NHIN-Direct.  The following is the 'context' of the NHIN-Direct use-cases:

> The _Sender_ has made the determination that it is clinically  and legally appropriate to send _the content _to the _Addressee_.

- This means that the sender has made sure the address the are going to use is correct. Likely done through some out-of-band communications, once they build a directory they reuse addresses. Addresses might become something that is communicated readily, possibly printed on business cards. The format chosen for the address will look familiar as the format is that of an email address, this does not mean that the transports are all e-mail based (although e-mail is one solution for transport). Much like what is done today with FAX numbers.

- This means that the Sender has determined that the patient has consented or given appropriate authorization to send the content to the Addressee for the specific purpose. Again, much like is done with FAX today. This means that there is no need for a consent-repository, as it is a sender decision is on a case-by-case basis. Essentially the Sender must have a consent 'on-file', but does not need to produce any electronic version of this.

- To emphasize the Sender is sending the content to the Addressee for a specific purpose. This purpose might be encoded in the content or not. But it is this purpose that is specific to the transaction. Meaning that the Receiver of the data is not free to use the data for other purposes not authorized. This does not mean that the Receiver can't go through the paper work with the Patient/Consumer to get authorization. This is being pointed out only because the single purpose aspect is important to the simplifying assumptions of the NHIN-Direct.

- The Receiver does have the right to use the data for the purpose it was sent, but no other purpose. This has a suitableness that is important. The content is sent to the domain of the addressee, and notice given to the human. Meaning that the domain of the addressee is their EHR or PHR. Once nicely tucked inside these systems it is expected to be managed according to the Receiving organization rules. This allows a Provider to know that the received content is now part of their medical-records. This also means that the Receiver takes on maintenance responsibilities for as long as they hold onto the data. This might be a few seconds while the Provider reviews it and they dismisses the content, or it might be the life of the patient chart.

- The Communications between the Sender and Addressee organization/domain is cryptographically authenticated at the organization level in both directions. This means that the Sender is assured that they truly got connected to the right server, and the receiving server is assured that they are being connected to by a trustable sender. This authentication is mutual because both parties need to be sure they are talking to a authentic opposite. This keeps the bad guys out. This authentication should not be confused with authorization, that comes next.

- Note that with TLS, this exchange of certificates is automatic. There is no need to have the certificate of the opposite prior to connecting. BUT, once the certificate comes down the TLS pipe it must be fully validated including checking the expiration, signature, chain-of-trust (CA), and that the CA has not revoked the Cert. Good luck, this is totally automatic and built into TLS.

- There is discussion of white-list and black-list. This is not your normal use of these terms but is close. The above step made sure that only authentic NHIN-Direct systems can be communicating. But not all Receivers will want to allow content from all Senders. For example, until a business relationship is formed, it might be very useful to not Authorize an Authenticated system to communicate. That is that one can be sure that the Sending system is authenticated as being a NHIN-Direct system, but because no business relationship is in place, they don't want to receive content. This is simply good defensive business. So, there is talk about having a system configured to reject all but those certificates on a 'white-list', or to accept all but those certificates on a 'black-list. I guess this is similar to the assistant that looks at the received FAXes and weeds out some of them.

- TLS would also be encrypting using AES (or better) and SHA1 (or better). Lucky us, TLS does this negotiation automatically.

- The Sender is responsible for any Accounting of Disclosures, as is the Receiver. Even if they are not Covered Entities, they should maintain a Security Surveillance Audit  (see ATNA)

These simplifying assumptions are very critical to allowing the NHIN-Direct solution to be very simple. These simplifying assumptions are not intended to remove responsibility, they are very explicitly stating the responsibility still exists but is cleanly pushed into Policy and Procedure space.

