# Modern view on Pseudonymization

Originally posted: https://healthcaresecprivacy.blogspot.com/2025/10/modern-view-on-pseudomization.html
Published: 2025-10-13T21:50:00.006Z
Updated: 2025-10-14T12:48:07.263Z
Author: John Moehrke

---

For years, the terms 'anonymization' and 'pseudonymization' described distinct technical _methods_ for de-identifying data. But if you're still thinking of them that way, you might be behind the times. Driven by regulations like GDPR and court decisions, the focus has shifted from pseudonymization as the _method_ to pseudonymized is the _dataset itself. _Key is who possesses the re-identification method. This subtle change has profound implications.

Ten years ago, I worked on the [De-Identification Handbook](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Handbook_De-Identification_Rev1.1_2014-06-06.pdf)with [IHE](https://profiles.ihe.net/ITI/index.html)and also on the [Health Informatics Pseudonymization](https://www.iso.org/standard/63553.html) standard within ISO at that time the concept of de-identification was broken down into two kinds there was "anonymization" and there was "pseudonymization". https://blogger.googleusercontent.com/img/a/AVvXsEhmUAE_8jmr9WEMVasoIuGHVp-gG0TH4WT16sAbxEldaeqoYF1ZcvLyyQIQQul-6AVEzCPBzstHaBO6wne5nx5bpVkpr1J1gf3SjpAoOBXsUwMJPf-i99iTwOSobLtSvN6WqBy0FDFqoWGvT1QzwB0nhHBF1KtuUouNoFNKN4Se8tykqNNaOglUrxvz-570

Where anonymization had no way to reverse and pseudonymization had some mechanism for reversing the pseudonymization. At the time these were seen as **methods not as the resulting dataset**. These methods would be used to identify how data would be De-Identified. The resulting dataset would then be analyzed for its risk to re-identification. That risk would be inclusive of risks relative to the pseudonymization methodology.

Today [IHE](https://profiles.ihe.net/ITI/index.html)is working on [updating the De-Identification handbook](https://github.com/IHE/ITI.DeIdHandbook). I'm no longer working on that project due to my [employment situation](https://moehrkeresearch.com/). But while I was working on it before then the other subject matter experts were insisting on a very different meaning behind the words "pseudonymization" and "anonymization".

The following podcast by [Ulrich Baumgartner](https://www.linkedin.com/in/ulrichbaumgartner/) really opened my eyes to how these words got a different meaning. They got a different meaning because they are used in a different contextual way. Whereas before the words were used purely as explanations of methodologies, they are today more dominantly used as words to describe a dataset that has either been pseudonymization or fully anonymized.

> [The Privacy Advisor Podcast] Personal data defined? Ulrich Baumgartner on the implications of the CJEU's SRB ruling #thePrivacyAdvisorPodcast [https://podcastaddict.com/the-privacy-advisor-podcast/episode/208363881](https://podcastaddict.com/the-privacy-advisor-podcast/episode/208363881)

Where today because of GDPR there is a bigger focus on the dataset than the methodology. GDPR sees "pseudonymization" as a word describing the dataset that has only been pseudonymized but is still in the hands of the organization that possesses the methodology to re-identify. This is contextual. Therefore, the contextual understanding of that dataset is that it is contextually in the hands of an organization that has the ability to undo the pseudonymization. Therefore, the data are NOT de-identified. The data becomes de-identified when the pseudonymization re-identification mechanism is broken, that is to say when the dataset is passed to another party while the re-identification mechanism is NOT passed to that party.

This is the key point that is adding clarity to me. To me, the organization that is using pseudonymization is preparing a dataset to give to someone else; the first party organization already has the fully identified data, thus the pseudonymized data is not something they intend to operate on. It is the NEXT party, the data processor, that gets the dataset and does NOT get the re-identification mechanism. It is this NEXT party that now has de-identified data.

I now do understand the new diagram, as there was a diagram that was drawing distinction between Identified data, and Anonymized data; with the transition of data from Fully-Identified->Pseudonymized->Anonymized. I saw this diagram, and it did not align with the original methodology perspective, but it does follow with this contextual/relative perspective.
https://blogger.googleusercontent.com/img/a/AVvXsEgGIis7ghw22p7AC0xJLQmNNnrvbOBYKY115TEVCsvHqcT0rSTkMO3Q2H2QLuir_K_UTgGg-3N9o4s0C1iCk3scp18StOOy2UbW8tzc4xYHrZ42XaYTCHIJDrBgVWogz8Hw6oE3sRgr4cSy3mU39TSudZRjlYLBsvMp2eShIaZHaTS8MOezu6JCraXGd4ly

Overall, this understanding is consistent with the original "methodology" meaning of the words, but for some reason the GDPR courts needed to say it out loud that the FIRST organization doesn't get the benefit of de-identification until they pass the data to the NEXT organization. This concept is why

There are some arguments within the GDPR community as to whether it is ever possible to make anonymous data out of pseudonymous data. This because there is SOME organization that does have access to the re-identification mechanism. As long as someone has that ability, then some courts see the data as potentially re-identifiable. That conclusion is not wrong on the blunt fact, but it does not recognize the controls in place to prevent inappropriate use of the re-identification mechanism. The current courts do see that there is a perception of a pathway from pseudonymization to anonymization.

Pseudonymization is more like Encryption than Anonymization

The interesting emphasis at this point is that within Europe under GDPR pseudonymization of a data-set is much like an encryption of a data-set. Both encryption and pseudonymization are seen as purely methodologies of protecting data, neither are a clear methodology to gain anonymization.


Conclusion

GDPR has placed a different emphasis on pseudonymization with the default meaning is where the data holder has used pseudonymization methods but still holds the re-identification key. This state of the data transition was never mentioned in the past, as ultimately the goal of pseudonymization is to produce a dataset that could be passed to another organization who does NOT get the re-identification keys. Whereas in the past we would have said that the other organization got a pseudonymized dataset without ability to re-identify; GDPR would now say that the other organization got an anonymized dataset.

