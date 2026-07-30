# Implementing standards takes time.

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/11/implementing-standards-takes-time.html
Published: 2009-11-13T04:19:00.001Z
Updated: 2009-11-13T13:27:23.390Z
Author: John Moehrke

---

One of the struggles that those of us that work on developing standards deal with is the separation of bleeding edge new standards vs the practical reality of daily implementation. It takes at the very least 5 years for a finalized standard to show up in a released commercial product.This 5 year lag is not an indication that the standard was too aggressive. Those standards that are too aggressive simply die because no one wants to implement them.

Some guidelines based on this reality of practical implementation:

A) Simple and effective: Simple is important but it must also be extensible. Too complex is too hard to fix when  things go wrong. Simple is affordable and effective. The simple security standards support  organization-to-organization controls very well. I know that people will not  believe that this is all that is needed to start off, but it is the right  â€˜simple and effectiveâ€™ beginnings.

            ATNA â€“  Mutual-Authenticated TLS



B) Outbound  transactions only. The base document sharing standard (XDS) and supporting  infrastructure (PIX/PDQ) are all outbound requests. This limits the complexity  for a small network operator as there is no need to have inbound transactions.  These outbound transactions traverse a firewall easily, and the  mutual-authenticated TLS assures that the correct destination is the only system  that gets connected to while assuring the HIE that an authenticated trusted  client has connected. In a solution that uses point-to-point transactions the  small network operator would need to break a hole in their firewall to allow the  inbound point-to-point transactions.

C)  Organization-to-Organization: This means that access controls are in place at  the system only to the extent that it is clear an organization has access to the  data. Fine grained access controls are enforced at the edge systems as close to  the provider and patient as possible. This recognizes that a typical clinical  use of a document will need to make a copy because medical records regulations  require that once a document has been used for a treatment purpose it must be  maintained. Once a document is available locally it must be controlled locally  to the appropriate intended use. Although one individual might pull a document,  others involved in the treatment of the patient will need access.

            This is  supported by an ATNA style where certificates are issued to organizations that  have proven they can be trusted

            A useful  augmentation is to add XUA (SAML) assertions so that the audit can contain the  user identity, and sets up access controls

D) This principle of  organization-to-organization goes for consents as well. There should be consents  in place that authorize specific organizations for specific intended uses. This  should be explicit consent should be the model. Note that  emergency-override is a special intended use that can override the lack of a  consent.

            This is  supported by BPPC style simple policies that are positively acknowledged by the  patient/consumer

E) All actions on PHI  are audited using open standards that are used very commonly in other industries  and are commonly built into operating system platforms.  The underlying syslog  standard is commonly supported by operating system and databases. Thus the  additional specification for healthcare specific events adds to this underlying  standard. An important aspect of the syslog protocol is that it natively  supports architectures where Audit Record Repositories will automatically  forward filtered events, such as those associated with HIE interaction. The  events support security surveillance, and can be a major source of events for an  accounting of disclosures.

            ATNA â€“  Security Audit Logging using RFC3881 +  SYSLOG-PROTOCOL

F) Consistent Time: This is almost a shame that we need to specify the use of the Consistent Time profile. This profile is a very simple profile that simply says to use SNTP or NTP to synchronize the system clock to a configured trusted source of time. In this way audit log events are all coorelatable even if they come from different systems. This consistent time is also very important to assure the medical record is also accurately time stamped. SNTP or NTP has been included in all operating systems released this decade, and for many operating systems it is even turned on by default (e.g. Windows installation out-of-the-box will turn on SNTP and synchronize with the time source at 'time.windows.com'). So in most cases one must work very hard to not be using consistent time.

          CT â€“  consistent time

G) Extensible: These  methods are the basis of future support for coded-policies (XACML+),  federated-user-assertions (XUA+),

See [http://healthcaresecprivacy.blogspot.com/2009/10/what-has-hitsp-done-to-protect.html](http://healthcaresecprivacy.blogspot.com/2009/10/what-has-hitsp-done-to-protect.html)

