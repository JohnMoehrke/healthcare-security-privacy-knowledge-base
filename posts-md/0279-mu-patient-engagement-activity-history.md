# MU Patient Engagement - Activity History Log

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/10/mu-patient-engagement-activity-history.html
Published: 2012-10-24T12:30:00.004Z
Updated: 2012-10-24T12:30:43.827Z
Author: John Moehrke

---

MU2 certification criteria will provide EHR technology that empowers the patient to see, online, an "activity history log" of when they themselves used the [View, Download, and Transmit function](http://healthcaresecprivacy.blogspot.com/2012/10/patient-portal-view-download-transmit.html). Not much, but a start. As clear as this criteria is in the MU2 regulation, I find it interesting how it can be misunderstood. This is one of the places where meeting the minimal criteria can be quite limiting. The limitation is architecturally the right stepping stone but I hope, as a patient myself, there is interest in going beyond the minimal criteria. We all must recognize that going beyond the minimum is not trivial.

The â€œActivity History Logâ€  is specific to patient engagement  "**Â§ 170.314 (e) Patient engagement. (1) View, download, and transmit to 3rd party."**

>
(ii) Activity history log. (A) When electronic health information is viewed, downloaded, or transmitted to a third-party using the capabilities included in paragraphs (e)(1)(i)(A) through (C) of this section, the following information must be recorded and made accessible to the patient:

(1) The action(s) (i.e., view, download, transmission) that occurred;

(2) The date and time each action occurred in accordance with the standard specified at Â§170.210(g); and

(3) The user who took the action.

(B) EHR technology presented for certification may demonstrate compliance with paragraph (e)(1)(ii)(A) of this section if it is also certified to the certification criterion adopted at Â§ 170.314(d)(2) and the information required to be recorded in paragraph (e)(1)(ii)(A) is accessible by the patient.

ONC is requiring only that the patient be given access to the audit events they-themselves caused in their-own actions related to View/Download/Transfer. The preamble text does clarify that this Activity History Log would also include any accesses by â€˜authorized representative', although never defining how that works. So the minimal 'activity history log' does not include the â€˜accounting of disclosuresâ€™, nor the restricted view of accounting of disclosures that the EHR technology is aware of, nor the privacy advocate bailiwick the â€˜all accesses to the EHR â€˜ â€“ aka Access Reportâ€¦.

The â€œActivity History Logâ€ is not access to all of the general security audit log â€œÂ§170.314(d)(3) Audit report(s)â€. This was the focus of a preamble comment on page 80.

>
This certification criterion does not require an EP, EH, or CAHâ€™s general EHR technology security audit log to be made available to patients online. However, the activity history log must be available online and readily accessible. We hope that the past two responses have helped clarify many scope-oriented points for these commenters because it was our proposal and our continued belief that the activity history log should be online and readily available for a patient (or their authorized representative) to review â€œon demand.â€

This preamble comment makes a clear distinction that the patient is only gaining access to the Activity History Log, and that does not mean the same thing as access to the whole Security Audit Log. The Security Audit Log will include all accesses to all patient data by all users along with many other security relevant events. This log is a very sensitive record. It shows not only [low grade patient information](http://healthcaresecprivacy.blogspot.com/2012/04/patient-data-in-audit-log.html), but more so shows [behaviors](http://healthcaresecprivacy.blogspot.com/2011/11/how-granular-does-ehr-security-audit.html)of the [workflows within the organization](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html) that the patient has no right or reason to see.

This does not mean that the Activity History Log canâ€™t be a â€˜viewâ€™ or â€˜reportâ€™ that is created from the Security Audit Log. Indeed this is [a likely way to create the Activity History Log](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)report that is made available to the patient.

The Preamble Page 79 says:

>
This aspect of the certification criterion was not intended to implement the Departmentâ€™s proposal to give individuals a right to receive an â€œaccess report.â€ However, given this confusion, we have decided to change the paragraph heading for this part of the certification criterion to state â€œactivity history log.â€ The purpose of this paragraph in the certification criterion is to simply require that EHR technology be able to monitor when a patient or their authorized representative(s) views, downloads, or transmits their health information to a third party. Those are the actions to which this paragraph referred in the proposed certification criterion. Put simply, this activity log is meant to assist a patient track the history of their actions or those of their authorized representatives.

**How big does the log need to be?**

Note the next paragraph is also important as it indicates that there is no minimal requirement for the age of the audit entries that must be supported. I suspect this statement has more to do with not setting expectations  that are hard to achieve. The HIPAA Accounting of Disclosures had to have complex statements on this to work through the initiation phase vs long-term goal. I certainly expect that the Activity History Log should go back at-least a year, and the HIPAA Accounting of Disclosures goal of 7 years will likely become the de-facto standard as we approach 7 years of use. This effectively means no-one will start to purge their Activity History Log until 7 years of activity.

>
The time period for which the activity history log should be available is a policy determination that should be made by the organization who implements EHR technology certified to this certification criterion. Thus, we decline to specify a particular retention period in this certification criterion. What is necessary for certification is that an EHR technology can demonstrate that it can properly create such a log. As noted in our response directly above, we intend for â€œuserâ€ in this context to be the patient and any authorized representative(s) to whom they have provided access to view, download, and/or transmit their health information to a third party.

**Conclusion:**

The minimum requirements for the Activity History Log:

- Only the Patient Engagement actions by the patient or their authorized representative

- Only their View, Download, or Transmit

- Must be made available online

- Format of the  log is not defined more than: Who, What, When

- Time period of age of the log is undefined

As minimal as this is, going beyond it is not trivial. Some thoughts on what more could be done. I just don't want to have this imply that these additions are easy.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLwV_fZyGsRWbzAUuVzCyzzB25Rp_KjNtmrmKJ8-aHiKQRYVOKyA2k2Fzn7aMpT6hZO6dA9NEnwy7cjRZUSnHzFbwr022RRhGOmG8ZT3Pn5RWkuPYEV8LeORTG3b2rAImJPigfHF7Bejna/s1600/Slide18.PNG

- Include the Accounting of Disclosures â€“ not likely because the definition of â€œAccounting of Disclosuresâ€  is inclusive of many things not handled by the EHR technology, including many things that are fully manual. Clearly using [ATNA](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html), and applications that can report disclosures outside of the EHR could be used. See my discussion on getting the [Accounting of Disclosures with ATNA](http://healthcaresecprivacy.blogspot.com/2009/11/atna-and-accounting-of-disclosures.html)

- Include the EHR mitigated Accounting of Disclosures â€“ this is harder than it seems as most of the reasons an EHR would be used to access the healthcare information are for the purpose of treatment, payment, or hospital operations; or fall into the exceptions. Thus there are not that many audit log events that rise to the level of being an Accounting of Disclosures. Determining which audit events qualify often requires manual processing.

- Include the Access Report â€“ technically possible, but likely uncomfortable to the healthcare provider business leadership. This concern includes employee privacy rights issues.

- The biggest problem with the Access Report is that patient data is accessed on many systems, not just the EHR. Thus one really needs a combined view across the whole organization. This is indeed what [IHE-ATNA provides.](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- Extend the time period to 7 years, as we approach 7 years of use.

- When the EHR is using more mature HIE technology, provide an activity history log of each time the patientsâ€™ health information is accessed through the HIE.

