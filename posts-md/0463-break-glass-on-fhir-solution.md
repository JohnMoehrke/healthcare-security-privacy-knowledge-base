# Break-Glass on FHIR solution

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir-solution.html
Published: 2015-12-27T18:11:00Z
Updated: 2015-12-27T18:11:00.816Z
Author: John Moehrke

---

I explain the use-case and environment behind [Break-Glass on FHIR.](http://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir.html) In there I explain that it is unusual to need Break-Glass, but that it is still an important capability in healthcare.  In this article I will outline a few solutions that exist, and hint at some other solutions.

This solution is based on a Client/Server relationship where the security subsystem is managing Access Control between the Client and the Server.. This diagram and definitions from the FHIR [specification](http://hl7.org/implement/standards/fhir/security.html)

http://hl7.org/implement/standards/fhir/security-layout.png

 Where:

_The consumer that is using a healthcare related system
_The client application the user is using (application, mobile app, website, etc.)
_The security system (authentication and access control)
_The clinical/healthcare repository

Notify that Break-Glass 'could' be used.
This is not specifically necessary, as a user/system could always indicate that Break-Glass is being invoked. If it is not authorized, then this request would be rejected. If it is authorized by no new information then nothing more is returned. The problem is that without a way to notify that break-glass could be used, then the degenerate system results: Either normal RBAC, or it is always an emergency. Thus for true Break-Glass, one really needs a way to indicate that information is being withheld that could be accessed if Break-Glass was declared. Note that this notification should not be used when there is data being withheld that is not accessible under Break-Glass.

The way that is in the FHIR Specification today is to include in the [OperationOutcome.issue.code](https://www.hl7.org/fhir/operationoutcome.html#def) the value "[suppressed](https://www.hl7.org/fhir/valueset-issue-type.html)", with severity at "[informational](https://www.hl7.org/fhir/valueset-issue-severity.html)".  This would indicate that for a normal request that the normal results were returned (Informational but suppressed). This does require that suppressed is not used for any other purpose. This is not obvious today, but could be an operational requirement in a specific environment, likely under some Implementation Guide.

As discussion on the FHIR mailing list have shown, not all operations can easily have both success and also have an OperationOutcome resource, so this model only works where OperationOutcome can be carried on the Response.

Indicate that Break-Glass is being used.
On the [Security-Labels](http://hl7.org/implement/standards/fhir/security-labels.html) page is a [proposal for how to indicate that Break-Glass is requested](http://hl7.org/implement/standards/fhir/security-labels.html#break-the-glass). I don't recall reviewing this text, so it was a surprise when Grahame pointed it out to me. It seems odd to be on the Security-Labels page rather than the [Security](http://hl7.org/implement/standards/fhir/security.html)page. It doesn't even use a security label.

This solution proposes that a URI could be defined to indicate that "Break-Glass" is being requested. This URI is then represented in the HTTP Request as a [web category .](https://tools.ietf.org/html/draft-johnston-http-category-header-02)

I would see this as more experimental, but given that it is in the specification today, I must at least acknowledge that it is more than just something for people to experiment with and give us comments. That said, if you have comments, I would be very happy to receive them.

Audit Log that Break-Glass has been used.
When Break-Glass is used it is important to record in the audit log that Break-Glass was used. This triggers the Privacy and Security office working with the Clinical Safety office to investigate if it was appropriate use of Break-Glass. In FHIR [AuditEvent,](http://hl7.org/implement/standards/fhir/auditevent.html)there is a defined way to indicate that Break-Glass has been used. Benefit of basing this on [ATNA](http://healthcaresecprivacy.blogspot.com/2013/01/simplifying-security-audit-standards.html). Here is the critical aspects:

>
AuditEvent.type --> 110113, Security Alert
AuditEvent.subtype --> 110127, Emergency Override Started
AuditEvent.recorded --> When it happened
AuditEvent.agent --> Who declared break-glass
AuditEvent.agent.location --> Where is this agent
AuditEvent.agent.policy --> Policy enabling break-glass
AuditEvent.outcomeDesc --> Free-text explanation of  why
AuditEvent.purposeOfEvent --> Why break-glass(ETREAT)


Where an entry in AuditEvent.outcomeDesc, could carry the 'text' description that the user is prompted to enter. This is a common UX for Break-Glass, where the user must type in a free-text explanation of why they feel it is warranted to 'break-glass'.

Followed later, hopefully, by 110138, Emergency Override Stopped . This is not always possible to know, as not all user experiences are specifically session oriented. But often times the user experience is clear when the event starts and when it stops.

Future experimentation on Break-Glass

This is a good experimentation topic. I don't think the best solution has yet been found. So here are a few alternatives to play with.

Using Security-Labels

The security-labels include the full vocabulary from the Healthcare Privacy and Security Classification System (HCS), so there are security tags that can be used to indicate for each Resource instance if it is "Normal" or "Restricted". Thus the data that falls into the "Break-Glass" use, would be marked "Restricted", while "Normal" (or less) would be available for "Treatment".

This is the most likely way to identify information that should be blocked except for "Break-Glass", but is not specifically necessary. This solution does require well managed tags on all data.

Using OAuth for Break-Glass

One thought I have is to leverage OAuth 'scope'. In normal operation one would always ask for an OAuth token using a scope value that limits access to "Treatment", which would be 'normal treatment'. When needing to declare Break-Glass, one would ask for a OAuth 'scope' with "Emergency Treatment". In this way the OAuth authority can reject, because the user doesn't own the rights to Break-Glass, or if it does return the security-token it is an indication to the Server that Break-Glass has been declared and given to the user.

Using side-channel requests

A classic solution is to provide an alternative service that one could query to see if information would be suppressed. You would send the request  you would like to ask a Server, and you get back an indication of if information would be suppressed without Break-Glass. The problem this has is that it requires another round-trip.

**Conclusion**Not done yet... need experimentation and lessons-learned sharing... so please share.

