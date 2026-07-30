# Healthcare Provider Discoverability and building Trust

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html
Published: 2010-11-01T15:40:00Z
Updated: 2010-11-01T15:40:44.851Z
Author: John Moehrke

---

The HIT Policy - Information Exchange Workgroup - [Provider Directory Task Forc](http://healthit.hhs.gov/blog/faca/index.php/2010/09/21/hit-policy-committee%E2%80%99s-information-exchange-workgroup-seeks-comments/)e - committee had a discussion today around  Provider Directory. It is still not clear to me what use-cases they are  trying to resolve. I have mentioned this in [Healthcare Provider Directories -- Let's be Careful](http://healthcaresecprivacy.blogspot.com/2010/10/healthcare-provider-directories-lets-be.html).  I think they need to identify the use-cases and then prioritize these  use-cases relative to how urgent it is that they solve these issues. For  example in the case of Lab, there are well established methods. But  there is a **urgent need in the case of Community or Cross-Community based Provider to Provider referrals**.  Specifically where there is not a pre-existing relationship. This ad  hoc need is more important than re-inventing where a solution is already  available.

There is lots of conflating the need to discover

-  an individual healthcare provider, with

-  a healthcare providing organizations, with

-  the Network Services of a healthcare providing organization.

Yes  these could all be considered needs driving the abstract need for a  Healthcare Provider Directory, but they are not all the same thing. If  we really want to expand the

**Discovering Healthcare Providers and Healthcare Services:**

IHE  has a Profile for Healthcare Provider Directory (HPD). This profile  does cover the first two groups of use-cases as outlined in **[Healthcare Provider Directories](http://healthcaresecprivacy.blogspot.com/2010/08/healthcare-provider-directories.html)**. This is the list of use-cases included in the IHE profile.

- **Yellow      Pages Lookup: **A  patient is referred to an      endocrinology specialist for an urgent  lab test. The referring physician      needs to get the contact data of  close-by endocrinologists in order to ask      whether one of them can  perform this test in their own lab. The patient      prefers a female  endocrinologist who can converse in Spanish regarding      medical  information.

- **Identification      in planning for events: **Emergency       response planning requires the identification of potential  providers who      can assist in an emergency. Providers must meet  specific credentialing      criteria and must be located within a  reasonable distance of the emergency      event.

- **Provider      Authorization and lookup during an emergency event: **During  Hurricane Katrina, health care volunteers were      turned away from  disaster sites because there was no means available to      verify their  credentials. At an emergency site, the Provider Information       Directory

- **Forwarding      of Referral Documents to a Hospital : **A       PCP refers a patient to the Hospital for admission. The PCP needs  to send      various documentation to the Hospital to be part of their  EHR when the      patient arrives. The PCP needs to identify the  Hospital's electronic      address such as email or service end point  where the patient's      documentation should be sent.

- **Keeping      agency provider information current: **A       German government agency dealing with healthcare services for its       constituents wishes to keep its agencies healthcare provider  information current.      The agency determines that it will use the  Provider Information Directory      to access the most current provider  information. The German agency only      requires a subset of the  Provider Information Directory available      information. On a regular  basis, the Provider Information Directory      provides to the agency a  list of the updated information needed.

- **Providing      Personal Health records to a new Primary Care Physician: **An  individual has changed health plans. As a result      that individual  must change his Primary Care Physician. The individual has      a  Personal Health Record and would like to provide that information to his       new Primary Care Physician. The individual needs to determine  where to      have the Personal Health Record transmitted to.

- **Certificate      Retrieval:**  National regulations in many      European countries require that an  electronically transmitted doctor's      letter be encrypted in a way  that only the identified receiver is able to      decrypt. In order to  encrypt the letter, the sender has to discover the      encryption  certificate of the receiver.

- **Language      Retrieval: **An  individual who only speaks      Italian requires healthcare services at  an Outpatient Clinic. That      individual would like to be able to  communicate with the Clinic personnel,      if at all possible. The  individual or his caregiver needs to determine      which clinic  supports Italian and provides the service that is required.

**Discovering Network Services:**

IHE  has another Profile under development for the third issue. This profile  is highly influenced by the experience from the NHIN Exchange project,  as well as many Health Information Exchanges. This profile is still  under development so there is not much I can point at. This profile will  not be using the same technology as the HPD, but will have appropriate  linkage between them. The profile has very different uses and very  different information needs. This profile will be constraining UDDI, as  that is the standard used for services to lookup other endpoints.

**Discovered, but not Trusted:**

However  just having a Directory entry does not mean you have trust. I often  hear people discussing the scenario where a doctor needs to send  something to someone else who they have never dealt with before. And in  this case they want the doctors system to automatically discover the  other system, attach securely, and communicate PHI to it. I don't find  this use-case to be very reasonable.  Even in the case where there is  regulatory oversight that all individuals found in the directory are  fully compliant to very strict requirements, far more strict than HIPAA.  This is because sending PHI to someone else is more than just assuring  that the endpoint is secure. There is also business relationships that  need to be built, including agreements by that endpoint to act on the  package.

This is true both of cases like NHIN Direct (The Direct Project), as well as Health Information Exchanges (**[Directed Exchange vs Publish/Discover Exchange](http://healthcaresecprivacy.blogspot.com/2010/10/directed-exchange-vs-publishdiscover.html)**).

NHIN  Direct might be less of a problem because their use-cases are primarily  manually controlled cases of delivering one package at a time, however  this limit could easy go away with automation. The "Trust" issue for  NHIN Direct is embedded in the [NHIN-Direct Privacy and Security Simplifying Assumptions](http://healthcaresecprivacy.blogspot.com/2010/05/nhin-direct-privacy-and-security.html).  Having these embedded in preconditions does not mean they are trivial  or easily automated. These are in preconditions because they are  actually hard and not easy to automate. I think that it is far more  normal that the Doctor will make phone calls prior to sending PHI, or  prior to asking for PHI to be sent. These phone calls are very critical  validation that the two parties do indeed intend to work together for  this Patient. These phone calls will likely result in at least a  gentlemen's agreement in not a fully signed agreement.

NHIN Exchange has an extensive process for '[onboarding](http://www.google.com/url?sa=t&source=web&cd=2&sqi=2&ved=0CB0QFjAB&url=http%3A%2F%2Fhealthit.hhs.gov%2Fportal%2Fserver.pt%2Fgateway%2FPTARGS_0_0_4228_1194_15497_43%2Fhttp%253B%2Fwci-pubcontent%2Fpublish%2Fonc%2Fpublic_communities%2Fk_o%2Fnhin%2Fresources%2Fresources_home_portlet%2Ffiles%2F20100513_nhin_validation_plan_v2_final.pdf&rct=j&q=nhin%20exchange%20onboarding&ei=9NvOTPLSPIKs8Abd-_jpAg&usg=AFQjCNH4CWYXOQI-OTZw9UjGEho4zyEFQw&cad=rja)'.  This is not a trivial process and covers many levels of checks and  balances. What is important to take away is that the process is not just  about the technology. The technology is used to enable the process. The  technology is used to certify that an organization has achieved  validation, and is also used to indicate that this validation has  expired or been revoked. Specifically the Digital Certificates used to  'secure' all communications are this technology. The issuance of a  Digital Certificate from the NHIN Exchange authorized "Certificate  Authority" is only achieved when the system has been validated against  the onboarding process. If ever that system is determined to be  compromised this certificate can be revoked. So, clearly technology  (Digital Certificates and Public Key Infrastructure) can be a critical  part of building trust. But this trust is built prior to technology  being engaged.

**Building trust is hard, and keeping trust is sometimes harder. Technology can help, but there is so much more to it.**

