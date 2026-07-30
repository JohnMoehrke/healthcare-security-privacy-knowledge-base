# Tipping point in Health Interoperability Maturity 

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/08/tipping-point-in-health.html
Published: 2019-08-29T19:41:00.003Z
Updated: 2019-08-29T19:41:40.750Z
Author: John Moehrke

---

In the past two weeks I have been in large audience discussions where there is a very different kind of topic being discussed around Health Information Technology. The topic is about a vision of how things could/should be at the point of care** because of successful interoperability**. It is not explicitly said that way. These discussions are around better safety, better treatment, better efficiency, better outcomes, etc.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi-jH7aclguSBRNP9CJ0_FqnSI_StrKhwU1HlkJoUGSfuIH0axqob7t6ZmJQ_Q65y5lyDiJ2oBetYWcNk3HBwNzJt5jUvgKHGp2BcPRF9yvIEn-FGovpSOwYbq4jnzGHqZStWnxvJEzKre7/s1600/20190822_141439.jpg

Historically discussions in Health IT have been around very basic interoperability fundamentals. Things like basic security, basic medical data (Allergies, Problems, Medications, etc), basic medical summary, basic episode/discharge summary. These things have been the focus of the past 10 years. These things have been greatly supported by current Health Information Exchange (IHE Document Sharing using XDS/XCPD/XCA). These things are accelerated by FHIR and US-Core.

These existing Health IT Interoperability are supported by basic security and privacy models. Things like IHE ATNA, XUA, BPPC; as well as the FHIR solutions of SMART-on-FHIR. Everyone is so very comfortable with using Mutually-Authenticated-TLS, and Digital Certificates. There is an understanding of how to handle patient consent in the context of Treatment workflows (mostly a custodian side problem that is handled in-house of that custodian).

Maturity

These basic interop solutions are not without issues, but they are mature enough that there is a totally new discussion that is starting with "So, now that we have basic interop, what more can be done?"

These more discussions are happening around new PurposeOfUse beyond just Treatment. There are discussions around Payment centered Interop. There are discussions around Clinical Trials and Clinical Research (something that was done in the past but very expensively and very privately). There are discussions around the PATIENT themselves getting engaged through applications and services.

There are other domains outside core treatment that are getting engaged. Some of them are envisioning being actively engaged in the Health IT, like through a Care Plan. Some of them are looking to get away from purely paper, like EMS and Transport.

There is interest in extending Health IT out to various Directories for discovering specialty treatment organizations, focused practitioners, clinics with specific equipment, etc.

There is also an interest in a large number of measurement devices to contribute to information about the patient. These might be weight scales, pedometers, heart-rate, SPO2, blood-sugar, sleep-tracking, blood-pressure, etc. (This group is scaring many as it has the capacity to overwhelm the Clinician very quickly. I assert this is more of an opportunity than a threat).

There is now discussions around Patient Consent and Authorization for various uses beyond Treatment, or even to more privacy realistic rules within Treatment use-case. There are discussions around patient delegations. There are discussion around patient using portals and applications. There are discussions around making it possible for a patient to REMOVE authorization when they want. There is discussions around empowering the patient to know [how their data is being used](https://healthcaresecprivacy.blogspot.com/2019/06/patient-engagement-access-log.html), so that they can alert authorities when it is being used inappropriately and against their wishes.

Core Interop

Core interop is NOT done. There are plenty of further [enhancements](https://healthcaresecprivacy.blogspot.com/2019/08/fhir-scaling-to-nation.html).... My blog will always be focused down at the core, and I see no end in sight. But I do see great things that the core Interop have enabled, and that excites me.

Definition

The definition of Interoperability includes this tipping point. The definitions of Interoperability do not stop at getting bits communicated, they are all very careful that the definition of Interoperability always includes that the recipient use the data to improve outcomes.

Here is a [HIMSS published definition](https://www.himss.org/library/interoperability-standards/what-is-interoperability)

>
Interoperability is the ability of different information systems, devices or applications to connect, in a coordinated manner, within and across organizational boundaries to access, exchange and cooperatively use data amongst stakeholders, with the goal of optimizing the health of individuals and populations.

It has never been acceptable to just communicate bits. The whole purpose of Interoperability MUST be for some end goal. Interoperability is not the goal, it is a tool to get to various goals.

Note that previous definitions of Interoperability from HIMSS were even more focused on achieving outcomes and improving patient health and safety.

**
**

**It is very disappointing that ONC has a much more limited view on what Interoperability is. To them it is just getting bits to flow. This view is constrained by regulation text from 21st Century Cures Act. **

Here is [ONC definition](https://www.healthit.gov/topic/interoperability)

>
According to section 4003 of the 21st Century Cures Act, the term 'interoperability,' with respect to health information technology, means such health information technology thatâ€” "(A) enables the secure exchange of electronic health information with, and use of electronic health information from, other health information technology without special effort on the part of the user; "(B) allows for complete access, exchange, and use of all electronically accessible health information for authorized use under applicable State or Federal law; and "(C) does not constitute information blocking as defined in section 3022(a)."

I certainly hope that ONC updates their expectations. I think they have given the agenda at the ONC [3rd Interoperability Forum](https://www.healthit.gov/news/events/oncs-3rd-interoperability-forum) was very focused on thee higher level outcomes vs the low level means of Interoperability

Success
Success at building "core" Interoperability means that people can now dream about this second part of the definition of Interoperability, that is they can dream of "... optimizing health of individuals and populations".

