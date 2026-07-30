# Profiling AuditEvent seems to be an emerging need

Originally posted: https://healthcaresecprivacy.blogspot.com/2026/07/profiling-auditevent-seems-to-be.html
Published: 2026-07-16T16:56:35.625Z
Updated: 2026-07-16T16:56:35.625Z
Author: John Moehrke

---

Watching the report outs for the CMS FHIR Connectathon. Many are mentioning that they see a need to profile AuditEvent for their use-case needs to support data access traceability, privacy tracking, and provenance. I very much agree with this.

IHE has the starter kit with the [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) Implementation Guide defines the basics and has some profiles for common REST interactions.

I often need to remind people that defining AuditEvent profiles can be supported purely as a Query interface. In this case the system keeps their audit log in their native format, but knows how to convert that into the FHIR Standard AuditEvent when queried.

I would be glad to provide pointed and short-term consulting -- see [Moehrke Research LLC](http://MoehrkeResearch.com)

