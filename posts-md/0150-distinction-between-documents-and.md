# Distinction between Documents and Messages

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/11/distinction-between-documents-and.html
Published: 2013-11-07T01:43:00.002Z
Updated: 2013-11-07T01:43:31.888Z
Author: John Moehrke

---

While Keith was presenting an introduction to CDA training, the topic of Documents vs Messages comes up. After he presented his material, I asserted a more important distinction between Document and Messaging is that of state-less vs state-full.

Keith presents that Messages are: Real-time / temporary, system-to-system, not linked to creative process of the caregiver, not typically sign-able or legally attest-able, and often customized for the usecase. While contrasting with Document as  persistent, human-to-human, core to training of caregivers, legally recognized, and defined by precedent (the paper world). These might be true, but seem more argumentative than factual.

If we agree to look to HL7 to help us define the difference, this is documented in HL7. However we also must recognize that this is documented in the Structured Documents section. The HL7 standard for [Structured Documents Section 1.2](http://archive.hl7.org/v3ballotarchive/v3ballot2008may/html/domains/uvcd/UVCD.htm#spec-dam) describes the document vs. message distinction as follows

>
â€œA document is designed to be persistent for long periods of time, whereas messages are more often expected to be transient. There is a place for both of these constructs in healthcare.â€

Messages are
A Message is sent in a context of a conversation between the sender and the  recipient. These are typically system level transactions, I just don't think that is an important characteristic. The context of the transaction is an important factor to understanding the message by the recipient. Messages tend to be used in a STATEFUL world. A good example is the NAK message, it is totally dependent on knowledge of the message that is being negatively acknowledged. An order message is expecting that it is starting the state of something being done. It is true that there are some messages that don't fit this. I am not trying to setup absolutism, but rather setting general observations.

Health messages are not expected to be persistent, but represent a unit of information at a moment in time. The content is not always whole, where context may exist in the messaging environment rather than inside the message itself. Another example is that messages sometimes just use a vocabulary value without including the textual description or even include the code system identifier. Given that the sender and recipient know that they are using the  same value-set, they don't feel compelled to be complete.

Documents are

The HL7 standard for [Structured Documents Section 1.2](http://archive.hl7.org/v3ballotarchive/v3ballot2008may/html/domains/uvcd/UVCD.htm#spec-dam) describes the document vs. message distinction as follows â€œA document is designed to be persistent for long periods of time, whereas messages are more often expected to be transient. There is a place for both of these constructs in healthcare.â€ HL7 characterizes a document by the following properties:

- Persistence â€“ Documents are persistent over time. The content of the document does not change from one moment to another. A document represents information stored at a single instance in time.

- Wholeness - A document is a whole unit of information. Parts of the document may be created or edited separately, or may also be authenticated or legally authenticated, but the entire document is still to be treated as a whole unit.

- Stewardship â€“A document is maintained over its lifetime by a custodian, either an organization or a person entrusted with its care.

- Context - A clinical document establishes the default context for its contents

- Potential for authentication - A clinical document is an assemblage of information that is intended to be legally authenticated.

**So what?**

The distinction between message and documents can get blurry at times, as messages sometimes can be persisted and can contain all necessary context. Documents too can be incomplete, and rely on external content through links. In fact, messages can be converted to documents and can carry documents within their content. But documents are expected to be persistent, relevant over time and having the same meaning regardless of environment. And messages need not be any of those things.

What is more important to me is the relationship of these two in the context of a long-term, longitudinal, record. In that context the wholeness of documents is more useful than the benefits that messages bring. This is especially true in Cross-Enterprise Health Information Exchanges.

See  [Critical aspects of Documents vs Messages or Elements](http://healthcaresecprivacy.blogspot.com/2011/10/critical-aspects-of-documents-vs.html)

