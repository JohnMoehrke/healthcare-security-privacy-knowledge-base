# GDPR on FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/05/gdpr-on-fhir.html
Published: 2018-05-18T11:35:00.001Z
Updated: 2018-05-18T11:35:15.557Z
Author: John Moehrke

---

I just finished a very long week in Cologne at the HL7 workgroup meeting and FHIR Connectathon. I had the idea that I could host a discussion of how to use FHIR in a GDPR compliant organization. So I created a FHIR Connectathon track. This track was hopeful that we could do testing with various parts of the FHIR specification. We ended up talking more about generally how to use the various capabilities that exist in FHIR to meet the various Articles in GDPR.
FHIR is GDPR enabled
The Security Workgroup and the Privacy (CBCC or CBCP) are global workgroups, so we have been aware of GDPR for many years. As concrete needs came up we would add that capability. Thus FHIR includes many capabilities that can be leveraged to meet GDPR needs. From a purely geek perspective the GDPR is not technically unusual, it simply places some higher emphasis on Privacy and Security capabilities. Thus overall the GDPR is a good thing to me, as it validates and will leverage the work I have spent 20 years developing in HL7, IHE, and DICOM.

More on this later in this article

GDPR is more than Privacy
I have heard a few people express that GDPR is more than Privacy and Security. I think that these people are misguided at the extent of the real definition of [Privacy](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html). The [Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html) that are generally included in many standards and guidance are inclusive of giving the Individual the right of Access, the right of Correction, and the right to control how their data are used.  Too often people think Privacy is only about restricting access. The HL7, IHE, and DICOM workgroups I have participated in have always used the more expansive definition of [Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html).

Even the GDPR right to Erasure, related to the EU Right to be Forgotten, is an extension of the [Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html) rights to control data about the individual and the rights of the individual to correct improper information.

Adding emphasis: GDPR is very much patterned after "[Privacy by Design](https://en.wikipedia.org/wiki/Privacy_by_design)", indeed it requires that "[Privacy by Design](https://www.ipc.on.ca/wp-content/uploads/Resources/7foundationalprinciples.pdf)" is used.  I have lots of experience with Privacy by Design, and like it. In my GE days, I made it the backbone of the Security and Privacy guidance for all products at GE Healthcare.

Thus GPDR is primarily about Privacy...

GDPR is more than technology
This is a fundamental truth. GDPR will drive far more work in the space of writing Policies, Procedures, Communications, and such. There are many publications, consultants, and lawyers that can help with this. There are many publications that will explain GDPR to you. I am not going to try to explain GDPR.  The [law itself is not that hard to read](https://gdpr-info.eu/).

So at this point I assume the reader is knowledgeable in GDPR. If not, then go learn that much first....

How is FHIR GDPR enabled?
This week we agreed to write a whitepaper that will explain this. It has the general ouline

- Introduction and Scope -- that will explain we are only addressing FHIR specific topics

- Mapping of GDPR Articles to the existing Security or Privacy capability in FHIR -- this section will provide terse guidance on how we visualize the use.

- Identification of some gaps we identified -- nothing critical, mostly nice-to-have operations

- Conclusion -- FHIR is GDPR enabling

We are targeting the audience that is aware of FHIR and GDPR, that just needs some help extracting out the specifics. This paper should be about 8-10 pages.

The expectation is that once published, the external community may ask for clarification, or for specific actions. We might revise the paper. We might make it more visible through balloting as informative. We might convert it into an Implementation Guide.

Which parts of FHIR are useful?
Not to get ahead of myself. The following are the capabilities that we have already in the FHIR Specification today:

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh6bkEzonh0WOKRVP3dZ_LoeAROqzyoLQqRgKiwiKcYf9iI5I2E705zjobc-vV3JFZF_qjnfILd3AEaPiY1yb68yHENMZosJOgiNvf3KPZJLaIPwTrFbz7DuCkS5eesiSCPf7j0ao_yOoj7/s1600/secpriv.jpg[Security & Privacy](http://build.fhir.org/secpriv-module.html)    and  [Security](http://build.fhir.org/security.html)

- [Provenance](http://build.fhir.org/provenance.html), Resource

- Includes a [signature](http://build.fhir.org/security.html#signatures)mechanism that can be leveraged in many comprehensive ways.

- [AuditEvent](http://build.fhir.org/auditevent.html) Resource, and [Guidance](http://build.fhir.org/security.html#audit)

- [Consent](http://build.fhir.org/consent.html), Resource

- any Resource can be tagged with[Security/Privacy tags](http://build.fhir.org/security-labels.html)

- De-Identification guidance

- [Secure Communications](http://build.fhir.org/security.html#http)

- Common recommended use of TLS (HTTPS)

- May use Client Authentication

- Recommend follow good TLS principles such as BCP195

- [Authentication](http://build.fhir.org/security.html#authentication)and [Authorization](http://build.fhir.org/security.html#binding)

- [SMART-on-FHIR](http://docs.smarthealthit.org/) - leverage [OpenId Connect for User Authentication](http://openid.net/connect/). Provides a pattern for OAuth scopes

- IHE  - Internet User Authorization - defines a set of OAuth token attributes

- [HEART](https://openid.net/wg/heart/) -- a mechanism for externalized Consent to be managed and Authorization decisions made

- [Identity](http://build.fhir.org/administration-module.html)-- various FHIR resources are tied to identities that can be used in Policy (e.g. Consent), and would be used in AuditEvent and Provenance to record Who did some action.

- Patient

- RelatedPerson

- Practitioner

- PractitionerRole

- Group

- Organization

- Location

Gaps -- those that we found this week.

We did identify some gaps. But all of these gaps are 'nice to have'. They all are new functionality that helps automate an Organization's actions on the Individual actions:

- Operation that would provide response to an Individual ["Right of Access" Article 15](https://gdpr-info.eu/art-15-gdpr/)

- assemble all the PurposeOfUse the organization utilizes, which would be beyond those used in the FHIR infrastuture

- For each PurposeOfUse assemble the types of data utalized

- And how the data are processed

- etc...

- Operation that would provide response to an Individual ["Right to Data Portability" Article 20](https://gdpr-info.eu/art-20-gdpr/)

- assemble ALL the data in the best encoded format.

- This includes data not found in FHIR format

- Possibly that data can be just described in meta terms

- Possibly that data can be encapsulated in DocumentReference + Binary

- etc...

- Operation that would provide capability and response to Individual ["Right to Erasure" Article 17](https://gdpr-info.eu/art-17-gdpr/)

- NOTE that Erasure does not override other regulated reasons to keep the data. Thus Medical Records are not subject to Erasure.

- Erasure affects all data, not just FHIR data

- Identity must be confirmed.

- Action must be confirmed

- Various Erasure methods might be used

- simple delete

- de-identification

- etc

- An Erasure Receipt might be useful to define as a standard.

- Possibly others...

Although these were discussed, it is very unclear how realistic their use would be.

Conclusion

I assert that FHIR is ready for GDPR use. I welcome engagement that helps enlighten me.

