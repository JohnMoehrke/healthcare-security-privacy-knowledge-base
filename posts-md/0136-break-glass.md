# Break-Glass

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/08/break-glass.html
Published: 2022-08-09T13:33:00Z
Updated: 2022-08-09T13:33:15.809Z
Author: John Moehrke

---

I was asked to explain how Break-Glass works. There is not a solitary answer, as the context is very important.

Define Break-Glass A method used by authorized clinical people to gain access to information that the patient has indicated they want held more confidential, when that clinician has made a medical assessment that there is a safety concern that the confidential information may help shed light.

https://blogger.googleusercontent.com/img/a/AVvXsEhV4iGwHSrWawqyGS5_LWigD6kov2QNZPiXYky8R2PlEWdAaw7V4Q2bhjYDZxJQWSvuc9_tEriZ6uBi9Rt37Rxu9zEQZbxazLrGv-9mY3Tf2EujlRidCZymFE-Tc7SksPA_PXUYIE4GEmUDOASjczKWl1aiFhkyKkQqBVRdmJM0DIBSclvF6SeH8I9dnA

- Used only in Treatment use-cases. It would be inappropriate for a Billing/Payment use-case to invoke Break-Glass.
- Not the Emergency-Room use-case. The Emergency-Room tends to focus on stabilizing the patient and this can often be done in complete absence of historic data. Further when data are available, the clinicians in the Emergency-Room tend to already be operating at elevated privilege.
- Used only by authorized users. Not all clinicians are going to be given this authority.
- Medical safety concern. The clinician is expected to be making a medical safety decision. This concern is often gathered as rational for invoking Break-Glass.
- Post analysis. Break-Glass events should happen very rarely, but when they do the Audit Log must be relied upon to provide transparency to the activities. Thus, the Audit Log might be more detailed during a Break-Glass activity. The activity of Break-Glass should cause a post analysis, where the Audit Log is examined for if the declaration of Break-Glass was necessary and appropriate.
- Patient Privacy Consent restricts some data for Treatment. Note that if no restrictions for Treatment are given, then Break-Glass doesn't apply as it would result in no additional data access.

- Patient Privacy Consent does not forbid Break-Glass. There are some settings where it is [allowed for a patient to indicate](https://healthcaresecprivacy.blogspot.com/2017/05/consent-to-deny-treatment-and-emergency.html) they would rather suffer safety concerns than have the data exposed. Most settings don't allow this kind of thing, trusting their clinicians more.

So, by this point we know there this is a use-case where break-glass applies, the patient has authorized break-glass, there is a need to blind some information from this clinician, and that the clinician does possess the permission to declare break-glass; so it is only now that we need to do something special.

historic [article from 2015](https://healthcaresecprivacy.blogspot.com/2015/12/break-glass-on-fhir.html)
Solution Considerations:
In general there are a variety of ways to solve.

- Internal logic of the EHR. If the use-case does not need to extend outside of the EHR, then there is no need for a standardized solution.
- Some workflow mechanism. It is possible for Break-Glass to be supported in ways that have nothing to do with the Security layer. These solutions tend to treat Break-Glass as a pathway thru the other clinical flows.

Thus for Security layer solutions tend to focus on use of

- PurposeOfUse of [BTG (Break-the-Glass)](https://terminology.hl7.org/3.0.0/CodeSystem-v3-ActReason.html#v3-ActReason-BTG). Typically, clinical flows use [TREAT](https://terminology.hl7.org/3.0.0/CodeSystem-v3-ActReason.html#v3-ActReason-TREAT) as the PurposeOfUse to indicate the request is triggered by a normal treatment use-case and that the data returned would be used for normal treatment use-cases. The BTG would be an additional PurposeOfUse to indicate that Break-Glass has been appropriately declared.

How BTG is declared is covered below...

How does User know Break-Glass could be used?This section is looking at how the user would know that Break-Glass 'could' be used. In theory, the non-authorized users would not be told that there are data that are blinded to them. Thus, only the users that hold the authority to declare Break-Glass would be notified that there are data that are blinded to them under normal treatment.

- It is possible that there is no feedback mechanism. Thus, those with the authority to Break-Glass would simply declare Break-Glass when they "felt" that data might be being blinded that might have some impact on safety.

- The advantage of this is that the clinician is never presented with some indication. There have been incidents that some clinicians overly focus on the blinded data if they know that there are data that are blinded.
- The disadvantage of this is that unnecessary Break-Glass events will be declared. This disrupts the clinician's flow, forcing them to detect if the Break-Glass action gave them more data or not; and causes safety / privacy investigation of many Break-Glass actions.
- An advantage is that this does not require any additional detection logic on normal transaction requests, and does not have an atypical response.
- This approach might be useful as a steppingstone to a more mature solution.

- FHIR OperationOutcome. All responses to requests in FHIR can carry a OperationOutcome. The OperationOutcome could indicate that BTG could be used. This would be indicated with an issue in the OperationOutcome that is clearly just information / informational. But would require that there be some **yet-to-be-defined code to indicate that Break-Glass may be useful**
- The FHIR Bundle that is returned might have a Bundle.meta.security tag that indicates that some data were redacted ([REDACTED](https://terminology.hl7.org/CodeSystem-v3-ObservationValue.html#v3-ObservationValue-REDACTED)). This is a Bundle security tag, as it is about the transaction results, and not about any specific data inside the Bundle (actually about data not in the Bundle). This tag would not be included for those users not authorized to declare Break-Glass.
- There might be a service request to see if data are blinded. Might be a simple service that returns true if some blinding rules are found in the patient's Consent.

- With OAuth, if the JWT was exposed (possibly thru an introspection API), then the conditions in the JWT might indicate if blinding rules are expected to be applied. This does not indicate they were needed to be applied, just that there are residual obligations to be enforced at the Resource Server / Enforcement Point.

- ???? I don't know of another method. There might be something in http? I don't know of anything that would be linked to OAuth or any profile of OAuth.

FHIR Technical Solutions for declaring Break-GlassAt this point we know that the clinical user has the rights to declare Break-Glass, and has come to some clinical decision that it is appropriate to invoke Break-Glass. I think this looks different in the case of an end-user app accessing data via FHIR, from a clinical organization requesting healthcare data from another clinical organization.
Business-to-BusinessIn the case of Business-to-Business, where both businesses are part of a Trust-Framework that has enabled Federated Access Control, the initiating organization would have some logic within that organization that checks that their user is authorized to Break-Glass, and some mechanism for that user to declare Break-Glass. Thus in the Business-to-Business use-case the only thing that gets exposed at the Interoperability layer is that the requesting organization security token needs to look different for normal Treatment from Break-Glass. This nicely fits in the PurposeOfUse.

- OAuth. The OAuth flow could provide the User-Interface that the Clinician uses to request and get Break-Glass permission. The token issued would indicate normal or break-glass in some token opaque way (many tokens are opaque to all but the OAuth authority and the resource-service enforcement).

- OAuth using the BTG PurposeOfUse. There are JWT mechanisms for encoding PurposeOfUse in the JWT in the IHE Implementation Guide on using OAuth with FHIR.

- SAML. Predating the use of OAuth is the use of SAML within nationwide health exchanges (XDS/XCA using SOAP). In the SAML flow it has always been one organization declaring the context of their request to the other organization. This SAML assertion would include the user identity that triggered the event, but the request authorization was always an organizational request. These SAML assertions relied on PurposeOfUse to set much of the context. And thus the use of BTG (or historically ETREAT) was the indicator for Break-Glass.
- Break-Glass service. It is possible to have a workflow mechanism that is invoked to indicate that Break-Glass is being invoked. This would not involve the security layer. This would require some state management at the server side.

- An advantage of this is also that the declaration of Break-Glass is later followed by a return to normal. Which tends to follow the flow seen at the Clinician side, meaning the clinician is not exposed to each FHIR request/response; they are presented with a set of data retrieved over many FHIR request/responses; they then declare a Break-Glass and then more FHIR request/responses happen.
- It is possible this is simply an [AuditEvent](http://hl7.org/fhir/auditevent.html)that indicates that Break-Glass is declared. Thus the Enforcement Point would look to [AuditEvent](http://hl7.org/fhir/auditevent.html)for a Break-Glass declaration that is outstanding.
- It is also possible that some other FHIR Resource is used.
- It is also possible that no FHIR Resource is used, but some non-FHIR mechanism
- Possibly OAuth Authorization Decision point

- http header as [outlined in FHIR Core on the Security Labels page](http://hl7.org/fhir/security-labels.html#break-the-glass). This mechanism uses a [web category](https://tools.ietf.org/html/draft-johnston-http-category-header-02) draft IETF standard. This also uses the PurposeOfUse vocabulary.

- This mechanism is not using security mechanism, so it should not be seen as a security solution. It would be very easy to hack the FHIR API to add this.
- Note this solution could also be used to carry the other PurposeOfUse indiators, like TREAT

End-User-ClientI separate this as End-User-Client often are more driven by the OAuth authorization service. I think that most of the Business-to-Business solutions can happen here. I simply think that the OAuth authorization service might get more involved in the User Experience at declaring Break-Glass, capturing the reason for the Break-Glass.  I am not clear on how the user / app would indicate to the OAuth authorization service that a Break-Glass UX should be brought forward. I look to OAuth experts on that front.

ConclusionI am so sorry that there is not one solution. I assert that the reason there is not one clear solution has to do with the very fact that there is not much discussion of this flow in public spaces. I think that if there were a public discussion, we could eliminate some of these with rational as to why they are not as good as others, and likely come up with solutions I have not thought of.

