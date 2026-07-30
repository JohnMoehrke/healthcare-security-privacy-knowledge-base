# IHE-ATNA and HL7-FHIR.SecurityEvent -- recording a Disclosure

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/09/ihe-atna-and-hl7-fhirsecurityevent.html
Published: 2013-09-18T14:35:00.001Z
Updated: 2013-09-18T14:35:47.766Z
Author: John Moehrke

---

An [Accounting of Disclosures](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html) is a report that a Patient has the right to get. This report includes all the touches of their data that are outside some set of rules. In the USA these rules are defined in HIPAA, and mostly exclude just about everything. But, an Accounting of Disclosures is still a Right. I have covered the fact that an [Accounting of Disclosures is only informed by IHE-ATNA audit log](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html), mainly because few of the events that the rules say need to be recorded are mediated by Healthcare IT technology.

I am working on a FHIR application that one could use to record that a Disclosure has happened. This is defined in ASTM-2147, generally we need to know:

- Who did the disclosure,

- What patient was involved (multiple patients, would be done as multiple audit entries),

- what data was involved (multiple identifiable data would be multiple audit entries), and

- why was the disclosure done.

There is some other information that some circumstances would call for:

- Who is the custodian of the data (the official organization responsible), and

- Who authorized the release (if not the patient, or policy)

This brings up the question of how do I put this information into an I[HE-ATNA Audit Log message](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html). Well, the [IHE-XUA profile](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html) put a minimal pattern of this IHE-ATNA event for recording that a Disclosure happened. I will expand on it a bit here, and likely in a new Change Proposal. The [HL7 PASS Audit service](http://healthcaresecprivacy.blogspot.com/2010/08/pass-audit-ballot-pool-is-now-open.html) also defined this Disclosure event. So, much of what I am doing is just bringing things together.

Some Standards work still needed:
It appears that some new codes need to be created. It isn't very clear what is the best organization to do this, but I always like going back to the core standards organization simply to keep everything nicely together. So I would tend to go back to DICOM.

First, we need an EventTypeCode that indicates that this event was a confirmed "Disclosure", as distinct from Export" events that are need to be looked at to see if they are part of normal treatment workflows.

- EV(â€œDisclosureâ€, â€œHIPAAâ€, â€œPrivacy Disclosureâ€)

- EV(â€œDisclosureâ€, [http://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/xml/CFR-2007-title45-vol1-sec164-528.xml](http://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/xml/CFR-2007-title45-vol1-sec164-528.xml), â€œPrivacy Disclosureâ€)

- EV(â€œDisclosureâ€, â€œurn:lex:us:federal:codified.regulations:2010;34.cfr.345â€, â€œPrivacy Disclosureâ€)

- EV(â€œIHE0006â€, â€œIHEâ€, â€œPrivacy Disclosureâ€)

It is not clear if the rest of this is the right values. specifically the identity of the  custodian and the authorizing agent. I pulled values from the role vocabulary in ASTM-1986. I couldn't find these in ISO-21298. I don't have easy access to the roles in SNOMED.

There also appears to be other work that I have uncovered that needs clarifications in IHE-ATNA, DICOM, and now FHIR.

 ATNA - Accounting of a Disclosures audit message:



**Field Name**


**Opt**


**Value Constraints**



**Event**

**AuditMessage/
  EventIdentification**


EventID


M


EV(110106, DCM, â€œExportâ€)



EventActionCode


M


â€œRâ€ (Read)  for Export



_EventDateTime_


_M_


_not specialized_



_PurposeOfUse_


_M_


why was the data disclosed__



EventTypeCode


M


EV(â€œDisclosureâ€, â€œHIPAAâ€, â€œPrivacy Disclosureâ€)



**ActiveParticipant - Releasing Agent (1)**



**ActiveParticipant - Custodian (0..1)**



**ActiveParticipant - Authorizing Agent (0..1)**



**ActiveParticipant - Receiving Agent (1)**



**Audit Source (1)**



**ParticipantObject â€“ Patient(1)**



**ParticipantObject â€“ Data (Document) released(1)**






**Releasing Agent**

**AuditMessage/
  ActiveParticipant **


UserID


M


Identity of the human that initiated the Disclosure.



AlternativeUserID


_U_


_not specialized_



_UserName_


_U_


_not specialized_



UserIsRequestor


M


â€œtrueâ€



RoleIDCode


M


EV(110153, DCM, â€œSourceâ€)



NetworkAccessPointTypeCode


M


â€œ1â€ for machine (DNS) name, â€œ2â€ for IP address



NetworkAccessPointID


M


The machine name or IP address, as available



**Custodian **

**(if known)**

**AuditMessage/
  ActiveParticipant**


UserID


_U_


_not specialized_



_AlternativeUserID_


_U_


_not specialized_



_UserName_


_U_


_not specialized_



UserIsRequestor


M


â€œfalseâ€



RoleIDCode


M


EV("Health Records", ASTM1986, "Health Information Management")



_NetworkAccessPointTypeCode_


_NA_


_not specialized_



_NetworkAccessPointID_


_NA_


_not specialized_



**Authorizing Agent**

**(if known)**

**AuditMessage/
  ActiveParticipant**


UserID


_U_


_not specialized_



_AlternativeUserID_


_U_


_not specialized_



_UserName_


_U_


_not specialized_



UserIsRequestor


M


â€œfalseâ€



RoleIDCode


M


EV("Patient Advocate", ASTM1986, "Patient Advocate")



_NetworkAccessPointTypeCode_


_NA_


_not specialized_



_NetworkAccessPointID_


_NA_


_not specialized_



**Receiving Agent**

**AuditMessage/
  ActiveParticipant **


UserID


_U_


_not specialized_



AlternativeUserID


_U_


_not specialized_



_UserName_


_U_


_not specialized_



UserIsRequestor


M


â€œfalseâ€



RoleIDCode


M


EV(110152, DCM, â€œDestinationâ€)



NetworkAccessPointTypeCode


M


â€œ1â€ for machine (DNS) name, â€œ2â€ for IP address



NetworkAccessPointID


M


The machine name or IP address, as available



**Audit Source**

**AuditMessage/
  AuditSourceIdentification**


_AuditSourceID_


_U_


_not specialized._



_AuditEnterpriseSiteID_


_U_


_not specialized_



_AuditSourceTypeCode_


_U_


_not specialized_



**Patient      **

**(AuditMessage/
  ParticipantObjectIdentification)**


ParticipantObjectTypeCode


M


â€œ1â€ (Person)



ParticipantObjectTypeCodeRole


M


â€œ1â€ (Patient)**__**



_ParticipantObjectDataLifeCycle_


_U_


_not specialized_



ParticipantObjectIDTypeCode


M


EV(2, RFC-3881, â€œPatient Numberâ€)



_ParticipantObjectSensitivity_


_U_


_not specialized_



ParticipantObjectID


M


The patient ID in HL7 CX format.



_ParticipantObjectName_


_U_


_not specialized_



_ParticipantObjectQuery_


_U_


_not specialized_



_ParticipantObjectDetail_


_U_


_not specialized_



**Data (Document) Released**

**(AuditMessage/
  ParticipantObjectIdentification)**


ParticipantObjectTypeCode


M


â€œ2â€ (System)



ParticipantObjectTypeCodeRole


M


â€œ3â€ (report)**__**



_ParticipantObjectDataLifeCycle_


_U_


_not specialized_



ParticipantObjectIDTypeCode


M


EV(9, RFC-3881 , â€œReport Numberâ€)



_ParticipantObjectSensitivity_


_U_


_not specialized_



ParticipantObjectID


M


The value of _



_ParticipantObjectName_


_U_


_not specialized_



_ParticipantObjectQuery_


_U_


_not specialized_



_ParticipantObjectDetail_


_U_


_not specialized_




FHIR SecurityEvent - Disclosure
That is the complex and complete definition using the IHE-ATNA table. We now have a RESTful implementation of this in HL7 FHIR. So what does one of these look like in FHIR. The advantage, or disadvantage, of FHIR  is that it does allow you to cheat. Given that it has left constraints to profiles, such as IHE, it leaves almost everything optional. It further provides mechanisms for simple text to be used where  coded values are defined. Thus I can make a very simple FHIR message, that really doesn't carry the same meaning, but does get across the educational purpose. Note that I am still working on this, so will update this as I get it corrected.




























































































_








_






-








    -



    _





Conclusion

This is just how to record that a Disclosure has happened. I have yet to work out how a report can be made. I suspect this should be somewhat easy, especially with FHIR. I can just query on the SecurityEvent with the patient that I want to report on, looking for Export / Disclosure events. Then I just extract out the specific fields. More complex will be to handle someone being more complete with their Disclosure auditing.

The playing with this has uncovered a bunch of little things. It appears that I have uncovered there needs to be clarifications in IHE-ATNA, DICOM, and now FHIR.

