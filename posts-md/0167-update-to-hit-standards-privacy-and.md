# update to HIT-Standards Privacy and Security selections

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/10/update-to-hit-standards-privacy-and.html
Published: 2009-10-16T13:20:00Z
Updated: 2009-10-16T13:20:46.730Z
Author: John Moehrke

---

This week [HIT-Standards meet again](http://healthit.hhs.gov/portal/server.pt?open=512&objID=1271&&PageID=16498&mode=2&in_hi_userid=11113&cached=true#PastMtgs) and there was some updates.

The Privacy and Security updates were fixes. They consisted of two items:

1) SOAP version now fixed at 1.2. There was a misunderstanding before that SOAP 1.1 was needed, but reality is that the marketplace using the selected healthcare standards isn't actually using any SOAP 1.1

2) Kerberos. This was a misunderstanding as well that [I outlined on my blog](http://healthcaresecprivacy.blogspot.com/2009/09/kerberos-required-in-2011-then.html)

A [big question came up after the meeting when Keith](http://motorcycleguy.blogspot.com/2009/10/interpreting-hit-standards-spreadsheet.html) was looking at the whole specifications again. From the selections it is not clear what Topology is required in 2011. It is clear that SC112 is required, but this include multiple Topologies that use XDS(XCA), XDR, and XDM. I have been told that the answer is as Keith has stated. Pick at least one. Anyone will do. What is not as clear is that when you pick one, you need to pick both-sides of that one. That is you must pick a way to send and receive. For Example: If you pick XDM, then you must be able to publish to XDM and consume XDM. Ill be interested to hear Keith's perspective on consumption, does this mean just 'view' or does it mean 'import in full fidelity with complete attribution of source'?

