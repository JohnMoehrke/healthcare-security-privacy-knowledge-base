# Basic Consent - a necessary first step

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/08/basic-consent-necessary-first-step.html
Published: 2016-08-03T19:08:00Z
Updated: 2016-08-04T11:52:00.652Z
Author: John Moehrke

---

There are many standards [efforts to develop support](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html) for Patient directed Authorization to their health data. I will be writing a few articles about these efforts.  These efforts sometimes use the term Privacy Consent, or Privacy Consent Directive, or Privacy Authorization, or Consumer Preferences, etc...

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg0ya_6jWY9CG_ak7tcbbWvwr_nvGF1ObRxiiBxFiewXYjouMoSbTJu21XNRgjNQoBkm9fFxhdDlAlz3qmS8earWlRSGqgiynA6ndQbmvewxBl2Fq3m0tcVIgt4iFxU1YN-9tK3DnK8aViG/s1600/Consent_HIE_enforced.png

This post is about the one standards solution that is already available. [IHE Basic Patient Privacy Consent](https://healthcaresecprivacy.blogspot.com/2016/02/bppc-is-not-just-for-xdsxca.html). I have written about this extensively. I have spent much effort explaining why this is both: a powerful solution, and an under-powered solution. It is indeed both, and IHE knew this when it created this under-powered solution. It knew this so much that it included in the title "Basic" so that it would not be seen as the ultimate solution, but rather a simple beginnings.

I expected a replacement to BPPC to come along much sooner than now, but it has taken 10 years. That is right, [BPPC was created in 2006](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html).  It has not been upgraded until now because it filled a need, and was very clear what it couldn't solve. This does not mean that there was not solutions that solved the parts that BPPC can't solve, I know that there are many solutions that solved beyond BPPC. In fact these solutions are critical experimentation (Agile) for the new APPC profile. I am not going to explain APPC yet, simply going to note that Basic has been replaced by Advanced in APPC.

BPPC is 'clunky'; I am very clear about this. It requires pre-coordinated policies that must be statically defined, and configured into Access Control engines. Thus it is very limited as to what it can support. However this limitation supports a wide variety of use-cases. They are just pre-coordinated use-cases. Just like were supported in the paper world. So it was equally capable, and yet more capable.

Some examples where BPPC are used:

Connecticut HIE:

>
For release of Privileged Care information, a consent document SHALL be registered with HITE-CT in the form of a BPPC conformant document using the Opt-in for Legally Protected Data (ALL) policy. Where the consumer does not wish to have their health information available to HITE-CT PHCSs, a consent document SHALL be registered with HITE-CT in the form of a BPPC conformant document using the Opt-Out (Routine Care) and at the direction of the consumer, Opt-Out (Emergency Care). All Opt-in documents SHALL include an expiration date. This date SHOULD be recorded as two (2) years from the date the agreement is executed. All policies are global within the HIE such that an Opt-Out or Opt-In captured at one location covers all HIE member organizations. Common consent language shall be provided by HITE-CT.

**Table 10.2.3-1 Patient Privacy Policies**

**Patient Privacy Policy Identifier OID******

**Use**

**Consent Document to be Filed**

1.3.6.1.4.1. 38571.2.1.3.1

Opt-Out (Routine Care): Opt-out is specific to Restricted to viewing data registered in HITE-CT and SHALL NOT reflect restrictions pertaining to any exchanges not delivered through HITE-CT.

HITE-CT Opt-Out Routine Care

1.3.6.1.4.1. 38571.2.1.3.2

Opt-Out (Emergency Care):

HITE-CT Opt-Out Emergency Care

1.3.6.1.4.1. 38571.2.2.3.1

Opt-in for general use (OPTIONAL use where PHCS has captured or chooses to capture specific consent for HIE participation from consumer)

OPTIONAL:

Provider Generated Document

1.3.6.1.4.1. 38571.2.2.4

Opt-in for Legally Protected Data (ALL)

HITE-CT Opt-In for Legally Protected Data

1.3.6.1.4.1. 38571.2.2.4

Reflect that acknowledgement of information exchange practices has been collected from the healthcare consumer or their authorized representative

HITE-CT Acknowledgement of Information Exchange Practices

_ __Example: A consumer had elected to Opt-Out of sharing routine clinical health information through HITE-CT. A Privacy Policy Acknowledgement Document is submitted through the consumerâ€™s primary care provider recording the document as a scanned document under the Patient Privacy Policy Identifier OID 1.3.6.1.4.1.38571.2.1.3.2 in the XDSDocumentEntry.eventCodeList. The documentationOf/serviceEvent is populated with an effective time reflecting the current date as the â€˜low valueâ€™ and the current date +24 months as the effective data â€˜high valueâ€™._

Texas HIE
As an example of how much is covered by BPPC; Texas HIE has a [Privacy Policy document](http://www.hietexas.org/resources/policy-guidance) that is 111 pages long. Bringing together dozens of national, state, and region regulations. Addressing many different perspectives including BAA, Government reporting, and special sensitive health topics. This is the kind of thing we expected would be needed. One can't simply have a code "HIPAA" which is understood everywhere as meaning the same thing. One must always have interpretations of regulations, and that interpretation must consider other regulations, care setting, and other factors.

 Social Security Administration
[Authorization to Disclose Information to the Social Security Administration (SSA) -- eAuthorization](https://www.ssa.gov/disability/professionals/eAuthorization.htm)

SSA-827 Authorization to Release Information policy is: 2.16.840.1.113883.3.184.50.1.

Although this is just a [2 page form](https://www.ssa.gov/forms/ssa-827.pdf), the [policy backing this form is not simple](https://www.ssa.gov/disability/professionals/ssa827_informationpage.htm)

 Conclusion

I am very proud to have been part of the creation of BPPC. I am surprised that it has taken 10 years to come up with an Advanced form. But I am very happy with how this Advanced form builds upon BPPC. I will explain this in another article.  The lesson is that we need Basic before we can get to Advanced; and Advanced still leverages the Basic. So we have advanced the art of Privacy Consent, while providing something simply Basic, while continuing to develop toward Advanced.

This article is all about IHE Document Sharing, and not about FHIR. Yet the same lesson needs to be recognized in [FHIR](https://healthcaresecprivacy.blogspot.com/2016/05/simplified-fhr-privacy-consent.html). We should start out Basic and then continue on to more Advanced. Same lesson needs to be recognized in [HEART](https://healthcaresecprivacy.blogspot.com/2015/11/heart-profiles-for-review-comment-and.html), with the UMA effort. We should start out Basic and then continue on to more Advanced.

[Historic articles Patient Privacy controls (aka Consent, Authorization, Data Segmentation)](https://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

- [electronic Privacy Consent -- Patient choice](http://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html)

- [Privacy-by-Design Data-Analytics Platform on FHIR](https://healthcaresecprivacy.blogspot.com/2016/07/privacy-by-design-data-analytics.html)

- [Simplified #FHIR Privacy Consent Directive resource](https://healthcaresecprivacy.blogspot.com/2016/05/simplified-fhr-privacy-consent.html)

- [Consent given to authorized representative](https://healthcaresecprivacy.blogspot.com/2016/04/consent-given-to-authorized.html)

- [Patient ID is critical to Enabling Privacy](https://healthcaresecprivacy.blogspot.com/2016/04/patient-id-is-critical-to-enabling.html)

- [Consent to grant read access to a specific types of FHIR Resources](https://healthcaresecprivacy.blogspot.com/2016/04/consent-to-grant-read-access-to.html)

- [electronic Privacy Consent -- Patient choice](http://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html)

- [BPPC is not just for XDS/XCA](http://healthcaresecprivacy.blogspot.com/2016/02/bppc-is-not-just-for-xdsxca.html)

- [How to set the ConfidentialityCode](http://healthcaresecprivacy.blogspot.com/2015/07/how-to-set-confidentialitycode.html)

- [Strawman on Consent Directive](http://healthcaresecprivacy.blogspot.com/2015/05/strawman-on-consent-directive.html)

- [Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html)

- [Break-Glass on FHIR](http://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir.html)

- [Healthcare Patient Consent -- Lessons learned from Creative Commons](http://healthcaresecprivacy.blogspot.com/2014/08/healthcare-patient-consent-lessons.html)

- [Enabling Patients to Delegate Healthcare Information Access Authority](http://healthcaresecprivacy.blogspot.com/2014/02/enabling-patients-to-delegate.html)

- [Define](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)[Atom](http://healthcaresecprivacy.blogspot.com/2014/05/atom.html) -- Too many definitions in use today

- [Defining Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html)

- [Safety vs Privacy](http://healthcaresecprivacy.blogspot.com/2013/04/safety-vs-privacy.html)

- [Privacy Consent State of Mind](http://healthcaresecprivacy.blogspot.com/2013/04/privacy-consent-state-of-mind.html)

- [Universal Health ID -- Enable Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [Simple and Effective HIE Consent](http://healthcaresecprivacy.blogspot.com/2012/02/simple-and-effective-hie-consent.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [Data Segmentation - now I know where the term comes from](http://healthcaresecprivacy.blogspot.com/2011/10/data-segmentation-now-i-know-where-term.html)

