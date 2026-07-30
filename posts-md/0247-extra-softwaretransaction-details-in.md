# Extra software/transaction details in FHIR AuditEvent / ATNA Audit Message

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/11/extra-softwaretransaction-details-in.html
Published: 2017-11-14T14:00:00Z
Updated: 2017-11-14T15:02:58.462Z
Author: John Moehrke

---

I have been in a few discussions lately where the question came up on how to add additional information to an ATNA Audit Message (aka FHIR AuditEvent). This additional information is not the kind of information that needs to go into an 'extension', as the Audit Message schema has support for what needs to be recorded. But there is a need to setup some things.

Here are the use-cases

- In a service oriented transaction there is a 'transaction identifier' that is specific to that transaction. When all audit events are recorded with their transaction identifier, then one can see all the audit events caused by one transaction. This transaction identifier might be in  SOAP header, or might be in an HTTP header, or might be elsewhere. For the purpose of this article it doesn't matter were it comes from, but rather that many different audit logging events can record the transaction identifier so that later the many different audit log entries can be correlated.

- In a layered software environment there are various software 'applications' (aka services) that might be involved in an 'event'. It would be good to record all of these applications so that an analysis of the audit log can show the involvement. For example: During the audit logging, it is possible to walk the call-stack to see all the layers involved.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgiiM6q5xZjqOr9lR1aoXCODG3p_YQADDd1tiubkDhOcivIvpkpGNiJQsV9dwMC6-1c5dBUFQ7WBqM-eAoeYOEnUk49beu_q5B8-Q8NeIS0SZSDVw8GpghQUCnf-MtWqcf8uUOQ3ckCK8Jz/s1600/ATNA-Actors.png

First thing to think about is if this additional information is appropriate. This is an important step because sometimes initial thinking is to put data into the audit log. One should keep data out of the audit log, and rely on metadata as linkage to the data that is managed more formally in a database. In the use-cases here these are both metadata, and not data. They explain what was involved, hence 'meta'.

Note that both of these use-cases are addressing similar realities, that when looking at an audit log one finds that it is useful to be able to understand how the event was processed. Realistically BOTH of these are likely to be needed. That is to say that every piece of software that touches a transaction could record their participation in that transaction, this would produce a large number of audit events, possibly too noisy.  The software "architecture" could be understood so well that only one event is recorded, with complete details. Most likely it is a combination of all of this.

IHE defined Audit Message is minimally transaction focused

Normally an Audit Message from IHE asks that the critical Who, What, Where, When, and Why (W5) are recorded. A specification like IHE will explain the most likely specifics about this for a given transaction. The unfortunate reality is that IHE is limited to the Interoperability layer of the software design, so they can only mention things that IHE manages; which is Actors.

Such an example is where a [XCPD Query on the server would record for this event](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol2b.pdf#nameddest=3_55_5_1_2_Responding_Gateway_a): (Using IHE/DICOM Audit Message terms, similar map to FHIR AuditEvent)

- Event Description: Defining this kind of an event

- ActiveParticipant: the Initiating Gateway would be described by IP address, possibly the ReplyTo value if async web services are being used.

- ActiveParticipant: the Responding Gateway by IP Address, and SOAP endpoint URI. **The Process ID can be recorded to tie to local system logs.**

- AuditSource: identity of the system recording the audit event

- ParticipantObject: The patient identity(ies) if known

- ParticipantObject: The query parameters

The closest thing to what this article is about is that the Responding Gateway can hold the local machine Process ID so that the event can be correlated with local audit logs (in non-IHE format)

You should also notice that this specification only mentions "Actors" (i.e. Initiating Gateway, and Responding Gateway). IHE can't specify a software architecture, so it doesn't know what the software architecture is. It is expected that the Software Architect can add these details.

Layered specification

I want to point out that IHE does augment the audit message expectation based on layered 'grouping' of actors. For example if the XCPD server above had received a XUA assertion, then there is the expectation that the above audit message would be augmented with an additional ActiveParticipant with the UserName element composed of the parts of the identity in the SAML assertion. See section [ITI TF-2:3.40.4.2](http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol2b.pdf#nameddest=3_40_4_2_ATNA_Audit_encoding)

    **+**  ActiveParticipant:

           UserIsRequetor == TRUE  (this indicates the ActiveParticipant is describing the user)

           UserId ==  alias""

           RoleIdCode == roles from the SAML

           PurposeOfUse == from the SAML

Note that this is not a whole new Audit Message, but rather additional detail that gets added to any Audit Message when there is an XUA assertion. This additional information is expected to be added to ALL audit messages.

In looking at this. The specification should have been more clear that this should be done with a dedicated ActiveParticipant. The way the XUA specification describes it, one could just add the detailed UserName to any existing ActiveParticipant. I would rather it be a dedicated ActiveParticipant. Given that there is an infinite number of ActiveParticipant elements that could exist, and each one added only adds the elements populated, this doesn't make it much bigger of an Audit Message. Let me know what you think, should we CP this?

Where to put the transaction ID details?

In the first use-case the extra detail is is some kind of transaction identifier. In my example of XCPD there is a transaction identifier in the WS-Addressing **MesssageID **element in the query that goes into the WS-Addressing **RelatesTo **element on results returned. Recording this identifier might be useful to help relate responses with requests. This however is not part of the current IHE Technical Framework. I wonder if it should be?

In http REST, like FHIR, one could have an **X-Request-Id** that might also be good to record. See the [FHIR chat discussion](https://chat.fhir.org/#narrow/stream/implementers/topic/X-Request-Id).

So the transaction identifier does not seem like an Active participant (AditEvent.agent) in the transaction, so it must be simply a ParticipantObject (AuditEvent.entity). The difference between these two is the "Active" part. That is if something/someone takes action then it is an ActiveParticipant (AditEvent.agent), else it is just some object that was part of the event being recorded.

Thus I would add a ParticipantObject that does nothing but hold the Transaction ID. By adding a ParticipantObject that only holds the Transaction ID it is easier to find all messages that have this ParticipantObject.

    **+** ParticipantObject:

          ParticipantObjectTypeCode == 4 (Other)

          ParticipantObjectTypeCodeRole == 21 (Job Stream)

          ParticipantObjectIDTypeCode == transaction number type

          ParticipantObjectID == transaction identifier

Where to put Application Software Identifier details?

The next one is about where to place various layers of software. I would worry if this list gets long, especially if it is repetitious. It would not be helpful to list all the required layers that would be processing. But it does seem logical if there are different services that may or may-not be called upon, or where there are different instances that would need to be identified.

In this case I think the application software is actively involved in the processing, so I would recommend this be recorded as a ActiveParticipant. So adding an additional ActiveParticipant would look like:

    + ActiveParticipant:

          UserId == the software identifier

          UserIsRequestor == FALSE

          RoleIdCode == 110150 (Application)

There would be one of these for each layer of software actively involved. Thus care must be taken to not include all layers, just those that are useful. The other elements in the ActiveParticipant might also be used for some other purpose.

Conclusion

So the exiting ATNA Audit Message and FHIR AuditEvent can easily carry these additional details. This additional details can help resolve when there are failure-modes in a system, or to keep track of proper processing. Thus these additional details seem reasonable to incrementally add to existing Audit logs.

Note that there are some interpretations of what an audit log entry MUST or SHOULD contain. Sometimes these rules are considered too tight, and thus there have been some cases where an audit log entry has been declared non-conformant because it contained additional detail (or less detail). This is unfortunate, and wrong. An Audit Event log entry should record anything useful that is known at the time the audit log entry is recorded. This is a case where recording everything that is known is more important than recording everything theoretically possible, or failing to record because there is some data that is not known but is considered required by some tooling.

