# IHE ITI slate for 2013-2014 development

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/12/ihe-iti-slate-for-2013-2014-development.html
Published: 2012-12-05T19:30:00Z
Updated: 2012-12-05T19:30:09.583Z
Author: John Moehrke

---

The [IHE](http://www.ihe.net/Technical_Framework/index.cfm#IT) [ITI Technical Committee](http://wiki.ihe.net/index.php?title=ITI_Technical_Committee) met this week and accepted all received work items. We spent the majority of the time doing scope narrowing and shifting schedules. This because there is strong interest from many different stake holders, and we couldn't do all the work proposed. After much â€˜constructive discussionâ€™ we think we have a plan for how to make progress on all of the work items. This decision is a very hopeful decision given that last year we all got highly distracted by outside factors (e.g. Meaningful Use) and thus hardly delivered anything more than one profile ([MHD](http://healthcaresecprivacy.blogspot.com/2012/11/ihe-mhealth-hackathon.html)).

The following is the output of the ITI Technical committee. The first three rows are to finish up last yearâ€™s white papers, which is viewed as top priority. The rest of the items are the new work proposals and thus the biggest amount of work. The creative scoping has trimmed most profiles from their original proposal. The creative scheduling has one being prepared before we even meet at the first face-to-face.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj4AkTR4UJIZjLVt_MIvua3JbONCVuxIOa74AceLk76OkmOamieCs0E-AQjD-M0y8R6VvYJYYrUPvBx1rG1ThfNUhk4mEtNys3tJGrH68QNjrtd42QdKfSCFSX-1ZYAdTirzC6yj7XlYExk/s1600/image001-746726.jpg

**Findings Notification** â€“ this is a white paper that explores the use-cases of clinical findings notification. This paper is close to being made public.

**Document Sharing Re-documentation** â€“ this is an effort to fix the Technical Framework Volume 3 where it describes the Document Sharing metadata (XDS, XCA, XDR, and XDM). IHE is trying to present the metadata model in a more comprehensive way that also sets up the various transport types, including MHD in the future.

**De-Identification** â€“ this is a handbook that will assist IHE domain committees and others to assess any De-Identification needs and help build the appropriate algorithms for an analyzed use-case. This handbook will leverage pseudonym and anonymization mechanisms. This will be inclusive and in harmony with the [latest guidance from both the UK and USA](http://healthcaresecprivacy.blogspot.com/2012/11/guidance-regarding-methods-for-de.html)

[Internet User Authentication](http://healthcaresecprivacy.blogspot.com/2012/11/ihe-iua-internet-user-authentication.html) â€“ this profile proposal looks to fill the authentication gap that exists with the MHD profile, yet will produce a general purpose HTTP authentication for typical Mobile use-cases and RESTful. It likely will leverage oAuth 2.0, but the actual choice is a technical committee decision. This effort will look at existing efforts such as the USA RHEx effort.

**Extend XDW to XCA** â€“ The XDW (Cross-Enterprise Document centric Workflow) profile was originally scoped to use with XDS. This profile proposal extends that to XCA environments. This recognizes that many cross-enterprise workflows will take place across the boundaries of XDS.

**Care Service Discovery** â€“ This is likely to be an augmentation of HPD to support discoverability of clinical-services and possibly network-services to support those clinical services. It will likely also have a white paper that will explore how to leverage these and other IHE profiles to satisfy social use-cases.

**IntendedRecipient and Folder subscription** â€“ This profile recognizes that the current Document Subscription (DSUB) profile is too constrained. This profile will bring in additional use-cases and thus subscription types. The prime use-cases are those where a system desires to simply subscribe for any document with a specific IntendedRecipient value; and where a system desires to subscribe for updates to an identified folder.

**Pull-style Notification** â€“ this profile brings the use-case where a subscriber to a Document Subscription (DSUB) canâ€™t support the current call-back pattern. This profile suggests that there be a way to queue up the notifications and have the subscriber poll for any outstanding notifications. This is a functionality that comes from our underlying WS-Notification and thus should be a very small supplement to add this new pattern.

**What is Next?**
The Technical Committee meeting now is scheduling sub-committee meetings to develop the materials, full committee meetings to review the materials, and will target the Face-to-Face meeting March 18-22 in Treviso, Italy.

