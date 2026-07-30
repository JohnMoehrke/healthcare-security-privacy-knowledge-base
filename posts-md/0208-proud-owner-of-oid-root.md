# proud owner of an OID root

Originally posted: https://healthcaresecprivacy.blogspot.com/2026/07/proud-owner-of-oid-root.html
Published: 2026-07-15T17:27:29.640Z
Updated: 2026-07-15T17:27:29.641Z
Author: John Moehrke

---

Now that HL7 is bringing back the OID, as CDA can only handle OIDs and not URL system values. I went and [registered with iana](https://www.iana.org/assignments/enterprise-numbers/?page=1) for my own OID. It is not important to do this, but it is free. Now all of the test IGs that I have in my personal github can have their own OID root so that I don't need to constantly indicate in the ignorewarnings.txt that it is okay that my test IGs don't have OID assignments.

My assigned OID root: **1.3.6.1.4.1.66281**

I have been using the official example OID root: **2.999**; which is the equivalent of the DNS **example.com**, or **example.org**. I have used this **2.999** OID root with the IG publisher, which I felt was an appropriate defiance. Unfortunately, it just changes the warning.

I have a page that I refer to often on [creating and using Unique IDs - UUID - OID](https://healthcaresecprivacy.blogspot.com/2011/02/creating-and-using-unique-id-uuid-oid.html)

On that article I did add comments that explained the 2.999 OID root. -- [https://oid-base.com/get/2.999](https://oid-base.com/get/2.999)

I have also noted that USA SSN has reserved those SSN numbers starting with 666. I have not seen an official statement to this, but [plenty of confirmations](https://www.studycountry.com/wiki/can-ssn-start-with-666). The concept is that they know they can't issue a 666. number to someone as that someone would see it as the USA government labeling them with the mark of the devil. So when I make test patients, I give them SSN starting with 666-.

