# Blockchain for Patient to sell their data to Clinical Research

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/08/blockchain-for-patient-to-sell-their.html
Published: 2018-08-17T13:24:00Z
Updated: 2018-08-18T20:20:45.008Z
Author: John Moehrke

---

Smart-Contracts are a very important part of blockchain. The openness of blockchain is another. I have presented a possible way to use these features of blockchain to enable a Patient to be able to sell access to their data. I include some features also enabled by blockchain, such as micro-payments and escrow for breach of terms. I think these are critical to Patient selling access to their Data, and the ability to add this is simple given the Bitcoin example of Blockchain.

This all said, Smart-Contracts are hard to write correctly, and easy to get wrong. So I think there needs to be far more maturity to the space of Smart-Contracts before they are actually controlling access to Patient data.

**Patient data for sale for Clinical Research**
So a patient might offer access to their data, managed on a FHIR Server, to anyone that can satisfy a smart-contract they put into a public chain. I first described over two year ago as a response to Grahame's original ask  [Healthcare Blockchain - Big-Data Pseudonyms on FHIR](https://healthcaresecprivacy.blogspot.com/2016/05/healthcare-blockchain-big-data.html)

The smart-contract would include:

- Upfront payment for the access (some micro-payment)

- Requirement for escrow of coin to be unlocked to the Patient if other terms are violated

- Terms of protection of the data

- Kind of clinical trial allowed (heart conditions, but not brain)

- Agreement to keep all research public

- Agreement to contact patient if the patient could benefit from new treatment detected

- Agreement to contact patient if some treatable medical condition not previously known is discovered

- Agreement to not contact patient if terminal condition is detected

A clinical trail that can meet these, could satisfy the contract and gain access. If they violated any of the terms, the smart-contract would automatically transfer the escrow coin to the patient.  Based on some sunset term (like possibly the natural death of the patient), the escrow coin goes back to the research organization. So clearly that legal-will is important to this use-case...

**How does this work? **

I have indicated that the data would not exist on the Blockchain, it would exist in some FHIR server somewhere. I use FHIR because it is http RESTful and common to protect it using OAuth using SMART-on-FHIR profile. Thus it is to the general IT world, a RESTful server protected by OAuth.

https://www.websequencediagrams.com/cgi-bin/cdraw?lz=dGl0bGUgQmxvY2tjaGFpbiBmb3IgUGF0aWVudCB0byBzZWxsIHRoZWlyIGRhdGEgdG8gQ2xpbmljYWwgUmVzZWFyY2gKCiAgIAAtCC0-RkhJUi1TZXJ2aWNlOiBQdXQARwlEYXRhIGluIEZISVIgU2VydmVyAC0OT0F1dGgAMgpJZGVudGlmeQCBCAkACwZ0eSBvbgCBLgZDaGFpbgBxDwCBQwo6IENyZWF0ZSBTbWFydC1Db250cmFjdACBKgUAgS8GAIE1BQCBQAhlcgAvDmFncmVlIHRvIHRlcm1zIG9mADMVICAgIG5vdGUgcmlnaHQgb2YAgkMLCkluY2x1ZGluZyBwYXltZW50IGFuZCBlc2Nyb3cgY29pbgCCNgVlbmQAPgUKCmxvb3AgQWNjZXNzAIJqBmFzIG5lZWRlZCBieQCBHgsAgScRKwCCLA9SZXF1ZXN0IFRva2VuIGJhc2VkAIInDgCCQwkAgzgFAIJsDS0AgjYOAEMIAII3DgCCDgdzdGF0ZT8ALxUtAIJOCjogUEVSTUlUIC0AgQsGAIJmFgCEKw4AgX8HAIQhGyB1c2luZwBHCwCCfQpvZgCBRQ4AhR0FAIIGBmlzIHRpbWVib3VuZACCDwpyZWFzb25hYmxlABkFIHdpbmRvdwCDEQ0gCmVuZAoKb3B0IEJyZWFjaCBvZiAAhEcNAIRuFUluZGljYXRlIHRoZXJlIGhhcyBiZWVuAD0HLW9mAIJJCndpdGgAg1UQAIcRCgCFTA5VbmxvY2sgRQCEPA8AgmiBLERFTlkAgk4GCg&s=rose

So, this specific FHIR Server, and the OAuth that is protecting it, is linked to the BlockChain. It is the one taking the results of the Smart-Contract. If the terms of a Smart-Contract are satisfied by an agent, then that agent gets an appropriately scoped OAuth token. That agent can then use that OAuth token to access the data in the FHIR server.

In this way the FHIR Server is just a normal FHIR Server being protected by OAuth using the SMART-on-FHIR profile (aka scopes).   The OAuth service is the bridge between http-RESTful world and the BlockChain Smart-Contract world.

**Variants on smart-contract based on de-identification capability**
It is possible that the patient publishes multiple flavors of the smart-contract. Each offering different types of pseudonym blinding: Some flavors would expose MORE information, and have higher contract requirements (like shown above). Some would expose very well de-identified data, and have less strict contract requirements.

Highly de-identified data, where ALL direct and in-direct (Quasi identifiers) are removed. Including fuzzing completely dates, patient characteristics, location, etc. If the data is highly de-identified it is less valuable for clinical trials, but it also wold not need to be as strongly protected. So it is possible for this offering the smart-contract does not require an escrow of coin.

These variants would require that the authorized access to the data enforce these variations. Thus one would need some access method to the data where the de-identification can be accomplished. This might be done by different servers hosting the various flavors, confirmed by a human statistical analysis. This might be done by some automated de-identification service as I describe in

[#FHIR and Bulk De-Identification](https://healthcaresecprivacy.blogspot.com/2017/09/fhir-and-bulk-de-identification.html)

**Am I wrong?**

I am very willing to hear that I am wrong. I am very willing to hear adjustments. I am very willing to hear that someone has implemented this.

**More reading:**

- This article originally published November 10, 2017 [Healthcare use of Blockchain thru creative use of Smart-Contracts](https://healthcaresecprivacy.blogspot.com/2017/11/healthcare-use-of-blockchain-thru.html)

- [Healthcare use of Blockchain on FHIR](https://healthcaresecprivacy.blogspot.com/2018/08/healthcare-use-of-blockchain-on-fhir.html)

- [Blockchain as a platform for Supply Chain](https://healthcaresecprivacy.blogspot.com/2018/03/blockchain-as-platform-for-supply-chain.html)

- [Healthcare Blockchain use?](https://healthcaresecprivacy.blogspot.com/2017/03/healthcare-blockchain-use.html)

- [Blockchain and Smart-Contracts applied to Evidence Notebook](https://healthcaresecprivacy.blogspot.com/2016/08/blockchain-and-smart-contracts-applied.html)

- [Healthcare Blockchain - Big-Data Pseudonyms on FHIR](https://healthcaresecprivacy.blogspot.com/2016/05/healthcare-blockchain-big-data.html)

- [#FHIR and Bulk De-Identification](https://healthcaresecprivacy.blogspot.com/2017/09/fhir-and-bulk-de-identification.html)

