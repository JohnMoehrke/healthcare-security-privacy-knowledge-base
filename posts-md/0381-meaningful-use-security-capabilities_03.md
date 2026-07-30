# Meaningful Use Security Capabilities for Engineers

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/08/meaningful-use-security-capabilities_03.html
Published: 2010-08-03T17:29:00Z
Updated: 2010-08-03T17:29:59.661Z
Author: John Moehrke

---

The Final Meaningful Use standards and certification are out. They are not the best written my comments and rants [that Meaningful Use Security Capabilities are Lacking, Privacy Capabilities NON-existent.](http://healthcaresecprivacy.blogspot.com/2010/08/meaningful-use-security-capabilities.html) Today I want to point out what the Meaningful Use Security and Privacy requirements are in language that EHR engineers can understand. What you are going to see is not exactly the minimal necessary for MU, but rather my recommendation relative to the specific items. This is similar to my  [Comments on the IFR Security/Privacy.](http://healthcaresecprivacy.blogspot.com/2010/02/securityprivacy-comments-on-ifr.html)

Meaningful Use does require that the deployment use Risk Analysis as the method to select the technologies that are actually used. What this means is that the operational environment will likely need capabilities well beyond anything mentioned in the standards and certification criteria. The good news is that the certification is going to focus less on these criteria. These criteria are, as I mentioned before, the typical ones found in the CCHIT and NIST SP 800-53 â€œRecommended Security Controls for Federal Information Systems and Organizationsâ€ ([http://csrc.nist.gov/publications/PubsSPs.html](http://csrc.nist.gov/publications/PubsSPs.html)).

The things that you are going to be tested against are the Meaningful Use Standards

Specific Requirements

- **Â§170.210 (a) - Encryption and decryption of electronic health information**

- FIPS 140-2 Annex A allows for 3DES or AES.

- Many  encryption solutions are provided by the platform (transparent  hard-drive encryption, encrypting USB-Memory, S/MIME or PGP email) or  network (VPN, IPSec). These solutions are very effective and do NOT require  that the EHR technology be aware of the technology. By placing an  encryption requirement on the EHR technology, they are proposing that  the EHR solution provider involve themselves in a way that removes  flexibility currently available to an operational environment.

- It appears that Data-At-Rest is expected to be in scope. Leverage built in Database encryption or Transparent Hard drive  encryption.

- Hopefully the EHR can specify a 'class of off-the-shelf hard drive encryption products' rather than having to specify a single one.

- Have the capability to cover all network communications that include PHI with Mutually-Authenticated-TLS as is the specification in IHE ATNA

- **Â§170.210 (b) Record actions related to electronic health information**

- **** Future certification should and likely will require the ATNA message/transport to those that  are representative of the transactions that cross the organizational  boarder (meaning they are subject to Meaningful Use).

- Today one must simply record the security audit events. The date, time, patient

identification, and user identification must be recorded when electronic health

information is created, modified, accessed, or deleted; and an indication of which

action(s) occurred and by whom must also be recorded.

- **Â§170.210 (c) Verification that electronic health information has not been altered in transit**

- See **Â§170.210 (a) - Encryption and decryption of electronic health information**

- **Â§170.210 (d) Record treatment, payment, and health care operations disclosures**

- Have the capability to record a 'disclosure' event. Meaning add a user interface specifically for doing nothing but capturing the event

- The date, time, patient identification, user identification, and a description of the disclosure must be recorded for disclosures for treatment, payment, and health care operations, as these terms are defined at 45 CFR 164.501.

and

- **Â§170.302 (o) Access control. Assign a unique name and/or number for identifying and tracking user identity and establish controls that permit only authorized users to access electronic health information. **

- Have the capability to differentiate a reasonable set of roles for your application workflows. Some applications will logically have many (doctor, nurse, dietition), while some specialized EHR or Modules will have few.

- Have the capability to differentiate the level of access these roles have. Again this is going to be highly dependent on the product type.

-  **Â§170.302 ****(p) Emergency access. Permit authorized users (who are authorized for emergency

situations) to access electronic health information during an emergency. **

- Note that 'emergency situations' is NOT the people scheduled to work in the Emergency Room.  This is normal Access Controls, as this is the normal workflow for these people

- An Emergency is a truely exceptional condition as defined in HIPAA. Your product may not actually have any of these.

- Some EHR may have a permission that can be assigned to individuals or roles that allows for 'Break-Glass'.

- **Â§170.302(q) Automatic log-off. Terminate an electronic session after a predetermined time of

inactivity. **

- I really hope they don't test to this criteria as written, as it is really counter to workflows that require continunity where a screen-blank functionality would be preferable to anyone.

- The point is the same point in HIPAA.. When the system detects that there is no user activity, then it is likely there is no human present and thus to prevent the currently displayed data from being exposed to the user something must be done.

- Do the right thing for your workflows.

- **Â§170.302 (r)  Audit log. **

- **(1)â€”Record actions. Record actions related to electronic health

information in accordance with the standard specified in Â§170.210(b).  **

- See above **Â§170.210 (a) - Encryption and decryption of electronic health information**** **

- **(2) Generate audit log. Enable a user to generate an audit log for a specific time period and to sort entries in the audit log according to any of the elements specified in the standard at Â§170.210(b). **

- I read 'generate audit log' as 'create a report from the audit log'.

- I am not sure all the elements are really that important to sort on.

- Have the capability to produce reports based on the audit log

- **Â§170.302 ****(s)  Integrity.  **

- **(1) Create a message digest in accordance with the standard specified in Â§170.210(c).  **

- See above **Â§170.210 (a) - Encryption and decryption of electronic health information**** **

- **(2) Verify in accordance with the standard specified in Â§170.210(c) upon receipt of

electronically exchanged health information that such information has not been

altered. **

- See above **Â§170.210 (a) - Encryption and decryption of electronic health information****  ****

**

- **(3) Detection. Detect the alteration of audit logs. **

- Audit Logs need to be protected against inappropriate modification or purging. Thus the Audit Logs need to be protected using the same level of access controls as any PHI** **

- **Â§170.302 ****(t)  Authentication. Verify that a person or entity seeking access to electronic health information is the one claimed and is authorized to access such information**.

- There is no guidance here, so have some User Authentication mechanism.

- I might stretch this item to indicate that this is why you must do Mutually-Authenticated TLS on the network as well.

- **Â§170.302 ****(u) General encryption. Encrypt and decrypt electronic health information in accordance with the standard specified in Â§170.210(a)(1), unless the Secretary determines that the use of such algorithm would pose a significant security risk for Certified EHR Technology. **

- I have nothing positive to say about this.. see** **[my rant on the Ugly](http://healthcaresecprivacy.blogspot.com/2010/08/meaningful-use-security-capabilities.html)

- **Â§170.302 **** (v) Encryption when exchanging electronic health information. Encrypt and decrypt electronic health information when exchanged in accordance with the standard specified in Â§170.210(a)(2). **

- See above **Â§170.210 (a) - Encryption and decryption of electronic health information****   ****

**

- **Â§170.302 ****(w) Optional. Accounting of disclosures. Record disclosures made for treatment, payment, and health care operations in accordance with the standard specified in Â§170.210(d). **

- See above **Â§170.210 (d) Record treatment, payment, and health care operations disclosures**

** **

Missing Requirements

If the certification requirements are to be complete set of functional  requirements, then there are many requirements missing. In the early  years of CCHIT I was co-chair of the Security Workgroup and lead CCHIT  effort to define a set of comprehensive yet reasonable requirements for a  secure Health IT system. These requirements have been very carefully  crafted to not interfere with healthcare workflows, implementations, or  the creativity of the EHR vendor.

In some cases these are requirements for specific documentation from the  vendor. This is a good way to support the communications between the  vendor and the operational environment. These documentation requirements  ultimately force the vendor to think beyond clinical functionality and  make declarations on security topics including such non-functional  aspects as hardening the system to network attack.

Without these additional requirements I am concerned that the IFR will  leave the false impression that a system certified to the criteria is  secure. If these additional requirements are not also included then I  would recommend that the security requirements be totally removed. The  Operational environment is already required to meet the HIPAA Security  requirements that are based on Risk Assessment and Mitigation. This is a  far more comprehensive and reasonable approach.

**** Privacy Consent

Totally absent is Privacy, not even opt-in or opt-out Consent. I think that [BPPC can and should be used to enable OPT-IN](http://healthcaresecprivacy.blogspot.com/2009/10/consumer-preferences-and-consumer.html)  in an XDS like RHIO (HIE/HIO). This is not to say that BPPC is the long  term solution, but without an OPT-IN ability we will get nowhere on  deploying the Health Internet. BPPC is 'good enough', and is a logical  path toward something more advanced. HL7 is already working on that more  advanced solution, and it is a logical extension to where BPPC is  today.

Although not required, I recommend that for HIE operations an EHR be capable of supporting [Stepping stones for Privacy Consent](http://healthcaresecprivacy.blogspot.com/2010/08/stepping-stones-for-privacy-consent.html)

**** ****

