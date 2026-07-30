# Direct incompatibility with off-the-shelf e-mail

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/04/direct-incompatibility-with-off-shelf-e.html
Published: 2013-04-19T18:28:00.001Z
Updated: 2013-04-19T18:28:18.560Z
Author: John Moehrke

---

**Why choose a popular underlying standard if you are not going to leverage it? **Surely you should not make explicit changes that break it.

The Direct Project choose to use e-mail, and the security layer S/MIME. This choice was due to the wide spread use of e-mail. Wide spread use in the case of e-mail can be proven by the very fact that today e-mail is still the most used protocol on the internet. This in the face of those that would like to consider "the Web" as pseudonymous with "the Internet". The statistics say that it is closer to "e-mail" is pseudonymous with "the Internet". Actually they both combined make up most of the internet.

The Direct Project expectation was that healthcare should only need to specify the trust framework -- see DirectTrust.org for one organization trying really hard to make this factor a reality.  This trust framework would allow a sender to be sure that what they are sending can only be seen by the one they are sending it to, and no-one in between  This trust framework would allow a receiver to know that the content absolutely came from the one indicated as the sender, and no-one in-between  This trust framework is critical to success. But this trust framework is 99% policy. The technology portion of this trust framework is all standards based and embodied in the common use of S/MIME and the PKI that supports it.

**
Direct Specification is NOT leveraging commonly implementations of S/MIME e-mail!**
I have written on this topic before. At that time it was about the specific rules on how one must DISCOVER the certificate of the recipient you are sending e-mail to: [MU2 - Why must healthcare use custom software when Thunderbird and Outlook would do?](http://healthcaresecprivacy.blogspot.com/2012/10/mu2-why-must-healthcare-use-custom.html) In that article I explain that this requirement was overly restrictive. It forces specific certificate distribution model that that is unique to healthcare. It doesn't support the Trust Framework. It just gets in the way of using off-the-shelf software. Thus forcing healthcare to use custom software.

**
Direct Specification forces case-sensitivity when none is necessary!**
http://www.motherjones.com/files/legacy/washington_dispatch/2008/10/no-email250x200.jpgNow there is an effort to force case-sensitivity to Direct Project address. This technically is specified in the underlying standard, but it is not always implemented this way. Let me explain. The underlying e-mail specifications do indicate that the first part of the destination address shall be case-sensitive. This was because some destination systems are indeed case-sensitive. However not all destination systems want to be case-sensitive.

It is true that case-insensitivity is ambiguous once you leave the classical ASCII character set.  Therefore case-sensitivity is indeed more easily proven, and thus interoperable. However 'allowing' case-insensitivity when the destination system wants to allow it, should be allowed.

What is happening is that there are test-tools being developed to test implementations of Direct. These test tools are being written strictly. This strict interpretation of the standards is a good thing for test tools to do. But in some cases systems need to be allowed to be more liberal in what they accept. Destination systems should not be forced to be so restrictive. This is an application of the [Robustness Principle](http://en.wikipedia.org/wiki/Robustness_Principle), also known as Postel's law, after [Internet](http://en.wikipedia.org/wiki/Internet) pioneer [Jon Postel](http://en.wikipedia.org/wiki/Jon_Postel) - "_**be conservative in what you do, be liberal in what you accept from others**_" .

We MUST be reasonable. The case requirement is more focused on being case-preserving, so that an endpoint â€˜canâ€™ be case-sensitive. That is to say that senders and intermediaries must preserve the case. To require that the endpoint MUST be case-sensitive is overly restrictive. This would cause many common email infrastructures to be declared non-compliant. Most off-the-shelf e-mail treats the whole address as case insensitive.  This declaration of non-compliance would come at no benefit, and would limit the market space available for healthcare use.

Direct Continues to require custom software for healthcare.
This is absolutely against the values that the Direct Project included during the development. The reason to choose common e-mail transport was to leverage the large body of infrastructure and software already available. Using custom software increases costs, and makes healthcare re-develop tools that have been developed over decades of advancements in e-mail, and at no added value.

