# S/MIME vs TLS -- Two great solutions for different architectures

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/12/smime-vs-tls-two-great-solutions-for.html
Published: 2010-12-24T02:30:00.002Z
Updated: 2010-12-24T05:23:46.672Z
Author: John Moehrke

---

[John Halamka with help from Dixie Baker wrote about a topic that came up on HIT Standards discussion](http://geekdoctor.blogspot.com/2010/12/simple-direct-scalable-and-secure.html) asking why the Direct Project secure transport couldn't just be TLS.

[Arien Malec responded](http://news.avancehealth.com/2010/12/smime-and-tls-directproject.html) with a good discussion of some issues that were uncovered during some prototyping. I am not convinced that this was fully investigated, but it still is a good read and a well done description of SSL, TLS server authentication and TLS mutual authentication.

**My answer is: Security is hard, Trust is hardâ€¦ **

All the posts I have read today are all not looking at the total picture. I recommend one look at the Security and Trust workgroup output (Yes, I am a very active member). I think that the Threat Models are most important here:

> [Threat Models](http://wiki.directproject.org/Threat+Models) (WG Consensus Achieved)

[Direct Project Security Overview](http://wiki.directproject.org/Direct+Project+Security+Overview) (WG Consensus Achieved)

[Certificate Pilot Recommendations Discussion](http://wiki.directproject.org/Certificate+Pilot+Recommendations+Discussion) (WG Consensus Achieved)
With TLS, you MUST create a walled garden. Any hole in the wall causes the whole thing to fail. If TLS was used there would be a private e-mail network just for trusted organizations, all organizations would need to be trusted.

TLS is not as care-free â€“ PKI free - as Dixie tries to say it is. The comments about not being able to know if you are connecting to the right place is exactly evidence that PKI is need here. What is not needed with TLS is an out-of-band mechanism to distribute certificates, since TLS includes certificate discovery/distribution inline. But one must have a trust relationship.

It is this distribution of certificates that is the hard part of S/MIME. I send signed email messages to people that I want to be enabled to send me encrypted content. This mechanism of certificate distribution, sending a prior signed message, is the one that is used in practice today.  I have tried to argue that any use of NHIN Direct messaging very likely was preceded by conversations that were not patient specific but were related to building a relationship. Between organizations this conversation was about what services one might offer another. These conversations likely included discussions about legal restrictions. These conversations could have easily have transmitted the certificate and setup a trust relationship.

also see: [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

TLS is great for point-to-point communications, or for communications with trusted-intermediaries. But it fails for **end-to-end asynchronous message communications**, and is NOT the right approach for e-mail.

**Wrapping:**

There is a little bit of discussion about 'wrapping'. The wrapping that is being discussed is S/MIME wrappingâ€¦ that is to take an email message and put it inside another email messageâ€¦ Think Russian dollsâ€¦ The theory is that if you keep wrapping enough times it must be secure. This can hide the â€˜subject:â€™ line, but doesnâ€™t hide the â€˜to:â€™ or â€˜from:â€™.

Yes one can have a highly intelligent email router that puts false â€˜from:â€™ on the outside email, and somehow uses a trusted-intermediary-endpoint-address (â€˜to:â€™). Clearly lots of discovery problems here, or configuration and databases. But if you are going to configure this kind of a system, then we should just use a more capable system.

**Scope of NHIN Direct**

People keep forgetting that NHIN Direct is a transport for VERY SMALL  providers with VERY LITTLE technology. These people only need to communicate with a few â€˜othersâ€™. We need the NHIN Direct solution to help low-tech people. We needed it to work with little beyond off-the-shelf software, or exactly commercial (or open-source) off-the-shelf.  The NHIN Direct transport should NOT be looked to as a solution for more intricate workflows.

As part of this NHIN Direct has also recommended that email addresses could be departmental or organizational. That is one address that represents a whole department or whole organization. Thus there isnâ€™t a huge number of addresses, one for each organization. I donâ€™t think this is a great solution, as it basically brings us back to organization-to-organization rather than end-to-end; but it does put the policy decision in the hands of those that should make the policy decision.

So, I suggest they keep the scope clear for NHIN Directâ€¦ Allow simple e-mail with slightly complicated securityâ€¦ and get working on robust health information exchanges. Use NHIN Direct as a stepping stone, and stop thinking it is a long term solution.

See:  [Directed Exchange vs Publish/Discover Exchange](http://healthcaresecprivacy.blogspot.com/2010/10/directed-exchange-vs-publishdiscover.html) and [NHIN-Direct Privacy and Security Simplifying Assumptions](http://healthcaresecprivacy.blogspot.com/2010/05/nhin-direct-privacy-and-security.html)

