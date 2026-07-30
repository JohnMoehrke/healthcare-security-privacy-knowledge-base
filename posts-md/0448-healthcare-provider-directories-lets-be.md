# Healthcare Provider Directories -- Lets be Careful

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/10/healthcare-provider-directories-lets-be.html
Published: 2010-10-13T13:15:00Z
Updated: 2010-10-13T13:15:37.630Z
Author: John Moehrke

---

The HIT Policy committee heard testimony a few weeks back on the topic of Healthcare Provider Directories. The committee has already put together an impressive discussion of Healthcare Provider Directories and have a set of questions that they are asking different subject matter experts.

> Provider Directories_ _will be a key enabler of nationwide health  information exchange.  The IE WG has been asked to investigate and make  recommendations to facilitate creation of provider directories that  enable universal health information exchange across the country.  As  part of its fact-gathering process, the **IE WG will host a public hearing  on September 30, 2010**, in Washington DC, to hear testimony from a  variety of prospective users and industry experts on: 1) obstacles to  health information exchange; 2) the role that provider directories could  play in addressing such obstacles; 3) the types of directories that  exist in the market today; and 4) options for building a directory  approach that meets the emerging health information exchange needs of  health care providers.  [More](http://healthit.hhs.gov/blog/faca/index.php/2010/09/21/hit-policy-committee%E2%80%99s-information-exchange-workgroup-seeks-comments/)

I was asked to testify, but was out at corporate training. I highly recommended the two individuals that were the main driving force behind the IHE [Healthcare Provider Directory Profile](http://healthcaresecprivacy.blogspot.com/2010/08/healthcare-provider-directories.html). There was so much good work done by this committee of IHE, and so much more that could be done. The committe decided to have Keith Boone fill my slot [Provider Directories.](http://motorcycleguy.blogspot.com/2010/09/provider-directories.html) He did an excellent job of filling this slot.

Generally this HIT Policy initiative needs to be coordinated with National initiatives such as the WhiteHouse â€œ[National Strategy for Identities in Cyberspace](http://www.whitehouse.gov/blog/2010/06/25/national-strategy-trusted-identities-cyberspace)â€. This initiative starts out seeming like it is just politics, but if you read the whole thing they do understand the need and are starting to peel the onion. There is also PKI initiatives like: the Federal PKI, Kantara, and others.

On the technology choices, I would be recommending we re-use technology that other industries use and not create special technology just for healthcare. So lets use LDAP technology which has strong support, tools, knowledge, flexibility, and power. It also has many interfaces besides the classic LDAP. I would recommend against the use of HL7 for this use, although this certainly is a useful schema and vocabulary; the technology is specific to healthcare and is not as widely supported or used.

**The Use-cases are not clear**, and need to be made more clear. It is clear to me why we are investigating Healthcare Directories, but we need to be very careful.  Most of the use-cases that I see would be handled just fine without the need for any standards. There will be a functional directory offered that is web-based. I am not convinced that we need an Interoperability specification at the Nationwide level. We donâ€™t have one for Internet e-mail or Phones today. They are all working just nicely on social mechanisms with backing from general web interfaces.  Why would any provider want to publish their contact information to a directory that everyone in the world can discover.  If it is no open for anonymous reads, then what is the authorization path?

Related to this is the issues of abuse. **Once a directory exists it will be abused**. The more available the information, the more abuse it will draw. (eg. SPAM).  There are people that think we need to have â€œUniversal Addressabilityâ€ in the provider space. I donâ€™t disagree with universal addressability, but there are efforts to define this as universal discoverability of your address and your credentials. Thus a malicious user can discover my email address and send me encrypted SPAM.

The negative risks that are created by the solution need to be considered in addition to the positive functionality of providing the solution..     Hence why there is no universal discoverability in internet email and phone numbers todayâ€¦. And where phone numbers can be guessed, there is now a do-not-call list.

