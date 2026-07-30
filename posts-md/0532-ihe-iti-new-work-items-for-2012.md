# IHE ITI New work items for 2012

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/10/ihe-iti-new-work-items-for-2012.html
Published: 2011-10-13T15:56:00.001Z
Updated: 2011-10-13T16:05:47.312Z
Author: John Moehrke

---

The IHE IT Infrastructure (ITI) Planning committee [met this week](http://wiki.ihe.net/index.php?title=ITI_Planning_Committee_2011/2012_Planning_Cycle#ITI_Planning_Committee_f2f_-_11-12Oct11_AGENDA) to assess the new work item proposals. There are 6 new work items this year, only 2 of them propose new profiles. There is also some unfinished business from last year to cover.

The unfinished business is

- **Completion of the De-Identification cookbook** â€“ This is instructions to other IHE domains on how to create profiles that use anonymization and pseudonymization tools.

- **Create a Cross-Enterprise Workflow (XDW) training package** and assist other domains with the creation of their specific workflow that uses this infrastructure profile.

- And the** normal documentation maintenance** including change proposals, wiki, and profile lifecycle management.

The new work items were presented and discussed (the [FTP site has some of the presentations](ftp://ftp.ihe.net/IT_Infrastructure/iheitiyr10-2012-2013/Planning_Cmte/BriefProfileProposals/) but not all of them)

- **Critical and Important Results** â€“ This is a white paper proposal to expand on the need to notify someone when something critical or important is uncovered. The idea is that when something critical or important is discovered, one needs to discover who should be told about this information and how should they be told.  This seems to me to be something similar to how we expect PWP or HPD to be used, but with more deterministic results.

- **Patient Encounter Tracking Query** â€“ This is a profile proposal to address the need to have a system where actors that know where a patient is can record the location, so that others that want to find the patient can discover their location. This might be automated with things like RFID, might be automated through registration desk activities, or might be manual. The profile proposal looks to leverage the PAM and PDQ profiles.

- **Configuration Management for Small Devices** â€“ This is a white paper effort to explore the area of configuration management in a very broad way. The expectation is that this white paper could point at common solutions from general IT (like LDAP, DHCP, DNS) for some problems that are not healthcare specific, while identifying gaps that are specific to Healthcare. These gaps could then be proposed as work items next year.

- **Fix XD* Technical Framework** â€“ This a project to fixup the current documentation around the XD* family of profiles. There are a well-known list of things that people who come at IHE for the first time canâ€™t find. These things tend to be things that the long standing members simply assume are documented. This realization comes through Billâ€™s experience with the Connectathon test tools development and assisting individuals with their development efforts. This item seems to always be outstanding, but we must take it on as a top priority and get it done, well better. The result MUST not change any normative meaning. This is simply reforming the documentation so that it is more readable and understandable.

- **Document Access for mHealth** â€“ This is the project that [Keith](http://motorcycleguy.blogspot.com/2011/09/ihe-xds-for-mhealth-access-to-hie.html) ([and I](http://healthcaresecprivacy.blogspot.com/2011/09/securing-mhealth-role-of-ihe-profiles.html)) submitted. The proposal today is mostly identifying the constrained environment that is most prevalent on mobile devices (phones, tablets, etc) but which exists in other places. This constrained environment has troubles with the SOAP stack used in the XDS/XCA environment, and also find the ebRIM encoded metadata harder to manipulate. The proposal is thus to come up with an interface (SOA like) that an organization can offer to their users that is more attractive to these developers and thus will drive for Apps that might be more reusable across organizations.

The new work items  were discussed, evaluated, and prioritized.  Given the few number of items, they are all being handed over to the Technical Committee for evaluation.

**Proposal title**

**Critical & Important Results**

**Patient Encounter Tracking Query**

**Config Mgmt for Small Devices**

**Fix XD* Technical Framework**

**Document Access for mHealth**

**Proposal type**

White Paper

Profile

White Paper

Refactor Doc

Profile

**Workload Size Estimate**

Medium

Medium

Large

Medium

Large

**The significance and urgency of the interoperability problem in the business of healthcare?
low 1 - 5 high**

4

3

3

4

4

**Benefit to global community
low 1 - 5 high**

5

4

3

5

4

**Degree of expected adoption (for WP relates to use of the content)
low 1 - 5 high**

3

3

2

5

5

**Alignment with IHE development domains outside of ITI
low 1 - 5 high**

4

3

4

4

3

**Alignment with internal responsibilities of ITI
low 1 - 5 high**

5

4

4

5

5

**Total Score
5-25**

21

17

16

23

21

**Criteria-based Ranking**

2.5

4

5

1

2.5

There was a priortization step, but it resulted in mostly the same outcome as the above evaluation.

The [Technical](http://draft.blogger.com/goog_713376697)[Committee](http://draft.blogger.com/goog_713376697)[meets next month](http://wiki.ihe.net/index.php?title=ITI_Technical_Committee#Work_for_next_year). Their task at that time is to determine the feasibility of these work items, dig deeper on the available standards, assess more strongly the size estimates, and make sure that resources are lined up and ready to execute.  The result is a joint meeting of the Technical and Planning committee to decide on what actually will be worked on next year.  The capacity estimate we guessed at during the start of the meeting seems like it might fit all this content. I worry about that as we always increase scope on work items, and then end up with poor quality and missed deadlines.

Between now and the next meeting, Keith and I must do a better job of explaining the scope of our mHealth proposal. For example does it support both query/retrieve and Create? Is it a Cross-Enterprise profile, or one that we only assess as a last-mile API that an organization hosts for their users? Of the XDS queries, which ones are needed and how constrained can those be? How much can we off-load to the Service as the Client really doesn't need to be bothered? What might the metadata encoding simplification look like? What technologies are in scope? What deployment scopes can be placed on profile? How will privacy and security be handled? [Keith got a good start on this in an email.](http://groups.google.com/group/ititech/browse_thread/thread/2f7cbc25bf9a4999)

**Other business**

The planning committee is responsible for other things, such as education and outreach. In this space there is some really good progress. The first white paper is critical, there isn't much to look at today but we are working hard to make it highly useful.

- [White Paper on how to use the IHE Profiles to share documents](http://wiki.ihe.net/index.php?title=HIE_via_IHE_whitepaper)

- [Educational presentation content and webinars](http://wiki.ihe.net/index.php?title=ITI_Educational_Material)

- [Wiki profile descriptions](http://wiki.ihe.net/index.php?title=Profiles#IHE_IT_Infrastructure_Profiles)

- Preparation for meeting at HIMSS

- Assess other opportunities for communicating about ITI work

