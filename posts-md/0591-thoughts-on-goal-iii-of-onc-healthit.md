# Thoughts on Goal III of the ONC HealthIT Strategic Plan

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/03/thoughts-on-goal-iii-of-onc-healthit.html
Published: 2011-04-01T03:59:00Z
Updated: 2011-04-01T03:59:03.189Z
Author: John Moehrke

---

On Friday, March 25, ONC released the [Federal Healthcare IT Strategic Plan 2011-2015.](http://healthit.hhs.gov/portal/server.pt?open=512&objID=1211&parentname=CommunityPage&parentid=2&mode=2) I will constrain my observations to Goal III, as I think people like [Keith Boone](http://motorcycleguy.blogspot.com/)will have the others covered well.

Goal III: Inspire Confidence and Trust in Health IT

- This section is not large (7 pages), seems to want to say all the right things, but falls flat in a few places. I like the attention to openness and transparency, as these are the prime ways to get 'Confidence and Trust'. When things happen that can't be explained, people will loose trust. When things happen and no one is held accountable, people will loose trust.

- "Transparency" is said 8 times in these 7 pages. I like that, I want to see more transparency from HHS/ONC...

** III.A.  Protect confidentiality, integrity, and availability of health information** III.A.1 Promulgate appropriate and enforceable federal policies to protect the privacy and security of health information.
- This is a nice solid section. There are some specific items listed that are going to make the regulations better. More clarity, more specifics.

- I hope they do keep the regulations Risk based. Many people complain about the HIPAA Security rule being too vague and allowing items to be 'addressable'. This is a recognition that not all operational environments must implement the same technology, procedure, or physical controls. The HIPAA Security rule is primarily a Risk based rule, with guidance on the areas to be worried about. Risk models are always the best way to address Security.

III.A.2 Enforce existing federal privacy and security laws and maintain consistency with federal confidentiality, policy.

- An important tool to get better security and privacy is to increase the punishment for poor security and privacy violations. This is a huge win for Privacy and Security, nothing like a little punishment of your peers to get you to think more closely about your own house. The more open and transparent this is, the better. See: [USA healthcare breach notifications.](http://healthcaresecprivacy.blogspot.com/2010/03/look-into-hhs-posts-data-breach.html)

III.A.3 Encourage the incorporation of privacy and security functionality into health IT.

- I very much agree with the title. I very much disagree with the substance behind this title. There are many frameworks for Security capability/functionality. We do NOT need to invent a new one. We simply need to apply those that exist. I know that those in Healthcare think that healthcare data is so special, but from a security perspective it is not special. Re-invention comes with unintended [consequences](http://healthcaresecprivacy.blogspot.com/2010/10/meaningful-use-encryption-passing-tests.html). We should stop thinking we need to reinvent security for healthcare. I am frustrated at being involved in 6 re-inventions so far: HIPAA, NIST 800-53, CCHIT, EHR Functional Model, HITSP, and now Meaningful Use. See: [Meaningful Use Security Capabilities for Engineers](http://healthcaresecprivacy.blogspot.com/2010/08/meaningful-use-security-capabilities_03.html)

III.A.4 Identify health IT system security vulnerabilities and develop strategic solutions.

- My initial reaction to this was not printable. We really don't need ONC trying to analyze security vulnerabilities and defining how to fix them. I don't think that the spirit of this section is at the same scope as I was initially thinking (SQL injections, buffer overruns, cross-site scripting). I think what they mean is high level controls, such as identifying that we need to have a consistent way (policy, guidance) to address an emergency mode that exists when a natural disaster takes out the local infrastructure (Katrina, Fukushima).

III.A.5 Identify health IT privacy and security requirements and best practices, and communicate them through health IT programs.

- I am worried that the guidance they give will be too specific and not recognize risk based application.  For example: The guideline to encrypt everything, without a clear understanding of the scope and appropriate application in a risk assessed context has caused much unnecessary churn. Overall this vague guidance that doesn't recognize the scope and risks would be bad for Health IT.

**III.B.  Inform individuals of their rights and increase transparency regarding the uses of protected health information**

III.B.1 Inform individuals about their privacy and security rights and how their information may be used and shared.

- I welcome this. I think that patients are uninformed, and too often the lack of information [drives fear](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-privacy-why-are-patients.html). The hard part is that this is a tough audience. I have seen the marketing power of HHS/ONC in their current marketing of the [Direct Project](http://healthcaresecprivacy.blogspot.com/2010/11/direct-project-and-ihehimss.html).

III.B.2 Increase transparency regarding the development of policies and standards related to uses and sharing of protected health information.

- I agree transparency is critical to building trust

III.B.3 Require easy to understand reporting of breach notifications.

- I agree empowering patients to monitor what is happening to their data is a critical part of trust

**III.C.  Improve safety and effectiveness of health IT**

III.C.1 Provide implementation and best practice tools for the effective use of health IT.

> The short statement given sounds really good. But the text found in section III.C.1 is frightening. It is clear that they see the Vendor community as the problem. They speak over and over about helping avoid legal issues, avoiding workflow redesign, avoid ongoing maintenance and upgrades, and legal concerns related to vendor contract clauses. If this is happening, then I agree it needs to be fixed; but as a prime strategy and veiled in 'safety and effectiveness'? I work for a vendor, and I am poring out endless hours to make this Health IT vision happen. I think I can claim to be a leader and have many peers from GE that are creating this thing called Health IT. Is this the thanks I get?
III.C.2 Evaluate safety concerns and update approach to health IT safety.

- ONC has commissioned the Institute of Medicine (IOM) to conduct a formal study. Why is the IOM looked to on the topic of "Safety"? This seems like the domain of the FDA. I know this is a scary thing to many, but Safety is not rocket science. It is handled through Risk based methods with monitoring and remediation. I would like to see some openness and transparency here too.

III.C.3 Monitor patient safety issues related to health IT and address concerns.

- Monitoring patient safety is critical to achieving patient safety. Transparency to the process is critical to a system that can be trusted. Transparency is hard, so it must be carefully used.

- A second topic covered in this single paragraph topic is that of data integrity, data provenance, and data correction. These are prime use-cases for any data management system. They should not be relegated to a tiny minor component.

**Goal III: Measure**

Decrease the percentage of Americans who are very concerned about the security of electronic health records

- The most interesting part about this is that they are willing to admit that they have no idea what the current baseline is. I would suggest that they do actually have a good baseline in the current [HHS published Breach Notifications](http://healthcaresecprivacy.blogspot.com/2010/03/look-into-hhs-posts-data-breach.html). Is this sufficient, no; But it does exist.

