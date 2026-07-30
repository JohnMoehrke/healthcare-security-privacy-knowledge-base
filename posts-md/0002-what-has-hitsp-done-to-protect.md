# What has HITSP done to protect confidentiality with a suite of implementable security standards

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/10/what-has-hitsp-done-to-protect.html
Published: 2009-10-18T02:33:00Z
Updated: 2009-10-18T02:33:57.043Z
Author: John Moehrke

---

I have been asked this question quite a few times lately. As with any segment of technology can be shown to follow the [Gartner Hype Curve](http://www.gartner.com/pages/story.php.id.8795.s.8.jsp#2), so I will show how the HITSP Security and Privacy solutions map. Some have expected to find this kind of an answer in[TN900](http://wiki.hitsp.org/docs/TN900/TN900-1.html) but it is focused on explaining the preconditions to a Privacy and Security program.

**Plateau of Productivity -- **The core of the security is well mature and successful

SC109 â€“ Security Audit

T14 â€“ Consistent Time â€“ NTP or SNTP

Something built into EVERY operating system since 1995

T15 â€“ Secure Audit Log â€“ ATNA

A healthcare specific audit logging schema that has been adopted by DICOM, IHE, and now ISO

T17 â€“ Secure Communications Channel â€“

TLS -- Something built into every Browser, Web-Server, and Application Server â€“ EVER

Web-Services Security â€“ very immature but in there to satisfy academics that think it is critical

**Slope of Enlightenment**.

C19 â€“ Entity Identity Assertions

This technology is in a good place on the Gartner curve. It is well implemented in platforms. GE has been using this for 3 years as the way they hook to 3rd party services like travel reservations through Sabre. This is in the Slope of Enlightenment because of slow roll-out. The technology is very stable and plentiful. But until people get off of proprietary authentication systems that have been built into their EHR/EMR it will not take off.  The reason why proprietary user authentication is the rule today in healthcare is because the workflow in healthcare is NOT desk based. It is patient centric, as users (Doctors, Nurses, etc) move from workstation to workstation and log into a â€˜sessionâ€™ that is already in process. This â€˜sessionâ€™ is locked onto the patient. Because of this workflow it is very hard to re-use user authentication systems that are used in workstations and other industries.

SAML can help here, it can provide a way to support the green-fields of HIE interaction leveraging the existing authentication. I wrote a White Paper for IHE that discussed this [XUA Implementation Demo 2005 Guide](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr5-2007-2008/Technical_Cmte/Profile_Work/XUA/XUA-ImpGuide-2005-08-31.doc), this was in August of 2005. This is not the ultimate solution, the ultimate solution is that an enterprise class authentication must be built into the EHR and something WS-Trust is used to convert that enterprise class authentication into a SAML assertion.

So, much needs to change in healthcare before this takes off. But there really are no alternatives, and certainly none that support this environment better.

**Peak of Inflated Expectations**

TP20 -   Access Control

Pie in the sky, stuff we are pushing the innovation envelope (See Jacks 4th bullet)

IHE access control is the third part of ATNA. A part HITSP choose not to recognize but rather push innovation and see if we can inspire some standards development. We have succeeded on that point.

When the concepts of TP20 was presented to IHE, they turned it down as having too little interest to implement and that the standards were too immature.

TP30 â€“ Management of Consents

I am happy with where this is today, and very happy with where it is going. This is far more balanced than many view

a) BPPC â€“ Todayâ€™s solution. Satisfies the â€˜good enoughâ€™ clause for Opt-IN, Opt-OUT, Opt-OUT-with-BreakGlass

b) Pushing the innovation front such that HL7 is building a privacy Domain Analysis Model, and Services

I am disappointed that BPPC isnâ€™t pushed to at least get Opt-IN/OUT support. It will be close to a decade before true dynamic policies and enforcement happen.

The other things that we call Security/Privacy are really very specific tools and therefore are really hard to put on the Hype Curve with these other things.

Document Integrity â€“

This is actually just leveraging a normal capability in TP13, T33, and T31. Nothing new here

Non-Repudiation of Origin â€“

This is XML-Digital Signatures. The technology is well mature. The missing part is a good reason to fund implementation of all the infrastructural parts that are preconditions. The federal government has chosen to fund PKI through the PIV card rollout. So, I expect they will start using this technology. Will they bother bringing their implementations to Connectathon? I donâ€™t think they will care to or be compelled to.

This technology is very common now days in the â€˜Clinical Trialsâ€™ space, especially on Drug-Trials. The FDA accepts the paperwork signed using Digital Signatures today.

Anonymization and Pseudonymization

This is the most niche constructs we have. More so than the Components that they operate on, and less re-useable. This puts them into the space of being close to unrankable and untrackable.

However they are very easy to implement

T24 is just TP22 with some management of a special configuration to make a standalone server for each study.

The anonymization constructs can be implemented with simple XSLT (ok I donâ€™t have proof, but do have good theory)



This is not just my view. Here are a couple of others

NIST wrote an IR that all but endorsing everything HITSP did:

            NIST IR 7497http://www.blogger.com/post-edit.do, Jan. 13, 2009, [DRAFT Security Architecture Design Process for Health Information Exchanges (HIEs)](http://csrc.nist.gov/publications/PubsDrafts.html#NIST-IR-7497)

All of our Privacy and Security constructs, including TP20 and TP30 are [built into the FHA CONNECT platform](http://www.govhealthit.com/newsitem.aspx?nid=72182).

I like the sage advice that John Halamka gives after final seeing the light â€œ[My Privacy and Security Lessons Learned](http://geekdoctor.blogspot.com/2009/10/my-privacy-and-security-lessons-learned.html)â€

