# IHE work items for 2012

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/11/ihe-work-items-for-2012.html
Published: 2011-11-17T18:59:00.001Z
Updated: 2011-11-17T19:28:30.689Z
Author: John Moehrke

---

The IHE IT Infrastructure Technical Committee met this week to determine the work items that they will work on over the 2012 development season. They started with the output of the [IHE IT Infrastructure Planning Committee selection of work item proposals](http://healthcaresecprivacy.blogspot.com/2011/10/ihe-iti-new-work-items-for-2012.html). The short answer is that they agreed to take on all of the work item proposals, with a few scope reductions.

The work items for 2012 are:

- **Completion of the De-Identification cookbook** â€“ This is instructions to other IHE domains on how to create profiles that use anonymization and pseudonymization tools. I am co-editor so, I will be very busy working on this, hopeful that we complete it early next year.

- **Critical and Important Results** â€“ This is a white paper proposal to expand on the need to notify someone when something critical or important is uncovered. The idea is that when something critical or important is discovered, one needs to discover who should be told about this information and how should they be told. This seems to me to be something similar to how we expect PWP or HPD to be used, but with more deterministic results.

- **Configuration Management for Small Devices** â€“ This is a white paper effort to explore the area of configuration management in a very broad way. The expectation is that this white paper could point at common solutions from general IT (like LDAP, DHCP, DNS) for some problems that are not healthcare specific, while identifying gaps that are specific to Healthcare. These gaps could then be proposed as work items next year. This work needs to be further broken up into two phases so that we can focus on phase 1 to assure we don't have too much work to do, and yet can produce something useful to the community.

- **Fix XD* Technical Framework** â€“ This a project to fixup the current documentation around the XD* family of profiles. There are a well-known list of things that people who come at IHE for the first time canâ€™t find. These things tend to be things that the long standing members simply assume are documented. This realization comes through Billâ€™s experience with the Connectathon test tools development and assisting individuals with their development efforts. This item seems to always be outstanding, but we must take it on as a top priority and get it done, well better. The result MUST not change any normative meaning. This is simply reforming the documentation so that it is more readable and understandable.

- **Document Access for mHealth** â€“ This is the project that [Keith](http://motorcycleguy.blogspot.com/2011/09/ihe-xds-for-mhealth-access-to-hie.html) ([and I](http://healthcaresecprivacy.blogspot.com/2011/09/securing-mhealth-role-of-ihe-profiles.html)) submitted. The proposal today is mostly identifying the constrained environment that is most prevalent on mobile devices (phones, tablets, etc) but which exists in other places. This constrained environment has troubles with the SOAP stack used in the XDS/XCA environment, and also find the ebRIM encoded metadata harder to manipulate. The proposal is thus to come up with an interface (SOA like) that an organization can offer to their users that is more attractive to these developers and thus will drive for Apps that might be more reusable across organizations.

- **Patient Encounter Tracking Query** â€“ This is a profile proposal to address the need to have a system where actors that know where a patient is can record the location, so that others that want to find the patient can discover their location. This might be automated with things like RFID, might be automated through registration desk activities, or might be manual. The profile proposal looks to leverage the PAM and PDQ profiles. This one really needs a english speaking editor and mentor. If we don't find one by December, this work item needs to be suspended.

Feel free to "[Ask me a Question](http://healthcaresecprivacy.blogspot.com/p/ask-me-question.html)" if you want to know more.

