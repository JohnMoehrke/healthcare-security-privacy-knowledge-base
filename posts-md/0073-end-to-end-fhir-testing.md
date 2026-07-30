# End-to-end FHIR testing

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/05/end-to-end-fhir-testing.html
Published: 2016-05-13T12:52:00.004Z
Updated: 2016-05-13T14:19:54.423Z
Author: John Moehrke

---

There is renewed discussion, much like back in January, around the need to go beyond testing just the FHIR Resource 'interoperability'. Testing Interoperability is not easy, and there are struggles with getting this first level testing done right. But this level testing is not complete enough to give confidence that an application, server, intermediary, analytics engine, or other are really ready to be used.

What we need is a higher level specification to focus on. I think the HL7 "Implementation Guide" could be this, but I am thinking something much higher than is normally documented by HL7. This because what is needed is not a "Standard", but a "Reference System". A 'system' in the broadest of definitions. A system as in a system of systems in a defined environment, and policy framework.

A reference system of systems:
I think it is possible to have a "reference system of systems' as a proof of completeness, that could be used during connectathons and certification.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi-wrKS6loftDcRSTZMdP53mQYv5iXII6sqrZ1hsWe0laXIi30dKGRMf91KQIJcryarVllQVAo_ZwINRWrw9DsvELIoca_mEKWAGmevBpNh4Hm84fWe0cadrTPFKzYzMC1Xwqg4AriMtQjf/s1600/Slide1.PNG

This reference system needs to pick a minimum-useful set of FHIR resource centric workflows. The 'minimum' part of this is so as to have an end-to-end workflow, but also to not have the end-to-end workflow be the center of attention.

This is more than just a selection of FHIR Resources. One can show that any one client can 'communicate' with itself through storing and retrieving a Resource on a FHIR Server. This does prove that there is connectivity, but not Interoperability.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLdZNkhHzI4v8YRB9Vg2_0cXONfJa2jGJ27B86K8Co-4o0IgQ4RzjYTSlYsMQQfjW5ufrq4cHcGC8xfrUaUnhwcTxCcUpahaxSO5lWkGzWkhMasoErPFoZNzRkhh9p_eOtBzTriF2U2MLc/s1600/Slide2.PNGInteroperability requires that one can not just communicate but also use the result. Thus it needs an end-to-end workflow where each actor has more than communication as a responsibility. Each actor must do something useful. At least the receivers of data must do something useful. The FHIR Server might just be an intelligent, and important carrier of data.

This reference system of systems needs to pick a specific 'setting'. The setting is the environment being simulated. Again it isn't to declare a best-practice, but simply a reasonable reference. There are an infinite set of settings that healthcare is ultimately working in. We need to pick one.

What is important in this 'reference' system is to then define a set of reference policies. These policies are not held-up as best-practice, but rather 'one reasonable practice'.  These policies would include Privacy Policies, Security Policies, data retention policies, service level policies. Where policies include Privacy policies, Security policies, authentication policies, audit logging policies, audit reporting policies, data retention policies, service level agreement policies. Also identity policies, like what is a User, and their roles, and their relationships. What is a Patient, with what quality of demographics, cross-reference matching criteria, linking and unlinking responsibilities.

These are not best-practice policies, but rather simply realistic-policy that is representative of reality. Reality is that there is an infinite set of policies too, even an infinite set of realistic policies.

A more controversial aspect might be User Experience expectations. Expectations that might be broad, so as to define just usability goals. How fast can a brand new user understand how to use the system?

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj-Wrf9xUh57NvT6GInH5pgn6LE-qP4QyILEfn7ArnfxaScpotT2zC4B1_kdPZUF7yAxgXyE-HErqQE_VKFNREUZLI4QP2rU2baMTimliZvUyeDdHOxKsonGotZx5Cmf2CvWjH7pnMVLeG0/s1600/Slide3.PNGAll the non-standard stuff

From this combination of a minimal-useful FHIR workflow, environmental setting, and a set of policies; you can then fill the middle with some specific configurations of services. So you define a single Authentication service, choosing one OAuth service with a set of enforcement policies. You choose a consent management system, from the many being defined (FHIR Consent, UMA consent, paper consent, etc). You define an expectation of what security events would be recorded in an AuditEvent, would likely even include actor that does auditEvent reporting. You define response-time expectations.

A complete system... as a reference system... not as a 'best-practice'.

Doing the work
Back in January I proposed Document Sharing - ala MHD profile centric; which got shot down by HL7 leadership due to the fact I proposed it in the HSI workgroup. ... I failed, should have pursued a solution.  [HL7 Project Scope Statement 1231](http://www.hl7.org/Special/committees/hsi/projects.cfm?action=edit&ProjectNumber=1231)

Argonaught could do similar using their flavor of DAF.

CommonWell could do this.

Any organization that can take a two steps away from the standards definition could do this. It is not unlike what every HIE, Hospital, Clinic, and PHR must do. The difference is that you are explicitly defining it as a reference system; not as the ONLY system.

HEART can be used, but is, like FHIR, just one part of the system. HEART can't do it alone as they don't have the end-to-end workflow. They don't have the setting context. The HEART profiles would be something included in the reference system.

Focus on end-to-end system of systems
The hard part is that no-one will agree on these Setting and Policy choices. Yet, the specifics of the setting and policies are not important. What is important is setting someting reasonable so that the next stage can be set.

I hope I can participate...

