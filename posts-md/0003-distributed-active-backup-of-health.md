# Distributed Active Backup of Health Record

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/01/distributed-active-backup-of-health.html
Published: 2012-01-27T13:52:00Z
Updated: 2012-01-27T13:52:46.326Z
Author: John Moehrke

---

Lesson learned from large scale natural disasters in the USA from [Hurricane Katrina](http://en.wikipedia.org/wiki/Hurricane_Katrina), and in Japan by [2011 TÅhoku earthquake and tsunami](http://en.wikipedia.org/wiki/2011_T%C5%8Dhoku_earthquake_and_tsunami); is that a system backup is not sufficient in healthcare. A system backup is one where the data and/or system is backed up to something like backup-tape. It hopefully is stored off-site, specifically in a different region to keep it far enough away from any large scale disaster such as Katrina and TÅhoku. It might be that the backup is done directly into the cloud, that is that rather than using physical tape the backup is streamed to cloud based storage (I do this at home with Carbonite).

But this is not good enough in Healthcare. In healthcare the people directly affected by the large scale natural disaster will need healthcare urgently and long term. The disaster, especially in these large scale cases,  destroyed the local healthcare infrastructure (clinics, hospitals, etc). Thus these operational environments are not available to 'restore the backup'. It is possible to provision totally new, yet identical systems elsewhere; then restore the backup onto those systems. But this takes time; and is logistically very difficult to do.

The problem is that the directly affected community needs healthcare right away, and in a way that is sustaining. This is not to focus on the  emergency need, as emergency treatment works well in the absence of historical information (although would be enhanced if it was there). But rather to recognize that urgent care, emergent care, and sustaining care are still necessary. Some examples that are not obvious to many people are the need to put treatment plans in place that will need to be continued for months or years; picking up on past long-term treatment plans; re-issuing prescriptions that were in place (urgent to replace dispensed drugs that were destroyed). The threat (Risk assessment) to these healthcare workflows must be considered.

The Patient Centric Health Record needs to be available regardless of this large scale natural disaster. One possibility is to distribute the active health information across regions far enough away from any large scale disaster. Others might use A Health Information Exchange; or whole datacenter replicated on a truck. It is possible that a PHR might also be a solution, but only works if the patient takes the initiative; so it can't really be an organizations or communities solution. So risk assessment is clearly the right approach to produce the best solution for your environment and the likelihood and impact of disasters in your area.

In Japan, they filled the short term need with their distributed prescription system. Fortunately for them they did have all the prescriptions available through this. This clearly allows for re-dispensing, and new prescriptions. What is truly creative is that Japan used this system to re-create the patients likely problems. I find this wonderfully creative; yet tragic that this had to be done. Japan now has rules that require that all patient records must be duplicated at more than one facility. This is done through message routing in real-time.

Healthcare is about providing Care to the Health of the Patient. This is not a local-business problem, but much wider. The community needs are important. Please consider these risks, made so clear by these large scale natural disasters.

