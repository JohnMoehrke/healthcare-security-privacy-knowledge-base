# Simplified #FHIR Privacy Consent Directive resource

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/05/simplified-fhr-privacy-consent.html
Published: 2016-05-30T04:14:00Z
Updated: 2016-06-15T17:52:19.154Z
Author: John Moehrke

---

The most simple Privacy Consent Directive would really just be a YES/NO flag, so I don't actually mean that simple. What I mean is more simple than the last update I made, yet still functional. With the previous version I learned a few [more things to be simplified](http://healthcaresecprivacy.blogspot.com/2016/05/simple-fhir-consent.html).  The most shocking that I forgot is that the most prevalent exception is to exclude data published duing a date/time range.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhTY-9W9TJzVhyK5jFJFUYD553j2D7YNxlP61dyXqrR0J0bfJVWCIjMuo-NQVWgnqhAscKx-gzR1inqvdJBOXaHvFylAZ24IKgT89U4fNei-9atTAPRth56o9C8U3ENtUEybKy3zx3G9IGl/s1600/Consent_Simplified_uml.png

So now I have updated the [Privacy Consent Directive resource](http://hl7-fhir.github.io/consent.html)that has a base that identifies the patient, authority, domain, location, recipient, grantor, data, and actions. These are the elements needed for an all-or-nothing kind of consent.

Then there are a set of exceptions to this base: additions or subtractions. The set of exceptions include a list of data objects, list of authors, list of recipients, list of Organizations, list of purposeOfUse, and Date Range.

All of this sits within broader policy that is not part of the Consent, but surrounds it. The operational access controls that cover the meaning of opt-in and opt-out; and also cover the case where no consent has been achieved.

Because there was discussion of some things that are clearly beyond what we are minimally trying to enable, I created some extensions: Authorization Service (such as OAuth/UMA);  Computable Consent Rules (such as XACML);  Notification endpoint to receive Disclosure events in AuditEvent form; and  Witness reference for those that need to expose who was the witness.

There have been discussions of Digital Signature, but that is already supported through a Provenance.signature.

Clearly that is more simple than my first Consent resource

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgbMIbBuSVmHc-vpjpMX6zkutuSalzjimsNn0K9svuO8wFYb0RyNig9X_oGjMTgCkV8zTtfZd-erPIxD90RKfiJsof4Zu_s_4S3H3O93WHeopDUB0VM6ejQvc4QRc6wGoBFC_sbpoqG2zrW/s1600/Consent_uml.png

Especially more simple than Contract

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi3J_IrJQt4OuU__43JYDjZkot_0Hz3kRxmsJojdCf03SU7gzdfeTkcPEDfon1EnB4Hh4oC6zkUdSwDAGMFKgR6C9XGDRLKDELcR8XhB3gYZVvGwL9peG8TxzhZshbHNyMfwHmG0iCyDy7f/s1600/Contract-uml.png

Updated 5/30/2016: Fix FHIR spelling in the title, and add background policy that covers operations and case where no consent has been achieved.

