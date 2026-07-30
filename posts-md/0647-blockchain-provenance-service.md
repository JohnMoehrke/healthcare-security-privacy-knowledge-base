# Blockchain Provenance Service

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/03/blockchain-provenance-service.html
Published: 2019-03-13T19:45:00.003Z
Updated: 2019-03-14T13:46:18.492Z
Author: John Moehrke

---

I am inspired by the use of a public Blockchain as a repository for Provenance. That is the Provenance Service is implemented by using Blockchain technology. The most intriguing part is that with this model, everyone within a community submits in-real-time Provenance records every time they do something worthy of Provenance. This Provenance Blockchain would be a Public, Permissioned chain. That is viewable (useable) by anyone, but only updated by a defined set of permissioned entities. The Provenance record can be sufficiently opaque, while still being effective:

- Rather than pointers (Provenance.target), there is simply the hash of the data.

- All records of 'who' are organizational only. Where the organization is expected to keep internal record of individual, device, service, agent.

- Activity is recorded (create, update, transform, export, import, destroy)

- Blockchain validates the Organization (who) and the timestamp (when)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJaEUgdiH9xu3ZCYeg9v93P7SROBU_buo1QOnTz9Ln2rFkp1bnb700LThSRb2uceC4GcVp-pYz7xr8kw1Lv5CfS_undckhL6Bs6CgbDmsfNScjewU-BLnHp_wc_WDuh3b9ieUv3MXUqp-Z/s1600/BlockchainProvenance.png

So That: When data are used, the user of the data can hash the data and look into the Blockchain for records of Provenance on that data.

Big advantage of this model is that data transfer never need to worry about what level of Provenance needs to be carried, and the pathway that data follows can be multiple hops even through hostile actors. If the data is intact, then Provenance will be found. If Provenance is found, then integrity and authenticity can be proven.

Not finding Provenance may mean the data has been improperly modified, but may also just indicate a custodian/author that is not participating in that Provenance Blockchain. These false-positive and false-negative cases do need to be addressed.

This leverages the integrity and public aspects of Blockchain, while taking careful steps to not put individually identifiable data into the Blockchain.

What is not clear is how the Patient themselves participates. They clearly can be given access to read from the Blockchain, and would encourage this as it gives them some ability to track where their data goes. This is only true of data they know about, as you must have a hash of data. There would not be a patient identifier in the blockchain, so you couldn't see all activity. The question is if the Patient needs the ability to add Provenance evidence to the Provenance Blockchain. This is not to question the Patient ability to create data, they can. But rather to point out that opening this up to the Patient is opening it up to EVERYONE on the internet, thus there is a risk of 'bad guys' filling your Provenance Blockchain with crud. Note that I have the blockchain validating the Organization, and being a Public but Permissioned chain.

Here is a handout by [Grapevine World](https://grapevineworldtoken.io/) from an [IHE Connectaton track on Blockchain Provenance Service](https://grapevineworldtoken.io/media/filer_public/98/ae/98aeae30-b3c6-45de-bc66-17a7b94f7d91/grapevine_brings_blockchain_to_ihe.pdf)

