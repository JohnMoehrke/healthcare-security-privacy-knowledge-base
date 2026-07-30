# Need more Security and Privacy Standards in Healthcare

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/10/need-more-security-and-privacy.html
Published: 2013-10-07T15:26:00.001Z
Updated: 2013-10-07T15:26:17.555Z
Author: John Moehrke

---

There are new standards organizations taking on the apparent dearth of Security and Privacy standards in healthcare. [Center for Internet Security](http://www.healthcareitnews.com/news/medical-device-security-efforts-ramp?single-page=true)", or [ITU-T SG17 "Security in applications space"](http://www.itu.int/en/ITU-T/studygroups/2013-2016/17/Pages/default.aspx). Both of these are classically in the non-healthcare (non-any specific industry) standards business. Yet they somehow think they need to make special new efforts for healthcare. They are not the only ones, I have interrupted many healthcare standards organizations, like [HL7](http://www.hl7.org/), with news that there are [plenty of available and appropriate standards](http://healthcaresecprivacy.blogspot.com/2013/05/security-tutorials-on-mhealth-security.html). Even IHE is looking at a [bunch of Profile Proposals](http://wiki.ihe.net/index.php?title=ITI_Planning_Committee_2013/2014_Meetings#F2F_Meeting) this year that are feeding on the fallacy that there is no way to enable patients to participate in an HIE.

http://imgs.xkcd.com/comics/standards.png

Organizations like the "

The reason why these organizations see a dearth of Security and Privacy standards in healthcare is clear, because there are so many failures. Open up the news feed and you will surely find [yet another healthcare information breach](http://www.hhs.gov/ocr/privacy/hipaa/administrative/breachnotificationrule/breachtool.html). The [Privacy Advocates are highly frustrated](http://www.healthcareitnews.com/news/patient-privacy-evangelist-analytics-officer-spar-over-data-rights) that patients are not getting [Privacy](http://healthcaresecprivacy.blogspot.com/2013/01/defining-privacy.html). The [FDA is being pressured to address cybersecurity](http://www.fda.gov/medicaldevices/safety/alertsandnotices/ucm356423.htm). Even mild mannered healthcare leadership are frustrated:

>
[Deven McGraw â€@HealthPrivacy](https://twitter.com/HealthPrivacy) [3 Oct 2013](https://twitter.com/HealthPrivacy/status/385796727317340160) Unencrypted laptop stolen, leads to [#HIPAA](https://twitter.com/search?q=%23HIPAA&src=hash) breach [http://ow.ly/psn5S](http://t.co/uYihGRGnh4) Wow, what a shock (not). Encrypt your damn data, health care!

These are real problem, but they are not because we lack standards. These events are hurting the healthcare industry. These events are no good for anyone. [When Healthcare is not secure - trust suffers](http://healthcaresecprivacy.blogspot.com/2012/03/healthcare-is-not-secure-trust-suffers.html). They are happening because we are not implementing the standards that exist. Even the [FDA recognizes this fact](http://www.fda.gov/MedicalDevices/ResourcesforYou/Industry/ucm364035.htm).

I am not trying to say that there is no standards development needed. I am very actively working on multiple efforts to develop standards.

**Do the basic security**
What I am trying to point out is that the basics of cybersecurity are readily available and appropriate. Healthcare is NOT SPECIAL. Healthcare needs to simply implement the basic stuff. General purpose portable devices (Cellular phones, Laptops, Tablets, USB-sticks) are top priority yet also plenty of technology readily available. Like all businesses, recognize that some equipment will need extra enclave protection. Like all businesses, recognize that data is like water and wants to leak out of a container, so you need to watch for it, review the audit logs.

Note the links below will not work while our USA government is shutdown... SAD!

- [SP 800-146 Cloud Computing Synopsis and Recommendations](http://csrc.nist.gov/publications/PubsDrafts.html#SP-800-146).  does a really good job of outlining not just the technology, but also the operational and policy issues.  They have touched on issues I had never thought of. They do a really good job of explaining responsibilities between the cloud subscriber and the cloud provider. I highly recommend that people use this guide.

- [SP 800-124](http://csrc.nist.gov/publications/nistpubs/800-124/SP800-124.pdf) Guidelines on Cell Phone and PDA Security

- [SP 800-111](http://csrc.nist.gov/publications/nistpubs/800-111/SP800-111.pdf) Guide to Storage Encryption Technologies for End User Devices

- [SP 800-53 - Catalog of Security and Privacy controls - technical, operational, physical, and management](http://csrc.nist.gov/publications/drafts/800-53-rev4/sp800-53-rev4-ipd.pdf)

- [SP 800-30 - Security Risk Assessment](http://csrc.nist.gov/publications/drafts/800-30-rev1/SP800-30-Rev1-ipd.pdf)

- [SP 800-144 - Guidelines on Security and Privacy in Public Cloud Computing](http://csrc.nist.gov/publications/nistpubs/800-144/SP800-144.pdf)

- [IR-7497 - Security Architecture Design Process for Health Information Exchanges (HIEs)](http://csrc.nist.gov/publications/nistir/ir7497/nistir-7497.pdf)

- [The rest of the NIST 800 Special Publications](http://csrc.nist.gov/publications/PubsSPs.html)

- [IEC 80001 - Risk Assessment to be used when putting a Medical Device onto a Network](http://healthcaresecprivacy.blogspot.com/2010/11/iec-80001-risk-assessment-to-be-used.html)

- [IEC 80001 - Security Technical Report presentation](http://healthcaresecprivacy.blogspot.com/2011/10/iec-80001-security-technical-report.html)

I have plenty more on [my Topics page](http://healthcaresecprivacy.blogspot.com/p/topics.html)

Healthcare is special in the complexity of policies
What typically frustrates healthcare is Policy, not technology. Too often someone presents a problem that they think is a technical problem, but is actually rooted in a policy problem. As a systems engineer, I look at any presented problem looking for the root cause. If you don't find the root cause, then you will be just putting a patch over a systemic problem. The problem will reappear.

Healthcare policies are complex, there is no way around this. This is especially true in the USA, but also true even in a highly organized and contained country. First there is the fact that healthcare information is potentially very sensitive, highly personal, potentially valuable, and not revokeable. This is totally different than the Banking industry, especially because in the banking industry data loss can be revoked and insured for. When banking information is lost, the credit card numbers are revoked, a fraud alert is registered, and damages are kept to a defined value. This is simply not possible in healthcare.

The bigger problem healthcare has is that it is has grown up "as needed", meaning there are many healthcare providers from an individual to a multi-national organization; various disciplines; and a scale of features. Many layers of practice: home-health, walk-in, general practice, specialty, out-patient, clinics, hospice, and other. We patients move around all the time and go shopping for the best treatment when we have a special need. Fortunately for healthcare doctors are amazing inference engines and thus can do a fantastic job without knowledge of your past data.

What we need is "Policy Standards"
What we need is some boiler plate policies that handle 80% of the cases. We can then show how to assemble the current technical standards to meet those needs. We must recognize the 20% of cases that are missing out, and kick off tasks to resolve them. But the needs of the many out weigh the needs of the few.

