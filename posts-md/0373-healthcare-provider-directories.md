# Healthcare Provider Directories

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/08/healthcare-provider-directories.html
Published: 2010-08-31T15:08:00Z
Updated: 2010-08-31T15:08:50.790Z
Author: John Moehrke

---

This is where all the buzz is right now. Although it would seem that this is a NHIN-Direct item; it is not. NHIN-Direct has been rather ignorant of these efforts. I have tried to get them to recognize the use of Provider Directories, especially related to distribution of the digital certificates that secure the communications. The Provider Directory should be a way to discover a Provider or Providing Organization; their address information including their NHIN Direct address; and the mechanisms to securely communicate including their NHIN Direct endpoint certificate.  There is still hope, and movement lately on the topic.

The Provider Directory is far more than a way to assist with NHIN Direct. The first reason to have a provider directory is for all the normal reasons to have a directory. Discovery of a type of healthcare provider in a geographic area.

IHE Has profiled this  [Healthcare Provider Directory (HPD)](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_HPD_Rev1-1_TI_2010-08-10.pdf) - Published 2010-08-10

This is the list of use-cases included in the IHE profile.

- **Yellow Pages Lookup: **A patient is referred to an endocrinology specialist for an urgent lab test. The referring physician needs to get the contact data of close-by endocrinologists in order to  ask whether one of them can perform this test in their own lab.  The patient prefers a female  endocrinologist who can converse in Spanish regarding medical information.

- **Identification in planning for events:  **Emergency response planning requires the identification of potential providers who can assist in an emergency.  Providers must meet specific credentialing criteria and must be located within a reasonable distance of the emergency event.

- **Provider Authorization and lookup during an emergency event: **During Hurricane Katrina, health care volunteers were turned away from disaster sites because there was no means available to verify their credentials.  At an emergency site, the Provider Information Directory

- **Forwarding of Referral Documents to a Hospital : **A PCP refers a patient to the Hospital for admission. The PCP needs to send various documentation to the Hospital to be part of their EHR when the patient arrives.  The PCP needs to identify the Hospitalâ€˜s electronic address such as email or service end point where the patientâ€˜s documentation should be sent.

- **Keeping agency provider information current: **A German government agency dealing with  healthcare services for its constituents wishes to keep its agencies healthcare provider information current. The agency determines that it will use the Provider Information Directory to access the most current provider information.  The German agency only requires a subset of the Provider Information Directory available information.  On a regular basis, the Provider Information Directory provides to the agency a list of the updated information needed.

- **Providing Personal Health records to a new Primary Care Physician: **An individual has changed health plans.  As a result that individual must change his Primary Care Physician.  The individual has a Personal Health Record and would like to provide that information to his new Primary Care Physician. The individual needs to determine where to have the Personal Health Record transmitted to.

- **Certificate Retrieval:** National regulations in many European countries require that an electronically transmitted doctorâ€˜s letter be encrypted in a way that only the identified receiver is able to decrypt. In order to encrypt the letter, the sender has to discover the encryption certificate of the receiver.

- **Language Retrieval: **An individual who only speaks Italian requires healthcare services at an  Outpatient Clinic.  That individual would like to be able to communicate with the Clinic personnel, if at all possible.  The individual or his caregiver needs to determine which clinic supports Italian and provides the service that is required.

