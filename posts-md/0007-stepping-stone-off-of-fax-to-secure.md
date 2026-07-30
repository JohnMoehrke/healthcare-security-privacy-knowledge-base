# Stepping stone off of FAX to Secure-Email

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/stepping-stone-off-of-fax-to-secure.html
Published: 2012-03-15T13:46:00Z
Updated: 2012-03-15T13:46:09.387Z
Author: John Moehrke

---

The original goal of the [Direct Project](http://wiki.directproject.org/) was to find something better to replace the FAX machine in small doctor offices. The short answer is to use secure email. This is a great replacement for a FAX.

The Direct Project really is as simple as that. There are deployment issues, but those are really much like deploying any software today: Inside, Outside, or outsourced. The part that makes Direct, or anything secure, hard is that in order to provide security into email one needs a trust infrastructure to base the security on. Trust is always based on either faith or proof. In security circles we try to use proof more than faith. So we need to build a way to prove that someone is who they say they are. Fortunately this is a well established concept in security, but the build for healthcare still needs to be done.

------------The longer answer---------

**Secure e-Mail**

Under the â€œDirect Projectâ€, which is just using secure e-mail (S/MIME). The following is not special, it is just restating every-day secure e-mail. This is implemented by many off-the-shelf e-mail clients. To make secure e-mail work, both the sender and receiver must have a digital certificate. It is used to:

- Content is integrity protected using a hash method

- Sender digital certificate signs the hash values of each document. This is used as proof the sender was the only one that could have sent these documents.

- Sender digital certificate is included in the message

- Each Document (attachment)  is encrypted using a symmetric encryption method.

- The encryption key for symmetric encryption is randomly invented new for each document.

- For every intended Receiver, their digital certificate used to encrypt each symmetric encryption key used for each document -- allowing the content to be sent to multiple receivers with the same encryption across the documents. The one message simply contains one copy of the encrypted document, and multiple small sections with each

This is all just normal secure e-mail. It is included in almost every off-the-shelf e-mail client such as Thunderbird or Microsoft Outlook. For those wanting to integrate workflow more tightly, this is also implemented in many programming APIs (e.g. MAPI) and toolkits. It is also fully available in general purpose secure email services (e.g. [Astaro](http://www.astaro.com/en-us/solutions/mail-security)). So, even the Full-Service-HISP is not a new thing.

**Trust**

The Secure e-mail is the easy part. The hard part is

>
A) How does the sender â€˜findâ€™ the certificate of the receiver?

B) How do the two parties know they should trust each other?

The solutions for both (A) and (B) can be different based on scalability and automatability needs.

**Small Scale - ad hoc trust**

In the case where a small number of individuals need to communicate securely, this can be done very one-by-one. Meaning I find your certificate from previous conversations that you have signed. This is indeed why one tends to simply sign every message as it enables anyone you have ever communicated with to send you secret (encrypted) messages. This is the typical method used in normal secure e-mail use.

There are two problems with this model:

- Not easily automated

- Can be subverted

The trust model is mostly ad hoc, given that you are primarily trusting that the prior signed conversation was actually from the individual you think it is. Generally this is how we do many personal relationships, building trust because of prior conversations. It is possible that a malicious individual has sent their own message and their faked certificate making it look like the good individual.  In a one-by-one scale, it is likely you would notice this and get suspicious.

**Automation - Directories**

You can see that the previous trust model is very dependent on personal relationships. This also leads to problems with automation. The Direct Project knows that although personal relationships are very important in Healthcare, probably more important than one might want to admit. There is a need to have some implementations able to fully automate the sending of secure e-mail. One of these, not the only one, is the Full Service HISP, as it must add security to the e-mail while the message is flying through the internet and it has no ability to interact with the user.

Fully automated computers canâ€™t have a one-by-one relationship, so to fully automate one needs a way to discover the certificate of the recipient. This is where directories come in. So for fully automated approaches one needs to have an infrastructure to lookup the certificate. In the Direct Project they are endorsing two different methods: both DNS-CERT and LDAP.

DNS-CERT is the method originally promoted by the Direct Project. It is a creative use of the DNS system, the system that helps us with the Internet name to address translation. It is based on IETF published specifications that were implemented originally mostly as an experiment, not taken seriously by most. Thus this solution is NOT supported by off-the-shelf secure e-mail.

The LDAP method is the additional one added by the S&I Framework -- Healthcare Provider Discovery. It is a more classic solution using Directory (LDAP). This is supported by off-the-shelf secure e-mail, but isn't typically used on a nationwide basis. So there are some questions on how well this will scale.

**Larger Scale - Trusted 3rd Parties**

As the scale of a Trust infrastructure gets big, one needs common trusted-third-parties. This is a system where you trust some third-party to attest that the individual is who they say they are.  This is seen in real life when we go to a party, the host of the party will introduce us to all the other people the host knows but for which we don't know them. The host of the party is the 'trusted third party'. The more well connected the host of the party is, the more people we will be introduced to. This is seen as well when we speak to someone and they explain that we met at the party, or they explain that they are a friend of a friend of ours. In social terms this is an inexact system, but it has worked for millenia.

So in security we do similar with Digital Certificates. We have a trusted third party that issues Digital Certificates. Digital Certificates can be proven that they could only have been issued by that third party that you trust. In this case the trusted third party is called a "Certificate Authority" (CA). One model for a CA is to use  the company that the Healthcare Provider is employed by. This presumes that I have a reason to trust your company. The model of trusting the Healthcare Provider Organizations does change the trust relationship from Millions of Individual Healthcare Providers, to 6000 healthcare providing organizations. But that is still way too hard to manage.

Ultimately this is where very large scale Certificate Authorities would fill in. There are even mechanisms where there could be a trust relationship of trusted third parties, called a Cross-Certification.

**Conclusion**

The technology behind the Direct Project is really just secure e-mail. Being just secure e-mail is a good thing as it is proven technology that is readily available. This solution is a great solution for replacing the FAX machine, but is not quite a mature and robust exchange. The Direct Project technology still does need Policies and a Trust infrastructure. The good news here is that there is a small scale and moderate scale solution that is readily available. Growing this to Large is much harder. I hope that we keep the Direct Project at the original purpose, of replacing the FAX; and rather use robust Exchanges for longer term healthcare.

