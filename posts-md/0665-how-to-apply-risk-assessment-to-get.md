# How to apply Risk Assessment to get your Security and Privacy and Security requirements

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/how-to-apply-risk-assessment-to-get.html
Published: 2012-03-20T17:53:00.001Z
Updated: 2012-03-20T17:53:47.378Z
Author: John Moehrke

---

Often times I am asked for a set of security and privacy requirements. My response is that there is no set security and privacy requirements, that a Risk Assessment approach is the proper way. This leads to a discussion about how to do a Risk Assessment. This article is simply a short article on how to apply Risk Assessment. There are books written on the topic, there are consultants that only do risk assessments, there are many tools. This a simple concept, but is not easy to apply. However getting started is the most important part, things do really fall right out. So you need to just get it started.

The problem with a set of security or privacy requirements is that they are prescriptive, and that they are written to cover a whole range of products. Thus they tend to not be sufficient to fully address the security and privacy problem, while at the same time being too much.

Security is best done through use of a Risk Assessment that is focused on security and privacy risks. That is one looks at the problems, not at the solutions. The solutions are applied carefully to address the problems in a priority way. That priority comes from the assessment of the risk. In this way we apply just enough technology to address real-world needs. We stay away from applying technology purely because it is cool technology. We stay away from worrying about risks that are not a true priority.

Note this same system works for small organizations, large organizations, small systems, large systems. It works quite well with mobile health devices.

**Risk Assessment as a flow**

I have cast this same material formally for doing security and privacy risk assessments in HL7 and IHE;

- [How to Write Secure Interoperability Standards](http://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html)

- [IHE, Cookbook for Security Considerations in IHE Profiles](http://wiki.ihe.net/index.php?title=Security_Considerations_Cookbook)

- [HL7, Cookbook for Security Considerations in Standards](http://wiki.hl7.org/index.php?title=Cookbook_for_Security_Considerations)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj9KFXBTWkLok5jmOVM-XDyl6HXpRsNXI7p4LaySUDx80UyRN5k2K-ECVQO8wbfVXULSBewcyj84CeICF7iPOFzgAjuTWyF-gIz6AuyUVcza0q_U6AqoxkL3Tn2mot0aH8g_WbZkFWfb8lj/s1600/Slide8-779856.PNG

where the risk assessment scope is the specific standard that a group is working on. With the risk mitigation to be designed into the standard, usually with emphasis on the "Security Considerations" section. This section allows the reader to see the controls recommended as well as important risks that are not addressed in the standard.

This has also been cast in IEC-80001 for doing a risk assessment when attaching a Medical Device to a network. It recognizes that the Medical Device should have clear controls applied to clear risks, and indicate risks that might flow into the operational risk assessment. Thus the operational environment can pick up from those controls and risks identified by the Medical Device product developer.

- [IEC 80001 - Risk Assessment to be used when putting a Medical Device onto a Network](http://healthcaresecprivacy.blogspot.com/2010/11/iec-80001-risk-assessment-to-be-used.html)

- [More Webinars on Basics of IEC 80001](http://healthcaresecprivacy.blogspot.com/2011/10/more-webinars-on-basics-of-iec-80001.html)

- [IEC 80001 - Security Technical Report presentation](http://healthcaresecprivacy.blogspot.com/2011/10/iec-80001-security-technical-report.html)

The point is that risk assessment is something that flows from one level of design to another.

**How to do it**

The best document that I have found is a document by NIST [SP 800-30 Risk Management Guide for. Information Technology](http://csrc.nist.gov/publications/nistpubs/800-30/sp800-30.pdf). It is an old document, but the concepts have not changed much. There is a draft revision going on, so you might also find it useful "DRAFT Guide for Conducting Risk Assessments"

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjpyFjO-TvEVxr6vLF5hGzqHHsLLnUmywqPaaxzntwYNRLdqMfrPFzxoB_-5jXlJSISnbkMDziY93HUF-H9Yl5mDxEkTJq4t2MwOh8SHn-QtG48ez5HjEL1eEbJYMG0rSchRZ4WZ_8pgftf/s1600/Slide15-776864.PNG[SP800-30-Rev1-ipd.pdf](http://csrc.nist.gov/publications/PubsDrafts.html#SP-800-30-Rev.%201).  There are many documents on risk assessment, or even risk assessment applied to security. See the References below for a long list. I like the NIST publication because it is clear and clean.

You will need some spreadsheet that you can use to identify the risks and do the analysis. If you have a spreadsheet that is used for some other risk domain, it is likely re-usable in this domain. You might have a risk assessment spreadsheet for "Patient Safety". There are suggestions in NIST 800-30, there are suggestions in the References below. Use what you are use to using.

Given the sections in NIST 800-30:

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjTB-200IPCXHZv6iXsRK_FrOGO-x4whUHek5NIbT29eWWE9Sg2jebdAFdxR3rZaQRVMtm4r-zxCK7-1p0wbbGjwRJXojRBdGlHdfza58W-t_2QKUQEIh7ckzmPo9PJknnd2b06P-7g82s7/s1600/Slide4.PNG

- Table 2-1 helps the group understand that risk assessments are done at many levels, not just once. This is this is indeed the concept of doing risk assessments for standards, for medical devices, and again for network integration.

- Figure 3-1 shows the process of doing the security risk assessment. YES it is a long process, but it is a simple process once you have done it once. The same process is really just a formalization of something everyone does naturally when they assess if they should cross the street

- Table 3-1 recognize that there are many different motivations. Yes we need to worry about all of these, but don't get yourself wrapped around any one too tightly.

- Table 3-2 security risks are made up of pairs of vulnerabilities and threats that use them. The table is often not this simple, but you should get the picture.

- Don't spend too much time reading section 3.3â€¦ brain storm is the best approach. If the brain storming doesn't satisfy people, then bring in some of section 3.3. Most of the time a reasonably experienced group will come up with a good set of risks.

- section 3.3.1 tries to help you gather sources of documented vulnerabilities that likely already exist. Since you are starting fresh, this may not be that useful.

- section 3.3.2 -- Determine what are the Vulnerabilities of the system

- table 3-3 this is where we recognize that not everything is caused by technology

- THIS IS NOT DOCUMENTED IN NIST 800-30 because it is healthcare specificâ€¦ if a risk looks, smells, tastes, or feels like a patient safety riskâ€¦ do NOT continue to assess it in the security risk assessmentâ€¦ MOVE it to a patient safety risk assessment. ALSO patient safety mitigation must be examined to see that they have not introduced security risks that can't be mitigated.

- Section 4  you have some options to handle these prioritized risksâ€¦This section is worth quickly looking at, it should seem familiar.

- there needs to be a management defined threshold for which you don't worry about the risks. This is usually where everyone fails to set thresholds up-front, thus causing unnecessary analysis and resource utilization.  Often times it is simply a statement of lowering the risk to as low as 'reasonably possible'. Where 'reason' is used.

- Section 4.4.1 is useful to look at. It reminds us that there are supportive controls, preventative controls, and detection controls.

- Don't forget to use the cost-benefit analysis. This is where we get concerned that the fix needs to be reasonable given the pain.

- Residual Risk -- there is some risk that can't be controlled. Risk is never brought totally to zero. Usually these risks flow down, ultimately at some operational level these residual risks get covered with Insurance.

- Appendix A might help the brainstorming sessionâ€¦

- Appendix C -- an option for a spreadsheet.

http://draft.blogger.com/blogger.g?blogID=4201874739367831894**Source of Risks**

A good source of things to worry about can be found in documents called Protection Profiles. A protection profile is a way of documenting the requirements for a product of a specific category. The following is a good one for our medical information systems to follow. [Protection Profile for Single-level Operating Systems in Environments Requiring Medium Robustness](http://www.niap-ccevs.org/pp/pp_os_sl_mr2.0_v1.91.pdf)

http://draft.blogger.com/blogger.g?blogID=4201874739367831894 **References**

- JOKE: The Security Risk Assessment formalization should NOT use a tool like [http://www.crypto.com/bingo/pr](http://www.crypto.com/bingo/pr)

- IEC 60812 Ed. 1.0: Analysis Techniques for System Reliability - Procedure for Failure Mode and Effects Analysis (FMEA)

- NIST SP 800-30: Risk Management Guide for Information Technology Systems [http://csrc.nist.gov/publications/nistpubs/800-30/sp800-30.pdf](http://csrc.nist.gov/publications/nistpubs/800-30/sp800-30.pdf)

- NIST DRAFT Guide for Conducting Risk Assessments [SP800-30-Rev1-ipd.pdf](http://csrc.nist.gov/publications/PubsDrafts.html#SP-800-30-Rev.%201).

- ISO 14971:2000: Application of risk management to medical devices

- ISO 17799 (2000) Information Technology - Code of practice for information security management

- MIL-STD-1629A, Procedures for Performing a Failure Mode Effects and Criticality Analysis, November 24, 1980 Australian Standard AS4360:2004 Risk management

- Operationally Critical Threat, Asset, and Vulnerability Evaluation (OCTAVE) Framework

- Wikipedia: Risk Management [http://en.wikipedia.org/wiki/Risk_management](http://en.wikipedia.org/wiki/Risk_management)

- OODA: Observe Orient Decide Act

- IEC 61025 Fault Tree Analysis

- IEC 61882 HAZOP Application Guide

- Carnegie Mellon Software Engineering Institute, Software Risk Evaluation Method, Version 2.0 [http://www.sei.cmu.edu/pub/documents/99.reports/pdf/99tr029-body.pdf](http://www.sei.cmu.edu/pub/documents/99.reports/pdf/99tr029-body.pdf)

- SAE J-1739, Potential Failure Mode and Effects Analysis in Design and Potential Failure Mode and Effects Analysis in Manufacturing and assembly Processes Reference Manual, Aug 1, 2002

- [IHE, Cookbook for Security Considerations in IHE Profiles](http://wiki.ihe.net/index.php?title=Security_Considerations_Cookbook)

- [HL7, Cookbook for Security Considerations in Standards](http://wiki.hl7.org/index.php?title=Cookbook_for_Security_Considerations)

- [10 Steps to Creating Your Own IT Security Audit](http://www.itsecurity.com/features/it-security-audit-010407/) January 2007, IT Security Magazine

- ISO TS 25238 Health informatics: Classification of safety risks from health software

- ISO TS 27809:2007 Health informatics: Measures for ensuring patient safety of health software

- ISO/NWIP/DTS 29321 Health informatics: Application of Risk Management to the Manufacture of Health Software

- ISO/NWIP/DTR 29322 Health informatics: Guidance on Risk Evaluation and Management in the Deployment and Use of Health Software

- ISO/IEC 80001 Application of risk management to IT-networks incorporating medical devices

