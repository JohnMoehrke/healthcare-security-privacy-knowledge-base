# #FHIR Basic AuditEvent for generic RESTful actions

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/09/fhir-basic-auditevent-for-generic.html
Published: 2021-09-09T17:17:00.006Z
Updated: 2021-09-09T17:17:55.712Z
Author: John Moehrke

---

I have drafted a prototype [Implementation Guide covering the AuditEvent profiling for generic FHIR RESTful actions.](http://build.fhir.org/ig/JohnMoehrke/BasicAudit/branches/main/index.html)

For any FHIR REST operation there is a well-defined AuditEvent specified in [this implementation guide.](http://build.fhir.org/ig/JohnMoehrke/BasicAudit/branches/main/index.html) The appropriate AuditEvent shall be recorded by Client and Server applications that claim conformance to [this implementation guide.](http://build.fhir.org/ig/JohnMoehrke/BasicAudit/branches/main/index.html) The resulting set of AuditEvents are made available to a client authorized to retrieve them. The AuditEvent in this case is useful for the typical privacy office and security office use, but is also useful to enable a Patient facing app that can inform the patient when and how their data are used.

Basic Auditing where there is a **known subject **of the data involved. This profile is a formal specification of the guidance given in the FHIR Core AuditEvent under [Common Scenarios](http://build.fhir.org/auditevent.html#6.4.4.4)

This guide does not cover all AuditEvents. It does not cover

- how accesses to data where their is no subject, such as a Provider Directory. Although this is likely similar, just without the mandated Patient entity.
- how failures are recorded. Failures are recorded with the .outcome that is not success, and is thus a very large body of possibilities. Failures are logged with best-effort and with verbose content. This makes the AuditEvent of a failure very hard to characterize, vary hard to automatically process, and possibly exposing of privacy or business secrets. These might be access control denials, which the patient would be interested in but for which it is not clear they would be due these kinds of notices. These might be infrastructural failures, which are too hard to characterize.

The AuditEvent profiles here could be used as a prototype for a more specific AuditEvent profile in a use-case specific Implementation Guide. Where a use-case specific Implementation Guide defines an AuditEvent profile, those profiles should be used rather than the Basic AuditEvent profiles found here. Both could be recorded without harm.

Actors defined in the Implementation Guidehttps://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgrNGV_MqS8Je9LXqtNY7VBPXV3MogKOA0fp_tIlgUWfKKeHXUsriOTdLEmWZshxNbEu__blqZoY1uperiyy4VeM3T2P0YfxqtGF8jm7ZzMbdydHlNxBaVGPs0Gxa343MdVoXWymrYf9zQm/s415/ZP1D3e8m58JtdEA5FHTmOJ3A1S0BDFQ9JR35zuFnzc8f4TI5gqvclkaahsGn97hjCjEY5yWFHWmeEz_2ldEZbOFX95TCWpGWnNIISxfJwmHgx0Cx2VI8I3JVtehzdejssfmUACYr5ocsQGmsK5VDyQmT4DuKMR8K53RS_SXzB8uydWBPoQ-6vTV_qL7E5Ur_byoombc9thw.png

Data using ClientRequesting application in a REST relationship with the Server.

Note that the Client may also record the appropriate AuditEvent into the Audit-Repository. For security use-cases it is very helpful for the client to record the AuditEvent too, as this sets up a pattern of normal operation that can be watched for deviations. Deviations such as the client stopping audit logging should be investigated, a possible cause is that the client credentials have been stolen and are being used by another application than the one authorized.
Data ServerResponding server that holds the data the Client is requesting thru REST. Server records the appropriate AuditEvent into the Audit-Repository.
Audit RepositoryFHIR repository holding the AuditEvents created, and provides access to the AuditEvents to Audit-Clients. The Audit-Repository would typically not allow Update or Delete of any AuditEvent previously recorded. Thus only allowing Create, and Read of AuditEvents.

Note that the Audit-Repository may be the same system as the Server.
Audit using ClientA Client that retrieves AuditEvents for some functionality. Where the functionality is not constrained or defined here. The Audit-Client queries AuditEvents for a given Patient.PurposeThe reason for me to have written this Implementation Guide is for two specific reasons

- To provide a structureDefinition Profile set of these basic audit even patterns. Which does test the FHIR core AuditEvent specification.
- To provide a pattern for an Audit using Client that uses the AuditEvent(s) for various purposes. Including the purpose of providing a  [Patient Engagement - Access Log](https://healthcaresecprivacy.blogspot.com/2019/06/patient-engagement-access-log.html)

References
- [Basic Audit Implementation Guide](http://build.fhir.org/ig/JohnMoehrke/BasicAudit/branches/main/background.html)
- [IHE- Mobile Access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD/index.html) - has AuditEvent profiles
- IHE [Patient Demographics Query for Mobile (PDQm)](https://profiles.ihe.net/ITI/PDQm/index.html) - has AuditEvent profiles
- IHE [Patient Identifier Cross-reference for Mobile (PIXm)](https://profiles.ihe.net/ITI/PIXm/index.html) - has AuditEvent profiles
- IHE [Internet User Authorization (IUA)](https://profiles.ihe.net/ITI/IUA/index.html) - has profiled AuditEvent but does not have profiles

