# Privacy Consent on FHIR - looking for initial feedback

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/11/privacy-consent-on-fhir-looking-for.html
Published: 2022-11-29T14:43:00Z
Updated: 2022-11-29T14:43:17.258Z
Author: John Moehrke

---

IHE has agreed to work on the Privacy Consent on FHIR implementation guide. This is the work that I hinted at in [IHE FHIR Privacy Consent IG](https://healthcaresecprivacy.blogspot.com/2022/10/ihe-fhir-privacy-consent-ig.html). I am so happy that it won't be called BPPCm, although I am not all that happy with "FHIR" in the name as the name should invoke an understanding of the problem being solved, not the solution. But we tried out many alternatives and "PCF" seemed best.

I have started work on the implementation guide. You can follow the [github repo](https://github.com/IHE/ITI.PCF), or the [CI build](http://build.fhir.org/ig/IHE/ITI.PCF/branches/master/index.html). There is not much to look at right now, but by the time you read this article I might be much further along.

I have some questions and request some feedback...

Stepping Stone Maturity Levels

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhORu5IRR4D6fgT2cDmaS1FgxTfQ6yZ1al1XscN5OArjy_njYVoADu60FOznELToMyubaqhWN2r_e98ivgw9oSthXKfQGJtf97DRPkKnB6A88IKhGTFBLcXhwhi60-7mU8ogtECoFpf3jpXBTga0lMZZjEeVufjaDplauH0uH4jrpnEwex3LY9j8UHyJA/s960/Slide8.PNG
I have often considered Privacy Consent to be something for which one approaches with some stepping stones. The ultimate Privacy Consent features are actually very complex, and truthfully impossible to reach. Certainly impossible to reach in one step. So I have built in some "stepping stones", I have heard others ask for "maturity levels". However you call it, there are simple use-cases and increasingly more complex. The simple use-case "should not" be acceptable to anyone, but starting simple gets the infrastructure started and ready for the next step.

The FHIR [Consent gives us some easy ways to encode rules around Permit or Deny](https://healthcaresecprivacy.blogspot.com/2022/05/explaining-fhir-consent-examples.html). The Consent is not really the complexity, more the enforcement is the complexity.

So I have come up with four levels, each builds upon the prior:

- **Implicit Consent** -- simply that a system declares that it can handle a default policy to be used when there is no Consent on file. This default policy support would include: deny all, deny except for [break-glass](https://healthcaresecprivacy.blogspot.com/2022/08/break-glass.html), permit for treatment only, permit for any otherwise authorized.
- **Explicit Basic Consent** -- support for explicit Consent with a few patient specific parameters to enable the Consent to identify specific agents that can/can't access for a small number of purposeOfUse, and where the data to be protected can be identified directly or by timeframe of authorship.
- **Explicit Intermediate Consent** -- support for named PurposeOfUse research projects, data identified by author of that data, and data identified by relationship to identified objects such as an Encounter or CarePlan.
- **Explicit Advanced Consent **-- Support for data sensitivity tagging. This requires implementation of a[Security Labeling Service](https://healthcaresecprivacy.blogspot.com/2022/09/security-labeling-service.html), but does not define an Actor for this. The expectation is that a [Security Labeling Service](https://healthcaresecprivacy.blogspot.com/2022/09/security-labeling-service.html) is a more intimate systems-design, and would not likely be implemented as an abstract Actor. This approach allows for multiple architectures.

As I indicated in my proposal, I think there are maturity beyond this that eventually might be approachable. But at this time these far more advanced use-cases are not realistic. Most interesting to me are the ability to propagate residual obligations and refrains. So my intent is to focus on these approachable solutions, and work on the use-cases beyond later. I know that there are real use-cases that need more, I am just looking to make progress.

Note that even these stepping stones might not be reasonable... so please let me know what you think.

Actor gymnastics

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiA_DdAMZZpQRFAMFS0INe3u2-QnwzwdjuEsfL3b9WS3Boytgbem894il37Crd_kQ7DNqmduOYNmWVaFNSm_TQL35t_7sBTQYqqXzapQheV2t4hsgw_aLScrLcpghSu3S8elBlpb4y921HZ40T0xLq1jrToqnWluMrvV3vPj27eIrNMa0kUdk5MwV1EDw/s295/Y1.png
The Actors involved in capturing consent are very simple. This is simply a RESTful interface of Create, Read, Update, Delete, and Search. The Consent resource will be profiled for the stepping stones, but that is also rather simple FHIR profiling.

The hard part is diagramming how a participating FHIR Client application doing typical FHIR REST interactions with a participating FHIR Server can be enhanced such that the Client will not get any

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbEfwLfggYzn4AvHESuQwixmR75bqsWsJdcTeB7fFHnj7h_elR_EU2sXTrYEDmoBgf-MeejdNCwVgbNZ7fojCJJ51xLDpExxQ5SJbi6BOUnWpQVmuZoSCGWBGZ74Hpb_9wMUZVLljEkAOZvS1pasFEOeLxZUTCUCwyDMmfuP4m__iZeBOaB8McefS7RQ/s633/Y2.png

data that it should not get. The systems design engineer in me wants to show the systems design, but this is not the diagram modeling of abstract actors. Add to this that the likely solution for this is to use OAuth, which is already very complex diagramming at the system level.

I tend to want to separate the Actor that will make the Access Control decision based on the Consent, from the Actor that will enforce that decision. This is a typical abstraction in Access Control, and is also fundamental to oAuth. But it makes for really strange abstract Actors.

Further, these Consent Decisions are based upon predicate Access Control decisions that allow the client application to make a request, and the user to make the request based on a user identity. My understanding is that the term "Cascading oAuth" is used to explain this. Simple form of this in SMART-on-FHIR is that the SMART access control decision is based upon an oAuth interaction with the Open-ID-Connect. So adding in Consent Access Control is adding one more layer to this, or "cascade".

Help MeSo this is a request to help me out. Are these Maturity Levels useful and proper? How might I better diagram the enforcement side?

