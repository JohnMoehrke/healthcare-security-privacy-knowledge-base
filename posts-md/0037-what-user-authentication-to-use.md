# What User Authentication to use?

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/06/what-user-authentication-to-use.html
Published: 2012-06-11T17:49:00.002Z
Updated: 2012-06-11T17:49:25.953Z
Author: John Moehrke

---

This question is the first topic for the new [RESTful-Health-Exchange (RHEx)](http://wiki.siframework.org/RHEx) workgroup that is starting under the S&I Framework 'affiliation'. I don't know what it means to be 'affiliated with S&I Framework, but it is clear from the way it is put in a different place that it is not like other workgroups. One thing is that they seem to be using google groups and doing more discussions in e-mail. I think this is a plus as it helps the group take care of simple discussions through e-mail.  It also has a cool acronym.

Specifically the question I responded to was:

>
"What is the reasoning behind using OAuth and/or OpenID instead of PKI/certificates?  While PKI is most certainly complex, it has proven to be much stronger technologically than both OAuth and OpenID."

There are many different solutions, proving the space is rich with imperfect solutions.  Each potential solution has strengths and weaknesses.

**PKI (Public Key Infrastructure)** is the workhorse of Security technology, made up primarily of [X.509 certificates and the infrastructure](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html) used to prove that certificate should be trusted. PKI is actually at the basis of most security technology, and thus almost everything can claim they are using PKI. What each of the other solutions do is try to move the hard-part of PKI further and further away, that is the management of certificates. To actually do PKI is very hard work, not because the technology is hard, but because the operational and management aspects are hard. PKI is the center of the [Direct Project trust infrastructure](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html), and it works really well for e-mail. But PKI for end-user-devices is much too hard for consumers to manage. See [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html) and [SSL is not broken, Browser based PKI is](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html).

**SAML (Security Assertion Mark-up Language) **is a wonderful technology for organization-to-organization user assertions. It supports more dynamic content, thus more able to capture the current security-context rather than just identity. It can be noted that PKI tried to do this with attribute-certificates; SAML is more simple to deal with and has advanced beyond what attribute-certificates could do.  BUT, SAML is really heavy weight for internet consumers to use, or even some organizational use on the internet. The [IHE XUA profile](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html) is a profile of SAML identity assertions.

**OpenID** is similar to SAML but much lighter weight than SAML, including only the needed capabilities that are typically needed for consumer authentication to web services. It can't quite do everything that SAML can, and is harder to fully support organization-to-organization federation of current transactional context. OpenID is very easy to use as a consumer, and a service that relies on it. OpenID is very well positioned to support mobile devices, and internet consumers on fully capable home machines. It is at the core of many common Internet web services.

**OAuth **is unique in that it is used to delegate authentication of one identity upon a service. This is very helpful for the types of service mashups that mobile, tablet, and Web 2.0 + envisions.  Thus authorizing one internet facing service to act as if it was YOU when interacting with a different internet facing service. You see this often today when hitting a new service and they ask you if you  want to use your Facebook or Google account rather than create a local account. (Some of these are actually using OpenID first, then OAuth).

I prefer SAML, but do agree that OAuth is magical. Each of these should be leveraged where they best fit, but none of them fit perfectly. Note that WS-Trust (and other things) can convert any security token into another token type; when you use a bridging service that lives in both domains.What this means is that we don't have to choose ONE technology. **We can choose OAuth for applications, OpenID for consumers (Patients), while using SAML for organizational individuals (Providers, Clerks, Billing, etc)**.

The fantastic thing is that Healthcare is not in this quandary alone, all the industries using the Internet today are in this same position. This means that there are already solutions that offer ALL THE ABOVE. One example that I have looked at is:  **Hybrid Auth** --
[http://hybridauth.sourceforge.net/index.html](http://hybridauth.sourceforge.net/index.html). This mans that we don't even need to choose when developing a RESTful interface, service, or application. **We can leverage this open-source solution, no need to re-invent. In this way we can focus on what the healthcare industry needs to focus on, that is leveraging this technology.**

The hard part is not choosing between these technologies. The hard part is the Policy and Operational choices of identity authorities (ask the Direct Project about this. Even where the technology is chosen one still will struggle with trust).

