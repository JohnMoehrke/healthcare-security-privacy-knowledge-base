# Direct addresses- Trusted vs Trustable

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html
Published: 2012-09-01T16:12:00.003Z
Updated: 2012-09-02T16:59:06.853Z
Author: John Moehrke

---

I cover the [Identity - - Proofing](http://healthcaresecprivacy.blogspot.com/2012/08/identity-proofing.html) problem that Direct is having right now. Some are arguing that Identity Proofing is not needed, I argue that it is always needed but sometimes the proofing is done in a distributed way sometimes it is centrally done.  The Identity-Proofing is not the critical thing that is needed. The identity proofing is just an example of people confusing Trusted with Trustable. Trustable is what we should be focused on. Trustable is associated with Identity and Authentication. Trusted is a result of a determination of Authorization. Identity-Proofing status is important to carry in the Identity, but it is just an attribute. It is one of many attributes in the Certificate that is used to determine if this certificate â€˜is the oneâ€™ â€“ that I should Trust.

**The Deep Dive**

This brings up the question of what are the important use-cases, and exactly what is the RISK that the certificate system in Direct needs to solve.

This is easiest seen if I start with the controversial use-case. The one most likely to be used by General Provider with their Patients. In this case the GP knows who their patients are, at least well enough to help them get healthy. Thus the GP really has done a Proofing step. In this case the Patient has a conversation with their GP and tells them their PHR e-mail address (e.g. HealthVault account e-mail address). The GP puts this e-mail address into his Direct solution for sending secure e-mail and documents.  Note that I will show that the case where the sender didnâ€™t do in-person-proofing is a super-set with a  little additional requirements, and no less requirements.

**The Risk**

In this case when the GP sends something he needs the infrastructure to make sure that the certificate that is discovered is truly the certificate for the e-mail address given. That is a malicious individual, the attacker, wants the content of the Direct message. In this case the attacker needs to get the sender to send the secured e-mail with the encrypted envelop targeting a certificate that the malicious individual has the private key for. The Direct project uses really good security, both signed and encrypted e-mail using really good crypto algorithms. Thus the attacker must become what is seen as the intended recipient.  Let me explain:

In non-secure e-mail (normal e-mail) this is rather easy, you just attack the DNS system and return faster your mail-server address as the location for the e-mail to be sent (the DNS - MX Record Lookup, or DNS server address lookup). If you do this with a S/MIME protected message you will get nothing but the encrypted message. If poor encryption is used, you can beat on that e-mail message until you crack it, but if we choose good algorithms like then this effort takes too long to be useful, and Direct specified strong algorithms.  So we have this risk handled, through picking an end-to-end solution like S/MIME and good algorithms.  And we leave the transport open for best flexibility, flexibility that is really useful for redundancy and robustness. As strange as it might seem, we simply live with this risk because it has a very-low impact. See [How to apply Risk Assessment to get your Security and Privacy and Security requirements](http://healthcaresecprivacy.blogspot.com/2012/03/how-to-apply-risk-assessment-to-get.html)

The attacker wants access to the content of the secure e-mail, so they need to attack DNS again, but this time get it to return fast with a certificate that the attacker wants. If the sender system doesnâ€™t check this certificate, but just sends to it; then the attacker is back at non-secure e-mail and has full use of the content sent. The Direct Project requires checking of the certificate that I will outline below, so compliance to the specification is important. Note that the certificate checking is mostly what all systems do for checking certificates.

There are secureDNS and secure LDAP solutions. They are not recommend because there is a very robust system to validate Certificates including discovering the assigning CA and checked for revocation. This system is preferable because it allows for far more flexible DNS and LDAP configurations; but mostly because it is one system that works equally well regardless of how you got the certificate (which means we could add new ways to get the  certificate and it would still work, such as from a previous secure e-mail conversation).  Note that if you use SecureDNS or secureLDAP there is little overhead, and if it works for you then there is no harm in doing the verification multiple ways.  SecureDNS might just mature enough for us to rely on it, but it is simply not needed for the Direct need.

The sending infrastructure will ask the whole worlds DNS and the whole worlds LDAP for a certificate that claims to be â€˜theâ€™ certificate for the e-mail address that the patient provided. The GP is very confident that the e-mail address is right, and besides if it wrong then it is the Patient that deceived. But back to the problem. Letâ€™s just say that 10 certificates claim to be â€˜the oneâ€™, how does the infrastructure know which one to choose. It canâ€™t be the FIRST certificate to come back, as that just means the attacker must just get their response back first, which isnâ€™t hard. The sending infrastructure must thus not stop looking after receiving one response. It must wait a reasonable time for all potential candidates. During this time it can be â€˜validatingâ€™ the certificates that have arrived.

http://wiki.directproject.org/file/view/NHIN-Direct-Simple-SMTP.jpg/161456165/576x432/NHIN-Direct-Simple-SMTP.jpgNote that multiple responses is not an indication of an attack. There are good reasons for multiple certificate: The most likely is: As your certificate approaches expiration but before it does expire, you need to get a new certificate issued. It is important that the expiration times do overlap to allow for latency in the system, yes many months worth of latency is needed. Once you have your new certificate you need to send both your old and your new certificate when a DNS or LDAP request comes in, and thus both are valid. In this case, the sender should choose the â€˜newestâ€™, for best results. There is really no sending reason to select the oldest, however there are signature validation reasons why you might need the old one.

So the RISK is exposure of content because the certificate you use to encrypt the e-mail is not the legitimate certificate for the e-mail address you want to send to.  Note that this risk was known, and is THE risk to be resolved in the [original Direct Project threat assessment.](http://wiki.directproject.org/Threat+Models)

**The solution**

I will repeat that in this case we only want to make sure that the certificate is the legitimate certificate for the e-mail address we have. In this case we donâ€™t care about proofing. Indeed even if I had started with a use-case where the certificate needed to include proof of high-assurance proofing, all these steps are needed. Thus the main problem is NOT the assurance, it is the legitimacy.

First we must do cryptographic checking. Doing this on a certificate is easy, it is available in many toolkits and operating systems: Is the cert signed, is the expiration time still valid, is the chain to a trusted CA, is the cert not revoked. The cryptographic part is well known, yes one must be using mature algorithms and key lengths. Please donâ€™t allow RSA 1024 or MD5 hash. Look to FIPS 140-2 for guidance, and bump it up. In this case future-proofing is cheap and certificates tend to be around a long time. What is not solved yet is the list of CA certificates that I trust to issue legitimate certificates. Let me defer discussing where this magic-list comes from until later.

If I have cryptographically tested the certificate, then I know that the content of the certificate is valid. The next couple of steps will be looking at the attributes inside the certificate and making more decisions. The following checks are important for all use-cases. I want to make sure the certificate claims to be for the e-mail address that I want to send to. This is needed by all sending use-cases. There are some short-cuts going on here, I donâ€™t like them but we just need to deal with these short-cuts in the future.

Further, I need the root CA to be claiming that it issues certificates for the domain of e-mail addresses. This is likely just to the domain-name part of the e-mail address. I will show later in the magic-list why this is important. A certificate issued in violation of the CA policy needs to be reported as a potential indicator of a compromised CA. The checking of the e-mail address and the CA domain issuing is important as it stops false certificates.

I also need to make sure that the certificate is one issued for the purposes of S/MIME e-mail encryption. This is another reason why I might get multiple legitimate certificates. Some of the certificates might be constrained for just digital-signature.

**Identity Proofing:**

It is only here that one cares if the identity in the certificate claims to be of a specific Identity Proofing Assurance level. And the use of this knowledge is not security-layer use, it is application logic. If the sender has done in-person proofing; then any identity assurance level is fine. It is only if the use-case has not done an in-person proofing that the infrastructure should utilize the Certificate claim of Identity Proofing level. Yup, this all I need say.

**Magic-list**

Now comes the hard part,  how do you get the magic list of trusted CA certificates? You start from some magic list of trustable CA certificates and make some local decisions. You might outsource this local decision making to your Full-Service-HISP, but it better be transparent between you and your HISP.

Identifying the list of trustable CA Certificates is a hard problem, and done wrong can be really wrong. See the [mess that has happened in the Web-Browser](http://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html) world where they took a specific short-cut that eventually caught up to them. A short-cut that seemed right at the time, and I would agree that it was the right short-cut AT THE TIME. The problem is that once you have taken a short-cut, it becomes the de facto pathway and no one ever challenges that short-cut. This one should have been challenged and replaced in the past 5 years. So, if we take a short-cut; please put an expiration on that short-cut.

Identifying the list of trustable CA Certificates is the space that DirectTrust is trying to fill. How does someone choose the list of CA certificates that they are going to trust? I will repeat this is a hard problem. Often with hard problems a group will end up with blinders on. I think this group is so worried about â€œIdentity Proofingâ€ that they canâ€™t see that this is not the most important thing. It is important to know, but not important to constrain. Meaning for any certificate, the user of that certificate needs to be able to determine the identity-assurance-level.

So there needs to be a managed list of â€˜trustable CA certificatesâ€™ â€“ Not â€˜Trustedâ€™, but â€˜Trustableâ€™. The actual trust decision is not a central authority decision. The trust decision is really the sender and receiver of the message. All the infrastructure need only support that trust. So the qualities I can think of for this â€œTrustable CA Certificateâ€ list:

a) Whatever CA Certificates are listed must be clearly identified as to WHY were they selected. The list of reasons why one might trust, is a growing list: Federal-PKI-Bridge, etc.

b) What certificate policy is used by that CA. This includes the Assurance level the CA issues at.

c) What e-mail address space are issued under this. E-mail addresses are made up of two parts separated by the â€œ@â€ character. The first part is the unique identifier with in an assigning domain, the second part is the unique identifier of the domain. A CA really needs to be aligned with e-mail assigning domain. The reason why this is important is that the CA certificate is what is listed in the magic-list, and therefore it needs to be transparent about what should be considered legitimate identities issued by it. This is simply an indicator that this CA is the assigning-authority for identities issued in that domain.

d) When is this recommendation of this CA certificate going to expire. I would recommend it be short. Given that there is really not a good solution to revocation-checking for Root CA Certificates â€“ although it can be done.

e) â€¦.I am sure there are more and I expect those working on this are making good progressâ€¦

Given this list, does beg a question of how is this magic list of trustable CA certificates to be distributed? I can only point at the browser market, and hope they come up with a solution. They need automated distribution more than we do. We have a very manageable number of potential trustable CA certificates today. I recommend we wait on the scalability problem for a while. Yes this is the same short-cut the browser market chose.  Yes a short-cut that needs an expiration.

**More use-cases**

This article is already long, but these other use-cases are important too:

I have already covered

1) I need to send a secure message to an e-mail address where I have already in-person proofed the identity.

2) I need to send a secure message to an e-mail address and I need there to be technical proof that the identity has been in-person proofed by someone trustable.

3) I have received a secure message, is it from someone with an identity that has a high assurance identity?

4) I have received a secure message, is it from someone I have already in-person proofed?

There are also some workflow use-cases that are prior to sending or post receiving. Like:

1) I need to find an address for a specific name. Display the identities found so that I can pick the right one. In this case the identities really need to be in-person proofed by someone else.

2) I have an e-mail address, what is the available information on that identity (aka the certificate content, but could also be the LDAP content).

The miss-use-cases are just as important to PREVENT

1) An attacker wants to have the content of your message

2) An attacker wants you to receive and accept their message

**Conclusion**

In all these cases the knowledge of any in-person proofing by the CA is important, but it is an attribute carried in the certificate. This attribute is used in workflows and/or as part of the â€˜authorizationâ€™ decision. This is the critical step, as authorization decision is moving from â€œTrustableâ€ to â€œTrustedâ€.  Trusted is a decision of Authorization. Trusted is not a decision of Identification or even Authentication.

I do understand that some Healthcare Providers want to outsource this to their Full-Service-HISP. There are a vast number of them that really should do this. Trust is hard, and sometimes it is the right thing to outsource hard things. I outsource non-routine healthcare assessments to my Healthcare Provider, because that is hard. But I expect them to provide me choices and I ultimately make the decision based on their professional assessment. Sometimes there is only one choice and it gets done with little discussion (you need a lab test), sometimes the choices are vast.

I think the challenge is not in Identity-Proofing; it is in supporting reasonable decisions on a trustable list of CA certificates. NOT â€˜the trusted listâ€™, a â€˜trustable listâ€™

**updated**: to fix a sentence regarding secureDNS and secure LDAP.

