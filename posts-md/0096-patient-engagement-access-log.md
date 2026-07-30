# Patient Engagement - Access Log

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/06/patient-engagement-access-log.html
Published: 2019-06-11T20:11:00.001Z
Updated: 2019-06-11T20:11:54.965Z
Author: John Moehrke

---

The HIPAA Accounting of Disclosures is obsolete and dangerous.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjRUcSXDdrYzqKgzQjhs4eQNUDhUEDW64SiCIbpQK9THZ7XKCJFEEI1d1fR8sT9KL95afyZ-YRYn_674J6Qak5epQSkkP7t6_kbqRJYnn4ToOy577C75y-xB66KjgqlNTuhrsfTFK_9j4fF/s1600/secpriv.jpg

Patients are expected to become more engaged with their healthcare and do this using applications. Applications are sometimes software that runs on the Patient's phone, but sometimes software running at a third party cloud. Patients should not be expected to have done a software code review of these applications, and a legal review of the applications Privacy Policy. This would be ideal, but is simply not realistic.

I am using the word "applications" mostly generically, but clearly "FHIR Applications" are a proper subset of applications. As FHIR matures, this subset may become the only set of applications. This would be a good thing.

The Patient's choice of applications should be rather open ended, today. This eventually will become more constrained, but during this wild-wild-west time for healthcare applications we simply don't know enough about the potential good or bad that these applications might cause. I am sure there will be a set of these applications that are out-right-dangerous. I encourage us being open at this point because any rules we might put in place might inappropriately restrict good applications. With a few years into the future we will have a much better idea of how a community evaluation can help keep patients safe.

But just because I think we should be open with allowing the applications, does not mean I trust them...

One small step that I would like to promote is that the healthcare provider that holds data on a patient MUST record all accesses to that data, and provide the patient visibility into that audit log. This is specifically recording of the API access requests made, and if they were successful or rejected. It is important to record the rejections and the successful transactions. It is also very important to record what was requested and what security token identity was used.

For the most part this audit log would be just the [FHIR API "REST" activities](http://build.fhir.org/auditevent.html#6.4.4.4).

REST operation logged on server ([example](http://build.fhir.org/audit-event-example-vread.html))[rest](http://build.fhir.org/valueset-audit-event-type.html) RESTful Operation[[code]](http://build.fhir.org/valueset-type-restful-interaction.html) defined for operation CRUDAgent for logged in user, if available.
Search operation logged on server ([example](http://build.fhir.org/audit-event-example-search.html))[rest](http://build.fhir.org/valueset-audit-event-type.html) RESTful Operation[[code]](http://build.fhir.org/valueset-type-restful-interaction.html) defined for operation[E](http://build.fhir.org/valueset-audit-event-action.html) ExecuteAgent for logged in user, if available, and one object with a query element.

This Access Log should include ALL access, not just those types of access that qualify as "Accounting of Disclosures". The Accounting of Disclosures has too many exceptions, and thus the report given to the patient is not valuable. It would especially not valuable for the Applications space.

This Access Log would include clinician accesses of the data, researcher accesses of the data, etc. But would also include logs of accesses that applications are claiming are on-behalf of the patient themselves.

The Access Log as I am speaking about it here is just the log that is maintained by a Healthcare data custodian, about the API accesses to the data on that patient in the control of that custodian. Where a Patient has many data holders, the patient would need to get a comprehensive audit log by gathering the audit logs from each of the custodians that they have data at.

Log analysis is not something that I expect that a Patient would know how to do, but once we have agreement that each Custodian would maintain a FHIR AuditEvent log of API access; then we can mandate that the custodian also provide a FHIR AuditEvent API access to that audit log. Once we have an API to the AuditEvent log of API calls; then someone can write Application that gathers the audit logs together and does analysis. This analysis would do typical audit log analysis looking for patterns, getting approval of a well understood pattern. Once well understood patterns are identified, then the application would alert the Patient when an unusual pattern is seen.

The [IHE ATNA profile has been updated with full support for FHIR AuditEvent;](https://healthcaresecprivacy.blogspot.com/2019/05/ihe-iti-spring-2019.html) so this is a really good specification to support this model.

