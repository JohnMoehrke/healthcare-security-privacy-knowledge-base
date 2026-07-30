# A Look into the HHS Posts Data Breach Notifications

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/03/look-into-hhs-posts-data-breach.html
Published: 2010-03-30T01:57:00.001Z
Updated: 2010-07-02T17:23:22.742Z
Author: John Moehrke

---

I poked around the [Data Breach Notifications](http://healthcaresecprivacy.blogspot.com/2010/02/hhs-posts-data-breach-notifications.html) that are posted on the HHS site.  I parsed and sorted the data and it is clear there is far more to fear in the old fashioned physical theft than anything else.

- There are only **3 entries** that are _hacking_. Resulting in a little over **12k patients exposed**.

- There are only **7 entries** that are â€˜_unauthorized access_â€™, which I assume means that someone was given access under a liberal access control policy but were caught accessing records they should not be. Such as a VIP, which given how few VIPs there are these would not be reported. So the access are more like the [Coral Gables couple](http://healthcaresecprivacy.blogspot.com/2010/03/coral-gables-couple-again-accused-of.html). These 7 entries resulted in **37k patients exposed**

- Where as there are **11 entries** that seem to indicate _human error_, resulting in **103k patients exposed**. I included in this group the â€˜lossâ€™ and â€˜otherâ€™. Given the other information this seemed like the right thing to do with these.

- And _Good-Old-Fashioned physical theft_ account for **31 entries** and **1 Million patients exposed **

- 23 of these look like they could be just theft of some technology to be pawned.

- Which leaves 8 entries that the theft is of paper, backup tapes, CDsâ€¦ clearly after the data

- 2 of the 31 entries are network servers, the rest are portable devices, laptops, or desktops (which I assume were out in the open).

Applying hard-drive encryption to the portable devices, laptops, and exposed desktops would have prevented 29 of these entries from needing to be reported and a Million patients would not have needed to be notified and worry about the result. The theory is that by encrypting these hard-drives the data would have been un-usable without access to the encryption keys. The presumption here is that the key is not pasted to the laptop with a post-it note. As I said above, I suspect that the majority of these physical thefts are people simply looking to pawn the technology. See [Encryption  is mandatory.](../2009/09/21/encryption-is-mandatory/)

It is amazing what I can draw from simple data. I could be 100% wrong. I am not a professional statistician nor do I play one on TV.  It is interesting that this is data before the Meaningful Use, HIE and NHIN push. It will be interesting (I hope not) to see what these statistics look in 2015.

Update: Nice graphical representation of these breach stats: [http://www.symtym.com/2010/06/breach-analysis.html](http://www.symtym.com/2010/06/breach-analysis.html)

