# Trust and the PCAST model

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/03/trust-and-pcast-model.html
Published: 2011-03-26T20:27:00Z
Updated: 2011-03-26T20:27:47.105Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgPO8omzDCwTCr9OqrZ5oW0hp5rZG0xPzBeA9DsWlxY72IjDJo-3atKJ-HIGotPY8G2mCCw3avthMFqNerTrg3NTjXtXMxm8aQrQ0MFKi4uqDopjOgAf4wdf_eZOKgRPeOTHuXpDrjYUT7i/s1600/DEAS_security_arch.JPG
The final step of the PCAST security model overview has haunted me all week. Click on the diagram to see all the steps, but the final step is:

**10.  After use, system destroys the cleartext and key, possibly retaining the ciphertext.**

**

**

As explained this step is very typical of a DRM, where the proprietary software is what is being referred to in "system destroys the cleartext and key". It is only with a proprietary system that the DEAS can be sure that 'the system' will destroy the cleartext and key. This is why DRM systems often come on closed systems, or software that needs to be updated very frequently. Or why some systems have installed rootkits onto the unsuspecting host. This is all done to assure the DEAS that the system that is receiving the decryption key **will destroy the data after the specific use and discard the key**.

I will now bring up the medical record point I made, which is also hinted at in John [Halamka's Blog](http://geekdoctor.blogspot.com/2011/03/pcast-security-model.html):

> Also, it will be interesting to see if clinicians will accept the idea of saving data from healthcare information exchanges in encrypted form, since if the provider uses the information to make a clinical decision, they'll need to have that information in the health record as documentation supporting that action.
The individual making a clinical decision based on the information they have received have a requirement to maintain a copy of the data they used. Imagine a malicious patient, one seeking narcotics, they could have data available that clearly showed that they have a chronic condition that requires very strong pain killers. The doctor sees this, and prescribes the narcotics. If this doctor does not keep a readable copy of this evidence, imagine a time when that doctor is investigated for over-prescribing narcotics. Without the evidence this doctor can't justify his actions. Indeed the malicious patient could replace the data with normal data (Clearly this malicious patient is no-longer seeking drugs, but seeking damage to the doctor). These are the stuff of 'medical records retention'.

Another interesting aspect is how is this system to be used to transfer a legitimate and reusable copy from the Provider who wrote the Medical Summary to the Patient themselves? **Clearly the Patient needs to be able to take control of the object**. They must be allowed to republish or resend it as they need. So, somehow the system needs to allow the Patient to receive a usable plaintext copy. Or does this system presume that the original Medical Summary is wrapped in the Provider envelop and when republished by the patient also wrapped in the Patient envelop? I can see how this can be seen as useful from a control perspective, but from the perspective of failure-modes, this worries me.

**So, I predict that eventually step 10 will go away. **That Medical Records Retention requirements and Patient Empowerment will allow the receiving individual to keep a copy of the data.  Once we remove this step, I will ask what is left of this whole model. Once we are comfortable that the receiving individual is indeed a legitimate receiver of the data and can keep a copy, then why is all the complexity of the DEAS (aka DRM) kept? Through Policy we will determine that ultimately all transactions need to have Access Controls and Audit Controls applied. Once we apply access controls to all transactions then step 7, 8, part of 9, and 10 goes away, that is we remove the SINGLE-POINT-OF-FAILURE. See [Access Controls around the PCAST use-cases](http://healthcaresecprivacy.blogspot.com/2011/03/access-controls-around-pcast-use-cases.html)

Back to the PCAST security model steps:

1.   A user authenticates him/herself to the local system, within the context of an authorized role.

- Yes, the user must be authenticated to the local system. It is ultimately the local system that is used to integrate the HIE discovered information with the local information. This is true of an EHR or a PHR. So, the local system very likely has already sensitive information in it, and will eventually have more.

- See IHE EUA and PWP

2. On behalf of authenticated and authorized user and role, local server sends metadata search parameters to the Data Element Access Service (DEAS).

- Yes, this is a Record Location step

- See IHE XCPD, XCA, and XDS

- Context of transaction

- IHE XUA (SAML identity assertion)

- User Identity

- Role of user at requesting institution - normalized to HIE policies

- Method used for authentication - relating to level of assurance

- Purpose of Use - what is the requester of the transaction going to do with the data

- Consent identifier - pointer to consent/authorization that the requester believes is relevant

- etc

- IHE ATNA - Identity of the system requesting

- This is used to keep non-trusted systems out

3.  The DEAS mediates the request and searches metadata as permitted by privacy metadata within context of authorized role sent with query.  The transaction is recorded in audit trail.

- Privacy metadata - Each Document entry in XD* includes a

- Confidentiality Data Classification

- Author - or publisher of the data (including institution identity)

- Identity of the Patient that is the subject of the document

- Unique ID of the document (which might be called out in a privacy constraint - segmentation)

- type of document - from a clinical context, but related to privacy policies

- practice setting - specialty of the clinical organization that published it

- dates of service - in case the patient wants to block access to a specific time period

4.  The DEAS returns a data locator list (Uniform Resource Identifiers) resulting from metadata search.

- Typical XDS or XCA response.

5.  The Local server requests data from URIs returned from DEAS.

- Typical XDS or XCA Document Retrieve transactions - Request

- Transport secured by IHE ATNA - Mutually-Authenticated TLS

- This enables the Repository to REJECT any request from a non-trusted system

- User Identity is also provided in XDS or XCA

- This enables the Repositories to do additional Access Control checks and

- Audit logs to include user identity.

6.  The data storage location server mediates the request and returns encrypted records to local server.

- Typical XDS or XCA Document Retrieve transactions - Response

- Transport secured by IHE ATNA - Mutually-Authenticated TLS

- Yes, they are encrypted by TLS

- In theory IHE ATNA - Web-Services - End-to-End security can encrypt the result specifically for the user identified in the XUA assertion. This is simply not doe due to complexity and trust.

- In theory the Document it-self could be encrypted using some key management not yet thought of. This is being profiled this year by IHE.

7.  On behalf of an authenticated and authorized user and role, the server sends a DEAS request for encryption key for each data element provided.

8.  The DEAS mediates the request and retrieves the key as authorized from key management service.  The transaction is recorded in the audit trail.

9.  The DEAS returns  the key to local server, along with digitally signed privacy preferences

- Privacy preferences are encapsulated in IHE BPPC, and can be digitally signed by the IHE DSG profile (any document can be digitally signed by IHE DSG profile)

- The DEAS is not referring to the same method as IHE BPPC, but rather how the DRM content package includes the policy of the content, and any additional obligations can be conveyed by the key discovery method.

10.  After use, system destroys the cleartext and key, possibly retaining the ciphertext.

So, it is this point that I would like to start the discussion. What part of the holistic picture in the DEAS are security and privacy principles that we can compare with existing solutions? A Transparent analysis is needed.

