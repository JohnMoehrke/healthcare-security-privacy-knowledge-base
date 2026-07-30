# MU2 Wave 1 of Draft Test Procedures -- Integrity Problem

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/09/mu2-wave-1-of-draft-test-procedures.html
Published: 2012-09-07T21:13:00.004Z
Updated: 2012-09-07T21:13:52.717Z
Author: John Moehrke

---

The first wave of Draft Test procedures is out:

>
For more information, and the Wave One 2014 Edition draft Test Procedures, please visit [http://www.healthit.gov/policy-researchers-implementers/2014-edition-draft-test-procedures](http://links.govdelivery.com/track?type=click&enid=ZWFzPTEmbWFpbGluZ2lkPTIwMTIwOTA3LjEwMzQxNjYxJm1lc3NhZ2VpZD1NREItUFJELUJVTC0yMDEyMDkwNy4xMDM0MTY2MSZkYXRhYmFzZWlkPTEwMDEmc2VyaWFsPTE3MTUwMzA3JmVtYWlsaWQ9am9obi5tb2VocmtlQG1lZC5nZS5jb20mdXNlcmlkPWpvaG4ubW9laHJrZUBtZWQuZ2UuY29tJmZsPSZleHRyYT1NdWx0aXZhcmlhdGVJZD0mJiY=&&&101&&&http://www.healthit.gov/policy-researchers-implementers/2014-edition-draft-test-procedures)

This is an opportunity to see if the interpretation you have of the Final Meaningful Use Stage 2 rules as the Testers have.  I looked at three of the test procedures that fall into my scope.

- **Â§170.314(d)(5)  Automatic log-off**  [Test Procedure](http://www.healthit.gov/sites/default/files/standards-certification/2014-edition-draft-test-procedures/170-314-d-5-automatic-log-off-2014-test-procedure-draft-v1.0.pdf)

- I think they correctly changed this to reflect the various ways that are used and are appropriate. It will be interesting to see specific types of EHR technology against this procedure, it is possible someone might still be confused.

- **Â§170.314(d)(8) Integrity** [Test Procedure](http://www.healthit.gov/sites/default/files/standards-certification/2014-edition-draft-test-procedures/170-314-d-8-integrity-2014-test-procedure-draft-v1.0.pdf)

- I think they are way off base, or too aggressively focused on the detail and loosing sight of the overall. They continue to have the language in their test procedure that have caused me to write my most popular article of all times "[Meaningful Use Encryption - passing the tests](http://healthcaresecprivacy.blogspot.com/2010/10/meaningful-use-encryption-passing-tests.html)". I am not happy about that article, but it gets to the point. The requirement for Integrity just like the requirement for Encryption is there to assure that where ever Integrity or Encryption technologies are utilized that legitimate and approved algorithms are used. Quite often this is next to impossible to prove. The best way to prove these is where interoperability protocols are used. [The Direct Project, and the Secure SOAP Transport have these algorithms built in](http://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-transports.html). So, testing these for interoperability will have the affect of testing the Integrity and Encryption lines. Thus a standalone procedure should focus ONLY on uses of Hashing or Encryption that is other than specified in the Transports section. Which nothing but Transports are required. Thus this procedure should start with "The EHR vendor shall identify how they utilize Integrity other than through defined Transports.". And then focus the testing on those.  This is not going to make it easy, as the place where this is going to happen is transparently in Databases, and Data-At-Rest. Thus there is nothing that the EHR vendor can possibly show. **I think this item should beâ€¦ Not Tested outside of integrated as part of Transport.**

- **Â§170.314(d)(9) Optionalâ€”accounting of disclosures** [Test Procedure](http://www.healthit.gov/sites/default/files/standards-certification/2014-edition-draft-test-procedures/170-314-d-9-accounting-disclosures-2014-test-procedure-draft-v1.0.pdf)

- I think they got this one in good shape too. It now is clear that the interpretation of this optional criteria is a User Interface where the user can indicate that a "Disclosure" has happened. Thus this is not any automated accounting, but does provide for a way to identify disclosures using readily available technology at the fingertips of those that might be involved in a legitimate disclosure. The test procedure seems reasonable as well.

