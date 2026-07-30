# HealthIT standards Maturity vs Adoption

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/07/healthit-standards-maturity-vs-adoption.html
Published: 2011-07-08T01:17:00Z
Updated: 2011-07-08T01:17:08.702Z
Author: John Moehrke

---

This week the [HIT Policy committee](http://healthit.hhs.gov/portal/server.pt?open=512&objID=1269&parentname=CommunityPage&parentid=5&mode=2) had a [meeting](http://healthit.hhs.gov/portal/server.pt?open=512&objID=1814&parentname=CommunityPage&parentid=18&mode=2&in_hi_userid=11673&cached=true) with an [agenda](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_12811_955019_0_0_18/hitpc-agenda-07-06-11.pdf)item where Doug Fridsma and John Halamka gave a [Briefing on HIT Standards Committee](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_12811_955036_0_0_18/hitpc-standards-update-07-06-11.ppt). I have been following these meetings closely, so it was rather surprising what this Briefing contained. As always I encourage everyone to participate, this is one of the only Transparency mechanisms that these FACA committees have (They claim to be Open with the open public comment at the end of each meeting, but these comments seem always to fall on deaf ears). John Halamka blogged [his summary of this testimony](http://geekdoctor.blogspot.com/2011/07/testimony-to-hit-policy-committee.html).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjGJB6ZLWiW1QIniFR4PJSp4PbZFVBJ3VjnA7D2NI3S6HwU0k3popm8zVv_L_qCJMmd_BYJHn0YqAiQQsTedrkZJq05g6UM01JGOk9h-b2eMO3Uu_TmCGSwYF_ZrtYEZDFoauExtBesREml/s1600/hitpc-standards-update-07-06-11-slide24.png

One slide has come up over and over in discussions, slide 24. This slide seems to have appeared out of nowhere. I know that none of the groups I participate in were asked for input to it. There is no explanation of the axis, but they were verbally explained. Not too surprising. Maturity is related to how solid the specifications are and includes if there are implementation guides available.

The concern I have is with the Adoption definition. I am hearing the same concern from others as well. The problem is that the Adoption measurement don't seem to be being applied equally to each item. The REALLY BIG PROBLEM is that there seems to be no way to correct the chart. Now that the chart has been presented to the HIT Policy committee, it will now be considered fully correct. Now, I don't have too much in the way of corrections, but I would like to see an OPEN and TRANSPARENT analysis.

I understand how "Direct Transport" is being looked at as "SMTP", and easily agree that SMTP is very mature and widely adopted. But if we look at how a Direct ecosystem is built, this is not enough of a picture. We must also think about the support transport for all of the Direct Specifications and specifically how well these are implemented in Healthcare workflows. Saying that "SMTP" is highly adopted doesn't mean that "Direct" is highly Adopted. Until the transport is integrated into Healthcare workflows we must recognize this as pure pilot projects and pure pilot use.

I really don't understand how the "Direct Security" is put into this space. The HIT Standards, HIT Policy, S&I Framework, and others are still arguing over certificate distribution; something that will take a long time to argue over due to the need to have the certificates before you communicate.

Where as the NwHIN Exchange specifications seem to be split all over the pace. I am surprised at how the Query could be less adopted than the Retrieve; especially since the only way to Retrieve something is to have previously Queried for it. Thus one must implement Query at the same rate as Retrieve.  I and others on the NwHIN Exchange calls expressed surprise at the NwHIN Exchange evaluation. Somehow all the participation in the NwHIN Exchange is discounted as LOW:

From the[NwHIN Exchange site](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__nhin_exchange/1407) -- Participants (as of 6/13/11):

- [Center for Disease Control and Prevention](http://www.cdc.gov/) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [Department of Defense](http://www.defense.gov/Releases/Release.aspx?ReleaseID=13360) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [Department of Veterans Affairs](http://www1.va.gov/opa/pressrel/pressrelease.cfm?id=1824) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [Douglas County Individual Practice Association (DCIPA)](http://www.dcipa.com/)

- [EHR Doctors](http://www.ehrdoctors.com/) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [HealthBridge](http://www.healthbridge.org/) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [Inland Northwest Health Services](http://www.inhs.info/Default.aspx) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [Kaiser Permanente](http://xnet.kp.org/newscenter/pressreleases/nat/2009/112509vapilot.html) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [MedVirginia](http://www.medvirginia.net/) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [North Carolina Healthcare Information and Communication Alliance, Inc. (NCHICA)](http://www.nchica.org/) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [OCHIN](http://www.ochin.org/) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [Social Security Administration](http://www.socialsecurity.gov/hit/)http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

- [Regenstrief Institute](http://www.regenstrief.org/) http://healthit.hhs.gov/portal/server.pt?open=512&objID=1870&parentname=CommunityPage&parentid=86&mode=2&in_hi_userid=11113&cached=true

And that list is short, as GE Healthcare participates through my direct participation and indirectly through a set of State based Health Information Exchanges such as [KeyHIE](http://www.genewscenter.com/content/detail.aspx?ReleaseID=11709&NewsAreaID=2).

Please give us a way to provide input. Please allow us to participate in an open and transparent process. There is such positive movement, why is it always ignored?

