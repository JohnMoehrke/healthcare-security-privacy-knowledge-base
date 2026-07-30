# getting to mHealth solutions - real People

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-real-people.html
Published: 2013-07-21T16:05:00.001Z
Updated: 2013-07-21T16:12:35.409Z
Author: John Moehrke

---

I started this with explaining "how" [mHealth solutions should authenticate their users](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-users.html). Hint, it is through oAuth and more so through Internet friendly authentication service providers such as Google, Facebook, LinkedIn, Twitter, Yahoo, or others. I recommend this solution as it abstracts out the hard work of user management, password management, multi-factor authentication, password resets, etc. These are not value-add functionality of your mHealth application, so might as well pick a good pluggable standard and outsource. It doesn't however absolve you of responsibilities. You still must choose wisely which of these Identity Providers you are going to allow your users to use. You also do still have power and responsibility, in that if an Identity Provider that you allowed becomes 'bad', you can revoke those access credentials. So you still have power and responsibility; yet you can outsource much of the hard work.

The problem is that these Identity Providers don't tell you who the user actually is, most of the time they have no clue. You are not even sure that the [individual isn't a dog](http://en.wikipedia.org/wiki/On_the_Internet,_nobody_knows_you%27re_a_dog). These accounts are created by the user for the user. The only thing these accounts can tell you is that it is the same individual, at least within the control of that user.  For most social networking uses on the Internet this is a fine restriction, as in those cases the user creates content that everyone sees simply as coming from whoever.

**So, how do you know which real person this account belongs to?**

The social networking sites do actually have this problem, just not in the same way. There is a need in social networking to have 'Verified' accounts. ([Twitter Verified Account](https://support.twitter.com/groups/31-twitter-basics/topics/111-features/articles/119135-about-verified-accounts)) This is typically because the user account name is a representation of a 'star' or someone of 'influence'. Most of the time it is because the account name is a Trademark. So some of these Identity Providers have means where they will allow a user to dispute a different user holding a account name that could be 'confusing to the public'. This is nice, but not sufficient.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1HWkj5t-8KsSGCs8oeKARQY4fEfwC20hJry6rplxAos2093Dgu-BL8Ki_iGlB9fsFvK0DoHqnSiJ_IkDR5jZrmGDpVQzL0cfCGER1u2n3ub9JxkSDK9eeLhxl6hhHLuER1rp7QD4oiJdr/s1600/Slide33.PNG
Identity Proofing - Level of Assurance
I have covered Level Of Assurance, I am not going to cover them again.

- [Authentication and Level of Assurance](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html)

- [Level setting on Level of Assurance](http://healthcaresecprivacy.blogspot.com/2012/09/level-setting-on-level-of-assurance.html)

- [Identity - - Proofing](http://healthcaresecprivacy.blogspot.com/2012/08/identity-proofing.html)

- [Healthcare use of Identity Federation](http://healthcaresecprivacy.blogspot.com/2010/07/healthcare-use-of-identity-federation.html)

- [Federated ID is not a universal ID](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)

I will however indicate that to access Health Information, as the Patient or as a Provider treating the patient, one does need a HIGH assurance. This might be Level 4 or might be a modified Level 3. What is important is that one must be very sure that the HUMAN is indeed the human you intended.

Specifically it is the Identity Proofing - Level of Assurance - that I am going to work on next. That is how sure are we that the identity given is the specific individual. This  is different from 'session-authentication-strength, meaning how sure are we that this individual is the same one that the identity was issued to. We are actually outsourcing the session-authentication-strength to our oAuth Identity Provider. Remember, outsourced but not out-of-control.

So the problem we have with the solution we have chosen is that the Identity Provider doesn't give us any claims that the identity belongs to a specific individual  They are really just saying that it is the same individual each time (session-authentication-strength).  So we have NOTHING to base the Identity Proofing - Level of Assurance. How can we possibly use these Identity Providers for Healthcare?


Post Identity Proofing
We bind the human identity to the technical identity, after the fact. This is backward from corporation based identities. In a company one gets issued a user identity after you start work. HR has already vetted you, and you have received some form of training. In a work setting the Identity Proofing is done before an Identity is issued. In the case I am explaining we do that Identity Proofing later, delayed not forgotten.

You are already use to a form of this. When you signed up for Facebook, they sent you an email that you had to click-on a link to prove that you had access to that e-mail account. This is what Facebook sees as "[Account Verification](http://www.facebook.com/help/398085743567023/)". It only proves that you have access to a different account, thus Facebook can bind those two identities into a 'greater' identity. This isn't really verified, but it is a step they take.

 Binding Identities
Many Healthcare Providers already use a system that I think would work well here for their Patient Portals, although I modify the process slightly as I don't want the mHealth application to manage authentication. The solution uses the USA Postal Mail. [Testimony was given last year to the HIT Policy committee](http://healthcaresecprivacy.blogspot.com/2012/10/identity-proofing-and-authentication.html)

The healthcare provider already knows the patient, they have in-person-proofed them, and created a Patient Identity. They have likely already billed and received payment from the individual. This by any standard is considered one of the highest forms of Identity Proofing - Level-Of-Assurance. Again it might be a Level 4 or a modified Level 3 if you get picky about the use of a Federally Issued Identity.

So what needs to be done is somehow the highly Identity Proofed Patient ID needs to be bound to the non-Identity Proofed oAuth identity, and this needs to be done in a verifiable way that can be trusted and proved trustworthy. So, send the patient a letter with a shared secret string, a one-time-passcode. Tell the user to login to your  Patient Portal with whatever Identity Provider they choose (the choice I gave in the first article). Once logged in, your Patient Portal will notice that the user account is not yet bound to a Patient Identity so you  will prompt the user for this one-time-passcode that you mailed to them. Once they enter this code, you know that the individual is indeed the same individual. You can now consider these two identities bound by this relationship of patient-as-a-user to patient-as-a-health-record.  You have the assurances of the USA Postal fraud laws that the mail was only opened by the one it was addressed to. It really doesn't matter if that individual 'outsourced' the computer interactions to their geek-daughter (or geek-granddaughter).

I show you how to do this with a Patient accessing mHealth which is a Patient Portal. I leave as an exercise to the reader how to deal with mobile applications, and how to deal with Providers using internet identities.

 https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhpzqbtPqD5ih3V-v7SE06-a2sCNsRbSXGJoHSwXqunWPdYBFBTAaYT9QUvT9_u7hRv-60liLQM4AzhJrfzVB_qTmK6FZ3WXvkddwFB9qSmc9VenQRNHJSWtJTOpH1pWXzFDy6UHfNIJF-9/s1600/20061126-712992.png
Bi-Directional Bound Identity
At this point I suggest we are not done. This Internet Identity that the user is using is bound to their Healthcare Identity, but is their Healthcare Identity now bound to their Internet Identity? Should it be? This is a good case of needing to get informed consent, but I might indicate that binding the identity both directions is desireable. The user account that the individual chose is by-their-choice. If they are willing to, they should be able to be known by that Internet Identity. Meaning the Internet Identity used as their username, can become their [Voluntary Patient Identity](http://healthcaresecprivacy.blogspot.com/2013/03/foundational-astm-healthcare-standards.html). This can help with the [HIE Patient Identity Problem](http://healthcaresecprivacy.blogspot.com/2013/04/hie-patient-identity-problem.html), and a [good HIE identity enables better Privacy controls](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html). See also: [Patient Identity Matching](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html)

Next up: real Access Controls
This leads me to the next subject of: How to do more complex access controls? It isn't obvious yet, but with oAuth your mHealth application is not enabled to do Role-Based-Access-Control or Patient-Privacy-Consents-Authorizations. All you get with out-of-the-box oAuth is an opaque token to represent the individual.

