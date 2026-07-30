# Controlling Big-Data feeding frenzy with Privacy Consent Authorization

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/08/controlling-big-data-feeding-frenzy.html
Published: 2016-08-22T12:49:00Z
Updated: 2016-08-22T12:49:07.431Z
Author: John Moehrke

---

This is a start of a series of articles on the various [Privacy Consent](https://healthcaresecprivacy.blogspot.com/2016/08/consent-process.html) mechanisms that are being developed in[HL7, IHE, and HEART](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html). I will describe them quickly, but will go into more detail in later articles.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj4QK-FpwaqYhdbE3n6h_3X651VOraaDTgwsx_Adnr-tdNy00aJDLtkcRKsB64h6baozos-DYyNAPVW-kV0UpcI_CxvbV-8rme7vSm5VRFYyynKf1U-ZXkG-7SKSfdnHWOARrfP6rYHTWgD/s1600/Slide1.PNG

Big Data Feeding Frenzy
This is what most people think of when they hear about healthcare data in the context of "Big Data".  This diagram shows a very minimal "Privacy Consent". One that only controls if the Patients data is available or NOT.

Too often this is refereed to as OPT-IN, or OPT-OUT. This is a mischaracterization, but it is one that must be addressed.  This kind of configuration does happen. I am not saying it doesn't happen. Just that it shouldn't be confused with OPT-IN, or OPT-OUT.

I know that I will not succeed in defining OPT-IN or OPT-OUT. They have too much momentum behind poor definitions. I did try to add clarity in the FHIR Consent "[General Model](http://hl7.org/fhir/2016Sep/consent.html#6.4.6)" section.

Consent Controlled Feeding

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjGA_Z2puZ8IdWkxfd2tYDknk6giG8uH5b7cY3gi_MCHwExIxGGNIu35DVodavzlyXx3el0dqkOBvKEEIHWkmp-RqDP4N33MJl22IzP5kE0zyWpDxm76_lrmSsGtQ08iBH08hwUf5xoHqM-/s1600/Slide2.PNG

First step is to recognize that [Privacy Consent](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html) must enable the Patient to define Rules and Obligations. This is abstractly represented by their Policy -- My Policy -- which follows their Data.

Thus when someone or something tries to access the Big Data; there is an authorization (AuthZ) check done. This authorization check assures that the Patient would be happy allowing their data to be used in the way that the someone or something is going to use their data. I am speaking abstractly, so no specific authentication, context, method, obligations, etc... Just that the Patient would be happy, not upset.

In [HL7, IHE, and HEART](https://healthcaresecprivacy.blogspot.com/2016/03/electronic-privacy-consent-patient.html); they are building parts of the system to do this. The differences are important, although the goals are the same.

In all models they look to address the Privacy control. They all are careful to make it clear that businesses holding data must and can still control their data according to their rules. So this is not a replacement or hindrance of Role-Based-Access-Control (RBAC), or other mechanisms that manage workflow centric authorization.

Documented Privacy Consent Act Controls the Feeding

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgtbiCVf1UPcru_Lm0sxwgLFtyLt53QG32pcbZa3ff1oKfhy2r1oSUyZb8qhWctgr-xzqfNe2xRszVydS7tzET9AT6-uHCHy4rinlnaeEuhVGL-6dmrrRSP0IAT1LwLBjB9r1YCSxE_auTe/s1600/Slide3.PNG

The first model I will explain is one that both HL7 and IHE are approaching. In this model the goal is the same, to give the Patient control over how their data is used; to keep them happy. The method that they use is more focused on standardizing a record of the Ceremony of Consenting and the Rules that were part of that Consent in a form that is computable. Where computable means that an Authorization engine understands the rules and obligations, vs only a human.

This model does NOT define exactly how the recorded consent rules will be used in an Authorization (AuthZ) system, however it is completely reliant on an Authorization (AuthZ) (aka Access Control) decision engine is used. There are many, some based on standards such as XACML or other.

The model is focused on recording the facts of the Consent:

- Who - The patient

- What - The data - specific resources are listed, empty list means all data covered by the consent.

- Where - The domain and authority - what is the location boundary and authority boundary of this consent

- When - The issued or captured

- When - The timeframe for which the Consent applies

- How - The actions covered. (such as purposes of use that are covered)

- Whom - The recipient are grantees by the consent.

More later on the specifics of HL7 FHIR Consent, and on IHE BPPC and APPC

User Managed Access Controls the Feeding

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzKsiYNOy9TGedyZkQTlVxUfbeBY9zm7ptPfDHVvZ-f58W-7CzLooYM_uTz6aNAKFSmlVUPIkl498cWmWAyWLtOpxEZHWL3MmlZ-1Hy_q1iLPYL7tKRS32esNTcWCuILrYl0ZVCeCodY9T/s1600/Slide4.PNG

The second model I will explain is the one being worked on by HEART. In this model the goal is the same, to give the Patient control over how their data is used; to keep them happy. The method tat they use is more focused on standardizing the Authorization Decision.

This model does not try to define the access control (authorization) rules. It expects that the "UMA Service" will have some User Interface that the Patient will use to explain their desires and wishes regarding how they want their data used, and how they don't want their data used. By placing this as a UI, the HEART group don't need to worry about all the specifics of the rules. As the rules can get richer and richer over-time based on User Experience.

This model does need to be placed into the critical-path of each and every request for data. As that is when the "Authorization Decision" is made. There are optimizing methods, using timeouts and scopes, that means the Authorization Decision can be made once for a bulk of time and type of data. So it isn't as intrusive as the abstract model would imply. With a well-behaved and clean data-architecture one decision can be used for many transactions over many minutes. Unfortunately the data does need to be cleanly architected along lines that are usable by an Authorization Decision. This is where HEART is having trouble today. This problem will be solved, just not clear today.

Both UMA and Consent

It is possible to use both. There are a couple of ways to mix these two together. Not clear what is a good approach, vs a bad approach. Much more experience is needed.
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjc2-Otz9rZvRvQO79PZ4ie58YEy-DrxYEnwV_4yP7dK37NuBFVjYr-t42PPcYiziwILTRjykjC2w06_rfSLUc9fNBZB6NcP8ruwA9a5y3tiO1ogfala_eVei0QL3BLRYMcPwwAe2VoRb2v/s1600/Slide5.PNG

1) Here is one where the Consent is captured, and UMA is used just to do the Authorization decision. Tis model look very much like the second one above, except that the "Red" AuthZ decisions have a defined standard, that being UMA. This model thus puts a standard in the Decision path, but doesn't do much else.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEibFjhDNyCYq7naLrRb5DEERiUqtmwAQRF2HtU1u2hV1zPikoeaPYbTCwGm9s32dbysbiUgScV-FapjsnjBTTILVIS9rTU1dkaJR9USbVHiPFuzCwdZqX1-2pi7Ptl8odppyrCUEj7G8Jsl/s1600/Slide6.PNG

2) Here is one where UMA is still providing the User Interface to capture the consent, but that consent is being persisted into a standard document form, like FHIR Consent. This model is far closer to the UMA like experience. It can take advantage of the UMA and OAuth specifications far better. It also meets documentation requirements using a standards based Consent document, which doesn't seem that important. A UMA service can create a document in any form, so using a standard form seems little value when nothing else reads it.

3) There are other models being discussed, such as one where UMA is predominant, but where FHIR Consent is used to define the UMA 'scope'.  This model allows the 'scope' value to be a structured JSON object that contains rules and obligations. Thus the Authorization Decision doesn't need to be a pre-configued simple string.

The combined approaches seem more academic than realistic. They are helpful to moving the state-of-the-art.

Conclusion

All of these approaches are under-development, and need people to try them out.  I will be further defining these, and will continue to help develop them. I do NOT expect a winner soon, and actually expect ALL of them to be used significantly. In the coming articles I will explain the benefits that each model brings, these benefits are critical in specific context.

Other articles on [Privacy Controls](http://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

