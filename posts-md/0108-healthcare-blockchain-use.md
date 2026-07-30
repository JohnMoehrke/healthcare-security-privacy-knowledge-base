# Healthcare Blockchain use?

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/03/healthcare-blockchain-use.html
Published: 2017-03-20T19:23:00.005Z
Updated: 2017-03-20T19:23:57.255Z
Author: John Moehrke

---

Today starts the "[Healthcare Blockchain Summit](http://tcbi.org/hcblockchainsummit/)". I wish I could be there. What makes a good use of Blockchain, while also helping Healthcare? What are the questions Blockchain proposals need to answer? Blockchain is the hot word right now, Gartner [indicates](http://www.gartner.com/smarterwithgartner/the-cios-guide-to-blockchain/)that it is still on the Peak of Inflated Expectations.

>
Gartner estimates 90% of enterprise blockchain projects launched in 2015 [will fail within 18 to 24 months](http://www.gartner.com/smarterwithgartner/top-10-mistakes-in-enterprise-blockchain-projects/). Part of the problem is that the majority of enterprise blockchain projects donâ€™t actually require blockchain technology. In fact, these projects would probably be more successful if they did not utilize blockchain.

Gartner give fantastic reasons, that I very much agree with. I am not going to duplicate them here as they do a [great job](http://www.gartner.com/smarterwithgartner/top-10-mistakes-in-enterprise-blockchain-projects/).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgeodJ1gn9isZr7Wfw42_RRGZEGYp62MXMywz6ga_4pIxAN_q_zod4XAYdAdx4DtYHXXOkq0WO580xLjsCJPXGNjM1BoZp1N3KKLth1fk66zz8929rBK412-5dVmpcxUpMPJEe0Rahl4i_6/s1600/Big-Data%253DExposed.png

Blockchain is a public ledger that is maintained by an interested network of systems. One can make a private blockchain, with private parties; this is possible, but I would argue takes much of the value out of the blockchain system. The blockchain can be validated by anyone, regardless of if they are just looking, just joined as a participant, or are a long standing validating node.

So what does someone proposing a Healthcare use of blockchain need to answer?

- What problem being solved? Why is that problem not best solved with 'classic' database? The excuse that the problem has not been solved today is not an acceptable answer. The problem has likely not been solved yet because it is not valuable to solve, so throwing expensive infrastructure like blockchain at it is unlikely to succeed.

- How is Privacy protected? The nature of blockchain is that the information put on the block must be sufficient for all parties to Validate. Putting purely encrypted information, or just pointers to data protected elsewhere is not helpful. This is why I recommend NEVER to put healthcare data on the blockchain. Just because healthcare data can't be put on the blockchain does not mean that there is no use of blockchain in healthcare. It is just not a treatment use-case.

- How is Identity managed? The nature of blockchain is that it is a system that does not require Identity to be known. There is an Identity linked cryptographically to information and signatures on the blockchain. One can always expose your own identity. Is this necessary with the proposed system? Exposing Identity might not be a bad thing, but it must be addressed either way. This fact means that blockchain is a ready made Pseudonym, hence why I [proposed it be used to advertise availability of de-identified data](https://healthcaresecprivacy.blogspot.com/2016/05/healthcare-blockchain-big-data.html).

- How is value created? Blockchain are expensive. How do participants gain value from their participation in the Blockchain? With Bitcoin, the value is equivalent to money, and is gained through proof-of-work, where part of that proof-of-work grows the chain with blocks offered by other participants, where each of those participants offer some bitcoin to have their block included. With a proposal to use Blockchain for Healthcare, one must have a good answer for how value is created, transferred, and consumed. It does not, and likely won't, be the same system as bitcoin. Hence why it is likely a different use of Blockchain for a healthcare specific purpose. Like my [proposal to use it for Research Notebooks](https://healthcaresecprivacy.blogspot.com/2016/08/blockchain-and-smart-contracts-applied.html)

Blockchain is good for?
I don't think that healthcare data should go into the blockchain. But there is good value in using blockchain to ( a ) advertise availability of data,  ( b ) publish terms (smart-contract) of use that when met unlock access, ( c ) Merkle tree signatures used to validate authenticity of data  managed elsewhere, ( d ) track revisions, and ( e ) record (audit) access and use.

[Healthcare Blockchain - Big-Data Pseudonyms on FHIR](https://healthcaresecprivacy.blogspot.com/2016/05/healthcare-blockchain-big-data.html)
[Blockchain and Smart-Contracts applied to Evidence Notebook](https://healthcaresecprivacy.blogspot.com/2016/08/blockchain-and-smart-contracts-applied.html)

