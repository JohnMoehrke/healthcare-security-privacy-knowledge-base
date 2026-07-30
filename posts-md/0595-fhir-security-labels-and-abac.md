# FHIR Security Labels and ABAC

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/08/fhir-security-labels-and-abac.html
Published: 2024-08-14T11:44:00.006Z
Updated: 2024-08-14T12:02:45.107Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjq2cmC2iZWQ6VL_hr9KSMDt4Kw-EiIiFlLRaaXNBgRjfSIHHFHvdFQ-FSBxK_ATOZhB0clPuxQYn-fj4DDUi-bFlOwazpimTQrQcEK7aYsHotDXtyLBM1-ZHsmVAeMHWgansdVMnzsajxhlYxFuXSWSgz7vaU9eKQ4tCGBYRFy96gLlVL46_DMdkCjzo_d/s514/tagged_duck.JPG
I am rather excited that I have been asked about FHIR Security Labels lately by people getting started at implementing. I have tried to find out who has implemented this, but it is a security/privacy topic and thus everyone wants to be covert about it. Thus, I can't tell how widely it has been implemented.

The concept is founded in [Attribute Based Access Control (ABAC)](https://en.wikipedia.org/wiki/Attribute-based_access_control) that is a common IT access control standard that is especially important in data domains with sensitive information like healthcare, finance, military, etc. I would recommend looking at the generic ABAC details and implementations first. This is foundational to what we have put into FHIR.

The main useful publications are:

- [https://build.fhir.org/security-labels.html](https://build.fhir.org/security-labels.html) -- The FHIR Specification has the core of a security labeling and ABAC built into FHIR Resource model, and the vocabulary and explainer are on this page.
- [https://hl7.org/fhir/uv/security-label-ds4p/](https://hl7.org/fhir/uv/security-label-ds4p/) -- The Data Segmentation for Privacy (DS4P) is an Implementation Guide that further explains how to use this, and adds some extra capabilities that are far more advanced than any system will need for a long time
- [https://profiles.ihe.net/ITI/PCF/index.html](https://profiles.ihe.net/ITI/PCF/index.html) -- The Privacy Consent on FHIR (PCF) is an Implementation Guide that explains Privacy Consent profiling, and has a section on Security Labeling (in Appendix P) and profiles of Consent for when using data labeling
- [https://www.drummondgroup.com/shift/](https://www.drummondgroup.com/shift/) -- An organization that I participate, that is trying to advance the state of the art of Privacy protection using security labels. This group spans technology to policy, with a much larger focus on the policy part that HL7 and IHE can't specify.

The co-chair of CBCP - Mohammad Jafari - has been developing an open-source implementation. He has also worked on all the above with me, and demonstrated various implementation prototypes many times over the years.

- [https://jafarim.net/blog/](https://jafarim.net/blog/) -- His blog where he discusses these topics, and will likely announce anything he does.

I have a [few blog articles](https://healthcaresecprivacy.blogspot.com/p/topics.html#AC), but most of that content has made it into the above publications.

