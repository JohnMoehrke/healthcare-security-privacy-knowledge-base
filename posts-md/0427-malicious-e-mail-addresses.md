# Malicious e-mail addresses

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/08/malicious-e-mail-addresses.html
Published: 2017-08-25T13:55:00.003Z
Updated: 2017-08-25T15:52:43.085Z
Author: John Moehrke

---

Last month I blogged about [E-mail addresses -- Remedial and realistic](https://healthcaresecprivacy.blogspot.com/2017/07/e-mail-addresses-remedial-and-realistic.html)

My point for that post was that it is important to have a agreed subset of the full character encoding allowed by the e-mail address specification. This subset helps to enable Interoperability, by having everyone make sure that they can send-to, and receive-from, an address fully encoded. This problem came up when some systems had trouble with the apostrophe, such as is needed (desired) for people names like "Fred Oâ€™Donnell". That is, a sending HISP didn't allow the user to send to a valid email address because it contained an apostrophe.

The subset of characters I give in  [E-mail addresses -- Remedial and realistic](https://healthcaresecprivacy.blogspot.com/2017/07/e-mail-addresses-remedial-and-realistic.html), is a first line of defense. As the email standard allows a very nasty set of characters, especially if one just puts double-quote around the malicious string. So, I start with the sub-set I defined in the above article.

Unfortunately apostrophe is within that sub-set...

Security Considerations
So as helpful as apostrophe is for people names like "Fred Oâ€™Donnell", it is problematic as it can be used in malicious ways. This because the apostrophe is the single-quote. Here are some general email address attack articles:

-  [http://www.unixwiz.net/techtips/sql-injection.html](http://www.unixwiz.net/techtips/sql-injection.html)

- [https://www.quora.com/Internet-Security-Is-there-any-way-for-an-email-address-to-be-used-as-a-vector-for-a-sql-injection-or-xss-attack](https://www.quora.com/Internet-Security-Is-there-any-way-for-an-email-address-to-be-used-as-a-vector-for-a-sql-injection-or-xss-attack)

More likely a javascript injection, like explained [https://security.stackexchange.com/questions/106972/javascript-injection-in-email-address-as-username](https://security.stackexchange.com/questions/106972/javascript-injection-in-email-address-as-username)  Where an example that is not all that malicious, but is illuminating (okay, it includes character '=' which is not in the subset).

>
foo'onclick='alert'foo='@example.com

Direct Threat Analysis

There is a [Threat Model within the Direct Project](http://wiki.directproject.org/Threat+Model+-+SMTP+with+Full+Service+HISPs). I lead the sub-group that wrote this [Threat Model](http://wiki.directproject.org/Threat+Model+Process).  The email address as a vector of attack is a situation where you are a Recipient, and the sender is malicious. The sender is trying to tell you that the sender email address is X, where that email address has malicious content.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEix6vPCEpacHVajZFF3iHtUdbmOlinZmtmJlt1T154lcS4pXjSZPm_nNZsgJvu3bAT9LErmKD6ZJK4e_ZQWnsZU_nOo8YKsoGNjlBSRZuVp4615Al06HleA9PVD-vAR3ReuAmzqCunbi_B2/s1600/NHIN-D_SMTP_Threat_Model_SPN_20100624.jpg

The good news for Direct Project, is that the sender (you are the recipient) must have signed the email from certificates chaining to YOUR trust store. Thus for this to work, you must be trusting someone who is being malicious. As long as you carefully process up to signature validation, this eliminates the greater Internet attackers.

Thus from the Treat Model, we are most worried about Arch 8, 9, and 10.

It still leaves a Trusted partner as the attacker, but they will get away with this only once before they are found-out and their trust revoked. Thus it better be really valuable attack for them to be motivated to try. So, the likelihood that they would try is very low.

Conclusion

Thus the use of apostrophe (single-quote) does add more risk, over the remedial set, that risk is low because of some mitigating factors (S/MIME, and Trust-Store).

However it is important to have a constrained email address character set, that everyone can FIRST check incoming (or outgoing) addresses against. This because it is far more simple to do simple string validation, before one starts to do operations on that string. Thus a simple string validation would reject a malicious inbound email, and there would be no opportunity to go deeper.

[My other articles on Direct](https://healthcaresecprivacy.blogspot.com/p/topics.html#Direct)

