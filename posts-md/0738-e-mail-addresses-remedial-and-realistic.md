# E-mail addresses -- Remedial and realistic

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/07/e-mail-addresses-remedial-and-realistic.html
Published: 2017-07-14T15:50:00.002Z
Updated: 2017-07-14T15:50:29.300Z
Author: John Moehrke

---

The difference between reality and theory for an e-mail address is huge. I want to drive a bit of open discussion as implementation of e-mail software, directories, and operational environments; fall somewhere along that gap. That is to say that there is much software and services that support e-mail that don't quite implement everything that the standards allow. There are also really good reasons to not support everything that the standards allow

e-mail address according to standards
I am not going to replicate the full definition of what can be in an [email address from a standards](https://tools.ietf.org/html/rfc5322) perspective as there are fantastic write-up that is very readable on the [wikipedia](https://en.wikipedia.org/wiki/Email_address), and a nice graphic [available from Jochen Topf](https://www.jochentopf.com/email/chars.html) . I will just pull some examples of just how ugly an email address can be. I am sure you all didn't know these are possible:

- prettyandsimple@example.com

- very.common@example.com

- disposable.style.email.with+symbol@example.com

- "very.unusual.@.unusual.com"@example.com

- "very.(),:;<>[]\".VERY.\"very@\\ \"very\".unusual"@strange.example.com

- #!$%&'*+-/=?^_`{}|~@example.org

- "()<>[]:,;@\\\"!#$%&'-/=?^_`{}| ~.a"@example.org

- user@[IPv6:2001:DB8::1]

Internationalization examples

- Latin alphabet (with diacritics): PelÃ©@example.com

- Greek alphabet: Î´Î¿ÎºÎ¹Î¼Î®@Ï€Î±ÏÎ¬Î´ÎµÎ¹Î³Î¼Î±.Î´Î¿ÎºÎ¹Î¼Î®

- Traditional Chinese characters: æˆ‘è²·@å±‹ä¼.é¦™æ¸¯

- Japanese characters: ç”²æ–@é»’å·.æ—¥æœ¬

- Cyrillic characters: Ñ‡ÐµÐ±ÑƒÑ€Ð°ÑˆÐºÐ°@ÑÑ‰Ð¸Ðº-Ñ-Ð°Ð¿ÐµÐ»ÑŒÑÐ¸Ð½Ð°Ð¼Ð¸.Ñ€Ñ„

- Hindi email address: à¤¸à¤‚à¤ªà¤°à¥à¤•@à¤¡à¤¾à¤Ÿà¤¾à¤®à¥‡à¤².à¤­à¤¾à¤°à¤¤

[Little bobby drop tables is possible](https://xkcd.com/327/)

Direct impact

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj5U4J-Qf03BTwjNUcPhs9p33cT7q2kErEUQueGprGwhQJDF8YrqxA0dx_ntmshUQrlzxCywHGSzrT9c9EPc016aYPtxgLJtgwI5al01qopiphPXTYL60c9ZCguWaUsdN-qFRh7KRDrmRXw/s1600/EHR+Patient+Portal+-+Transmit.png

I have been working with developers on an implementation of "Direct". For those that don't know about "Direct", it is simply a profile of e-mail for use within USA healthcare. I was one of those[that was involved](https://healthcaresecprivacy.blogspot.com/p/topics.html#Direct)in "The Direct Project", and wrote the security section and risk assessments.  I am sorry that FHIR didn't exist at that time, as it would have been [quickly selected over this e-mail solution](http://healthcaresecprivacy.blogspot.com/2015/03/what-is-mhd-beyond-xds-on-fhir.html). The e-mail solution is sub-optimal at best.

The diagram shows the various parts. It is just the sending side, but it shows various parts that all will be impacted by the e-mail address. Most can just process the e-mail address as a string. But some need to do more with it than that.

Direct uses secure email (S/MIME), uses X.500 certificates to protect endpoints authentication, authorization, and confidentiality of communication. It has two mechanisms for discovering a certificate given an email address. And there are trust organizations, like [DirectTrust.org,](http://directtrust.org/) that provide governance and [certificate services](http://healthcaresecprivacy.blogspot.com/2012/09/direct-addresses-trusted-vs-trustable.html).

Hidden Practice - Remedial e-mail address
Most would not fully support all the capability of an e-mail address as defined in the standard. But most would also not tell others of their self-imposed restrictions. These restrictions might be because of their technology, but might be because of some organizational policy. Such as email systems that use a file-system architecture would limit the email address to what can be represented 'safely' in an file-system directory.

**
**

**Most likely today email address are restricted to alpha, number, period, underscore, and hyphen. **

- simple@example.com

- very.common@example.com

- also-common@example.com

- remedial-combinations_with.all@example.com

Thus not allowed are **ampersand, asterisk, plus, slash, equal, question, carrot, curly-brackets, or tilde**. This restriction is not too worrisome.

Internationalization

The Direct Project has not endorsed [RFC 6530](https://tools.ietf.org/html/rfc6530), which extended e-mail addressing to International Characters. So, they don't need to worry (or support) the international characters

Some worry about the International characters because of the fact that there are some characters in that set that 'look' exactly like ASCII characters, thus easy to fool a human. This is less of a concern with Direct as all addresses are looked-up to find their Certificate, and that Certificate must chain to a Trusted Certificate Authority. Thus this attack would not work unless a Certificate Authority has accepted a deviant email address and issued a Certificate. And if a CA did this, then that CA should not be trusted. So within Direct there is protection against this attack.

Directory vs e-mail address

Also, we are speaking specifically about the technical part of an email address, not what gets displayed to a user. It is this 'displayed to a user' that is a important separation. What gets displayed to the user might be far more relaxed, especially if a Directory is available to fully represent in full feature, the name the individual wants to be called.

In fact this is where I get specifically worried that some are demanding deviation from reasonable specification because of user-experience expectations. Specifically, most users expect that email addresses are NOT specific to the case of the characters typed, but technically at the e-mail protocol they are allowed to be case-sensitive. Thus the protocols are all defined as "case preserving" while allowing a server side determination if the server-side wants to treat e-mail addresses as case-sensitive or not.

More specifically it is easy to give a user the experience of case insensitivity, while being case specific at the technical level. One can look through a Directory in a case-insensitive way, when only one entry is found then use that entry, but use the case of the e-mail address one found in that Directory (or certificate) at the protocol level. This is case-preserving, and thus does not require a deviation from the e-mail standards.

First step beyond remedial

The first challenge to remedial address is the need to include a single-quote such as is needed for "Fred Oâ€™Donnell".  The single-quote character is not often supported by email technology, as it can cause encoding issues in various technologies like file-systems, directories (LDAP), databases, and APIs. These are not impossibilities, but where a single-quote exists, it must be handled special. Where as all the other characters in the remedial list require no special handling.

This single-quote problem is what brought me to this whole topic. As someone with a single-quote in their email couldn't use Direct. There was a bug that was fixed. But as discussed above if all partners within a Direct trust domain don't also support single-quote equally, than this individual will only be able to send-to or receive-from those that do support single-quote. So is fixing this bug really helpful? Is the single-quote needed in the e-mail address, or just what gets displayed (Directory)?

Controlled Advancement

So I have addressed the DirectTrust community with this topic. From what I could tell, this issue is as big as I predict. Remedial email addresses are okay, but beyond that and major 'interoperability' issues would happen. Inducing O'Donnell, single-quote.

I did hear some interest in adding the plus character. [Plus is a special case,](https://en.wikipedia.org/wiki/Email_address#Subaddressing) not just a character. Especially in light of the way that Direct supports individual addresses vs domain addresses.

I would very much recommend DirectTrust come up with a policy. They are an operational environment, an as such can make operational decisions that can't be made in an Interoperability specification like Direct. Thus any operational policy that DirectTrust comes up with does not need to be represented in the Direct specification. This policy might not be a â€˜forever forbiddenâ€™ policy, but rather a â€˜not allowed at this timeâ€™. This keeps open to future needs that are use-case and demand driven. This policy should be very clear about the fact that International characters are not required, and thus DirectTrust does not allow them.

I would recommend against the really special processing such as comments (), and quoted strings. These serve very little value, and are a place where trouble can hide.

Conclusion

It is likely that remedial e-mail address is sufficient, so this might actually not be a big issue. But it does require a Policy so that everyone can appropriately TEST to assure Interoperability.

[My other articles on Direct](https://healthcaresecprivacy.blogspot.com/p/topics.html#Direct)

