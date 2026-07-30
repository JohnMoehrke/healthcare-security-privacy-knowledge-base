# Healthcare Patient Consent -- Lessons learned from Creative Commons

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/08/healthcare-patient-consent-lessons.html
Published: 2014-08-27T18:23:00.003Z
Updated: 2014-08-27T18:23:38.687Z
Author: John Moehrke

---

I have learned lately that Creative Commons is working on some specific applications of [Patient Consent](http://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html). There are not much details on what they intend to target or create. The only details I can find are at â€œ[CC Science - Sharing V. Privacy](http://science.creativecommons.org/sharingvprivacy/)â€.

There are two very cool things. They recognize Security-Tags, and have a good process that will help us.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFgpC_TpQVi8EV9GMM2cc-52rMn8DSHSa1_MmA5N2LZwHhRwjUSkk1jVKvNDW8lJeHWsx4wpBaRiTr6vB63uzSE6wZnXGtuFTA7FqRw4Oga_5I4KE6meHHIxXXmQJfV0vvLpsQjT0xXBn5/s1600/tagged_duck.JPG

Security-Tags:
The first one is that they refer to â€œ[Data-Tagging](http://datatags.org/)â€, which is general IT discussion toward a solution. This is very similar to the â€œ[Healthcare Privacy & Security Classification System](http://healthcaresecprivacy.blogspot.com/2014/01/recirculation-ballot-of-hl7-healthcare.html)â€ that we have defined and created profiles for â€“ One example is the [DS4P](http://healthcaresecprivacy.blogspot.com/2014/01/recirculation-ballot-of-hl7-healthcare.html). This concept of Security-Tags has been integrated into XDS (XCA, XDM, XDR), and also into HL7 FHIR. This is a useful vector for the purpose of enforcing Access Controls including Privacy aspects.

This is, as Creative Commons indicates, not sufficient.

Consent Language Communications:
The more cool thing is the concept of applying the methodology that [Creative Commons](http://creativecommons.org/) have done for Copyright/License to [Privacy Consent](http://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html).  They have created a reasonable set of Licenses that can be used in a very useful and actionable way. For example, my blog is published under the

"[Attribution-NonCommercial-ShareAlike 3.0 Unported](http://creativecommons.org/licenses/by-nc-sa/3.0/)" License. Which is understandable by many means of reading and processing.

With Patient Consent, we struggle with a similar problem to the Copyright/License problem that [Creative Commons initially addressed](http://creativecommons.org/about/history). The language that organizations want to use is written once, by them, for their purposes; thus the language at each organization must be read and understood. Most of the time the language is in legal terms and thus not very consumable by non-lawyers, and also not consumable by computers. The result of this confusion is that the humans involved are not well informed. Also true is the failure in the computers that should be protecting the data, which includes providing access to those that are authorized.

Creative Commons have come up with a very useful â€œ[Design and Rational](http://creativecommons.org/licenses/)â€ that creates three layers that are very useful with Patient Consent.. There is the â€œLegal Codeâ€ that includes the legal specifics. There is the Human Readable, which is specialized for normal humans to read, possibly translated into multiple languages and such. There is a Machine Readable form, that is structured and coded.

I will note that the current Machine Readable form is very much like what we did with [IHE-BPPC](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html); that is it is most of the time simply an established URL per policy. Thus all that is necessary for the computer to know which license is applicable is to see which of the Creative Commons URLs are applied. The main difference is that they host and thus create the machine readable URLs. Whereas with [IHE-BPPC](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html) the creation and publication is a â€˜local matterâ€™. [Creative Commons "REL"](http://labs.creativecommons.org/2011/ccrel-guide/) is a similar container as the CDA structure defined by IHE-BPPC, or the potential future HL7 FHIR ConsentDirective could be..

As applied to Healthcare Privacy Consent:
So, the result of Creative Commons effort might be a set of boilerplate Privacy Consent policies. The equivalent of what I have referred to as Opt-IN, Opt-OUT, OPT-OUT-breakGlass, etc.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjvG1Q7kyu8nyLGsc8ieObGZeAk7lu0nY2H7MgLwrehn8OL8QcakjRY-l6Dt77t6shOLNDm7bAA8YZrqO1D9AyvB-OeA372gFFoUBK0jF5nYrBQQKP6ScAConl_Civ-Doz5d7IyuuxzLEoP/s1600/Slide3.PNG

Using the Creative Commons methodology this would result in a set for each of these: Legal Code, Human Readable, and computable URL.

This is not an easy thing to write. I have been involved in many workgroups that have worked on these. In each case a number of people, mostly lawyers, wanted to have special wording in for their special cases. I presume that Creative Commons has mechanisms to work through these differences.

We might even get some cool icons like they have for the License, where the icons visually represent the essence of the language.

Patient Friendly Interview Process:
Going one step further, Creative Commons have created an [interview process for people that want to apply a Creative Commons License](http://creativecommons.org/choose/) to their works.

https://wiki.creativecommons.org/images/2/29/CC_license_chooser_v2.png

The interview process walks the person through a set of decision points. This results in a recommended CC Mark.

This today is not all that 'friendly' and the population that are Patients (healthcare consumers) likely need far more 'friendly' interfaces. However the concept is similar in that one tends to narrow the choices over time.

There are a few pilots that have attempted this, including one from [HHS/ONC that resulted in some very interesting observations](http://www.hhs.gov/ohrp/policy/consent/).

Conclusion:
I have said all the above before, in 2009,  [Consumer Preferences and the Consumer.](http://healthcaresecprivacy.blogspot.com/2009/10/consumer-preferences-and-consumer.html)  The difference is that Creative Commons might bring their methodology and thus some maturity to the conversation.

[Blog resources: Patient Privacy controls (aka Consent, Authorization, Data Segmentation)](http://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

- [Enabling Patients to Delegate Healthcare Information Access Authority](http://healthcaresecprivacy.blogspot.com/2014/02/enabling-patients-to-delegate.html)

-  [Define](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)[Atom](http://healthcaresecprivacy.blogspot.com/2014/05/atom.html) -- Too many definitions in use today

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Safety vs Privacy](http://healthcaresecprivacy.blogspot.com/2013/04/safety-vs-privacy.html)

- [Privacy Consent State of Mind](http://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html)

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [Data Segmentation - now I know where the term comes from](http://healthcaresecprivacy.blogspot.com/2011/10/data-segmentation-now-i-know-where-term.html)

