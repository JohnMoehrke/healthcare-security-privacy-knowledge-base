# Security Failure -- Availability

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/02/security-failure-availability.html
Published: 2016-02-27T15:15:00.001Z
Updated: 2016-02-27T15:15:23.019Z
Author: John Moehrke

---

Security is a Risk domain, with the sub-domains of risk being risks to Confidentiality, Integrity, and Availability.  Lately the failures have been in the sub-domain of Availability.

First it was the [Hollywood Presbyterian Medical Center](http://www.latimes.com/business/technology/la-me-ln-hollywood-hospital-bitcoin-20160217-story.html) in LA. Their data got encrypted by malware and held hostage to a $17,000 ransom.

Now it is [Lukas Hospital](http://www.databreaches.net/hackers-hold-german-hospital-data-hostage/) in [Germany](http://www.infosecurity-magazine.com/news/ransomware-strikes-a-group-of/).

Many people focus their security efforts on the â€œConfidentialityâ€ aspect of Security. I donâ€™t know if either the LA or German hospital failed to protect the Confidentiality, but the attack they fell victim to could easily have happened to a database that was perfectly protected against Confidentiality risks. The database might have been encrypted by the database software with very good management of that encryption key. This protection would not have prevented the database from being Encrypted AGAIN. Yes, an encrypted system can be encrypted again.

It is possible that the databases were fully readable in the form that the malware encrypted. I am not trying to declare that they were. My point is that unless you address all aspects of the Security risk domain, then you  have left unmitigated risk.

Clearly if the data is not backed up, then there is also failures to protect against Integrity risks.

See my blog articles on Security as a Risk domain

- [Security/Privacy Risk Assessment/Management](http://healthcaresecprivacy.blogspot.com/p/topics.html#RISK)

