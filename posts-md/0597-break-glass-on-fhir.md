# Break-Glass on FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir.html
Published: 2015-12-21T19:57:00.001Z
Updated: 2015-12-21T19:57:29.853Z
Author: John Moehrke

---

https://c1.staticflickr.com/5/4004/4393298503_f183db3865_z.jpg


  Normal
  0




  false
  false
  false

  EN-US
  X-NONE
  X-NONE





































































































































































 /* Style Definitions */
 table.MsoNormalTable
 {mso-style-name:"Table Normal";
 mso-tstyle-rowband-size:0;
 mso-tstyle-colband-size:0;
 mso-style-noshow:yes;
 mso-style-priority:99;
 mso-style-parent:"";
 mso-padding-alt:0in 5.4pt 0in 5.4pt;
 mso-para-margin:0in;
 mso-para-margin-bottom:.0001pt;
 mso-pagination:widow-orphan;
 font-size:11.0pt;
 font-family:"Calibri","sans-serif";
 mso-ascii-font-family:Calibri;
 mso-ascii-theme-font:minor-latin;
 mso-hansi-font-family:Calibri;
 mso-hansi-theme-font:minor-latin;
 mso-bidi-font-family:"Times New Roman";
 mso-bidi-theme-font:minor-bidi;}

Break-Glass is the term used for an exceptional case where a treating clinician is allowed to see information that the patient has asked be blinded. Recognize that break-glass is not an universally accepted use-case.  Break-glass is specific to protecting safety of the patient or care-giver during treatment.

The first condition that leads to break-glass is that the Patient is given the ability to restrict access to some or all of their data for â€˜treatmentâ€™ use-cases (PurposeOfUse==Treatment), and that patient has authorized â€˜break-glassâ€™. We clearly want to enable this use-case, and it is part of our current Privacy Consent Directive IG.  [http://hl7-fhir.github.io/pcd/pcd.html](http://hl7-fhir.github.io/pcd/pcd.html)  (A work in progress, [http://wiki.hl7.org/index.php?title=HL7_FHIR_Consent_Directive_Project](http://wiki.hl7.org/index.php?title=HL7_FHIR_Consent_Directive_Project). Note we are not limiting ourselves to treatment Privacy Consent, just havenâ€™t gotten that far yet). The patient might have included in their â€œConsentâ€ clauses that restrict this authorization (only specific individuals, only specific conditions, only at specific locations, not a specific individual, etc).

So given the context of the user request (who, what, where, when, why), we check the patients Privacy Consents on file (or defaulted into), to determine if there is anything needing to be blinded. If there is nothing that needs to be blinded, then no need for break-glass. This is most often because the consent doesnâ€™t have any restrictions for treatment.â€“ thus nothing special needed in the response to enable break-glass.

At this point we recognize that there is information that the Consent would have us  blind from the user given the context of the request (who, what, where, when, why). So the next part is to determine if this user would be able to declare break-glass. Recognize that not all â€˜usersâ€™ should be allowed to declare break-glass. This might simply be that licensed clinicians at the organization are authorized to declare break-glass, or might be only a subset of clinicians. So in addition to the normal Role-Based-Access-Control, there would be an additional â€˜permissionâ€™ that would be necessary for a user to be able to declare break-glass. Thus lacking this  permission, the FHIR Server would silently blind the user to any data that is restricted by Consent. â€“ thus nothing special needed in the response to enable break-glass.

It is also possible at this point that what the clinician is doing is not a use-case that would call for break-glass. I don't have example handy, but this is related to the reasons why break-glass is not universally accepted as necessary or even useful. There have been cases where break-glass was supported, but
they removed it because they found clinical practice was impeded by
clinicians obsessing over the information that was blinded from their
access, ultimately they chose to not tell clinicianâ€™s that information was blinded.

So, by this point we know there this is a use-case where break-glass applies, the patient has authorized break-glass, there is a need to blind some information from this user, and that the user does possess the permission to declare break-glass; so it is only now that we need to do something special. We have  two cases that need some special handling:

- How do we know that the user has declared break-glass?

- How do we tell them that there is further information they could get if they declared break-glass?

No clear solution, although I could follow up in a smaller audience with some potential solutions using tags, parameters, oauth scope, UMA, alternate transactions, redirection workflow, etc. I encourage discussion, and experimentation. I might blog further on these potential solutions.

Any time break-glass is invoked the Audit Log must show this, as use of break-glass permission should be followed up  by the Safety and Privacy officials to determine that it was appropriate.

Topics

- [Patient Privacy Controls](http://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

- [Access Control (including Consent Enforcement)](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC)

- [Audit Control](http://healthcaresecprivacy.blogspot.com/p/topics.html#Audit)

