# My Testimony to the ONC API Task Force on Privacy and Security

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/01/my-testimony-to-onc-api-task-force-on.html
Published: 2016-01-29T04:43:00.001Z
Updated: 2016-01-29T04:43:39.784Z
Author: John Moehrke

---

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

I gave this verbal testimony to the ONC API Task Force on Privacy and Security today... On World Privacy Day.

I want to thank the [Task Force](https://www.healthit.gov/facas/health-it-policy-committee/hitpc-workgroups/api-task-force)â€ for inviting me to speak on behalf of GE Healthcare. I am also a co-chair of the HL7 Security workgroup, a member of the FHIR Management Group (FMG), the lead in [IHE-Mobile Health Documents (MHD)](http://wiki.ihe.net/index.php?title=Mobile_access_to_Health_Documents_%2528MHD%2529) , and active member and advocate of [HEART](https://openid.net/wg/heart/) .

I am pleased at the fantastic testimony this committee is receiving.

GE Healthcare is and has been a strong supporter of standards-based Interoperability, as it enables us to be a global healthcare solution provider. Any customization or specialization for any specific region or provider organization is effort that is counter to this standards-based approach.  I am glad to hear others express this same solution for their own various reasons.

GE Healthcare has had APIs as part of our systems for decades. Most of these are the bread-and-butter of any healthcare organization's network backbone, drawing on HL7 and DICOM, using IHE Profiles. Many of our IT products have had web friendly APIs for some time. We have a limited use of FHIR being used at a few pilot sites, limited more due to the developing nature of FHIR right now. All of these APIs, old and new, guide my testimony as RESTful APIs donâ€™t fundamentally change Privacy or Security, they do elevate the threat.

  We place no special qualifications upon our customers to gain access to the API or documentation.  Use of the API is restricted using Authentication and Authorization mechanisms.

  Privacy concerns mostly involve shared roles and responsibilities between healthcare provider organization and GE as the vendor providing the system. Given that GE doesnâ€™t have direct relationship with the patient, where the provider organization does have a relationship with the patient and controls the policies and use, the privacy concerns must fall to the provider organization. Given this reality, we do have a Privacy-By-Design approach built into our product development processes so that we build into our solutions Privacy enabling technology.

The main problem that we see is the very wide variation in security and privacy maturity of healthcare provider organizations. The very large organizations have mature capabilities and have policies, procedures and technology solutions available on which we can build a trust relationship. The vast majority of healthcare provider organizations, however, donâ€™t yet have the full range of these operational aspects. Add to this the variation and layers in legal and regulatory policy requirements.

Technology can be used to resolve Privacy and Security issues, but they must be used in a Policy domain. Policy issues focus on the roles and responsibilities for the various requirements regarding privacy and security operation: Identity Management, Authentication, Consent, Accountability, and Incident Management. These are types of Policy and Procedures that we often donâ€™t find at healthcare organizations.

- Patient Identities are an especially problematic area of identity management. With no controlled Patient Identity, privacy cannot be managed or assured. This challenge applies to data management, consent management, and patient access management.

- User Identities need to be managed by the healthcare provider organization. The healthcare provider organization must take responsibility for the functionality of User Provisioning, user De-Provisioning, Authentication, Account Recovery, Account Suspension, Account Deletion and Account Monitoring. Vendors and applications can leverage the use of standards like OpenID Connect using OAuth.

- Incident detection and response is often never even discussed. Sharing of responsibility, identifying and assigning specific roles and tasks is critical.

- APIs imply a more agile ability to hook applications to services. This brings up Policy, Procedure, and Technology questions around how we identify trustable applications, or trustable services; and how those trusts translate into technical trust with maintenance of that trust in a way that supports quickly recognizing broken trust and reacting appropriately.

Overall, the security and privacy challenges associated with APIs reflect and are a consequence of the wide variety of maturity of healthcare provider organizations in both policy and technology. The additional variations in regional policies add to this complexity. Complexity, uncertainty, and variability need to be controlled for Privacy and Security to be successfully achieved. These challenges clearly need effective and timely consideration given the current policy drivers to broad and deep API use in healthcare.

Thank you.

 My full written testimony is available along with the others at the [API Task Force site](https://www.healthit.gov/facas/calendar/2016/01/28/api-task-force-virtual-hearing)

One thing that got clarified in the comments is that I think we need to greatly constrain what we are trying to work on, so that we can make progress on something that helps many people. We then work on the next layer of complexity. Then the next layer of complexity. Josh asked me what I though this constrained use-case was. My answer is quite simple, access to Documents. A FHIR based API that gives the patient access to all the Documents they have available. This would leverage the IHE profiles (MHD, PIXm, PDQm, IUA, and consent). This is indeed small step, but it is one that would allow us to focus on User Identity, Patient Identity, Consent Authorization, and API access. It could scope out access by anyone other than the patient, a good second phase. It could scope out the patient directing the data to another location, which brings in trust issues. Focused, so that we can focus on the problems to be solved. Yet the focus is a useful thing, the focused thing gives us a Security and Privacy framework that can support other access, the focus that gives us a simple FHIR API to use, a focus that can also be an API to an XDS or XCA environment. Focused, but stepping stone.

Also I think I might have been misunderstood with the last question from Leslie Kelly Hall. I think she and the audience might have gotten the impression that I was against giving the patient access, transparency, and control. I was not against this. I emphasized this quickly at the end, but one never knows how that gets understood. The point I was making is that continued delay to make the perfect solution is delaying access by those that want access.  We should not restrict access to the many because a few (growing group) want to have fine grain controls on all uses of their data. I want to get the data, in full form, to the people. What they do with the data once they have it is up to them. I am very much involved in standards efforts to create a process for fine-grain control, however I am frustrated as anyone at how many people cant get a full copy of their data. I want stepping stones.

John

