# FHIR - Input Validation

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/04/fhir-input-validation.html
Published: 2016-04-20T13:58:00.002Z
Updated: 2016-04-28T16:40:37.052Z
Author: John Moehrke

---

Updated: Vadim Peretokin advises on the FHIR chat : You're better off in the world if you know about this stuff though. [https://www.hacksplaining.com/exercises](https://www.hacksplaining.com/exercises) lists some XML-related vulnerabilities and is pretty easy to learn from.

It has happened again. This time Michael Lawley reported that the HAPI reference implementation was susceptible to XXE attack -- Grahame's email to the FHIR list:

>
Yesterday, Michael Lawley reported that the HAPI reference implementation had a security flaw in that it was susceptible to the XXE attack. Those of you interested in details about XXE can see here: [https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing](https://urldefense.proofpoint.com/v2/url?u=https-3A__www.owasp.org_index.php_XML-5FExternal-5FEntity-5F-28XXE-29-5FProcessing&d=CwMFaQ&c=IV_clAzoPDE253xZdHuilRgztyh_RiV3wUrLrDQYWSI&r=B4hg7NQHul-cxfpT_e9Lh49ujUftqzJ6q17C2t3eI64&m=3YTllNHCDOJjZ00sSB69gF63v14xe81zuU7ZW67AQhM&s=UXrkpKU-9Zlt9cvfN3XYwmuFUlRDYuktsdP3nTr8Exc&e=)

The various XML parsers in the the various reference implementations are variably affected by this; we are releasing patches for them now.

Specifically, with regard to the java reference implementation, it has always ignored DTD definitions, so is immune. Any newly released versions will change to stop ignored DTD definitions, and report an error.

The current validator is susceptible to the attack; I am still investigating older versions, and will advise. Once I've done that, I'll check the pascal reference implementation.

Other reference implementers can advise with regard to HAPI, the DotNet reference implementation, and the various other RIs (swift, javascript, python...)

Note that this is an XML issue - your parsers have to be correctly configured. So this is equally likely to be an issue for anyone processing CDA, and even anyone using v2.xml

With regard to the FHIR spec, since the standard recommended mitigation is to turn off DTD processing altogether, I've created a task that proposes making the appearance of DTDs in the instance illegal (#9842)

This issue is not unlike the embedded [SQL Injection that Josh found two years ago](http://www.healthintersections.com.au/?p=2021) (almost to the day). Which at the time I decided Josh needed recognition and gave him my [Murky Research Award](http://healthcaresecprivacy.blogspot.com/2014/04/murky-research-award.html). After that we updated the FHIR specification with a section on being robust to [narrative sections](http://hl7-fhir.github.io/security.html#narrative). We likely need to update this section to be more on Input Validation with SQL injection and now XXE as examples.

http://imgs.xkcd.com/comics/exploits_of_a_mom.png

There has been some 'discussion' following this where people want to put out that this XXE example is further proof that XML is inferior to JSON. They should note that the embedded SQL injection problem exists for XML, JSON, or any other encoding format. There are sure to be JSON specific issues.

Input Validation
The solution to both of them is the same mantra from the CyberSecurity community â€“ [Input Validation](https://en.wikipedia.org/wiki/Data_validation). (Note this is the same answer that the Safety (e.g. FDA) will tell you). You must inspect any input you receive from elsewhere, no matter how much you trust them. This even applies to receiving data from your own systems components (e.g. reading an object from persistent storage, even in the case where you wrote it there).  All CyberSecurity frameworks (e.g. NIST, OWASP, ISO 27000, Common Criteria, etc) have a specific section on [Input Validation](https://en.wikipedia.org/wiki/Data_validation).

Input Validation is really nothing more than a specific side of [Postel's Law](https://en.wikipedia.org/wiki/Robustness_principle) â€“ Be specific in what you send, liberal in what you accept. It is the liberal part of that that is the focus here. In order to be liberal, you should be thinking that you should expect wide variation in what the other guy is going to send you. Including simple garbage, and carefully crafted malicious attack. Both are possible, and although [Halon's razor](https://en.wikipedia.org/wiki/Hanlon%27s_razor) would have you attribute the bad input to stupidity; it still must be defended against.

Input Validation means you need to do some extra homework. Much of it is already done by FHIR specification, but further 'profiling' is often needed. Where FHIR Profiling is defined, it is just a s valuable for Input Validation as it is for use-case clarification.  But FHIR based Profiling is not enough. It doesn't cover things like

1. String Length boundaries

2. String character encoding restrictions

3. Permitted characters vs not permitted characters.

4. element range expectations

What you want is to understand well what the data SHOULD be. An approach that looks only for BAD data, will be fragile. There is an infinite set of bad data. So any approach that specifically codes to detect bad data will only be good until tomorrow when some hacker has identified a new kind of bad data.

The Input Validation sub-system often can't reject a transaction, but it can neutralize data that is not good. It can eliminate that data, it can translate the characters, it can encapsulate them, it can tag the bad data, etc.

The main difference between XML and JSON; is that the tooling for XML is likely to be more generous. Such as the DTD problem.  The default behavior of the XML tooling is to follow these, as the most likely beginning programming project likely wants that. However you must look carefully at your toolking for Input Validation â€“ Robustness â€“ settings.

Performance vs Robustness
Many will balk at the Input Validation need, saying that to do tight input validation â€“ while being liberal â€“ will cause their interface to be too slow. I agree, it is likely to do that. This is where a mature product will be intelligent. It will start out communications with a new sender in a very defensive mode, as it gains experience with that it can eliminate some of the Input Validation. Note that this is only possible when you have strong Authentication of the sender, so that you can be sure that it is indeed that sender sending you data, and that no entity can be injecting content. Never would all input validation be eliminated. You just always expect that the sending system could get compromised and thus start sending you garbage that it never sent before. Thus the really mature systems have a sliding scale of robustness, backed by historic pattern from that sender, and tested occasionally. Static rules are no better than never having Input Validation rules.

References to various Security Framework guidance â€“ this is not new to the CyberSecurity community

- [https://www.owasp.org/index.php/OWASP_Validation_Regex_Repository](https://www.owasp.org/index.php/OWASP_Validation_Regex_Repository)

- [https://www.owasp.org/index.php/XSS_Filter_Evasion_Cheat_Sheet](https://www.owasp.org/index.php/XSS_Filter_Evasion_Cheat_Sheet)

- [https://www.owasp.org/index.php/SQL_Injection_Prevention_Cheat_Sheet](https://www.owasp.org/index.php/SQL_Injection_Prevention_Cheat_Sheet)

- [https://www.owasp.org/index.php/Data_Validation](https://www.owasp.org/index.php/Data_Validation)

- [http://en.wikipedia.org/wiki/Data_validation](http://en.wikipedia.org/wiki/Data_validation)

- [http://www.securityninja.co.uk/secure-development/input-validation/](http://www.securityninja.co.uk/secure-development/input-validation/)

- [https://developer.apple.com/library/ios/documentation/Security/Conceptual/SecureCodingGuide/Articles/ValidatingInput.html](https://developer.apple.com/library/ios/documentation/Security/Conceptual/SecureCodingGuide/Articles/ValidatingInput.html)

- [http://en.wikipedia.org/wiki/Secure_input_and_output_handling](http://en.wikipedia.org/wiki/Secure_input_and_output_handling)

- [http://en.wikipedia.org/wiki/Cross-site_scripting](http://en.wikipedia.org/wiki/Cross-site_scripting)

- [http://en.wikipedia.org/wiki/SQL_injection](http://en.wikipedia.org/wiki/SQL_injection)

- [https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project](https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project)

- [http://cwe.mitre.org/data/definitions/20.html](http://cwe.mitre.org/data/definitions/20.html)

- [http://projects.webappsec.org/w/page/13246933/Improper%20Input%20Handling](http://projects.webappsec.org/w/page/13246933/Improper%20Input%20Handling)

- [http://web.nvd.nist.gov/view/800-53/Rev4/control?controlName=SI-10](http://web.nvd.nist.gov/view/800-53/Rev4/control?controlName=SI-10)

Postscript from Rob Horn
Rob wrote this fine email at the same time I wrote mine. His perspective is very complementary so I asked if I could add it to my article. He agreed.

>
The problem is not XML per se.  The problem is present for any approach that requires a public facing tool.  XML is impenetrable without extensive tooling, so it is indirectly responsible.  But any and all public facing tools are a risk.

We are not in the golden days of idyllic safety on the Internet.

Healthcare is under direct intelligent attack by malicious actors.  All tools are under attack.  There is no exception for "it's just educational", or "it's just for standards", or "there's nothing of value to steal".  These are not pimply faced dweebs living in their parents basements.  These are teams of organized and skilled experts, supported by large bodies of helpers.  They include organized crime, hostile nations, etc.

It's good practice to treat all public facing tools with the same care that you give to the tools for patient access, operational use, etc.  It's going to become necessary as the attack intensity escalates.  We're in the business of providing this kind of product for our customers, so we should all have the skills and ability to maintain this level of protection and quality.  If you can't do it, you shouldn't be in this industry.  It's more work than we might like.  But bad habits spread and the attackers are increasingly working to find twisty trails through secondary and tertiary access points.  Penetrating HL7 and HL7 members is a great way to indirectly penetrate the rest of healthcare.

Most of the present active attacks are only described under non-disclosure.  But, the publicly disclosed attack by Iran on an obscure little dam in New York state indicates the extent of attacks.  This little dam was about as harmless as they get.  You could blow it up and the worst that would happen is some wet basements.  It didn't generate electricity.  All it did was maintain the steady flow of a little river.  So why did Iran take over the industrial control system for that dam?

My guess is a combination of practice for operators and intrusion normalization.  As a practice target it was great.  Nobody would notice the penetration.  Nobody would get hurt.  This is good for advanced training practice.  Normalization is something that I worry about regularly for audit protections.  A lot of current audit analysis looks for the abnormal.  If penetration indications can be made normal then looking for the abnormal becomes less effective.  Intelligent attackers know and understand the defensive methods and do take actions to make them less effective.  The kid in a basement might not think this way.  The professionals certainly do.

Kind Regards,

Robert Horn | Agfa HealthCare

Interoperability Architect | HE/Technology Office

