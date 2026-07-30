# Healthcare use of Blockchain thru creative use of Smart-Contracts

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/11/healthcare-use-of-blockchain-thru.html
Published: 2017-11-10T16:23:00.002Z
Updated: 2017-11-10T16:23:43.620Z
Author: John Moehrke

---

I went to a blockchain conference yesterday. All the experts were clear that this early days. Caution, but excitement. They were all full of encouragement to try stuff out. All recognized that there is much misinformation and hype. All recognized anyone using blockchain is taking a big risk. None would state any prediction of the future. They also all recognized that those that have succeeded have reaped great rewards. They are all fully committed and excited...

No surprise, I have said this too:

What are THEY doing?
The experts that presented are focused on the financial flows. Not just money, like bitcoin. They are working on other financial flows including bank-to-bank money transfers, insurance payments,  payments based on contract terms, etc.  When pressed it was because these things can be made fully virtual, leverage the fact money is a concept in blockchain, and the biggest problem these flows have is the double-spend problem. The double-spend problem is well addressed in blockchain.  Also, when these kinds of things go wrong it results in simply loss of money. This loss of money can be huge, but it is still just a loss of money.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2_xYDfHxFxBaVGzux3dgv5yGnU8M2NTia89R0sUBjJNVVllX4k6tQRaGlK48ZcXFnFeOkzCR8bVY3JGt4Xkm-oeTx3BWZlLH79icFKz-tzVYSM9HYgYq4Q-s0HVspCzbXNhgONOx28oks/s1600/20170911_132022.jpg
 keeps fidgeters occupied while not bothering others around them

That is to say they are not protecting an individual's Privacy, where a failure here is permanent loss of privacy. They are not protecting an individuals health, where a failure might be pain, loss of function, or death.

What should Healthcare do with blockchain?

This does not mean there is no room for blockchain and healthcare. just that we need to be careful about how we approach the topic. I have covered a set of [Blockchain considerations for healthcare](https://healthcaresecprivacy.blogspot.com/2017/03/healthcare-blockchain-use.html)

**Don't put medical data into the blockchain.**

I am more convinced that putting healthcare data into a blockchain is a really bad idea.  Seems this is also a consensus that is coming together. Thus there will be many FHIR Servers that hold your data (might be others than FHIR, but why bother mentioning them).  For any specific use of data related to the blockchain, there might be one server or there might be many.That is to say that it is fully possible that the FHIR server associated with a blockchain project might have centralized the data prior to exposure through blockchain, or might proxy and make it appear as if there is only one. However probably best to presume many FHIR servers. In initial experimentation, experiment with one, but keep open as a gap expansion to many.

**Don't use blockchain for direct Treatment.**

I am equally convinced that using blockchain for direct Treatment use-cases is also a bad idea. Treatment has many expectations. The data must clearly be identified with a specific human, can't use pseudonyms. There must be no delay in getting to the data (urgency). There must be clear provenance of the data (where did this data come from, etc...). Treatment use-cases require that new events, observation, interactions are recorded; that any mistake detected is corrected. And there is also medical-emergency break-glass. etc.

**Treatment related workflows**

There are some Treatment like things that don't have these expectations. Such as participating in a clinical trial, where they can treat you as a pseudonym (strongly identity proofed). There are other Treatment scenarios where one also don't need actual identity, like a laboratory or pharmacy supply. Some of these are already given only the MRN, thus they don't have much more than a form of pseudonym.

Smart-Contract is the key
I think the biggest opportunity is focused on creative ways to use the smart-contract. Smart-contracts can exist elsewhere, indeed our FHIR Consent and OAuth (UMA) are two examples of smart-contracts.

The difference being that various blockchains have specific smart-contract language, and mechanism to execute that specific language. These languages are usually very basic, like in bitcoin; but are getting more comprehensive.

**Legal contacts are not as easy as they seem**

This is the space that needs to mature. It starting with putting a legal-will into a blockchain. Motivation is to unlock coins that an individual holds upon death in a way defined by that individual. This motivation is strong by that individual, and those benefactors who would receive the coin. It is also strongly motivated by the coin community as otherwise those coins go permanently out of circulation. It would seem this is not unlike a normal coin transaction smart-contract like is the foundation of bitcoin. But it is not that simple. Key improvements needed is that these contracts need to interact with sources-of-truth from outside the blockchain, the proof of death, the proof that the death was not caused by a benefactor. First these don't exist, but also these are external sources of truth. Blockchain wants to have the community 'be the source of truth', and not use external sources of truth...

**Patient data for sale for Clinical Research**

 So a patient might offer access to their data (which is elsewhere) to anyone that can satisfy a smart-contract they put into a public chain.    Unfortunately this best opportunity is what I described over a year ago given Grahame's original ask  [Healthcare Blockchain - Big-Data Pseudonyms on FHIR](https://healthcaresecprivacy.blogspot.com/2016/05/healthcare-blockchain-big-data.html)

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

I any financial related transactions might certainly be good blockchain, even if it is healthcare related. Still privacy and safety concerns, but these are a step away. For [example](http://www.healthcareitnews.com/news/change-healthcare-rolls-out-enterprise-blockchain-hospitals-payers)

**More reading:**

- [Healthcare Blockchain use?](https://healthcaresecprivacy.blogspot.com/2017/03/healthcare-blockchain-use.html)

- [Blockchain and Smart-Contracts applied to Evidence Notebook](https://healthcaresecprivacy.blogspot.com/2016/08/blockchain-and-smart-contracts-applied.html)

- [Healthcare Blockchain - Big-Data Pseudonyms on FHIR](https://healthcaresecprivacy.blogspot.com/2016/05/healthcare-blockchain-big-data.html)

- [#FHIR and Bulk De-Identification](https://healthcaresecprivacy.blogspot.com/2017/09/fhir-and-bulk-de-identification.html)

