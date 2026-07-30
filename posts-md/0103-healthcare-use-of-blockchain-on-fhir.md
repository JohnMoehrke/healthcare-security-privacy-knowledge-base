# Healthcare use of Blockchain on FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/08/healthcare-use-of-blockchain-on-fhir.html
Published: 2018-08-16T15:12:00.001Z
Updated: 2018-08-16T15:12:37.833Z
Author: John Moehrke

---

I went to the ONC Interop Forum in DC. The security track focused on blockchain all morning. There was nothing new mentioned. This not to say that the audience didn't get any value, just that I didn't hear anything new. This lack of new insight is itself an important point. It indicates that much of the interest in Blockchain is very niche, that any efforts have not yet found the 'killer app'. This is also not an indication that no killer app is going to appear, just that it has not yet been found.

The panelists were surprised by this question. All the experts were clear that this early days. Caution, but excitement. They were all full of encouragement to try stuff out. All recognized that there is much misinformation and hype. All recognized anyone using blockchain is taking a big risk. None would state any prediction of the future. They also all recognized that those that have succeeded have reaped great rewards. They are all fully committed and excited...

There was not much questions from the audience so I asked

>
Given that the use of Blockchain will be use-case specific, has there been Healthcare use-cases brought before the Blockchain community that were determined to be a poor use of Blockchain?

Their answer: Do not put healthcare data onto the blockchain, no matter how it is protected (e.g. permissioned chains, or encrypted, etc) . It is better to put pointers (to FHIR Servers) onto the chain. So pointers are good, data are bad.

To emphasize a Good use-case is where the data are already public, thus the blockchain is there to support it, validate it, confirm it, or trigger off of it.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2_xYDfHxFxBaVGzux3dgv5yGnU8M2NTia89R0sUBjJNVVllX4k6tQRaGlK48ZcXFnFeOkzCR8bVY3JGt4Xkm-oeTx3BWZlLH79icFKz-tzVYSM9HYgYq4Q-s0HVspCzbXNhgONOx28oks/s1600/20170911_132022.jpg
 keeps fidgeters occupied while not bothering others around them

No surprise, I have said this too:

What should Healthcare do with blockchain?

This does not mean there is no room for blockchain and healthcare. just that we need to be careful about how we approach the topic. I have covered a set of [Blockchain considerations for healthcare](https://healthcaresecprivacy.blogspot.com/2017/03/healthcare-blockchain-use.html)

**Don't put medical data into the blockchain.**

I am more convinced that putting healthcare data into a blockchain is a really bad idea.  Seems this is also a consensus that is coming together. Thus there will be many FHIR Servers that hold your data (might be others than FHIR, but why bother mentioning them).  For any specific use of data related to the blockchain, there might be one server or there might be many. That is to say that it is fully possible that the FHIR server associated with a blockchain project might have centralized the data prior to exposure through blockchain, or might proxy and make it appear as if there is only one. However probably best to presume many FHIR servers. In initial experimentation, experiment with one, but keep open as a gap expansion to many.

**Don't use blockchain for direct Treatment.**

I am equally convinced that using blockchain for direct Treatment use-cases is a very bad idea. Treatment has many expectations. The data must clearly be identified with a specific human, can't use pseudonyms. There must be no delay in getting to the data (urgency). There must be clear provenance of the data (where did this data come from, etc...). Treatment use-cases require that new events, observation, interactions are recorded; that any mistake detected is corrected. And there is also medical-emergency break-glass. etc.

**Treatment related workflows**

There are some Treatment like things that don't have these expectations. Such as participating in a clinical trial, where they can treat you as a pseudonym (strongly identity proofed). There are other Treatment scenarios where one also don't need actual identity, like a laboratory or pharmacy supply. Some of these are already given only the MRN, thus they don't have much more than a form of pseudonym. A new one that I really like is using blockchain to track the [supply-chain of medication and medication components.](https://healthcaresecprivacy.blogspot.com/2018/03/blockchain-as-platform-for-supply-chain.html)

**
**

**Provider Directory proofing**

The beyond the medication supply-chain use-case, this Provider Directory use-case seems very interesting to me. The general need is that each provider organization must do background checks on all of their practicing clinicians. This background checking is expensive. The idea of using blockchain is to have a permissioned chain that is managed by all the provider organizations. Each time they proof a clinician, they put that evidence onto that permissioned chain and indicate they have verified it. Thus it is a consensus driven identity proofing for clinician licensing and background.

**Smart-Contract to control clinical research**

Patient data for sale for Clinical Research might be an opportunity. A patient might offer access to their data (which is elsewhere) to anyone that can satisfy a smart-contract they put into a public chain. Unfortunately this best opportunity is what I described over a year ago given Grahame's original ask  [Healthcare Blockchain - Big-Data Pseudonyms on FHIR](https://healthcaresecprivacy.blogspot.com/2016/05/healthcare-blockchain-big-data.html)

The smart-contract would include:

- Upfront payment for the access (some micro-payment)

- Requirement for escrow of coin to be unlocked to the Patient if other terms are violated

- Terms of protection of the data

- Kind of clinical trial allowed (heart conditions, but not brain)

- Agreement to keep all research public

- Agreement to contact patient if the patient could benefit from new treatment detected

- Agreement to contact patient if some treatable medical condition not previously known is discovered

- Agreement to not contact patient if terminal condition is detected

A clinical trail that can meet these, could satisfy the contract and gain access. If they violated any of the terms, the smart-contract would automatically transfer the escrow coin to the patient.  Based on some sunset term (like possibly the natural death of the patient), the escrow coin goes back to the research organization. So clearly that legal-will is important to this use-case...

**Variants on smart-contract based on de-identification capability**

It is possible that the patient publishes multiple flavors of the smart-contract. Each offering different types of pseudonym blinding: Some flavors would expose MORE information, and have higher contract requirements (like shown above). Some would expose very well de-identified data, and have less strict contract requirements.

Highly de-identified data, where ALL direct and in-direct (Quasi identifiers) are removed. Including fuzzing completely dates, patient characteristics, location, etc. If the data is highly de-identified it is less valuable for clinical trials, but it also wold not need to be as strongly protected. So it is possible for this offering the smart-contract does not require an escrow of coin.

These variants would require that the authorized access to the data enforce these variations. Thus one would need some access method to the data where the de-identification can be accomplished. This might be done by different servers hosting the various flavors, confirmed by a human statistical analysis. This might be done by some automated de-identification service as I describe in

[#FHIR and Bulk De-Identification](https://healthcaresecprivacy.blogspot.com/2017/09/fhir-and-bulk-de-identification.html)

**Healthcare Financial transactions**

I any financial related transactions might certainly be good blockchain, even if it is healthcare related. Still privacy and safety concerns, but these are a step away. For [example](http://www.healthcareitnews.com/news/change-healthcare-rolls-out-enterprise-blockchain-hospitals-payers)

**More reading:**

- [Blockchain as a platform for Supply Chain](https://healthcaresecprivacy.blogspot.com/2018/03/blockchain-as-platform-for-supply-chain.html)

- [Healthcare Blockchain use?](https://healthcaresecprivacy.blogspot.com/2017/03/healthcare-blockchain-use.html)

- [Blockchain and Smart-Contracts applied to Evidence Notebook](https://healthcaresecprivacy.blogspot.com/2016/08/blockchain-and-smart-contracts-applied.html)

- [Healthcare Blockchain - Big-Data Pseudonyms on FHIR](https://healthcaresecprivacy.blogspot.com/2016/05/healthcare-blockchain-big-data.html)

- [#FHIR and Bulk De-Identification](https://healthcaresecprivacy.blogspot.com/2017/09/fhir-and-bulk-de-identification.html)

