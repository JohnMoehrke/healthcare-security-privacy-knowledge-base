# electronic Privacy Consent -- Patient choice

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html
Published: 2016-03-02T17:39:00.002Z
Updated: 2016-03-02T19:06:11.561Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFgpC_TpQVi8EV9GMM2cc-52rMn8DSHSa1_MmA5N2LZwHhRwjUSkk1jVKvNDW8lJeHWsx4wpBaRiTr6vB63uzSE6wZnXGtuFTA7FqRw4Oga_5I4KE6meHHIxXXmQJfV0vvLpsQjT0xXBn5/s1600/tagged_duck.JPG

There are three efforts going on right now to develop a Privacy Consent systems. It might seem that three efforts are two too many, but I donâ€™t think so. It might seem that three efforts are thus in competition, but that is also not the case. These three efforts are focused on different parts of the Privacy Consent space, the proverbial â€˜elephantâ€™.  Let me explain why all three exist, and why that is not a problem.

The efforts are:

- [IHE](http://wiki.ihe.net/index.php?title=ITI_Technical_Committee)â€“ Privacy Consent for Document Sharing that supports patient specific exceptions, an advancement over their Basic Patient Privacy Consent (BPPC)

- [HL7 FHIR](http://fhir.hl7.org/) â€“ [Privacy Consent Directive Implementation Guide](http://hl7-fhir.github.io/pcd/pcd.html) that supports capturing a Privacy Consent using FHIR friendly mechanisms and leveraging the FHIR model

- [HEART](http://openid.net/wg/heart/)â€“ Cross functional effort of the communities from OpenID/OAuth/UMA and Healthcare  to leverage the User Managed Access (UMA) infrastructure to put the controls at the Patientâ€™s finger tips.

Patient Privacy Consent Domains of Influence
The main difference is the domain of the data each of these is looking to control, and thus the infrastructure they have to leverage.

- IHE -- they are focused on Document Sharing (XDS, XDR, XDM, MHD), where the atom that is being controlled are documents, the metadata that can be leveraged to do that control is the XDS metadata, the metadata describing the requester is the XUA (SAML) assertion. In the case of an XDS (MHD) there is an â€œXDS Affinity Domainâ€ concept to also bound the sharing.

- HL7 FHIR â€“ they are focused on the FHIR, where the atom being controlled are the FHIR Resources, the metadata that can be leveraged to do that control is the Resource header and related resources such as Provenance, the metadata describing the requester is less defined but is likely an OAuth token. The big problem is that FHIR as a core standard has no boundary, so there is no theoretical limiter on the domain of control.

- HEART â€“ they have just the opposite problem from FHIR, although they are mostly talking about FHIR as the data-model and access-model; they canâ€™t necessarily rely on FHIR Resource model, metadata model, or supporting Resources. However HEART has a strong set of Profiles on OpenID Connect, and OAuth. What they have the most strength in is User Managed Access, a profile on OAuth, that allows for user to identify access rules to the data that user controls (hence the name â€“ User Managed Access).  This means they have a control domain, that which is in the control of the Patient. Thus their system will work great once it is fed with the data, and once fed with the data the original author must not share through other means or it thwarts the Patients user managed access.

The similarity of all these efforts is that they are all looking to add fine-grain controls so that the Patient is enabled to control where and when their data is Created, Accessed, and Disclosed.  They are working on the same set of use-cases, mostly because the people involved are involved in all three efforts. Why write use-cases multiple times when they have already been written once.  Now their use-case descriptions are not perfect copies, we do customize them with flavor.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgoVqGChJJSmXmNyMB8BMnvCgKeDv_3P-g923J6Qo8eHiRB9AaHvFhQIyasmB7OhlBpaoKjW-NzHs0al1OG6BTYeQDeBBQg0gHUh2pUNlxQvKQifvhlkdCClf2qtBdrQiZfe84llgPkN8EA/s1600/Slide8.PNG
Privacy Consent Basics:
Basics â€“ The foundation that all of these are starting with is that there is some known set of policies that define basic behavior. This is all that BPPC could deal with, the patient picked the policy they agreed with from those that were offered. No deviation allowed. We now need to evolve past this.

Advanced Privacy Consent
So the policy can leverage the following kinds of metadata from the user and data. Having rules that specifically exclude data with specific values in these metadata elements, or specifically including in sharing.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjLN7PfHUwdEgVIlaSI2bs2wweuCNLUwOs9h2ojylFfQyoTDepTR9N0dcZHYyBGDevKgrQ2wzYUCDIjIcjlJ9H4dK60bb7RrVlFwDxjtyrrwP1L9dlyP4oxOBaii1ip1mZq-OHXfJYeqQbi/s1600/Document+Sharing+Metadata-760050.jpg

Data metadata

- Facility/Hospital/Organization

- Episode of care

- Location of care

- Diagnostic Order and results

- Publication date/time

- Identity of a Document/Resource

- Privacy/Security tags

Related to the User Context

- User Identity

- User Authentication strength

- User Role

- PurposeOfUse

- Organization user is from

Thus one could say: Allow All users at Organization W, to have information from Document X and Episode Y, but not information related to Order Z.

Privacy Consent Enabling Use-cases
Thus we support (this is not an exhaustive list)

- Organization focused Treatment scenarios (payment)

- Patient centric data management

- Research scenarios â€“ Patient directed and Organization requested

- Clinical Trials

- Precision Medicine

**Blog articles**

- [FHIR](http://healthcaresecprivacy.blogspot.com/p/topics.html#FHIR)

- [User Identity and Authentication](http://healthcaresecprivacy.blogspot.com/p/topics.html#UID)

- [Patient Privacy Controls](http://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

- [Access Control (including Consent Enforcement)](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC)

