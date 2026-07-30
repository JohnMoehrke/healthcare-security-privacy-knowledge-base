# Creating and using Unique ID - UUID - OID

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/02/creating-and-using-unique-id-uuid-oid.html
Published: 2011-02-23T22:44:00Z
Updated: 2011-02-23T22:44:56.053Z
Author: John Moehrke

---

Standards often need to have a way to identify an object in a way that is impossible to be confused. A way to come up with a 'name' for an object that no other object has - A Unique Identifier. Standards have solved this multiple times, with two primary ways common today. One of those common ways being able to incorporate the other. I am not going to fully describe these unique identifiers, but rather point at the few references that you need to use.

When I say a Unique Identifier of an Object. I truly mean any object. This goes for things like Patient Identifiers, DICOM Study Instance (DICOM calls these a UID), and CDA Documents. To a computer a communications protocol, these are just a Unique Identifier of an Object.

When I say a Unique Identifier I also want to make it clear that it is an opaque identifier; meaning it is either the identifying the object or it is not -- True or False. Some Unique Identifiers are hierarchical and one could possibly determine something about the object by looking at the identifier; but this should NOT be relied on, it should be worried about (Risks to Privacy-Security). Meaning that the structure of the unique ID is important when creating a new one, to assure you are truly creating a new one that doesn't exist today or in the future. But also that when 'using' a unique ID one compares the whole thing to determine if it is the unique ID you  want or not. Any attempt to see if it is _close to _the ID you want will only result in trouble down the line.

**There are generally 2 types of unique identifier that I am going to cover**

- UUID - Universally Unique IDentifier. These are not absolutely unique, but statistically unique. Not that there is ever a way to prove that any Unique ID is absolutely unique, but UUID is a fixed size and without a structure that tries to guarantee uniqueness. That said, there are different ways to create UUIDs that get so close to statistically unique that one must ask how close to tangent must one get.

- OID - Object Identifier. We tend to want to use these more often as they are more structured and thus allow for some additional ways to create Unique Identifiers. The structure also allows for more accurate TRUE/FALSE comparisons. And when it comes to diagnosing problems, their structure can also come in handy.

- Yes, I know there are others. but for the purposes of this blog post, these are king.

**So, how does one create a Unique Identifier in a way that is globally unique? **

The easy way is to use your platform to create a UUID. I can't encourage everyone more strongly to use their platform. Not because I have total faith in the platform to have not messed things up, because we all know that mistakes happen. If we all use the platform provided functionality then we will all be watching for the mistakes in the same code. Where as if everyone writes their own algorithm, then mistakes will only be detected by a handful of people who inspected the code, thus a mistake will happen at a bad time. Yes, an open-source platform implementation would make this even better.

- **JAVA**    [http://download.oracle.com/javase/6/docs/api/java/util/UUID.html](http://download.oracle.com/javase/6/docs/api/java/util/UUID.html)

- Wikipedia does a good simple explanation [http://en.wikipedia.org/wiki/UUID](http://en.wikipedia.org/wiki/UUID)

- IHE Appendix B on Document OIDs [IHE ITI TF Vol2x](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Rev7-0_Vol2x_FT_2010-08-10.pdf#page=8)

- The formal definition of the algorithms is the ITU-T X.667        [http://www.itu.int/ITU-T/studygroups/com17/oid/X.667-E.pdf](http://www.itu.int/ITU-T/studygroups/com17/oid/X.667-E.pdf)

- equivalent IETF        [http://www.ietf.org/rfc/rfc4122.txt](http://www.ietf.org/rfc/rfc4122.txt)

- More background from the ITU-T [http://www.itu.int/ITU-T/asn1/uuid.html](http://www.itu.int/ITU-T/asn1/uuid.html)

- And David Clunie is always good to review [http://www.dclunie.com/medical-image-faq/html/part2.html - UID](http://www.dclunie.com/medical-image-faq/html/part2.html#UID)

**How do you create an OID?**

The above is all about createing UUIDs, not OIDs. But, if one creates a UUID then you can encode that as an OID very simply. An OID that begins with "2.25." is an OID encoded UUID. The value  after "2.25." is the streight decimal encoding of the UUID as an integer. It MUST be a  direct decimal encoding of the single integer, all 128 bits. It must  not be broken up into parts. E.g., the UUID "f81d4fae-7dec-11d0-a765-00a0c91e6bf6" becomes the OID "2.25.329800735698586629295641978511506172918". (thanks [David](http://www.dclunie.com/medical-image-faq/html/part2.html#UID))

It must be decimal because OIDs are all decimal. This has the additional benefit of being more easy to compare for TRUE/FALSE as one doesn't need to worry about the case of the non decimal characters (typically UUIDs are encoded as hex values, so one must compare them using case-insensitive methods). Yes you must work with very large integer math.

Note: Some protocols have limits to the size of a Unique ID. For example DICOM has restricted some OIDs to 64 characters. When encoding a UUID in an OID the proper way, you will not overflow 64 characters. This is because the largest decimal value that can fit in a 128 bit integer encoded as a string is 39 characters long. (Note, another reason to do this as a single integer, as some have tried to encode the parts and ended up with strings that were too long).

**How do you create an OID that is not a UUID?**

The UUID encoded OID is really not adding much value, but it is very important where UUIDs are well understood. Sometimes one really needs a native OID. For example a native OID is very helpful when it is used to define something that is going to be documented as part of a standard. For example a vocabulary, Value-Set, Service-Endpoint, etc.** **

- **First one must get a OID prefix. **There are plenty of places to get these. See [David Clunie's article on how to do this](http://www.dclunie.com/medical-image-faq/html/part8.html#UIDRegistration).

- **Second one must Manage their OID space. **Like managing any 'directory', creating a structure that meets your needs helps you organize and control the OIDs. Some good examples are found in the [IHE Vol 2x Appendix B](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Rev7-0_Vol2x_FT_2010-08-10.pdf#page=8) For example when you need to build OIDs in a distributed space (like isolated medical-devices), then manage the OID space to assure that each machine gets a unique branch.

- **Third one must Manage each instance. **some will use methods similar to those used for UUIDs. Such as using the MAC address and timestamp (be careful to be thread safe).

**Other**

Note: **MAC addresses** (e.g. the ethernet address of your machine) is assigned using a manufacture assigned code and a code assigned by that manufacture in a way that they are globally unique. But the MAC address can also be changed by a talented user. And some abstractions (Virtual Machines) don't use manufacture controlled MAC addresses.

There is a **URI (URN)** encoding for both UUID and OID. For example:

- **urn:oid:**2.25.329800735698586629295641978511506172918

- **urn:uuid:**f81d4fae-7dec-11d0-a765-00a0c91e6bf6

**Conclusion**

Don't reinvent, there are plenty of Unique ID standards and widely used implementations of those standards.

