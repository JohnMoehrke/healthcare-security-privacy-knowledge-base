# Security Labeling Service - Reference Implementation

Originally posted: https://healthcaresecprivacy.blogspot.com/2026/02/security-labeling-service-reference.html
Published: 2026-02-05T23:26:00.003Z
Updated: 2026-04-30T12:59:03.542Z
Author: John Moehrke

---

I have spent far too much time with Co-Pilot AI, but I am so happy with the output. I have vibe coded two applications. I wrote in a readme what I wanted done, and co-pilot produced a working application on the first try. I then spent two days improving (adding features and robustness) them. I never needed to touch code, I just typed what I wanted changed, improved, or fixed.

I have insisted that the apps clearly indicate their Provenance:
> This application was developed by GitHub Copilot (Claude Sonnet 4.5) ..., at the direction of John Moehrke of [Moehrke Research LLC](https://moehrkeresearch.com/).

SAMHSA ValueSet viewerhttps://blogger.googleusercontent.com/img/a/AVvXsEguspcm4iIAURgcYWt8eR393CFsBEHq9D6dRx4N2LbYxIEnJ-Ym1PdMEnHcJOUZaRUHkt8nD5UGET0jeCiBCz54JaTd6PxjT1eEwWranwQ95w-MLTEs3bHqfhfn-kFJMHpRD3fULBfzblnXHoODxB3VWYFhCukkuLlFepiNsuzvICgOCFBxgfTPQ0ggxEnq
The fist vibe coding project I had was to create a github.io app that allows me to see the contents of a given set of ValueSets from SAMHSA. The reason I needed this is because some of these are too big for the IG Publisher to render the expansion. I had asked to have a setting that would set the IG Publisher 1000 entry max to 2000. But this request was rejected. So, this was my inspiration.

All I did was ask co-pilot to make me an application that can use a FHIR defined $expand operation against the tx.fhir.org server, for a list of ValueSets by url; and display the results.

This was a total of 15 minutes of my time. I then proudly told my family, and my boys proceeded to break it. Turns out a feature I asked was the "Check All Sizes", and that was introduced a bug if run first. So, I told co-pilot about this effect, and it fixed it. Add 5 more minutes.

Try it out at [SAMHSA ValueSet Viewer](https://shift-task-force.github.io/samhsa-valueset-viewer/). Don't beat on it too much as it does use tx.fhir.org.
Security Labeling Service - Reference Implementation
https://blogger.googleusercontent.com/img/a/AVvXsEjORz3kKTMGI7QHnVn9WcEtUcaWHvkqCdNlds4P7EM5-nKSLMls9MI_TeukuBXkVSRpzYf-NBS4tvQY9ALvx4xQO1zSHyGDtoNEIRszPDzO1aWr2qsVC-8Ya7gkozjeGWcNh7NZG93BXNoe0BzhX96uZOnUpHHuU539UfEtko1xQsl3k4LFJ-TIIf8Cp6er
This one is far bigger, and I have been thinking of asking AI to make this one for me. I created a github repository, and wrote a README.md with just a few words about what I wanted done. Mostly what you see at the beginning of the current README.md; although this has been touched up as I asked for more features.

Again, the result of the first try worked. I have since improved it in ways that I failed to explain in my original README.md ask. I failed to explain that I wanted a docker deployable server, that the API must be FHIR $operation compliant, that it needs to support ValueSet with multiple topic values, etc.

I was impressed that it started with a sample ValueSet bundle, and sample data Bundle. Very simplistic, but reasonable. These have since been updated to test some of the features added.

What took the most time is that I wanted to be sure that this SLS worked. For this I needed to have complex ValueSets, and complex Data. In both cases I have been working in [SHIFT-Task-Force](https://www.shiftinterop.org/) on these very things. I had an IG that had both together.  First I chose to break the data use-cases out from the SLS and ValueSets. The main reason was that I know there is going to be significant improvement in the data use-cases; and the ValueSets cause the build to be very slow. In the ValueSets, I have many to choose from, but I chose to use the ValueSets that are derived from the existing [LEAP SLS Reference Implementation.](https://github.com/SHIFT-Task-Force/leap-sls) This is an early open-source and suffers from having the codes hard-coded into the source code.

So I have the data from the use-case, and it is "in theory" already properly tagged. Turns out, that tagging had some errors. I had ValueSets, but they needed to be rearranged and have topic indications. It is this topic indication that is key. These ValueSets are specific to a kind of sensitive data. That is to say the definition of what is composed in the ValueSet is a bunch of clinical codes or hierarchy of codes. The ValueSet then needs to be identified with the Sensitive code that it represents. That is to say that ValueSet (A) has a topic of "BH" (in the hl7 vocabulary this is behavioral health), and composed in the valueSet is behavioral health indicating codes from loinc, snomed, icd, etc.

Testing these ValueSets and data Bundles did find a few more bugs, and a few more features to add. I do have even bigger ValueSets and data to try, derived from S

I'm not going to go deeper here, as this is [available as Open-Source](https://github.com/SHIFT-Task-Force/sls-ri), and there is an [Implementation Guide with the defined FHIR Operations](https://build.fhir.org/ig/SHIFT-Task-Force/sls-ri-ig/branches/main/index.html).
ConclusionNext up is to see if my kids can break this.  Another reason to not further explain it here, as any fixes I make will show up on the github.

I will note that my household is odd. My kids hate AI, with a passion. I seem to be doing okay with it. One would expect that the old-man would be the one with an aversion to AI. I am very suspicious, I have seen it really mess up, and I have seen the movies enough to worry about what it might do. But I choose to work with it in order to make it better at helping humans.

ðŸŽNote, this is one of those projects I do pro bono but would love if someone would care enough about it to contract with me. [Sustaining the Work That Sustains Trust: Why Iâ€™m Seeking Support for Some of My Standards Efforts](https://healthcaresecprivacy.blogspot.com/2026/01/sustaining-work-that-sustains-trust-why.html)

