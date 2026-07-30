# Remedial FHIR Consent Enforcement

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/09/remedial-fhir-consent-enforcement.html
Published: 2017-09-09T00:18:00Z
Updated: 2017-09-09T00:41:32.208Z
Author: John Moehrke

---

I have been working with some of the teams wanting to do something with Privacy Consent and are coming to the FHIR Connectathon in San Diego. Here is a few stepping stones that I think are educational to move from zero to a reasonable set of Consent possibilities. [Basic Consent is a necessary and powerful step](https://healthcaresecprivacy.blogspot.com/2016/08/basic-consent-necessary-first-step.html):

 Pre-conditions:

- Some form of Business Access Control are already in place to support basics of separating the kinds of things that various users (roles) are allowed to do; like Clinicians, or administrative staff, or billing staff, or cleaning staff, or dietary staff, etc. For example:  Role Based Access Control (RBAC), or Attribute Based Access Control (ABAC) . This layer is responsible for separating those users that are allowed to Order drugs or procedures, vs those that are allowed to update clinical information, vs those that are given access to billing information, vs etc...   An example of this is -- SMART-on-FHIR.

- There is some Privacy Policy written: I will give a few for example purposes only. These are not complete, or comprehensive. They are defined well enough to illuminate the various stepping stones that I will outline below.
* Explicit Consent -- if no consent is on file, then no data is shared outside the organization.
* OPT-IN -- Patient has positively given consent to share without restrictions
* OPT-IN with named organizations allowed access
* OPT-IN with identified time/date range within which no data authored can be shared
So, any Consent in the system must be from one of these patterns. Mixing of patterns, or going beyond these patterns is simply not allowed by the consent gathering application.
**** Sorry, I have to [use "OPT-IN" and "OPT-OUT", against my rule](https://healthcaresecprivacy.blogspot.com/2017/04/stop-using-opt-in-and-opt-out.html)... but I do have them explained.

-  There is some consent gathering application that presents these Privacy Policies to Patients, and records the Consent ceremony as a FHIR Consent resource. I am not going to try to describe this ceremony. The user experience is very critical. The Patient must be well educated on the ramifications of their choices. I like the idea in GDPR where the consent rules presented to the Individual must be in human language terms that are specific to that person's language abilities. I am not short-circuiting this, but rather wanting to focus on the enforcement side.
*** Note that if the patient changes their mind, this application handles this. Leaving only ONE active Consent resource. Thus there is no conflicts to resolve in real-time. If the patient wants to OPT-OUT after being OPT-IN; then a few solutions could happen. The existing record be updated to become Consent.status=rejected. Better for record keeping if a new Consent record is created with an OPT-OUT policy...

YES, I know that we all want more complex consents, we will get there. But for now we must get started. Stepping stones are important to the journey. Stepping stones are useful, but one does not stand on them for very long.

Some past articles to this point

- [Consent Process](https://healthcaresecprivacy.blogspot.com/2016/08/consent-process.html)

- [Controlling Big-Data feeding frenzy with Privacy Consent Authorization](https://healthcaresecprivacy.blogspot.com/2016/08/controlling-big-data-feeding-frenzy.html)

- [Vectors through Consent to Control Big-Data Feeding frenzy](https://healthcaresecprivacy.blogspot.com/2016/08/vectors-through-consent-to-control-big.html)

- [Consent Basis in Controlling Big-Data Feeding frenzy](https://healthcaresecprivacy.blogspot.com/2016/08/consent-basis-in-controling-big-data.html)

- [Privacy Constraints in Controlling Big-Data Feeding Frenzy](https://healthcaresecprivacy.blogspot.com/2016/08/privacy-constraints-in-controlling-big.html)

Consent Enforcement Models
There are two major models today, very different.

Privacy Access Control decision engine

Privacy Access Control decision engine using OAuth. In this model, one offloads the Access Control decision to an OAuth authorization service. This is the model that HEART is focused on. Another example has been shown as "Cascading OAuth". The idea is that there is some OAuth authority (or a set of them) that focus on giving Access Control decisions purely along Privacy Consent lines. If this is 'cascaded' with the business OAuth Access Control decisions; then one has the combination of both.. I am not going to further explain this model in this blog article.

One could have an Access Control engine that is based on XACML...

In both of these solutions, the rules of the Patient specific Consent are not in any FHIR 'Consent' resource form. These solutions take care of steps 1-4. They only expose a 'decision' endpoint.

As such, their decision endpoint must be able to return complex obligations. PERMIT, but not to organization ABC, not the data authored during XYZ, etc... These in OAuth would be done with "Scopes", in XACML would be done with 'Obligations'. Which ever one uses, this is complex... and I would argue this is the same complexity one sees in the FHIR Consent resource today.

Interaction between FHIR Consent resource and Privacy Access Control decision engine
In both of these solutions, there might be a FHIR Consent that is simply there to indicate the endpoint of the Privacy Access Control service. This might be quite empowering. The Consent would not indicate anything other than the specific service to use. Thus enabling the Patient to choose from various Privacy Access Control services to use. The FHIR Consent resource would not indicate in any way what their Privacy rules might be.

I should model this.. and I might do it this week... but I want to focus on a solution that leverages the Consent resource... and this Privacy Access Control decision service solution hardly uses the Consent resource at all.

The FHIR Consent way:
Reminder we are working on Stepping Stones, and starting simple
* Explicit Consent -- if no consent is on file, then no data is shared outside the organization.
* OPT-IN -- Patient has positively given consent to share without restrictions
* OPT-IN with named organizations allowed access
* OPT-IN with identified time/date range within which no data authored can be shared

Lets first just work out the first two: No active consent on file, vs opt-in.

In the FHIR specification we already have examples of these:

* OPT-IN -- [http://build.fhir.org/consent-example.html](http://build.fhir.org/consent-example.html)

A system can using FHIR query (RESTful) to determine if there is any Consent on file for a given patient. For the example below we look for if there is a OPT-IN consent for patient 'f001'

GET [base]/Consent?patient=f001&status=active&category=http://hl7.org/fhir/v3/ActCode#OPTIN
(((Note that one can't query on policyRule, so I propose either that be added, or that the OPTIN code goes into category. I seem to recall committee discussions that put it into category)))

If this above query returns ZERO result, then there is no OPTIN consent on file. Thus no access is granted. DONE
If there is a Consent, then we need to look to see if there are any Consent.provisions. If there are none, then we grant Privacy PERMIT access. DONE

The second stepping stone is to enforce the provisions.
Each provision will have a provision.type of either PERMIT or DENY. This means that if the constraints in the provision are matched, then the provision.type (PERMIT vs DENY) is to be enforced.

We have an example which is an OPTIN but denying access to a named organization.

[http://build.fhir.org/consent-example-notOrg.json.html](http://build.fhir.org/consent-example-notOrg.json.html)

Well, looking at this example, I see it is missing some critical parts that I just said would be there. The one provision this example has in it is that it is specific to an Organization named 'f001'. From the name of the example, it is clear this provision should have a .type="deny".

This kind of a provision can be enforced on the REQUEST, as that organisation is denied any access because of a Privacy Consent directive.

 Date Range:
The Date Range provision is something that is much harder to enforce, as it really must look at the results that are about to be returned, and filter out any data that was authored within the given date range. I am not going to go deeper right now, but am pointing out that sometimes provisions can be enforced on the REQUEST side, denying a request or allowing a request with no further action. Some provisions require further work be done on the RESPONSE side.

**Other articles:**

- [Consent to deny Sharing for Treatment and Emergency Break-Glass](https://healthcaresecprivacy.blogspot.com/2017/05/consent-to-deny-treatment-and-emergency.html)

- [Consent topic](https://healthcaresecprivacy.blogspot.com/p/consent.html)

- [FHIR topic](https://healthcaresecprivacy.blogspot.com/p/fhir.html)

