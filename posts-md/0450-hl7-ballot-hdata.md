# HL7 ballot - hData

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/09/hl7-ballot-hdata.html
Published: 2013-09-09T00:36:00.002Z
Updated: 2013-09-09T00:36:18.818Z
Author: John Moehrke

---

The first ballot that I have submitted my vote on is the hData ballot

-  V3_ITS_HDATA_RF_R1_N1_2013SEP

I expected this to be an easy positive, and this is how my comments went for a very long time. The hData specification is pointed at by many as a foundational specification for RESTful health information exchange, and/or mHealth. It has been maturing under DSTU, and there are a long list of things that the DSTU has changed.

I did use some of hData concepts in the [IHE-Mobile Health Documents (MHD) profile](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html), although like FHIR I kept it harmonous but not reliant on the specification. This arms distance is a good thing for all involved. Some of hData is simply motherhood and apple pie for REST. The disappointment is that hData doesn't deliver much beyond some fundimentals that are just normal REST, and some other stuff that is optional and mostly ignored.

The ballot problem is that there were many things that really were minor objectionable. Put enough of them together and I need to vote Negative. It is a light weight negative, surely they will be able to resolve these comments easily. In each case, I provided at least one remedy for the negative comment.

- The first thing is very simple, there is no introduction. They head right away into a 'background' sub-section without telling the reader what this specification is about. There is a need for a simple elevator speech.

- Security Considerations -- There is some good stuff in here about how they have left the [Security layer to other specifications](http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html). No surprise they point at RHEx, while ignoring other efforts. However my main issue is that they have not put all the Security  Considerations into one section as is the direction of the Security WG -- [Security Risk Assessment Cookbook](http://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html). Thus there really is nothing new that needs to be said, but security considerations should be said all in one place and with proper risk based rational.

- There are implied pre-conditions. These should simply be stated. Some of these are the  Security Considerations I just mentioned, but others are not. For example, there is a heavy reliance on timestamps in this specification, actually in almost all RESTful specifications there is a reliance on good time keeping. This needs to be stated as a pre-condition, simple solution. Better yet, mention the [IHE-Consistent Time Profile.](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- Handling of Provenance is immature -- Security WG, EHR (Legal Medical Records), and FHIR are working hard on a good definition of a Provenance resource that can (should, must?) be attached to every RESTful resource. The hData provenance resource is what we were thinking about this spring, however there are many issues that have come up. Further I think that confidentialtyCode should be moved inside of provenance, and not be an oddball sitting outside somewhere in nowhere land. Even if it is outside provenance, it should carry the [full confidentialityCode vocabulary](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html), not the constrained one that CDA hacked together many years ago. It is not the fault of the hData writers, as this is developing work.

- Digital Signature -- the specification has an incomplete digital signature as part of the provenance resource. This is true of FHIR too. The problem is that this is not complete enough to be a [non-repudiation Digital Signature.](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)  Fortunately HL7 is working on this topic too.

The main problem that will be hard to deal with is the evolution of provenance. This is not described as being fundimental to hData, it is in a section that is clearly bolted on. It might be best for hData specification to go on without provenance.

