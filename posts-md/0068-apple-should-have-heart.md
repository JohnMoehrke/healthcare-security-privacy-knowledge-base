# Apple should have a HEART

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/02/apple-should-have-heart.html
Published: 2018-02-04T21:34:00.006Z
Updated: 2018-02-05T15:20:42.218Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgTZLy-ooH61SRZCKvLwjU1Ss1XXBq8iYVIlO8BrjwPZ4n1EL9WqvWgUW-ZdywhpnQymiLWPSDjPahviZido3arYM6ynMk61RB3AvvcurvSbJ1Fq6eienNoWepfgg84KCFxpDtwGroWmKVZ/s1600/iPhone_X_Apple_Health_Records_screen_01232018.jpg

Apple has re-entered the Healthcare space with their new [announcement about support for a person to maintain their health data on their iPhone](https://www.apple.com/newsroom/2018/01/apple-announces-effortless-solution-bringing-health-records-to-iPhone/). There is really nothing technically new, but new or not is not the important bit. What is important is that any visibility given to the Health Data portability problem is good for making changes.

My understanding of what has happened is that Apple has moved from their own proprietary API support, to support for Argonaut defined APIs. These Argonaut defined APIs would qualify as a 'standard', they are based on #FHIR at an older version - DSTU2. So their adoption of a standard API is big. It is not hard, many have done exactly this. But it is big because it is Apple; and with Apple we get marketing of the usefulness of the concept, and we get a motivation for Providers to support the Argonaut API.

The bad news is that this is DSTU2, and that brings a risk that these APIs will be frozen at a non-Normative version of FHIR. I hope this doesn't actually happen. I hope that they evolve as FHIR evolves to Normative. The fact they started with DSTU2, and are ignoring the current STU3, is not good news for this hope of future normative FHIR.

Consumer empowerment aspect

My understanding of what Apple has done is adopt the SMART-on-FHIR security method, and the [Sync for Science privacy method](http://syncfor.science/). They expect the Patient (their user and iPhone owner) will navigate to each of their supported Healthcare Providers, interact with their portal to give authority to release the records to that iPhone application. This is a model defined as "[Sync for Science](http://syncfor.science/)", a really unfortunate name as the name came from the original scope but the solution is generally useful.

The benefit for Healthcare Providers is that they manage everything about the identity linkage, they own the username (password) the patient uses at their portal, and they own the linkage from that username to their Patient ID, and they manage the Consent holding the patient authorization to release to a specified and future authenticatable application on the iPhone..

The Healthcare Providers usually mange the Identifiers by sending their known patients a postal mail letter with a username and a one-time-secret. The person logs into their portal, gives the secret, and then proceeds to create the password they want. Once this is done, the Healthcare Provider has confidence they can manage the username/password, and that they know strongly which patient that represents.

The Healthcare Provider manage consents using whatever system they have internally. The consent never needs to be in a standard form, or any specific form or availability beyond what their organization needs. It just needs to utilize OAuth mechanism to bind the instance of the application the patient is using with the patient authorization (consent).

Lastly, because it is a relationship with the Patient themselves, when the Healthcare Provider release the data, they are logically releasing the data to the patient themselves. So no Business Associate concerns.

Apple in this case is just hosting an application, they are also the author of that application. They never need to know the Patient Identity, but they will be given highly sensitive patient data.

Why Apple changes everything?

So why is the fact that Apple is just doing what many applications have done before a big thing?

Apple has a huge number of people in the Apple ecosystem. Therefor the effort that existing Healthcare Providers need to do to support Apple is a better return on investment. Even if one only considers the 'bang for the buck' in terms of the number of that Healthcare Providers patients (bang) for the level of effort to do the work (even if high).  Note this is a motivation for Apple previous architecture that used proprietary API, but use of standards add to scalability.

Apple people trust Apple will keep their information and information about what they do on Apple private. This is unlike other big identity providers like Google, or YAHOO. The Apple people are special in this way, but so is the Apple organization. They have a proven track record (unlike YAHOO) of keeping their data secure, and they have a proven record of not letting their data get mined for advertising opportunities (unlike google).  Therefore the people are less worried that Apple will know what healthcare providers they are seeing.

HEART

So the current solution is absolutely fine. The problem it has is the ability to scale. This is where HEART comes in. [HEART is a standard specification,](https://healthcaresecprivacy.blogspot.com/2015/11/heart-profiles-for-review-comment-and.html) for which I have participated in the [standard](https://healthcaresecprivacy.blogspot.com/2016/01/fhir-oauth-scope.html)development, and [have blogged about it.](https://healthcaresecprivacy.blogspot.com/2016/08/controlling-big-data-feeding-frenzy.html)

The basic explanation is that [HEART](http://openid.net/wg/heart/)leverages OAuth, specifically a configuration called User Managed Access (UMA), to enable an "Authorization Server" that is selected by the Patient to represent Privacy access control decisions according to rules the Patient chooses. Essentially moving the Privacy authorization decision out of the Healthcare Provider.

This is done by giving high assurance to the Healthcare Provider that the patient has chosen a specific HEART server as their authorization decision service. Thus the Healthcare Provider can trust any PERMIT or DENY decision that authorization decision service (the HEART service) makes for that patient in that circumstance. This enables the Patient to establish rules ONCE, where in the Sync for Science model the Patient must set the rules as many times as there are Healthcare Providers holding data on that Patient. Some patients have a small number of Healthcare Providers, others have many.

Apple should have a HEART!

This is an elegant solution, but it needs some major new player to make it come to life. Enter Apple. The two factors I mention above are critical. Patients trust Apple, and Healthcare Providers like Apple. These two are unique, as I mention above, but that is not enough.

The third factor is critical. Apple knows high quality identity information about their customers. Thus it is more likely that as an Identity provider, they will be able to more accurately, and more authoritatively, build the binding between their Identity (apple ID) and the various Patient Identifiers at the various Healthcare Providers. This patient identity problem is the biggest 'technical' problem in ALL of the Health Information Exchange (HIE) solutions. Binding a realworld identifier with a Patient Identifier in a way that has few false-positives (hopefully zero), few false-negatives (hopefully zero), and can't be abused by malicious actors (authenticatable and traceable).

Further, the Apple ecosystem is a place where some trust can be placed. If there are malicious misuse of the healthcare data exchange, the Apple ecosystem can be used to find the malicious actor. This is to say that there is trust that Apple knows what the Apple user is doing, and can find Bad-Apples. (sorry, had to).

Conclusion

Is it critical that Apple start to build out their HEART solution? No, but it is exciting that there is finally someone that I think could pull it off.

See my articles on Healthcare #[FHIR](https://healthcaresecprivacy.blogspot.com/p/fhir.html), [Access Control](https://healthcaresecprivacy.blogspot.com/p/topics.html#AC), [Consent](https://healthcaresecprivacy.blogspot.com/p/consent.html), and [Audit Logging](https://healthcaresecprivacy.blogspot.com/p/topics.html#Audit). also [Blockchain for no other reason than search optimization](https://healthcaresecprivacy.blogspot.com/p/topics.html#Blockchain).

