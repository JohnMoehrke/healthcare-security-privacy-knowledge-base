# FHIR Consent as a Resource or Profile

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/05/fhir-consent-as-resource-or-profile.html
Published: 2016-05-11T13:53:00.003Z
Updated: 2016-05-11T13:56:26.585Z
Author: John Moehrke

---

For the past year there has been a stalemate that I have tried to control. I think it is time for this stalemate to come to a conclusion. The topic is Patient Privacy Consent; the discussion is if this should be modeled as a core FHIR Resource, or as a core FHIR Profile upon the [Contract](http://hl7-fhir.github.io/contract.html)Resource.

The owner of this discussion is the [Community Based Collaborative Care (CBCC) workgroup](http://www.hl7.org/Special/committees/homehealth/index.cfm). This workgroup has produced the CDA Consent Directive, and the original Privacy domain model. The [Security workgroup](http://www.hl7.org/Special/committees/secure/index.cfm) is the one that has the infrastructure to decide and enforce Access Control. Thus the two workgroups work together on this topic. With the CBCC workgroup focusing on how to capture a Patient Privacy Consent, and the Security workgroup focusing on how to enforce this. I am co-chair of the security workgroup and an active member in CBCC.  There are other factors that I won't cover.

When we first started to model [Privacy Consent Directive](http://hl7-fhir.github.io/pcd/pcd.html) in FHIR, we had just finished (mostly finished) the CDA Privacy Consent Directive. So we had fresh knowledge of what was needed. As we started to do initial modeling, aka working with napkins, we came to a general consensus that what we would end up with would be much like a [Contract](http://hl7-fhir.github.io/contract.html). There were some that were insistent that this would be perfectly true, while others preferred to just do a Consent.

We took the path of those that were actively involved, vs those that were passive. A moment that I really would like to have changed. But this is exactly the "consensus" process... so any one complaining, simply needs to get actively involved, being more passive is not helpful.** Standards are not built by the passive aggressive.**

There was an attempt to address this in the Paris Workgroup Meeting; but CBCC didn't formally meet, and thus all the efforts of the community that went to Paris were ignored.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhkj40asnszxQdPy3GGgiU4IieQLyuM1sY2Id3SEZtAN7LLYa9EHPbZQ9g24_FLcz1s6NdlmA-ZObAyiwzL_YuraepUIeAv6ay5m4KHmT2QGI7Q5eBeNknE5XVc-G0A0TPXdqIiugqPL4pu/s1600/ConsentStateDiagram-Delegate.pngSo now we have a [Privacy Consent Directive -- Implementation Guide](http://hl7-fhir.github.io/pcd/pcd.html); which is a Profile of the Contract Resource. It is working.[articles](http://healthcaresecprivacy.blogspot.com/2016/04/consent-to-grant-read-access-to.html) [show](http://healthcaresecprivacy.blogspot.com/2016/04/consent-given-to-authorized.html) that it does respond to the use-cases. It however is not as simple as it could be. This statement is not a statement that the Profile system doesn't work, but a Profile is a layer of complexity. Further because of this Profiling layer we end up with concepts in Contract that are not what would be thought of by those wanting to do a Consent.(Like Contract.topic, Contract.action, Contract.subject).

My blog

I vote for Agile:
I would like us to start over,  I would like a Privacy Consent Directive "[Resource](https://www.hl7.org/fhir/resourcelist.html)" to be defined. Break away from Contract. This does not mean that we loose all the good work we have done, but it does mean we start over.

Use Agile. I want this effort to use Agile, and NOT use a top-down approach. That is to focus on real-world use-cases, and build the Consent Resource only with what is necessary to build. There is no need to build complex layers, when simple layers will do.

This Agile approach does not mean we ignore good available standards. [ISO/TS 17975 -- "Health informatics - Principles and data requirements for consent in the Collection, Use or Disclosure of personal health information"](http://www.iso.org/iso/catalogue_detail.htm?csnumber=61186)  is a fine foundation, along with the work HL7 has done on the CDA Consent Directive. I simply want these to be seen as foundational, and not seen as a demand for some preordained structure.

[ISO/TS 17975](http://www.iso.org/iso/catalogue_detail.htm?csnumber=61186) has a very simple abstract model of what a consent record should include

>
â€”   identify the sender, recipient and subject of care,

â€”   include the Purpose of Use or set of purposes which are permitted to be collected and used or disclosed,

â€”   specify the activity permitted: Collection and Use and/or Disclosure,

â€”   include the validity date range,

â€”   be linked directly to the data to which it applies,

â€”   persist with the data to which it applies, and

â€”   be secured in order to preserve confidentiality, integrity, availability in order to provide proof of authenticity of the process and the consent record.

Most of that we get free with the FHIR RESTful model; and simple data elements.

The real work

What we don't get free is the part that we haven't even started to model. The way that the RULES would be encoded.  The above is just the part that identifies the broad meta; the WHO, WHAT, WHEN, WHERE, WHY. This does not address the HOW rules. How do I describe the kind of data I want protected in a kind of way from a kind of people...

More on this topic, when I cover what IHE has just finished - for Public Comment - on the Advanced Patient Privacy Consent (APPC) -- the next generation from Basic Patient Privacy Consent (BPPC).

