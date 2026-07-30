# IHE Profile grouping

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/12/ihe-profile-grouping.html
Published: 2011-12-19T18:56:00Z
Updated: 2011-12-19T20:11:09.685Z
Author: John Moehrke

---

Should Document Content profiles mandate IHE ATNA? The short answer is "No". The long answer is a lesson in understanding IHE 'grouping'.

I am generally against mandatory grouping, they cause more unnecessary discussion than they help. IHE did mandatory grouping for XDS simply because we needed to drive security/privacy, as there would not be trust of an HIE system that is ignorant of security/privacy. In hindsight we might have done this through some other means, but we used the tools that we had at the time. Therefore all XDS actors must be grouped with ATNA secure node/application actor.

However we need to recognize when there is a need to define specific behaviors when _grouping happens_; regardless of if the grouping was mandated (ala XDS mandating ATNA grouping), or by system design (EHR chooses to implement both XPHR and XDS).

Document Content profiles have recognized that the likelihood of Document Content profiles to be grouped "by system design" with one of the XD* transports (XDS, XCA, XDR, XDM); and therefore the Document Content profile do define how one would derive the XDS Metadata values from the Document Content profile specification of the content. This is an example of a not-mandated grouping, but one that is fully defined.

The Document Content profiles should equally recognize that a likely systems design grouping would be with ATNA. Thus the Document Content profile should define the Security Audit Log Message derivation. This should not be duplicate of the audit log definitions in the export/import transport, but clearly the Document Content profile is being 'created' or 'consumed'; both are security relevant events. This is really not unlike what is done for XDS Metadata. If this is not defined by the Document Content profile, then the system implementer must figure it out themselves (which I would argue they should be able to do).

Some other examples I can think of for Document Content profile likely grouping with SVS, PWP, PIX, PDQ, etcâ€¦ I am not saying these must be documented,  but surely if PCC felt that the grouping was likely (or to be encouraged) that behaviors would be defined as â€˜grouping behaviorsâ€™. For example specific use of SVS to retrieve a value-set that is used a defined way.

In this way, if someone chooses to make an application that does nothing but create the Document Content as specified, but doesn't choose to design with any IHE defined transport or IHE ATNA; then there is no XDS metadata or ATNA message that is testable; as they are not mandated. The defined things to be tested are driven by the systems design as documented in the system â€œIHE Integration Statementâ€.

