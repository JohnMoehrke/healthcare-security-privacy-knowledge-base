# MU2 - Why must healthcare use custom software when Thunderbird and Outlook would do?

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/10/mu2-why-must-healthcare-use-custom.html
Published: 2012-10-25T13:05:00.002Z
Updated: 2012-10-25T13:05:35.333Z
Author: John Moehrke

---

Now that we have the [test procedure for Transmit](http://www.healthit.gov/sites/default/files/standards-certification/2014-edition-draft-test-procedures/170-314-e-1-view-download-transmit-2014-test-procedures-draft-v-1.0.pdf), the die is cast to continue to force Healthcare to use customized software even though we are so close to using Off-The-Shelf secure e-mail such as Thunderbird and Outlook.

>
TE170.314.b.2 â€“ 2.05: Using the Inspection Test Guide, the Tester shall verify that the EHR technology is able to correctly discover and use address-bound and domain-bound certificates hosted in both DNS and LDAP

This test script correctly indicates that the EHR technology under test must do both DNS and LDAP methods for certificate discovery. This is indeed the way that the 1.1 version of the Direct project specification says, that both methods must be tried. This is even the recommendation of the S&I Framework project that requested that LDAP be added to the Direct project specification. I have [commented against this requirement at all levels](http://wiki.directproject.org/Applicability+Statement+for+Secure+Health+Transport+-+Call+to+Consensus+on+Requiring+DNS+and+LDAP+Certificate+Discovery), and will continue to comment against it. I didn't use my negative vote, as I recognized that I was but a single vote.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgY3QX50gCAKW5LmcrEc0S1xX6nf_FC0Q6mGK7sfBphyY4PjhmGvP7fWm3SgOhrVi1mGGw_C3cTWnAsze_VZTlV4raMmR4S-JCFMsZoiiQ3y-q1UOrnOidqYO4sRNLqQ4URcJsu_mwwNJrz/s1600/EHR+Patient+Portal+-+Transmit.pngWhat the issue is, when you have 2 methods to do the same thing one must define how you will get Interoperability between the methods. The two methods are the DNS-CERT and LDAP. What I mean is that you either force all certificates to be dual-published in both methods, or you force all clients to query both methods. The specification choose to query both methods. This WILL work. I am not arguing that it wonâ€™t work. But it has consequences that are not fully recognized.

I really donâ€™t understand why this model was chosen. I think the thinking was that senders should be as robust as possible and try both protocols. I donâ€™t disagree with this robustness principle. What I disagree with is FORCING this principle, that is forcing that all senders must do both methods.  Since you are forcing that both methods are tried, you  are forcing Providers and Patients to use customized software for healthcare. If this was not forced, then off-the-shelf e-mail such as Thunderbird or Outlook could be used. But since these off-the-shelf emails donâ€™t do the DNS-CERT certificate discovery methods they canâ€™t be used, even though they do a fine job with the LDAP lookup and the S/MIME handling.

Those that are hosting HISP or Identity services should be the most capable of hosting 2 services rather than just one. Thus my recommendation was that certificates be published in both methods. The advantage of this is that it wouldn't have invalidated early Direct clients (which forcing both does), and would have allowed for off-the-shelf e-mail. Further advantage is that we could have retired the method that was not adopted as much over time. Meaning that we would have had a way to transition to the winning protocol, which ever it might be. I am sure LDAP will win, but that is not important to the point.

One last point. Forcing dual publication on the service side would have impacted fewer sites than the forcing of the dual method on the sending side. The reason is simple, there will be more senders then there will be service sides. Simple observation says that there will surely be organizations that will be publishing many number of certificates for endpoints within their organization (Surescripts, HealthVault, etc). This math alone makes it clear there will be fewer services then there will be senders.

LDAP will win in the end because it provides for Healthcare Provider Directories, and other directories as well. Directories enable pick-lists of endpoint addresses, queries, and other workflows. Note that I do agree that DNS-CERT is likely a short-term win as we haven't quite nailed down what a Healthcare Provider Directory is, how one would find them, and such.

http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html

**Slightly concerning is the test step**

>
TE170.314.b.2 â€“ 2.07: The Tester cause the EHR to register the Direct (To) addresses specified in the Transport Testing Tool to be available as a recipient for sending of Direct messages within the EHR

It is possible that the EHR technology might want to have a pick-list for destination addresses, but surely the EHR technology better be able to take just a typed e-mail address. If we really are going to constrain to a pick-list, then why do we need â€˜universal discoverability . With a â€˜pick-listâ€™ why do we need to have all this discussion around Certificate Authority â€“ and Identity Proofing. We would just need a directory of â€˜approvedâ€™ addresses. Heck we wouldn't even need S/MIME, as we could have gotten by just fine with a walled-garden security modelâ€¦

**More:**

- [Stepping stone off of FAX to Secure-Email](http://healthcaresecprivacy.blogspot.com/2012/03/stepping-stone-off-of-fax-to-secure.html)

- [Patient Portal - view, download, TRANSMIT](http://healthcaresecprivacy.blogspot.com/2012/10/patient-portal-view-download-transmit.html)

- [Direct addresses- Trusted vs Trustable](http://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html)

- [A broadly usable HIE Directory](http://healthcaresecprivacy.blogspot.com/2011/05/broadly-usable-hie-directory.html)

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2011/05/broadly-usable-hie-directory.html)

- [Healthcare Provider Directories](http://healthcaresecprivacy.blogspot.com/2010/08/healthcare-provider-directories.html) Profile

