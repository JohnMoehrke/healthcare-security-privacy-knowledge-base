# User requirements vs System requirements

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/10/user-requirements-vs-system.html
Published: 2010-10-25T16:46:00Z
Updated: 2010-10-25T16:46:20.531Z
Author: John Moehrke

---

Much of the confusion around specific criteria in the MU certification are due to poor engineering principles. The level of the requirements in the regulation are not all the same, more specifically they are not all traceable to User Requirements.

Engineering Science teaches us that **good design starts with "User Requirements"**. These are requirements that the user 'wants' or would 'ask for'. User Requirements are those that can be observed from outside the system. These are requirements that drive the system to some functionality or outcome. These are not criteria that define a specific architecture or specific design. Yes they have some low level detail regarding interoperability (format, vocabulary, etc). But Interoperability also doesn't define an architecture or specific design.

Note that User in this does not necessairly mean only the 'healthcare provider'. This is often a mistake that produce designers also forget. Users in this level of design is anyone that expects something of the system. This includes the IT-Staff who need to keep the system up-and-running; Privacy office that needs to rely on this system to enforce privacy policy and report on potential privacy issues; Security office that needs this system to protect against risks to confidentiality, integrity, and availability; etc.  For Meaningful Use the "User" is also the government reporting agencies that want to get reports on outcomes and quality.

**Requirements must be testable.** That is that they are fully defined in a way that can be unambiguously tested. This means that they are not vague, often seen as things that "I know it when I see it". If the requirements are written such that they are dependent on a human judgement; then they are not requirements.

**Where Meaningful Use goes wrong on the security requirements is that they are not traceable up to a User Requirement. **I will only speak for the security requirements, there might be other examples. It is this lack of linkage that gets people frustrated at trying to figure out what is really needed. The security requirements are good system requirements, and they are testable. Although the security requirements are good, they are not inclusive or complete.

The result is that the EHR vendors will design to these System Level requirements with no regard for how the User will use the system. They will [pass the test](http://healthcaresecprivacy.blogspot.com/2010/10/meaningful-use-encryption-passing-tests.html), but provide no linkage to a user need and thus produce useless functionality.

All of the Meaningful Use requirements need to be specified at the User Level. Security is very easy to add as a User Requirement. "System shall protect against reasonable risks to Confidentiality, Integrity and Availability".  One can even get more specific to the user as Privacy Officer, Security Officer, IT-staff, etc.  [None of this was done](http://healthcaresecprivacy.blogspot.com/2010/08/meaningful-use-security-capabilities_03.html). There was discussion in committees that HIPAA already requires security, but what is not obvious is that HIPAA requires the operational environment to be secure, not necessarily the EHR. So, basic requirements would have closed this loop and made things more clear and smooth. There is even a really nice breakdown of general security into reusable system requirements: NIST SP 800-53 â€œRecommended Security Controls for Federal Information Systems and Organizationsâ€ ([http://csrc.nist.gov/publications/PubsSPs.html](http://csrc.nist.gov/publications/PubsSPs.html)).

One can have User Requirements that are very close to the Meaningful Use requirements; but differ in that they are related to a user need. For example a [better way to express Â§170.302](http://draft.blogger.com/goog_1073729107)**[(u)](http://healthcaresecprivacy.blogspot.com/2010/09/meaningful-use-certification-issue-with.html) **would have been: **"When data sets are exported for portable use, the system shall provide a user selectable, standards based and interoperable functionality that protects the data set against risks to security and privacy."** This does presume that the system protects data sufficiently while it is within it's control, a presumption that should be explicit with the general security requirement.

