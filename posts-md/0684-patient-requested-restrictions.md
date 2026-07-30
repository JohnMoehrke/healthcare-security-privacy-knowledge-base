# Patient Requested Restrictions

Originally posted: https://healthcaresecprivacy.blogspot.com/2023/06/patient-requested-restrictions.html
Published: 2023-06-05T12:14:00.006Z
Updated: 2023-06-05T17:10:39.629Z
Author: John Moehrke

---

Many in the USA are reviewing and preparing comments on [HTI-1](https://www.healthit.gov/topic/laws-regulation-and-policy/health-data-technology-and-interoperability-certification-program). I used to do this top to bottom, but don't really have a work driver to base my comments upon. So I now end up reviewing and commenting on very targeted sections.

As part of my advisory position on [SHIFT](https://www.linkedin.com/in/shiftinterop/)

> Shift (formerly Protecting Privacy to Promote Interoperability PP2PI) was founded in 2018 and formalized in 2020 with a mission to advance safe, equitable, and patient-empowered sharing of health information. To this end, the task force has gathered expert stakeholders across the industry with the purpose of maturing granular data segmentation standards and implementation guidance in order to sponsor patient-driven sharing of health information with informed consent and advance interoperability in a more equitable manner. Shiftâ€™s vision is to further a health care ecosystem in which better standards for clinical data sharing increase trust between patients, providers, and caregivers to improve quality of care and health equity.
I am reviewing "Â§ 170.315(d)(14) - Patient Requested Restrictions Certification Criterion" and providing comments. The total things said in HTI-1 is

> (14) Patient requested restrictions.

(i) For any data expressed in the standards in Â§ 170.213, enable a user to flag whether such data needs to be restricted from being subsequently used or disclosed as set forth in 45 CFR Â§ 164.522; and

(ii) Prevent any data flagged pursuant to paragraph (d)(14)(i) of this section from being included in a use or disclosure.

>
>

I have provided comments to SHIFT, and what they include is up to that organization. The following is purely my words.

First, I am very glad to see advancements in Patient ability to request and get the restrictions they desire. The state of the art in the USA is that Patients have next to nothing resembling Privacy Consent, all while their data are flowing to places that Patient would never imagine their data flowing.However, I think that a regulation should focus on outcomes, not how to achieve those outcomes. Meaning the text in the regulation should be expressing the kinds of patient requested restrictions that must be allowed, and not expressing that a "flag" on data should be used. Why do I express this? Because systems design is very specific to the current systems design. Tagging all of the data in an EHR is non trivial, and there is not good advice on how to do that well, say nothing of how to do it without fail.

However, if we had expressions of the kinds of restrictions that are needed by Patients and express these in a prioritized listing; then creative systems designs can be done to achieve those goals. Some may choose to use data "flags", but some may find that their data already have attributes that they could leverage.

I have been working on a new Implementation Guide from IHE on this topic - [Patient Consent on FHIR (PCF)](https://profiles.ihe.net/ITI/PCF/1.0.0-comment/). And within that specification there is a set of steppingstones: Basic, Intermediate, and Advanced. The Basic is not easy, but is also not hard given many possible designs, and it is what is necessary to build both the Intermediate and Advanced alternatives. Advanced is using security sensitivity tagging, and is what is most of the time referred to as "Data Segmentation for Privacy (DS4P)". One can go directly to Advanced, and not implement the Intermediate. Intermediate is a set of use-cases that are high-value privacy consent needs, that do NOT require data to have security sensitivity tagging.

So, I would prefer that ONC change their (i) and (ii) clause to be expressing use-cases in terms of the resulting behavior and eliminate wording about how one must achieve that behavior.

I would be happy if ONC recognized the [IHE-PCF](https://profiles.ihe.net/ITI/PCF/1.0.0-comment/), but it is just in Public-Comment right now, and thus is not ready to be referenced yet. It should be by the time they finish their comments.

 Preferences vs ConsentAnother read of the HTI-1 is that there around the definitions in HIPAA for Patient Requested Restrictions and a healthcare organizations requirements under medical records retention and safety. HIPAA is very careful to give the right to patients to Request Restrictions, but then indicates clearly that the healthcare organization (Covered Entity) is not compelled to accept the restriction request. This has been used to keep the current status Quo where no restrictions are supported. I read the new ONC text to express a need to accept some of these restrictions. As I indicated above, if that was more clearly defined as to the kinds of restrictions that must be implemented, then it would be far more clear what is needed to be done here.

Some other people have read the ONC text to demand that the healthcare organization must accept all restrictions without limits and without human intervention. I can understand this read, but I certainly hope it was not the intended read.

I have been working to express the distinction between the Patient Request, and the rules that an organization agrees to enforce. Where the Patient Request is referred to as "Privacy Preferences". Privacy Preferences would not be constrained by what is possible to constrain, although they might be in a structured and coded format. These Privacy Preferences could be taken as input to a workflow on Privacy Consent with an organization. The Organization here has responsibility to maintain the data, such as a treatment organization. The Organization has regulated responsibilities, like Medical Records Retention and Medical Safety. Thus the Organization has some limits on what they can restrict. The result is a Privacy Consent, where a Privacy Consent is a binding agreement between the Patient (or their delegate) and the Organization(s) holding data.  The following diagram is in the [IHE-PCF Appendix P](https://profiles.ihe.net/ITI/PCF/1.0.0-comment/ch-P.html)

https://blogger.googleusercontent.com/img/a/AVvXsEgRccKFEM4Gt-7CAHervrGmuSKpOGKupyCGmYHiL1GYd8dBX9lkQEiDqphcs37ZEXJxECL221Jk6HQruh9di4e9T3L4cbAG-sLixQSGv0wZwMfxgjMHLTEbHn_8lZAoWpUxb1rMB96AjNsb743gKt-gnzZvNg-PMy5nouO6rTR8J1LFmIAbQ5nqNCliRg

ConclusionThere is so much more in the [IHE-PCF](https://profiles.ihe.net/ITI/PCF/1.0.0-comment/index.html)that I can't cover here. The maturity of this specification would likely put it outside the window of what the ONC could reference, however the fact that it is in development should be seen as a positive move toward a future that has this kind of support. The real request to ONC is to change the wording of the requirements to not include "how" one achieves support for Patient Requested Restrictions, but rather itemizes the high value use-cases and the outcome of a system that supports those use-cases. This focus on "outcomes" and less on "how" will result in the solution sooner rather than later.

