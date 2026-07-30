# BPPC is not just for XDS/XCA

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/02/bppc-is-not-just-for-xdsxca.html
Published: 2016-02-29T16:34:00.002Z
Updated: 2016-02-29T16:34:53.937Z
Author: John Moehrke

---

There is a general misunderstanding that the BPPC (profile of CDA for capturing patient privacy consent)
profile is only useful for XDS (document based Health Information
Exchange) and XCA (Federation of document based Health Information
Exchanges of various types) environments. The reality is that it is
most valuable when used in XDS and XCA; but it has an important role
to play in push models like XDR profile and XDM
(publication on removable media and zip based packages) profile. It is a
 different value...

BPPC
 could apply to any topology of exchange. The reality is that BPPC is
only ever needed when ONE organization captures consent that applies to
ANOTHER organization.

When no need to expose Privacy Consent

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjHJM4FKyUHnMFIg4eNCY21WU8LJdCR5Q6AwCHsQoQLWnhuhR0xBzhb5xI7ENi8_J2fdh6GrOnvZ0Bz9GGvqWATv2eCH7yHoMlzYOnQq8cGJp2F0O9UQmHYl2uFcvYxblNc438HFeUdiYsH/s1600/Consent_InsideEnterprise.png

Most Privacy Consents, by number of Privacy Consents captured,  are an authorization to
release within that Enterprise. This is completely local issue that doesn't need to be made visible beyond those systems involved in the capture and enforcement of that Privacy Consent, a local issue.  This is often simply allowing the Enterprise Role-Based-Access-Control to allow the authorized Roles to do the authorized Actions. This does not mean the Privacy Consent isn't important, it is important. This only means that exposing the details of the Privacy Consent using a standard adds very little value. Thus this is often managed fully within the EHR as proprietary solution. It could use BPPC or later standard.

Authorizing HIE Disclosure

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhpbebhhpcQcnbdMqxp5yxaGBn03teCbUNjbKATlYIeghtZyl6EQzEbicDMma5f7hkdU-x-8lAZTVMDP65MSM6rstx05k-Vd3ZLL5jhdNROxH2v48-MAI0bs8acPpUgL4VF9fXz_B5AXihv/s1600/Consent_HIE.png

The next most prevalent is a Privacy Consent that authorizes release to others. Meaning that ONE organization captures
consent that authorizes them to release data they control to others (organizations, individuals, etc). In this case
that ONE organization is responsible for executing (enforcing) that
consent. The other organizations never need to known about the consent,
certainly not the details of the consent; they either get the data or
are denied the data. It might come with obligations, but those are much
easier to encode on the transaction than deep within consent language. This is the most common use-case for enabling an organization to expose patient data through an HIE. Where I am using a broad term for HIE, not limited to XDS.

In this case the Privacy Consent that the organization captured is not useful for others to see. The other actors in the HIE ask for data, which they either get or not. There is little that asking organization/individual can do to change the decision.

These are why there isnâ€™t much actual use of consent in HIEâ€™s; because it
is eventually realized to be a local matter.

When Privacy Consent is managed in the HIE

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgVhG9P_btETdW4GmZTxKFz6dAEOwv7cLORVqEjRJMuAFbddzINHPaoGnWzPMxP0T8tXozrZFaYllVoQv1674o7OcA9P_bEa9JToUcesGlO4NGQws-36fDYVXVMH6GZaYFLC3tVoghE1thq/s1600/Consent_HIE_enforced.png

The first case where the consent is captured in a centralized way,
such as where the HIE infrastructure organization is given the
responsibility to capture consent. Having the HIE managing the Privacy Consent allows the consent to be region based, rather than organization-by-organization. This has scale advantages. The drawback to this model is that the singular consent needs to address all the variability that patients might need. In this case they need to publish
that it is okay for specific uses.

The special cases might be broad cases, like any normal (Role-Based-Access-Control) for Treatment and Billing. This can be addressed by BPPC through an identified Patient Privacy Consent Policy, that the patient has agreed to. This enables the simple go or not case.

The special cases are where
the consent is actually a set of specific â€˜useâ€™ instructions. That is
that it is a policy that is not a simple authorization to release under normal Role-Based-Access-Control; but
an authorization to release with conditions (constraints). --- Note,
there is IHE work going on right now to address this, going beyond BPPC.

When Privacy Consent is sent to the Requesting Party
A targeted case
is where there is a need to carry the evidence of consent (authorization
 to release) along with the documents being released. In this case the
BPPC document is not there for enforcement, but rather simply as a
Document of Consent. This might be more useful when the Privacy Consent can carry more exacting rules than BPPC, so we might see this show up more with the new work in IHE on "Advanced Patient Privacy Consents" (or whatever it ends up being named).

So the case for BPPC use with XDR, XDM and Direct; are less obvious. But they tend to fall into this last set of use-cases. This was the point of the blog article. The point is that there already is little need to communicate a Privacy Consent document, but where one does a PUSH through XDR, XDM, or Direct; one would only need it a fraction of the time.

Other Models
I am not trying to express all the models in one blog article. The point of the article was to show when a Privacy Consent document would need to be communicated in a PUSH transaction.

There are other models that are supported by Privacy Consent  documents like BPPC. Such as where the Requesting Party is the one that has gathered the Privacy Consent (authorization to release to the requesting party).  This use-case is used by some payers that need to express that they have gotten explicit authorization from the patient. Another use-case might be where a patient has authorized unusual access, such as when they are getting care in a different country or where they are authorizing a clinical research project.

There are models where the Privacy Consent registry is an independent agent. There are various models that put the patient at the center of the Control. In some of these models the patient gets to choose from a set of Privacy Consent registries, the one that they want to use to control their rules. This is the center of some usecases in [HEART](http://openid.net/wg/heart/) using [User Managed Access (UMA)](https://docs.kantarainitiative.org/uma/rec-uma-core.html). This is a very exciting concept. I am participating and expect it will produce useful specifications. This however is very radical, so I expect it will take many many years before we see this in the wild. I thus expect many years of overlapping solutions.

IHE
 did develop BPPC to be re-usable... More blog articles [Patient Privacy Controls](http://healthcaresecprivacy.blogspot.com/p/topics.html#Privacy)

