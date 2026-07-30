# SSL is not broken, Browser based PKI is

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/04/ssl-is-not-broken-browser-based-pki-is.html
Published: 2011-04-11T14:57:00Z
Updated: 2011-04-11T14:57:57.821Z
Author: John Moehrke

---

Trust using Public Key Infrastructure is alive and well; especially when profiled the way that Healthcare is doing.

There are many articles being written lately about how broken SSL is. I assure you that SSL is not broken, but this declaration does not in any way contradict anything said in the other articles. What is wrong is that their Title is wrong. I suspect that each one of them knows that their title is wrong, but recognize that it is much harder to explain "Browser based PKI" than it is to just denigrate all of SSL.

The problem is well defined by others (e.g. [The Register: How is SSL hopelessly broken? Let us count the ways](http://www.theregister.co.uk/2011/04/11/state_of_ssl_analysis/), [SSL And The Future Of Authenticity](http://blog.thoughtcrime.org/ssl-and-the-future-of-authenticity), [HTTPS Is Under Attack Again](http://www.pcworld.com/businesscenter/article/224721/https_is_under_attack_again.html)), so I am not going to rehash the problem. I will however say that what the Browser publishers did (all of then, vendor and open) was produce something that was better than nothing, and likely the best they could have possibly produced at the time. I am not convinced that even today the use-case scope that they are trying to address is possible to do any other way. The scope is simply too big. So, what we have is something that was "Good-Enough", had we waited for "Perfection" the internet would have literally never left the confines of a toy for research.

The good news is that Healthcare standards and regulation efforts have had the benefit of this example of failure. Back in **2004 when IHE** was putting together the [Audit Trail and Node Authentication (ATNA) profile](http://wiki.ihe.net/index.php?title=ATNA), we were very careful to take a very strong standard, TLS (The standards version of SSL), and carefully call for the certificates to be either manually managed one-by-one, or managed off of a dedicated Certificate Authority (CA) explicitly for that purpose (See [IHE ITI TF Vol 2a:3.19.6.1 Certificate Validation](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Rev7-0_Vol2a_FT_2010-08-10.pdf)). We spoke about this for a few years and finally realized we needed to capture even more details in a [White Paper on Management of Machine Authentication Certificates](http://www.medicalimaging.org/wp-content/uploads/2011/02/CertificateManagement-2007-05-Published.pdf)

Further we recognized that the trust must be **bi-directional**. It is important that a Server be strongly authenticated, but that server really should have a way that it can tell that a truly authentic client is connecting to it. Thus we defined from the very beginning something that is not done with SSL at all, and rarely done with TLS; require that both sides can mutually authenticate. In this way a rogue system can't probe a server, as that rogue system won't be able to authenticate that it exists. This very step stops many malicious methods.

**Healthcare Use-cases:**

One of the big advantages we have is that healthcare has much smaller use-case scope. It may seem that universal access to healthcare information globally might be too big of scope, but even at the intergalactic scope this is more controlled than the scope of an Internet Browser. I am not going to say that we have the problem solved, but the very fact that our use-case scope is much smaller makes this more likely.

The Direct Project had many discussions on how to handle Certificates. There were quite a few attempts to oversimplify in ways that would have created a very similar problem as the Internet Browser has. But many

good people kept insisting that we can't re-invent that failed system.  I cover this in my blog post on [Trusting e-Mail](http://healthcaresecprivacy.blogspot.com/2011/04/trusting-e-mail.html).

The Exchange pattern is different, and I cover some USA initiatives [Healthcare use of X.509 and PKI is trust worthy when managed](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-use-of-x509-and-pki-is-trust.html). Although this is a discussion of the USA initiative, it is actually covering ground that is being covered in many places.

**Revocation Checking:**

When a Private key is exposed, the PKI solution is to indicate that the certificate is revoked. This is done using either a Certificate Revocation List (CRL), or Online Certificate Status Protocol (OCSP). I am not going to go into the technical details of either of these. They are methods of indicating that a certificate that looks otherwise good, is actually not good.

Part of the articles lately is to point out that again the Internet Browsers have implemented a Policy that is potentially not the best policy. Again, I will point out that at the time they didn't really have a choice. The Policy that they implemented is to consider a failure to contact be able to check revocation as an indication that the certificate is likely good. A really security minded person would see this as broken, clearly if you can't get a positive indication that the certificate was NOT revoked, then one must assume that it actually is revoked. A Security minded person would have the system 'fail closed', that is if in doubt don't allow something. The Internet Browsers chose to 'fail open', again because of their scope.

Healthcare has not really address Revocation Checking and what it means to the healthcare use-cases. I have been involved in a handful, and they typically never really come to a conclusion. The terms 'fail open' and 'fail closed' are too narrow for healthcare. We need to think in terms of 'fail safe', that is to look at the use-case and do what is the safe thing. Where safety considers the patient's medical status. Safe might be to 'fail closed', telling the patient to come back tomorrow; but safe might be to 'fail open' because the patient is in great pain and danger.

Revocation must be part of the PKI discussion. Unfortunately there is no simple answer here, unless you consider "fail safe" a simple answer.

**Conclusion**

Covering an infinite scope, like Internet Browsers must cover, is impossible. When the scope is limited to a specific industry a much more intelligent solution can be achieved. This has happened in other industries. SSL is not the problem, the PKI model is the problem. We must stay alert and make sure that simplification doesn't make a fatal mistake. Don't throw the baby out with the bath water.

