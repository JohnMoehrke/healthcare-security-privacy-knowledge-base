# Kerberos required in 2011 then forbidden in 2013

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/09/kerberos-required-in-2011-then.html
Published: 2009-09-22T20:54:00Z
Updated: 2009-09-22T20:54:46.476Z
Author: John Moehrke

---

The HIT-Standards Privacy and Security [selections](http://healthcaresecprivacy.blogspot.com/2009/09/hit-standards-meaning-of-s-selections.html)include Kerberos for 2011 then Kerberos disappears in 2013-2015. This has caused much discussion and confusion, so let me summarize what is going on.

The committee is trying to say that if a healthcare provider does not have an enterprise class authentication in place today they need to do so and Kerberos (i.e. IHE-EUA) is the right solution (e.g. Microsoft Active Directory). Implementing a User Directory is a very good thing to do as it allows the organization to have a centralized identity system for users (i.e. HITSP/T64 -> IHE-PWP -> LDAP) with a centralized authentication system (Kerberos). Thus allowing for more consistent user provisioning and deprovisioning.

The key is that the EHR must leverage this User Directory for authentication and user attributes including security attributes. This is the only way that the providers get out from under having to remember multiple user identities and credentials for each system they use. This gets to a problem many providers have today in that they need to remember around 20 different credentials (user/pass). Often the short term solution given is to implement a Single Sign-On (SSO) solution, which masks the problem by putting a portal in front of each application that 'manages' the 20 different credentials but presents the provider with one credential. There are many problems with SSO, but the solution is likely better than nothing. To be clear, the solution selected by HIT-Standards is to implement a single identity solution and require that the EHR support this solution.

The problem with Kerberos is that the technology is not well suited for communications outside of the organization as it is very time-sensitive. For communications across organizational boundaries the solution is SAML identity assertions (i.e. C19 - XUA). The reason why SAML was not selected for 2011 is that the marketplace is not yet mature with SAML implementations, so by putting this clearly in 2013 the HIT-Standards are telling EHR vendors to get implementing it.

So, why does Kerberos dissapear in 2013? The use of Kerberos authentication will cause an irreconcilable conflict for the Federal providers (i.e. VA, MHS, IHS). Recent updates to NIST SP 800-63 (E-Authentication Guideline), which are still in draft, ([http://csrc.nist.gov/publications/drafts/800-63-rev1/SP800-63-Rev1_Dec2008.pdf](http://csrc.nist.gov/publications/drafts/800-63-rev1/SP800-63-Rev1_Dec2008.pdf)) disallow Kerberos at Level 2 assurance or above. That is, Kerberos is being relegated to Level 1 assurance (essentially no assurance at all). The relevance of this is that in 2011 Federal agencies will no longer be permitted to use Kerberos for authentication in any new systems they implement, since those systems will require at least Level 2 (more likely Level 3) assurance.

By setting Kerberos as a 2011 standard HIT-Standards is in effect telling the Federal partners that they are required to implement a standard which OMB forbids them from implementing. Now, clearly, the situation is different in the private sector, where they are not subject to OMB requirements. HIT-Standads does not want to create a path whereby the Federal and private healthcare sectors diverge on security standards.

So HIT-Standards tried to walk the line between all of these issues. The end result is: If you can implement a Central Directory, do so. If you are a vendor, support Kerberos/LDAP as a User Directory. Everyone start looking at implementing SAML.

