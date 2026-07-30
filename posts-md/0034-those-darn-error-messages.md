# Those Darn Error Messages

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/10/those-darn-error-messages.html
Published: 2011-10-31T16:04:00.003Z
Updated: 2011-10-31T16:04:35.767Z
Author: John Moehrke

---

I received this email from a senior systems engineer:

Reading about this exploit [http://gcn.com/articles/2011/10/24/researchers-crack-xml-encryption.aspx](http://gcn.com/articles/2011/10/24/researchers-crack-xml-encryption.aspx) reminded me about our discussion a long time ago about the perils of returning useful error messages from a privacy perspective.   In this case, itâ€™s not privacy thatâ€™s compromised, the hackers can use their knowledge of the typical boilerplate error messages returned by a SOAP transport layer when malformed XML is sent to help them to crack the encryption.   Sounds like the fix is to avoid cipher block chaining.   Article says itâ€™s a pretty easy change.  Hmmm.

I love it when the message sinks in and an engineer can see the message in something new.

Cipher Block Chaining has been the topic of other problems lately too, such as the ['BEAST' SSL problem](http://www.pcworld.com/businesscenter/article/240933/hackers_crack_internet_encryption_should_you_be_worried.html). In both cases these are attacks on a, now understood, poorly constructed crypto mechanism â€“ Cypher Block Chaining. This problem has been known for many years, the real problem is the slow upgrading of systems.

In the case of this new exploit, XML-Encryption is not the problem, but rather Web-Services Security way of using XML-Encryption. This is what some consider â€˜end-to-endâ€™ security for Web-Services. Something that I have resisted for many years, but did eventually end up in IHE ATNA as an alternative (See: IHE ITI TF:3:3.19.6.4 Web-Services carrying Protected Information(PI)). Fortunately this is not often used, as it presents the[same operational administrative problems as Direct](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html) has, that the sender must know the receivers Digital Certificate. For Web-Services this presents more trouble than it is worth.

My suggestion all along, also the main part of the [IHE-ATNA profile](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html), has been to use Mutually-Authenticated-TLS. It is a well mature technology. Yes it has the 'BEAST' problem, but this is mitigated by the Client Authentication. Using TLS gets away from the newest XML-Encryption problem too.  Note that the IHE ATNA approach to using Mutually-Authenticated-TLS does set the bar at Cipher Block  Chaining (i.e. TLS_RSA_WITH_AES_128_CBC_SHA); but IHE does not in any way forbid other algorithms in operational use. The IHE profile is simply there to assure that there is one algorithm set that will function (interoperability). The TLS protocol does the negotiation of the â€˜bestâ€™.

**To return an error message or not is a tricky problem.** I do recommend that for authentication and authorization failures that we carefully consider if a security specific error code should be returned â€“ Using[Risk Assessment](http://healthcaresecprivacy.blogspot.com/2011/05/there-is-no-security-pixie-dust.html). The reality is that the answer to this question is not straight forward. In fact, the answer is 'it depends'. It depends on if you know the security context of the network and requester. If you don't know better, then the answer is 'do not return a security related code, just return general-failure'. But if you do know something about the requester, then you can return a security specific error code.

A specific example of this comes up in discussions around Health Information Exchanges regarding authorization. Should an [HIE Access Control service](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html) be able to tell the requesting system that consent to disclose or authorization for access is needed? If this was a non-authenticated request, my answer would be NO. But when using Mutually-Authenticated-TLS, that does successfully authenticate (meaning you have a secure communications to a known and trusted requesting system), then it is ok to return a code that would indicate that 'I could give you data if consent was to be captured or break-glass was to be declared. '

This specific error code can then be used by the requesting system to indicate to the user that more information is available but that authorization does need to be elevated (or [different security context exits](http://healthcaresecprivacy.blogspot.com/2011/03/access-controls-on-clinical-decision.html)). A user that is authorized to break-glass could then indicate that they want to break-glass. A  user that has the [patient's specific authorization to access](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html) could indicate that they have authorization for access. Thus the error code is used to enable dynamic workflows, helping the patient get the treatment they need.

This kind of detail is hard to â€˜profileâ€™ in IHE as the profiles in IHE are intended to be re-used in many context. Thus there is a need to be as context independent as possible. It is only when a system is designed that the context is known. This is a good example of using Risk Assessment in the design at many levels [including deployment](http://healthcaresecprivacy.blogspot.com/2011/10/more-webinars-on-basics-of-iec-80001.html).

