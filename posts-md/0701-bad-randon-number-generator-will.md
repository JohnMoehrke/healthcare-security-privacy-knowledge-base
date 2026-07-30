# A Bad Randon Number Generator will produce Bad Security

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/02/bad-randon-number-generator-will.html
Published: 2012-02-16T15:19:00.001Z
Updated: 2012-02-17T13:28:12.097Z
Author: John Moehrke

---

The [NY-Times](http://www.nytimes.com/2012/02/15/technology/researchers-find-flaw-in-an-online-encryption-method.html) ran an article this week that has caused much stir in crypto circles and all over the internet. The short conclusion is that a bad random number generator will produce not random numbers. This has been known for decades, creating good random numbers is hugely impossible yet critical for good security.

What bothers me most is that the 'researchers' choose to title their paper in a very political way. The problem they found is in poor implementations of generating random numbers, yet their title concludes that one cryptographic methodology is better than another -- yet both need good random numbers. Yes RSA exposes the bad random number longer. Yes RSA is hit more. But RSA is not the problem, key creation and management is the problem.

It is very important to get as good of randomness as you  possibly can, and there is no way for a general purpose computer to produce perfect randomness. There are plenty of ways to get randomness through add-on hardware or indeed the trick of using a camera focused on a  [lava lamp](http://www.wired.com/wired/archive/11.08/random.html).

The problem with bad random numbers starts when a Digital Certificate is created. Indeed when you make a request for a certificate there are two paths to take.

- You can generate the keys yourself, and thus just expose the Public key to the CA for signing. This has the drawback that the randomness is only as good as your system can produce.

- You can request that the CA/RA create the keys. A good quality CA/RA 'service' will have good quality randomness (A bad CA/RA isn't worth dealing with). The disadvantage is that the CA/RA has your private key, but they can produce new certs totally without your knowledge too, so there is plenty of risk if you don't/can't trust your CA/RA.

Does this make any past certs invalid? I would say NO. It is still sufficiently difficult to re-create the key-pairs through the method used in the paper. Yes if the attacker is motivated, they can pull it off.  The risk is that your system is one of the 1% that are bad.

**External References:**

- Do you want to know if your random number generator is good? See NIST  [http://csrc.nist.gov/groups/ST/toolkit/rng/stats_tests.html](http://csrc.nist.gov/groups/ST/toolkit/rng/stats_tests.html)

- There is a NY-Times article on this today [http://www.nytimes.com/2012/02/15/technology/researchers-find-flaw-in-an-online-encryption-method.html](http://www.nytimes.com/2012/02/15/technology/researchers-find-flaw-in-an-online-encryption-method.html)

- Summary: If you had a weak  key generation mechanism, then consider generating a new cert. [https://plus.google.com/u/0/110690049676631618818/posts/6kaGTA6vywa](https://plus.google.com/u/0/110690049676631618818/posts/6kaGTA6vywa)

- Researchers crack online encryption system [http://cwonline.computerworld.com/t/7858859/118594/552237/0/](http://cwonline.computerworld.com/t/7858859/118594/552237/0/)

- IT Blogwatch: RSA crypto: 'flawed', 'risky', 'quagmire of vulnerabilities'  [http://cwonline.computerworld.com/t/7858859/118594/552238/0/](http://cwonline.computerworld.com/t/7858859/118594/552238/0/)

- New research: There's no need to panic over factorable keys--just mind your Ps and Qs [https://freedom-to-tinker.com/blog/nadiah/new-research-theres-no-need-panic-over-factorable-keys-just-mind-your-ps-and-qs](https://freedom-to-tinker.com/blog/nadiah/new-research-theres-no-need-panic-over-factorable-keys-just-mind-your-ps-and-qs)

**Updated: **

**Feb 17th:**

Corrected a mistake in path 1 of certificate request. When you generate the keys and send a certificate request you are NOT exposing the private key, just the public one. Hence why this is often considered the better path, but as the paper suggests this is only better if you have good randomness.

Also noteable is that new research seems to be showing that the bad keys found might be coming from embedded IT devices like routers where they are generating keys for VPN capability. (See the "Mind your Ps and Qs" in the external References).

