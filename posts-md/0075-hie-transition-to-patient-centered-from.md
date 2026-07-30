# HIE transition to Patient-Centered from Provider-Centered 

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/11/hie-transition-to-patient-centered-from.html
Published: 2017-11-24T17:07:00.001Z
Updated: 2017-11-24T20:53:36.837Z
Author: John Moehrke

---

The whole concept of  [Health Information Exchanges](https://healthcaresecprivacy.blogspot.com/2014/03/health-information-exchange-centralized.html), that I have been involved with, is there to improve Health outcomes for the Patient. So I often get frustrated when someone says that the HIE needs to become Patient Centered. I am a [Patient in Wisconsin, and I feel the impact of WISHIN](https://healthcaresecprivacy.blogspot.com/2015/05/in-wisconsin-we-have-interoperability.html). There is no other purpose of an HIE besides the Patient. I have to take a few breaths and remind myself that better outcomes for the Patient is fantastic, but that the Patient doesn't 'feel' like they have any say or involvement. It is this that needs to improve.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhBHO0rQ7W9Kezu6yOvvExE4TcIEFRU52vCTyQ78brtbYwbW9cVbHSzO3S_kaNs14YFGIfHVV7YEIPWqibrJwCUO4pfkmJYSPLLK6pP7wZ_S45CHisbw-PmGn7zN6W7J8-7w-tHP80cA7Zw/s1600/WISHIN_Now_Later_Patient_Centered.png

In Wisconsin we do have Consent, specifically there is a state wide system for a [Patient to choose to NOT allow their data to be shared over the exchange](http://wishin.org/ForPatients/PatientChoice.aspx). This does not give them much other than ON vs OFF. But it is more than some.  So, this is usually first step in moving from a Provider-Centered to a Patient-Centered model.

This level are not fantastic, but it is far better than what we had a handful of years ago when there was no network.  There is a [bright future for the Health Information Exchange too](https://healthcaresecprivacy.blogspot.com/2017/11/future-of-hie-is-bright.html). I want to expand upon the future transition from Provider-Centered to Patient-Centered, as a trend that is already underway.

Provider-Centered

First I need to address this statement. There is nothing in existing HIE that is "Provider-Centered". Today's system is [highly "Manual", outright hard to use](https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-is-bright-automated-not.html). But that is the last article. I truly feel sorry for Providers that are going out-of-their-way to use an HIE for the benefit of their Patient.

I will say though that this is exactly along the same lines as why "Patient-Centered" is not a good statement either. That is to say that today the Provider gets to interact with the HIE, where as the Patient is just a passenger. Thus Patient-Engaged vs Provider-Engaged might have been the better phrase.

Patient-Centered (aka Patient-Engaged)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj-Kepi0m6NB9tC_dwGQ2w8kbT7_BHVVadSiuPQ_rV52_A0IRCmOX9sluKNtWsOlCQCXRikxiDbGUzmQsuUvDtwwPAhtJlrjw5DaFGU50feXF_P822Xr_MjZcbn5fF96vNM0fhzmP1hyphenhyphen_nr/s1600/WISHIN_Patient_Engaged.png

So, let me say "Patient-Engaged" as the more clear two word statement. I think the goal of this initiative is to get the Patient more engaged. This might be more actual engagement, but might also be the feeling like being engaged.

The pretty picture, Wisconsin is a pretty state, on the right shows how well WISHIN has included Patients. Odd choice of colors, as I would have chosen green to be the best case, and red to be the areas where more work was needed.  This graph is a current state, and included means that the given percentage of the population have their data accessible within WISHIN (and thus eHEX).

The prime Patient need in Wisconsin is to support our tendency, especially the elderly, to fly-south in the winter (Arizona, Texas, Florida, etc). WISHIN has that priority [covered through eHEX and direct HIE-to-HIE](http://wishin.org/Solutions/ProvidersandClinics/eHealthExchange-ConnectingNationally.aspx) engagements.   They don't have good coverage with all states, but the southern ones where we tend to retreat to were clearly seen as a priority.  Also, some of the other states that have people that come up to Wisconsin in the summer and fall are also covered.

The WISHIN system also includes support for Direct-Secure-Messaging, so the theory is that anyone that supports Direct is reachable.

Here are some other ways to engage the patient more:

- Provide an Access Log. I would say Accounting of Disclosures, but there are simply too many exceptions that this results in a useless log. I want an Access Log, that is a log of every time my data was accessed (Direct or Exchange) using the WISHIN infrastructure. Who requested the access? What did they ask for? What did they get? When was this? Where was this? Why did they access (PurposeOfUse)?  There no network that I know of that provides a view of how the HIE was used to expose the Patient data. I recognize the concern that Covered Entity have that gives us "Normal Operations" exceptions. I don't like these exceptions, but I understand why they exist. I think that ALL accesses over an Exchange need to be reported to the Patient.

- Provide API access for applications the Patient chooses and authorizes. In the past this would be covered by a statement of "PHR", but that concept is too limited today. This item is inclusive of the older concept of a PHR, but is also inclusive of newer health Apps. Where a PHR was a system that would copy the patient data and give the patient the ability to connect apps to that copy of the data; now we are looking to use FHIR as a way to connect these Apps directly to the data.  These apps will tend to just need read-only access, but...

- Provide capability of the Patient to author data. Many patients, myself included, are using many home-care devices, personal-care devices, health-monitoring devices, and sports related devices. These are producing a wealth of information, much of it is just background measurements. These measurements are not accessible to Providers unless they can be contributed on-behalf of the Patient.

- Provide the Patient to challenge the validity of data. Once we can see the data, we will surely find some mistakes. Being able to challenge the validity of the data is essential. Even HIPAA acknowledged the need for the Patient to 'Amend" their data. I say challenge as to be closer to "Patient-Centered" or "Patient-Engaged".

I'm sure there are others. I base these on the [Privacy Principles](https://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html)

Summary

**Caution**. I have a long history in Patient-Safety, and Security. Thus I recognize the need to be careful with adding any capability. We must do "Risk Assessments" and mitigate the risks.  The new capabilities are clearly helpful for Patients that want to use them to better their health. However these new capabilities can be used maliciously too. Someone might use these new capabilities to gain advantage on someone else. Someone might use these new capabilities to gain themselves an advantage. We must consider someone who is Motivated, Capable, and Funded; along with mixtures of these. Engaging the Patient, means enabling abuse.

**Benefit**. Many patients can help with their own health if only they could get accurate data. Healthcare is about the Patient, it should be not just about the patient but **with **the patient.  Every living creature is a potential Patient, this should be obvious as an important priority.  The cynic would say that the law recognizes corporations as entities, well that kind of entity is never a Patient.  Humans are so much more important.

**What is your ideas????? Please post comments**

