# Security of #FHIR implementations concerns

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/10/security-of-fhir-implementations.html
Published: 2021-10-14T22:34:00.003Z
Updated: 2021-10-15T18:50:31.708Z
Author: John Moehrke

---

Security Report: "[The New Healthcare Ecosystem will depend on FHIR APis, but Are They Secure?](https://approov.io/for/playing-with-fhir/)"

[Alissa Knight](https://twitter.com/alissaknight)did some invited and funded cyberSecurity research and found some good and some bad. No-one should be surprised by that conclusion. The point we should take from this research is that

- EHRs are doing a good job of securing their FHIR implementations
- FHIR is good and worthy
- There is room for improvement in some implementations
- There are included recommended improvements.

Some have take a very negative view of the research, most of this negativity is unfounded and driven by the fact that Alissa is excellent at marketing and drama. She has excellent presentation skills, excellent writing skills, excellent hacking skills, and excellent artwork.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiBM2WPrefHiky73SgdLA1zfT9nlcu3QWsEWsUY7SxAYV5JPs93MD3QhKOcw_EFGo1_IGruN_DUpWqkDGHQ7sb3ZyrgdnqTZvAnGaaYvErv0ukdfnEJWY1hdIoOHcxe6arKYwMaZUbnvva-/s851/page6.png

This research was funded by a vendor that provides security frontend for APIs, so certainly there should be some consideration here. I, however, have good reason to believe that this funding did not influence the research. Alissa has a couple of decades of proving she knows what she is doing. This is not just fake research complaining about products that didn't use the vendors solution. Yes there is one mention that a product that did use that vendor solution was not found vulnerable, yes the vendor got mention at the bottom of the report for funding it.

This was not an attempt to bring down FHIR, but rather to challenge us all to be better.  This report says nothing negative about the FHIR standard, it was focused on implementations.

There is some bad news, some implementations were specifically disgustingly bad at securing the data, and they had lots of data (aggregators). These services had signed up to be part of this research. They were informed of the problems. The report was expressing the trend, not the specific details. Alissa addressed this during the YouTube below, and also on twitter later.

Alissa hosted a Ask Me Anything on live YouTube, the recording here

_

Deeper diveThe report stands alone, and I have tried to come up with better ways to say what it says, but I just can't. The things that Alissa found were very remedial cyber security issues. Editing URLs in the browser to try to get at obvious other information. Using legitimate security tokens for things it was not intended to do. ...  Alissa has so much deeper skills that she simply never needed to rely on. She goes into all of these details about as detailed as is reasonable without naming products.

Page 16 was critical for me. I literally was stunned. Not an exaggeration. I knew that there would likely be mistakes, hence why above I said we all should not be surprised she found issues. It was clear there would be issues found. But the class of issues found are just unexplainable.  All of the issues failed to implement even the [FIRST section on the FHIR Security page](http://hl7.org/fhir/secpriv-module.html#security).

Data Aggregators were the worst offenders in my view. I know they provide a useful service, but they do it in ways that are not transparent, and they clearly don't take their responsibility seriously. They have been around for decades, so likely these same bad security implementations were just as bad on their previous proprietary "secret" APIs. The use of FHIR just makes them more obviously bad.

The last bullet on page 16 was the worse, quote:

> With one patient engagement app,
the API endpoint sent me all the
patient and clinician records in its
database, indicating it was using
the mobile app to filter out just my
record.

**NO WAY!!??? yup, that happened**
**
**
_mic drop_
Conclusion:I need to bring this back to positives... FHIR is good, the EHRs are good, many apps and services are good... but some are really NOT.

FHIR is a building block. It has so much to give to us humans (and animals). It will enable many things while it transitions from a "Standard for Trial Use" to something that is used to build CarePlans, Patient Engagement, Emergency Medicine, Disaster Management, Public Health, Artificial Intelligent clinical decision support aids, world wide COVID-19 tracking, and COVID-19 vaccine credentials...  helping patients stay healthy rather than get unhealthy in the first place ...

FHIR is built upon http RESTful concepts, Document concepts, and messaging. These platforms have security and privacy layers available to be used. Healthcare does not need to invent security, we just need to implement it properly. Mostly apply the security layer to the interactions following good policies. Have bad policy, is bad. Have bad implementations, is bad. Have no security, is bad.

All systems that have access to health data need to be designed from the beginning with [Privacy Principles which include Security](https://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html) and [Security which is about](https://healthcaresecprivacy.blogspot.com/p/topics.html) (protecting risks to Confidentiality, Integrity, and Availability).  Failing at "Access Control" makes me wonder about all the other opportunities to have forgotten Privacy and Security in the design.

Now is a good time to be reminded. We are not too far gone, we can do the right thing.

FHIR is the right standard to work with.
Others comments

- [Youtube post release discussion](https://www.youtube.com/watch?v=yyJL3T6P0Rg) including Grahame and John
- SC Media [article](https://www.scmagazine.com/analysis/application-security/critical-flaws-found-in-interoperability-backbone-fhir-apis-vulnerable-to-abuse)
- Grahame [article](http://www.healthintersections.com.au/?p=3068)
- Keith [article](http://motorcycleguy.blogspot.com/2021/10/responding-before-reading-alissaknights.html?utm_source=dlvr.it&utm_medium=twitter)

- Keith [tweet storm](https://twitter.com/motorcycle_guy/status/1448948267656617996)

- Sean [article](https://www.linkedin.com/feed/update/urn:li:activity:6854446140339965952/?updateEntityUrn=urn%3Ali%3Afs_feedUpdate%3A%28V2%2Curn%3Ali%3Aactivity%3A6854446140339965952%29)
- Alissa [twitter responses](https://twitter.com/alissaknight/)

