# HL7 Ballot for September

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/09/hl7-ballot-for-september.html
Published: 2010-09-17T14:24:00Z
Updated: 2010-09-17T14:24:11.349Z
Author: John Moehrke

---

There are a few HL7 ballots out this month that are relevent to Security and Privacy. This a rather light ballot compared to past, but those that are out there are well worth spending your time reviewing and commenting.

The following are the two ballot entries that have security or privacy aspects:

- **HL7 Clinical Context Management Specification Version 1.6**

- This ballot proposes some new additions to CCOW to support setting and getting the "User" context with SAML Assertions. The expectation is that with this addition the Context Manager and other Participating Applications can have a higher assurance that the user was authenticated, they can know how the user was authenticated, they can know other attributes about the user, and they can potentially get proxy SAML Assertions based on the user authentication SAML Assertion. The benefit of this is that the those Applications that are participating in a CCOW context can get something more 'secure' than simply a username and stored password. Now they can get SAML Assertions so that when they talk to their backends or external HIE they can use SAML Assertions. This supports [Healthcare use of Identity Federation](http://healthcaresecprivacy.blogspot.com/2010/07/healthcare-use-of-identity-federation.html)

- **HL7 Version 3 Standard: Privacy, Access and Security Services (PASS) - Audit Services, Release 1**

- This ballot takes IHE ATNA audit log message and uses it as the core audit log schema for a SOA based Audit Log Repository. The first service entrypoint is a submit audit record that recognizes as compliant the IHE ATNA transaction. The second service entrypoint creates a query service endpoint that allows for retrieval of audit log entries that meet the query request. A prime use-case for this service entrypoint is to retrieve all the audit log entries that would inform an Accounting of Disclosures.  This supports [Accountability using ATNA Audit Controls](http://healthcaresecprivacy.blogspot.com/2010/05/accountability-using-atna-audit.html)

Voting and sign-up are ongoing for all active ballots in the September 2010 Ballot Cycle.  Ballot pool signup will closes monday.  The Ballot Opening Announcement on the Ballot Desktop does list all the active ballots.  Postponed pools are indicated on the Ballot Desktop.  You can view the full Ballot Opening Announcement [here](http://www.hl7.org/documentcenter/ballots/2010SEP/announcements/Announcement%20of%20Ballot%20Openings%20for%20September%202010%20Ballot%20Cycle.pdf%20):

**Ballot Sign-Up Close Date â€“ September 20 **

The last day that voters can sign-up to take part in those pools open to sign-up is Monday, September 20 (end-of-day, midnight Eastern time).  This is also the last day that non-members can sign-up for Non-Member Participation in this ballot cycle.  We encourage everyone to sign up for any pools they are interested in as soon as possible.  This way, if you should have any difficulties we can hopefully address them before the sign-up close date.

**Ballot Voting Close Date â€“ September 27 **

Voting for all pools closes on Monday, September 27 (end-of-day, midnight Eastern time).

