# HIE Future is bright - single connection to hub

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-is-bright-single-connection.html
Published: 2017-11-25T14:09:00.003Z
Updated: 2017-11-25T14:13:45.666Z
Author: John Moehrke

---

The next item on the [HIE Future is Bright list](https://healthcaresecprivacy.blogspot.com/2017/11/future-of-hie-is-bright.html) is movement from "Multiple Point-to-Point Connections" to "Single Connection to Hub". This change is purely administrative, but is still significant.  Again, I will state that I was not at the [WISHIN meeting](https://healthcaresecprivacy.blogspot.com/2017/11/future-of-hie-is-bright.html), so I don't know what they said about this. I will guess, but will keep my guesses here limited. I welcome comments to fill in details on what you think this transition means.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkmdJ210qV9zFHrXi1QqJB7zt2Ejo2tBA3TteWyeKDKxlgLFlkeM4H1wBFnz51Dn2BFJaTbhyYxSn9-gbYXCY1h8hFik2st5yADsTEgWz4RrTLkaii3kUqKI3ryscWvDd643qFgcOkmAlo/s1600/WISHIN_Now_Later_Central_Hub.png

I suspect that this is more a statement about what the WISHIN organization will do to help the remaining organizations get connected. The existing organizations already have the connections, and are likely not going to gain anything by reducing 3 interfaces to 1 interface. A healthcare provider organization that has not yet connected would find one interface vs 3 interfaces to be a significant reduction in work.

WISHIN is three networks

I picked on the number three because it is the number of big services, but there are many services. The following is probably similar to many regions (e.g. state HIEs):

- Direct Secure Messaging -- They have a [a HISP, and ability to issue Direct addresses on the WISHIN domain; all as part of DirectTrust.](http://wishin.org/Solutions/ProvidersandClinics/WISHINDirect+Messaging.aspx)

- Wisconsin wide network -- They connect Wisconsin sites within WISHIN. And maintain [Patient Privacy Consents that they enforce](http://wishin.org/ForPatients/PatientChoice.aspx).

- [onramp to eHealth Exchange](http://wishin.org/Solutions/ProvidersandClinics/eHealthExchange-ConnectingNationally.aspx)

- [Wisconsin Provider Directory](http://wishin.org/ParticipatingProviders/WISHINPulseParticipantList.aspx)

- [Wisconsin wide Patient Record Locator](http://wishin.org/Solutions/ProvidersandClinics/WISHINPulse/WISHINPulseDashboard.aspx)

- [Public Health Reporting](http://wishin.org/Solutions/HospitalsandHealthSystems/PublicHealthReportingforMeaningfulUse.aspx)

- [Hospital Visit report](http://wishin.org/Solutions/HealthPlans/PatientActivityNotificationReport.aspx)

- [Provider Portal access to all of this](http://wishin.org/Solutions/ProvidersandClinics/WISHINPulse/WISHINPulseDashboard.aspx)

Beyond Wisconsin

In the slide deck they also look at other nationwide exchanges:

- CareQuality -- a newer flavor of eHealth Exchange. Both are managed by Sequoia Project. Both use [IHE XCPD and XCA standard](http://healthcaresecprivacy.blogspot.com/2014/03/health-information-exchange-centralized.html)

- [CommonWell](http://www.commonwellalliance.org/)-- a EHR vendor consortium. Uses mostly [the same IHE XCA standards](http://healthcaresecprivacy.blogspot.com/2014/03/health-information-exchange-centralized.html), but has a different method of doing Patient Discovery that they call "Record Locator Service", and is based on centralized Master Patient Registry (MPI) feed constantly by HL7 ADT feed.

- [Epic CareEverywhere](https://www.epic.com/careeverywhere/) -- Network maintained by Epic, mostly for the benefit of Epic customers. It is also based on [XCA](http://healthcaresecprivacy.blogspot.com/2014/03/health-information-exchange-centralized.html), but has some advances that are being integrated into CareQuality.

Unfortunately for me, the conclusion is not in the slide deck. I suspect what they concluded is that WISHIN should connect to these additional networks so that each Provider Organization in Wisconsin doesn't need to. This is logical, and why the [XCA standard expects multiple Communities and nested Communities](https://healthcaresecprivacy.blogspot.com/2017/05/clarification-of-affinity-domains.html).

Note also that there is efforts within these three networks to merge the capability. The would likely stay as independent networks, but automatically bridge seamlessly. Enabled by the [XCA Community concept.](https://healthcaresecprivacy.blogspot.com/2017/05/clarification-of-affinity-domains.html)

Beyond Providers

There is one mention in the slide deck that shows another vector WISHIN is looking to get connected.

>
**Payer access with WISHIN will become a reality Q1-2018**

The underlying standard (XCA) is designed to support many kinds of access, most exposed by the PurposeOfUse assertion. In the case of most HIE traffic today it is for the PurposeOfUse of "Treatment". When Payers come on we can get probes of "Coverage", or queries for "Payment". This capability of the standard can be expanded to support various Clinical Research purposes too.

FHIR?

Very minor mention of FHIR.. but surely they are working on adding [MHD and QEDm like APIs](https://healthcaresecprivacy.blogspot.com/2015/03/what-is-mhd-beyond-xds-on-fhir.html)?

Conclusion

There is almost always some opportunity to remove unnecessary complexity.

If you have other ideas about what "Single connection to hub" means, please comment.

