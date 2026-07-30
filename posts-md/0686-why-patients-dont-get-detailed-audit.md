# Why Patients Donâ€™t Get Detailed Audit Logs â€” And Why We Still Need to Record Them

Originally posted: https://healthcaresecprivacy.blogspot.com/2026/07/why-patients-dont-get-detailed-audit.html
Published: 2026-07-29T17:14:56.238Z
Updated: 2026-07-29T17:14:56.239Z
Author: John Moehrke

---

Healthcare generates an enormous amount of digital exhaust. Every lookup, every exchange, every routing hop, every systemâ€‘toâ€‘system handshake leaves behind an audit trail. Yet patients rarely see any of it â€” and, importantly, U.S. regulations do **not** require that they do.

This creates a paradox:
**Audit logs are essential for trust, accountability, and safety, but giving them directly to patients would overwhelm more than empower.**

In this article, Iâ€™ll unpack the regulatory reality, explain why audit logging still matters, and show how standards like **FHIR AuditEvent** and **IHE Basic Audit Log Patterns (BALP)** provide the foundation for meaningful transparency â€” including future patientâ€‘facing safety tools.

**Patients Donâ€™t Get Full Access Logs â€” And Thatâ€™s By Design**Letâ€™s start with the misconception:
**There is no U.S. regulation requiring healthcare organizations to give patients a detailed log of every access, use, or disclosure of their data. (Note that GDPR in the EU is far more actionable, so those in that region can skip to the next section)**

HIPAAâ€™s _Accounting of Disclosures_ sounds like it might do this, but it doesnâ€™t. It excludes:

- Treatment

- Payment

- Healthcare operations

- Most internal access

- Most external exchange

- Most analytics

- Most quality improvement

- Most care management

- Most research

- Anything with patient authorization

In other words, HIPAAâ€™s accounting requirement covers only a narrow slice of activity â€” mostly only the activity that the patient had to be directly involved in requesting or authorizing (explicit consent). Thus, this report is not all that useful.

**TEFCA Changes the Landscape â€” But Only Slightly**TEFCA introduces something new:
[QHINs must support patient access to a report of where their data was exchanged through TEFCA.](https://www.ecfr.gov/current/title-45/subtitle-A/subchapter-D/part-172/subpart-B/section-172.202)

This is meaningful, but limited:

- It applies only to TEFCA-governed exchange

- It reports _exchange_, not _use_

- It does not include internal access

- It does not include nonâ€‘TEFCA exchange

- It does not include analytics or operational uses

TEFCA is a step toward transparency, but not a full â€œdata use report.â€

**So Why Record Detailed Audit Logs If Patients Donâ€™t See Them?**Because audit logs serve **three critical purposes**:

**1. Regulatory Compliance (Even If Not Patient-Facing)**HIPAA, HITECH, TEFCA, CMS, and state laws all require organizations to maintain audit trails. Even if patients donâ€™t receive them, regulators may demand them.

**2. Security and Abuse Detection**Audit logs are the backbone of:

- Insider threat detection

- Account compromise detection

- Access pattern analysis

- Breach investigation

- Forensics

Without detailed logs, organizations cannot detect misuse or prove compliance.

**3. Future Patient-Facing Transparency Tools**Even though patients donâ€™t get raw logs, they **will** benefit from tools built on top of them.

This is where standards matter.

**FHIR AuditEvent + IHE BALP: The Foundation for Trustworthy Logging**[FHIR AuditEvent](https://hl7.org/fhir/R4/auditevent.html) provides a structured, interoperable way to record:

- Who accessed data

- What they accessed

- When

- From where

- Under what purpose

- Using what authentication

- Through what system

- With what outcome

[IHE Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) adds:

- Consistent patterns for common events

- Reusable structures

- Crossâ€‘system interoperability

- Guidance for routing audit logs

- Patterns for retention and disclosure

Together, they create a **uniform audit fabric** across systems â€” something TEFCA participants, QHINs, and EHR vendors can all rely on.

**Why Patients Shouldnâ€™t Receive Raw AuditEvent Logs**Even though AuditEvent is structured, it is still **machineâ€‘level detail**.

A typical AuditEvent entry might include:

- IP addresses

- OAuth token identifiers

- Systemâ€‘toâ€‘system routing metadata

- Internal user IDs

- Service account activity

- Background processes

- Automated system checks

- Batch operations

- Retry attempts

- Internal queue processing

Giving this directly to patients would create:

- **Information overload**

- **Misinterpretation** (â€œWhy did 17 different systems access my record at 2 AM?â€)

- **False alarms**

- **Support burden**

- **Privacy risks** (exposing internal system architecture and monkey business)

Patients need **meaning**, not **machine logs**.

**The Future: Patient Safety Apps That Watch Audit Logs for Them**The real opportunity is not patient access to raw logs â€” itâ€™s **patient access to insights derived from logs**.

Imagine an app that:

- Monitors AuditEvent streams

- Learns normal access patterns

- Detects anomalies

- Flags unusual access

- Alerts the patient only when something looks wrong

Examples:

- A provider in another state accessed your record

- A system account accessed your data outside normal hours

- A TEFCA participant requested your data for an unusual purpose

- A pattern suggests credential compromise

- A sudden spike in access suggests a breach

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhK1njUpw3CP75khWlfZQ1ldCRWACq62GXpwIW-82oloSwrkNVL1_0Vz7ytD8HVyLd54zPUo8N-m3hFYH3_8HRE2glfRnWicyTxzHq2iAFmnRgqF0hucOxtkl7zvWRgjmFJNp7klHjY9TpYdvHMCTwRYi5EC8N2zkqpWnB08fZvnUKfH9iHDtbsA526YKLw/s1536/Copilot_20260729_121132.png

This is **machine learning + audit logs + patient empowerment**.

Itâ€™s the same principle as fraud detection in banking:
You donâ€™t get a list of every transaction routing hop â€” you get an alert when something looks off.

**Conclusion: Logs Matter â€” Even When Patients Donâ€™t See Them**Patients donâ€™t get detailed access logs today, and regulations donâ€™t require it. But detailed audit logging is still essential â€” not for patient consumption, but for:

- Compliance

- Security

- Forensics

- TEFCA reporting

- Future patientâ€‘facing safety tools

FHIR AuditEvent and IHE BALP give us the technical foundation. TEFCA gives us the regulatory nudge. The next step is building **patientâ€‘friendly applications** that turn audit logs into **actionable safety signals**.

Thatâ€™s how we move from â€œaudit logging as complianceâ€ to **audit logging as patient protection**.

