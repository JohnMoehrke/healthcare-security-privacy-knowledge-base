# Blockchain as a platform for Supply Chain 

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/03/blockchain-as-platform-for-supply-chain.html
Published: 2018-03-21T16:44:00Z
Updated: 2018-03-21T18:18:24.133Z
Author: John Moehrke

---

I went to a [Supply Chain Management on Blockchain panel event at Marquette University last night](https://www.eventbrite.com/e/supply-chain-management-on-blockchain-tickets-42592375943?aff=estw). The [recording of the session is available](https://media.marquette.edu/Mediasite/Play/b5a70a3a952f4a8e918dc65ad89ee5a31d). It was on the topic of using Blockchain to manage provenance of supplies throughout the Supply Chain. This was on the general topic of supply chain, not specific to healthcare, or the most specific example of drug components in healthcare. However the general concept of supply chain use of blockchain is directly transferable into drug supply. I might argue that drug supply chain likely has more opportunity to take advantage of blockchain, and more money available to fund that kind of research leading to an implementation.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmDKacIW17Lz1KzcN1XorZ_DlEXuAmjIRi1spD-R_7AxcGekOQxJ8Gaq6Hy_7wH_dYi0hpB5E6w6PpG6Rgs2_-LtFKCrPipnTU7FyPkv5NCVgAInr0Qvd-7TfU0m4DRrJQcUztFMApAuU8/s1600/20170911_132022.jpg
Blockchain, keeps fidgeters occupied, not bothering others

The talk was mostly about the general concept, general need, and generally how blockchain would help. Nothing shocking, but it is useful to hear it from people who have done it. The panelists were Dr Mark Cotteleer from Deloitte, Chris Kirchner of Slync, and Paul Biwer from Biwer & Associates. The guest speakers were from organizations involved in actual use (pilot) in the Food supply-chain,  and in package shipping.

The first caution was that the larger the network of supply chain participants, the more complex; the more complex the harder to make  a working system. Hence the very narrow usecase focus in the package shipping usecase to track packages given into their control. In this case the speaker indicated there were about 5 participants, so I am guessing these would be a few out-sourced transport or handlers.

What data should go into Blockchain vs managed classically?
I spoke to them afterwards. Given that they have experience, I asked if any patterns have emerged as to what data actually goes into the blockchain, vs what data is managed in classic ways. Looking for patterns from experience. I got a very strong answer: "As little as you can get away with goes into the blockchain". One reason given was that the more you put there, the more fragile the system is to improvements. Once data is in the blockchain, it is there forever. It is far easier to later add an element of data that wasn't previously shared. But once something is there it is permanently there.

Permissioned blockchains
They are both using Permissioned chains, where a small subset are authorized to add to the chain, and where a subset of them have validation and counter-signature responsibilities. The validation requirements are use-case specific, and data accessibility specific. Where little data is on the chain, little can be validated. Where that data approaches nothing, the only validation is the date/time stamp freezing that data in time. So clearly there is a balancing task of putting enough into the chain to make validation valuable, but not so much as to make the solution fragile or dangerous.

Danger of public accessibility
I then approached the topic of negatives. That is to say, the blockchain use-case will work fantastically when everything is running smoothly and everyone does their duty properly; but the reason a blockchain is used is because at some point someone will slip up and something bad will happen. It is at this point that the blockchain is used to determine from something bad happening, back to who caused that bad thing. Without this need, there is no need for blockchain. So, it by definition will happen.

IF this investigation is done in public, the participants will all get very nervous, possibly deciding to stop participating. I point out that the FDA does these kinds of investigations, and 'almost always' does them in secret. This because the bad actor usually has made a mistake, and not done something malicious. A penalty from the FDA gets them to change their ways, without scaring everyone. Or scaring the whole public. The FDA choses some cases to make public, usually due to malicious intent, or to 'make an example' out of a big player.  With blockchain, especially public accessible, everyone can do the homework to determine who the bad actor; thus it will be very publicly knownâ€¦  and all the good actors will start to question if they should participate, as everyone knows that they will slipup at some pointâ€¦

The answer I got wasâ€¦ hmmm, never thought of thatâ€¦

The big Aha moment

In the discussions I got an insight that for some reason had escaped me till that point... For any specific use-case, like Supply Chain Management, one does not necessarily have just one chain. I had been thinking that all of the blockchain features that the use-case would benefit from should / would be provided by one blockchain. But this is not necessarily the best approach. The specifics were that one need is to track the flow of supplies, where another need is to know that there is a confirmed demand for that specific supply. These interact in that the supply should not be shipped without a confirmed purchase of that supply. But both functions don't need to be on the same blockchain. There are actors that should have access to the flow of supplies, and they are slightly overlapping Venn diagrams with those that should have access to the confirmed purchase facts. Only a few of these actors belong in both camps, most are not.

I think in the healthcare use-case of using Supply-Chain Management specifically of drug components likely has similar needs/functionalities that would benefit from Blockchain, but are exclusive audiences.

Some actors might be in the Privileged group for tracking movement, but only readers of the other use-cases. Some might not have any visibility into the purchase chains...

Simple concept once it is laid out...

Summary

- Start with a use-case that has fewest actors to keep it as simple as possible. You can always add actors later.

- Design each blockchain to handle the right audience and active participants. You can always add more functional chains later.

- Put as minimal data into the blockchain as you can get away with for the use-case need. You can always add more data elements when they are found to be critical.

- Augment blockchain functionality with classic data management methods. Don't abuse the blockchain, use it carefully.

- Think through abuse scenarios up front. Happy-path is nice, but not why you are designing to use blockchain.

My [other blockchain articles](https://healthcaresecprivacy.blogspot.com/p/topics.html#Blockchain)

