# Strawman on Consent Directive

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/05/strawman-on-consent-directive.html
Published: 2015-05-03T14:34:00.002Z
Updated: 2015-05-03T14:34:27.762Z
Author: John Moehrke

---

The Healthcare community continue to struggle with Patient Consent Directives. I assert it is because we have two very different forces:

- Healthcare Business -- that are under many regulatory, ethical, and business forces. This makes it very hard to change, especially hard to make radical changes. So this community needs very small realistic changes suggested that eventually produce the result desired.

- Patient Advocates -- that want a very different User Experience. This community wants all of the [Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html) implemented. They accept nothing less, likely because of the limited movement so far.

I support both views! But we can't go from one view to the other without taking some small steps.

We can't change Healthcare by writing very complex standards like the current FHIR [ConsentDirective](http://hl7.org/implement/standards/fhir/2015May/consentdirective-consentdirective.html), which is fundamentally a "[Contract](http://hl7.org/implement/standards/fhir/2015May/contract.html)" resource. And the CDA ConsentDirective is even less realistic. First I recommend that FHIR make ConsentDirective a resource rather than just profiles of Contract. I have defended this model so far, but the negatives are more powerful. People simply want a ConsentDirective resource.

Might I suggest that the ConsentDirective project include a
"Basic-ConsentDirective" that supports blanket consents without exceptions.
Essentially the common HIE policies from BPPC. These would be scoped to sharing
beyond the original organization and purpose for which the health information
was created. This form of a Consent Directive would need only (identifier,
issued, applies, subject, authority, domain, type=consent, subtype=, and possibly friendly and legal). This Basic Consent Directive
would support the following HIE subtypes:

-
Opt-In -- Agree to publish "All" healthcare information. Agree to Use and
Disclosure to "any" authorized individual of a "Treatment" or "Payment"
organization "For the Purpose" of "Treatment" or "Payment". No Redisclosure
allowed without further authorization. This agreement does not authorize other
accesses.

- Opt-Out allowing break-glass -- Agree to publish "All" healthcare
information. Agree to Use and Disclosure to "any" authorized individual of a
Treatment organization for specifically "Emergency Treatment" PurpoeOfUse, and
Payment of those treatment. This agreement does not authorize other
accesses.

- Opt-In summary access only -- Agree to publish "All" healthcare information.
Agree to Use and Disclosure to "any" authorized individual of a "Treatment" or
"Payment" organization "For the Purpose" of "Treatment" or "Payment"; to only
the medications and allergies summary. No Redisclosure allowed without further
authorization. This agreement does not authorize other accesses.

- Opt-In break-glass summary access only -- Agree to publish "All" healthcare
information. Agree to Use and Disclosure to "any" authorized individual of a
"Treatment" organization "For the Purpose" of "Emergency Treatment" and Payment
of those treatment; to only the medications and allergies summary. No
Redisclosure allowed without further authorization. This agreement does not
authorize other accesses.

- Opt-Out no break-glass -- Agree to publish "All" healthcare information. This
agreement does not authorize any accesses.

- Opt-Out completely -- Agree to publish "No" healthcare information beyond
originating organization intended use.

I will also note that I think we should look to â€˜Creative Commonsâ€™, which I explain on my blog.

                [http://healthcaresecprivacy.blogspot.com/2014/08/healthcare-patient-consent-lessons.html](http://healthcaresecprivacy.blogspot.com/2014/08/healthcare-patient-consent-lessons.html)

More advanced consents can be made once we have this basic vocabulary in place. For example we an then add exceptions, which can be computable rules. For example an "Opt-In" but not to Doctor Bob. All of the Opt-In logic is understood from the reference to Opt-In, the only thing that needs to be added is the exception for Doctor Bob. No need to duplicate the logic of Opt-In in each patient chart.

References:

[Patient Privacy controls (aka Consent, Authorization, Data Segmentation)](http://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

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

[Access Control (Consent enforcement)](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC)

- [What does the SAML assertion mean in a XDS/XCA query/retrieve?](http://healthcaresecprivacy.blogspot.com/2014/03/what-does-saml-assertion-mean-in-xdsxca.html)

-  [Healthcare Privacy and Security Classification System (HCS)](http://healthcaresecprivacy.blogspot.com/2014/01/recirculation-ballot-of-hl7-healthcare.html)

- [Define](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)[Atom](http://healthcaresecprivacy.blogspot.com/2014/05/atom.html) -- Too many definitions in use today

- [Healthcare access control scope constraints on OAuth tokens](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)

- [Advanced Access Controls to support sensitive health topics](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html)

- [Policy Enforcing XDS Registry](http://healthcaresecprivacy.blogspot.com/2012/03/policy-enforcing-xds-registry.html)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [Healthcare Access Controls standards landscape](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html)

- [Handling the obligation to prohibit Re-disclosure](http://healthcaresecprivacy.blogspot.com/2011/11/prohbition-of-re-disclosure.html)

- [Access Controls: Policies --> Attributes --> Implementation](http://healthcaresecprivacy.blogspot.com/2011/11/access-controls-policies-attributes.html)

