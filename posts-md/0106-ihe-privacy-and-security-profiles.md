# IHE - Privacy and Security Profiles - Access Controls leveraging the Security/Privacy Profiles

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html
Published: 2011-08-10T13:00:00.015Z
Updated: 2012-12-31T04:14:10.273Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhKX6QD3-s53gertOF2MmMfpQ6QaUspTcDV1zs_peoxHhrl94ovg5O6ILBqHwQJ4Mkm0S0XIApqi1CfE1_mQcR09zMV5AFhdCZr1mhXHV5mPzMlq1kha7BJwYcnLtFYWF2SgryROi7b9EAC/s1600/Slide53.PNG

Access Controls utilize Interoperability profiles but are implemented functionally. This is why one does not find an Access Control profile from IHE. It is not because it is not important, but rather the solution is functional code that leverages the security and privacy context information provided to it by existing Interoperabilty Profiles. IHE does provide a very comprehensive [white paper on the topic of Access Controls](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf) and how they can be implemented.

Access Controls in environments like XDS and XCA would be federated, that is there would be multiple places where access is controlled that are distributed throughout the environment, and each leverages information from others and from trusted third parties. Access Controls use information from the 'security context', that is the context of the transaction. This context is also federated, not necessarily always centralized. Things in the security context are the user identity, their roles, the patient identity, the consents on file, metadata about the resource that is being accessed, and the reason for the access.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgadqhSobDiEztvSFCnqwEncUOGQFI6YnHMfPfeZxRVBeBJyQFzn0H7lSSWB1Nrd1rtffV6iP_WF5lwN58TJzQ_y5UwgTtjoy4yPaEP2jn9JfdsKu35B2xr3YDMIa7UoohxIeToK3INbpND/s1600/Slide54.PNG

This diagram shows this security context broken down into three possible domains and maps how to get these security context values using IHE profiles. There is a circle of trust, federation, between these different domains of context.

- Context Domain - information about the requesting environment

- Subject Domain - the user identity, roles, and purpose of the request

- Resource Domain - the 'thing' that is being requested and which patient it is about

An important part of Access Control is to determine who has access to what kind of resources. This is often shown in a 'truth table'. There can be multiple of these tables, where the table that is used could be controlled by the consent that is acknowledged.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiH5GA50mvdv6MFPeQF-a7V3AquzrW7dVWPe5TOzz4lxTBSU-f1q0ZEflfB-vg3ICCAGEtwxYE4E-M_3MMJMRoEeJ55nQsPgfByO6GQsgIPxBUaI6_bqzXZU0YM3_U42ERXv-KpuTUGSWEr/s1600/Slide65.PNG

This table shows a Role-Based-Access-Control map that might represent what is allowed if the patient has chosen an OPT-IN Patient Privacy Policy. The Rows are made up of example â€œFunctional Rolesâ€, these are roles that any user could be assigned to based on their job classification. The Columns are examples of â€œSensitivityâ€ classifications, and the HL7 confidentialityCode is shown that might be used for each. In the table an X indicates that the specific Role would have access to the kind of data classified with that Sensitivity or confidentialityCode.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjonfNgXYbQARavtP20CyvvpMWeyG1Eg_sTtBQY1XEFIyuehT8L2vxZreHyhjgo1wBxq7G2RHfP0BCpDXbXKxiQGQKWrfD7VsaoDT3zrGLKpkzPn7zNSKzrEbW3CO_oS3i4paNAoElvTXJw/s1600/Slide56.PNG

This is the same table as before, except this one shows what the table might look like if the Patient has chosen an OPT-OUT. In this case the table has an additional Permission that if a user holds this permission they are allowed to â€œbreak-glassâ€ and if they do that then access would be allowed. This allowance for break-glass is common where patient safety is a concern (e.g Life and Limb is at risk).

Note that there are far fewer X marks, indicating that only the Direct Care Provider is allowed access.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjMu3RGJgJCO6SDB90Au8YgXLeW0ZVVRuab7GHAae0TxERI1w2d1HabpLTsTL_WBr6G5HdNmrpJFK_sAvb4RJkpjOol3d4F4rtzER_MALsx1Rv-vI-o0yegI1jsK6SY3zRMa6MNKMTK2lnj/s1600/Slide57.PNG

This slide shows that IHE has not constrained where Access Controls are enforced, and have enabled that Access Controls can be enforced in many places.

**A) **This is the classic Access Control where the Requesting System (e.g. the system implementing the XDS Document Consumer) enforces all Access Controls. In this example the XDS Registry is only assuring that it is communicating with a system that it explicitly trusts (using ATNA Secure Communications). This assure that the XDS Registry is not accessed by rogue systems, but is only system level Authentication. This model is the most simple to build, especially if it is leveraging the Access Controls that might already be available in the Requesting System (e.g. EHR).

**B) **In this figure the Responding System (e.g XDS Registry) is enforcing the Access Controls. This is enabled by including the XUA identity assertion. This model can gain through having the Access Controls implemented in one place, thus saving on complexity and assuring consistency. This model however suffers in that it is much harder to handle use-cases where the context at the client is complex. Such as when there is a case that would normally be denied, but under emergency-mode would be authorized (i.e., Break-Glass).

**C) **The third figure is a more balanced environment. Where gross access controls are enforced at the Responding System (e.g. XDS Registry), and more fine-grained controls are enforced at the Requesting system (e.g. XDS Document Consumer)

It is often not recognized that in Healthcare, especially in cross-organizational transactions that the data communicated will be copied for future use. Thus what ever data is returned to the Requesting system (e.g. XDS Document Consumer) will likely be copied and thus future access control decisions to that copy are in the control of the Requesting system. Thus there is really an important consideration that the Requesting System have robust access controls.

Access Controls can actually take place in a trusted intermediary that is not a component of the Requesting or Responding system. This is a much more difficult system to deploy.

**Additional Comments **

- confidentialityCode - this is NOT a profile, but is a security/privacy concept built into almost all of the healthcare standards.

- Statement of the data security/privacy classification

- Would be used by access control decisions

- See: [Data Classification - a key vector enabling rich Security and Privacy controls.](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [HIE Security and Privacy through IHE](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_and_Privacy_of_HIE_2008-08-22-2.pdf)- Revised 2008-08-22

- [Access Control](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf) - Published 2009-09-28

- [IT security problems continue (Designing a Secure HIE)](http://healthcaresecprivacy.blogspot.com/2010/02/it-security-problems-continue.html) This is where I explain that point-to-point security doesn't scale and that a walled-garden approach using TLS may be a better starting point. (Yes, this is an old article that still is true today. We see in NHIN Direct something closer to the unconstrained point-to-point, or end-to-end. The solution being discussed is to restrict NHIN Direct endpoints to 'organizations', thus ending up with a smaller map but still quite the spider web)

- [Healthcare Access Controls standards landscape](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html)

**Back links**

This is part of a blog presentation of the IHE Privacy and Security Profiles Overview:

- [Introduction to IHE impact on Meaningful Use](http://healthcaresecprivacy.blogspot.com/2011/05/introduction-to-ihe-impact-on.html)

- [IHE - Privacy and Security Profiles - Introduction](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [IHE - Privacy and Security Profiles - Document Digital Signature](http://healthcaresecprivacy.blogspot.com/2011/06/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [IHE - Privacy and Security Profiles - Document Encryption](http://healthcaresecprivacy.blogspot.com/2012/12/ihe-privacy-and-security-profiles.html)

- [This Page](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [IHE - Privacy and Security Profiles - Miscellaneous](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

- [IHE - Privacy and Security Profiles - Conclusion](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_8344.html)

