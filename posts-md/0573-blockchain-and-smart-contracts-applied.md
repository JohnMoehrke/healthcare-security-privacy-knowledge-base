# Blockchain and Smart-Contracts applied to Evidence Notebook 

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/08/blockchain-and-smart-contracts-applied.html
Published: 2016-08-29T12:32:00Z
Updated: 2016-08-29T12:32:23.614Z
Author: John Moehrke

---

https://lh6.googleusercontent.com/ALH9pCD7-yYhtLD23jrd6J0bI1oAr-w0T59J7JX1mxwT9R_8bUjVjRh1wIxypEficV3uxsSKnc7DDWINTsLwv3QqAPmcEGm7IkU18UlUB9LbNo3Jv6GHBe_ftCXefudixa7Kr7gTThere is a need where an individual or team needs to record chronological facts privately, and in the future make these facts public in a way that the public can prove the integrity and chronology.  Where the chronological facts need to be known to within some timeframe, typically within a day. Where the sequence of the facts needs to be provable. Where a missing recorded facts can be detected. Where an inserted fact can be detected. Where all facts can be verified as being whole and unchanged from the date recorded. Where all facts are attributable to an individual or team of authors.

Description
**
**

These proofs are used to resolve disputes and prevention of fraud. Areas like in intellectual property management, clinical research, or other places where knowing who and when in a retrospective way is important. Aka: [Lab Notebook](https://en.wikipedia.org/wiki/Lab_notebook), Lab Journal, Lab Book, Patent Notebook. Here is an image from the Laboratory Notebook of Alexander Grahame Bell, 1876.,

**
_**

Historically, tamper-evident notebooks provided assurance of data provenance with clear chronology. Sewn bindings and numbered pages were the foundation which the user annotated with name & date inscriptions in indelible ink. While not infallible, the notebooks were good enough for many important evidentiary functions.

**
**

Blockchain technology can bring this historical practice into the digital age. In particular, blockchain can be used to allow for work to be conducted in private yet be revealed, either by choice or circumstance, at a future date.

**
**

There are three variations on the use case:

**
**

-
Bob is doing research that may eventually be presented publicly. When it is presented publically there is a need to have historic evidence of all the steps and data used. This is today done with a tamper-evident notebook. The authors of these notebooks are also careful to include date/time as they progressively record their work. In this way an inspection of the notebook can determine that it is whole, not modified, and thus a trust of the contents, when, and by whom.

**
**

-
Prior to 2013, the US Patent and Trademark Office (USPTO) used First-To-Invent to determine priority. While the tamper-evident notebook was essential in that model, it is still valuable supporting evidence even after the switch to First-To-File. In particular, intellectual property disputes benefit from tamper-evident records.

**
**

-
Publicly funded research (e.g. NIH, NSF, DARPA) increasingly mandate the release of underlying data at a future date. There is also a trend on the part of regulatory bodies for full data access, especially in light of concerns over negative results from clinical trials not being reported.

Narrative

The following are the various steps in the overall process.

-
As entries are added to an Evidence Notebook

-
The evidence is recorded in a private notebook, and an Author Signature is submitted to a purpose specific blockchain.

-
The Author may choose to also archive the evidence onto the blockchain.

-
Members of the community, as part of their support of that community, will counter-sign these Author Signature blocks

-
At some time in the future when the Evidence Notebook needs to be disclosed, the Author will declare to the community their identity

-
In support of a disclosure, any member of the community with access to the Evidence Notebook may validate the notebook.

Use-Case Keeping Records

Bob at some periodic point, or based on some procedural point, submits the new Evidence Notebook pages. This is done using a Digital Signature across the new evidence pages, creating an Author Signature. This Author Signature is then placed onto the Evidence Notebook Blockchain, signed by an identity in the control of Bob. This Author Signature does not expose the content of the evidence notebook, but can be used by someone, like Edna, who has access to the Evidence Notebook to prove that the pages submitted have not changed.

**
**

-
? Is there a need to define the Author Signature other than to say it is an XML-Signature format, with signature from the blockchain rather than from PKI?   Advantage the blockchain gives is the identities, algorithm choice, and public ledger.

**
**

Use-Case Escrow of Notebook

Bob can optionally put onto the blockchain the updated evidence notebook pages or any evidence (e.g. data) in encrypted form, with a smart-contract holding the key in escrow until one or more terms come true to release the content. The smart-contract can assure that the keys are appropriately disclosed upon trigger events such as time-period, inactivity by Bob, or other typical contract  terms. This escrow also preserves the content across the blockchain redundancy.

**
**

-
? Should the encrypted notebook pages be also cross-signed by the community? The signature would be of the encrypted blob, which would be proof that the encrypted blob appeared on the blockchain at that time.

**
**

There is no way to confirm that Bob has placed complete evidence into this encrypted evidence package without also having access to the evidence. Thus there still is the risk that Bob has done an incomplete job of preserving evidence.

Support Use-Case Counter-Signature

Peers from the community will counter-sign these Author Signatures. This blockchain signature by peers simply indicates that the Author Signature block was observed on the Evidence Notebook BLockchain at the stated time. Through multiple counter-signatures by peers, trust in the Author Signature veracity is confirmed.

**
**

Automated timestamp peers could also be used, that do nothing but apply a verifiable timestamp signature across any new Author Signatures. These are indistinguishable from Peers, except that Peer identities would also be submitting their own Author Signatures, expecting peer counter-signatures.

**
**

Peers are compelled to counter-sign as an act of community. Through these peer identities counter-signing Author Signatures, these peer identities gain more of their own peers to counter-sign any Author Signatures that identity might post. (You wash my back, Iâ€™ll wash yours). Thus, a new identity on the blockchain that has not yet counter-signed otherâ€™s Author Signatures would not find peers willing to sign that new identityâ€™s Author Signatures.

Use-Case Public Knowledge

The system to this point does not require identities to be known. Neither Bob nor the Peer identities need be publically known. They are simply identities in the Evidence Notebook Blockchain. An identity owner is free to explicitly make their identity known.

**
**

Bob needs to make public claims backed by Evidence Notebook proven through Author Signatures by a specific blockchain identity or identities. That is what Bob needs to make proof public that Bob is the holder of the private key associated with one or more identities. Thus binding Bobâ€™s identity with all historic uses of that identity.

**
**

Once Bob makes identities public knowledge, others can monitor new Author Signatures created by that identity. This may be seen as exposing activity, so might cause identities that have been made public to not be used for new Author Signatures. The public knowledge of an identity may be seen as beneficial, so the identity may be made public early.

Use-Case Verifying Records

Edna needs to confirm an Evidence Notebook content. Edna has been given access to the Evidence Notebook content. Edna knows the Evidence Notebook Blockchain Identity that is claiming to have made Author Signatures corroborating the specific pages from the Evidence Notebook. The Evidence Notebook may be in any electronic form, as long as the Digital Signature process is repeatable. This is often use of XML-Signature mechanism.

**
**

 Edna verifies Author Signatures of each submission (page). Edna verifies counter-signatures to gain assurances that the Author Signature has not been tampered with, and occurred during the time indicated.

**Edna may choose to discount specific identities that have been determined to be fraudulent, or where the control of that identity private key has been compromised. Edna may choose to discount identities that have not yet made themselves public, holding public identities higher. Noting that the movement of an identity from anonymous to public has value to the community as a whole.

**
**

Actors

(brought in whole list from [here](http://kantarainitiative.org/confluence/display/BSC/Alice+participates+in+Bob%27s+Research+Study). Figured we should re-use actors if they fit.)

**
**

Actor

Role in the use case

#Bob

The person or entity that submits Author Signatures. They are assumed to be an investigator or worker in a research team.

#Edna

An authenticated and authorized individual that has been granted access to the Evidence Notebook. This may be a staff researcher for the Study Sponsor doing cross-study correlations, or an external researcher with a different study question that can be answered with previously collected data.

#Paul

A peer on the blockchain. The identity may be known or not known.

#Mal

Generic bad actor

Research Sponsor

The organisation that receives research data. These individuals or systems need access to the evidence. They may receive this evidence directly, or through the Escrow Evidence. For the purpose of diagrams and data flows, any member of the study team will be represented as "Dan"

Research Team

The individuals and systems who are performing some research or other activity for which an Evidence Notebook is necessary. Bob is a member of the research team. For the purpose of diagrams and data flows, any member of the research team will be represented as "Bob"

Peers

The individuals and systems who counter-sign Author Signatures to help provide veracity. It is expected that peers will not be part of the same research team as Bob.

**
**

Prerequisites / Assumptions

-
Bob needs to keep the research confidential until some future time.

-
The format of the notebook need not be constrained, as long as digital signature can be validated once the notebook is made public.

-
Presume use of XML-Signature schema can mediate this

-
If Evidence data is disclosed it must be properly handled or de-identified

-
There is no need to publish the content of the notebook on the blockchain.

-
There is an option for encrypted notebook on the blockchain, and use of smart-contracts to unlock as appropriate

-
Bob may have many notebooks, or may have many research projects interleaved within one notebook. This similar to paper notebooks today.

-
Bob may need to hide his current activities, meaning new activity canâ€™t be associated with Bob

Use Case Diagrams

_

**
**

Use Case steps

**
**

-
New Author Signature

-
Bob updates his evidence notebook

-
Bob submits a Author Signature block to the blockchain

-
Bob optionally submits Evidence blobs to the blockchain

-
Paul notices a new Author Signature block

-
Paul counter-signs the Author Signature block

-
Evidence Notebook validation

-
Edna is asked to confirm an Evidence Notebook

-
Edna is given access to the Evidence Notebook (may not be public disclosure)

-
Edna validates signatures from the blockchain

-
Edna validates counter-signatures from the blockchain

-
Edna extracts timestamps from set of signatures

-
Edna may validate Public Signatures as necessary

-
Evidence disclosed

-
Smart-Contract triggers

-
Smart-Contract may include notification mechanisms to Dan

-
Dan receives Evidence and decryption keys given trigger on Smart-Contract

**
**

Sequence Diagrams
**(drafting, not yet done)**

End State

The use case ends when Bob stops submitting Author Signatures under a given identity. There is no expectation that identities must be publically unknown, or canâ€™t be used once publically known.

Success

-
Author Signatures are validated

-
Modified Author Signatures are detected as not valid

-
Participation sufficient to achieve (n) counter-signatures

-
Funding by organizations relying on output (research, clinical trials, etc)

Failure

-
Participants collusion to revise history

-
Is insufficient number of peers, and therefore insufficient number of prompt counter-signatures, a distinct failure mode?

References
**
**

Champion / Stakeholder

John Moehrke (self)

Scott Bolte (Niss Consulting)

Related Material
**
**

[Common Accord](http://www.commonaccord.org/): CommonAccord is an initiative to create global codes of legal transacting by codifying and automating legal documents, including contracts, permits, organisational documents, and consents. We anticipate that there will be codes for each jurisdiction, in each language. For international dealings and coordination, there will be at least one "global" code. [Center for Collaborative Law](http://www.commonaccord.org/index.php?action=doc&file=S/About/CCL/0.md)

**
**

IP Handbook - â€œInventors and Inventionsâ€ - Chapter 8: â€œHow o Start-and Keep-a Laboratory Notebook: Policy and Practical Guidelines   [http://www.iphandbook.org/handbook/ch08/p02/](http://www.iphandbook.org/handbook/ch08/p02/)

**
**

MIT - Instructions for Using Your Laboratory Notebook [http://web.mit.edu/me-ugoffice/communication/labnotebooks.pdf](http://web.mit.edu/me-ugoffice/communication/labnotebooks.pdf) May, 2007

**
**

NIH - â€œKeeping a Lab Notebookâ€ - Presentation by Philip Ryan, [https://www.training.nih.gov/assets/Lab_Notebook_508_(new).pdf](https://www.training.nih.gov/assets/Lab_Notebook_508_(new).pdf)

**
**

FDA - Pharmaceutical Quality Control Labs - [http://www.fda.gov/ICECI/Inspections/InspectionGuides/ucm074918.htm](http://www.fda.gov/ICECI/Inspections/InspectionGuides/ucm074918.htm)

**
**

Cornell - LabArchives - an electronic lab notebook - [http://collabhelp.cit.cornell.edu/lab-archives/](http://collabhelp.cit.cornell.edu/lab-archives/)

**
**

Howard Kanare - Writing the Laboratory Notebook, American Chemical Society Publications, 1985,  ISBN 978-0841209336

Astroblocks - Lab Journal on Blockchain, experimental use of bitcoin chain, April, 2015, [http://www.newsbtc.com/2015/04/11/astroblocks-lab-journal-on-blockchain/](http://www.newsbtc.com/2015/04/11/astroblocks-lab-journal-on-blockchain/)

