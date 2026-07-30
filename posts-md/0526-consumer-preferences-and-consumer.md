# Consumer Preferences and the Consumer

Originally posted: https://healthcaresecprivacy.blogspot.com/2009/10/consumer-preferences-and-consumer.html
Published: 2009-10-19T13:44:00Z
Updated: 2009-10-19T13:44:19.192Z
Author: John Moehrke

---

John Halamka posted a blog entry this morning where he discusses the current state of [Consumer Preferences](http://geekdoctor.blogspot.com/2009/10/consumer-preferences-and-consumer-nhin.html) for data use (aka Consent to Privacy-Policy). He does a good job of explaining that this is critical to the success of Healthcare IT, and gives his views .

> In my experience, something simple such as opt-in consent for data sharing at the institution level, will result in much more privacy because the security technologies required to support it are simple and easy to understand.

Including his vision of requirements (**bold **emphasis added by me):

> My ideal plan for consumer preferences would be

1. We develop national policy which clearly delineates the types of consents we need to support. Ideally, this **will be a short list**. I prefer consumer opt-in at the institution level. To be compliant with ARRA and state laws I can imagine this being expanded a bit to include very basic segmentation of the record into mental health, HIV results, and everything else.

2. This consent will be recorded electronically and made available via a health information exchange, the PHR of the patient's choice, or via a mobile storage device such as a USB drive. When a patient presents for care, the consent is queried, and all data exchanges follow this declaration of confidentiality preferences.

3. The standard for recording consent would be XML-based and not require a "wet signature" or an image of a signature. I realize that some state laws still require handwritten consents, so policy work is needed here.

Given all this activity regarding consumer preferences, control, and empowerment, let's hope the policymaking gets done by 2011 and the standards to support the policy can be simple to deploy and manage. The more complex meaningful use data exchanges in 2013 and 2015 depend upon it.

I commented that what he is asking for is supportable with TP30 today. I want to explain a little more detail here. He does leave out some of the details, so I will have to invent some details for him. I assume that he is indicating that a consumer would register a consent with every institution that they want to share data with, and only if there is a specific OPT-IN registered with that institution would information be allowed to flow into that institution. Which unfortunately means that any sourcing institution would somehow need to be able to recognize an OPT-IN policy that was agreed to by the patient at **that target institution**.

This is not a problem for TP30 (BPPC) today, but is a complexity that may not be as obvious to all readers. Because of this complexity, we would need to have a 'template' OPT-IN policy, where the language is clear as to what can and can-not be done. Given that we are trying for a simple system, lets assume we can say that this OPT-IN policy allows the receiving organization to use the data only for treatment purposes and allows them to archive a copy in their medical-record only for treatment purposes. This forbids secondary use of the data transferred (It says nothing about their own secondary-use of their own created data). We now have the precondition for TP30 complete, a defined policy written in human readable form. I would argue that the policy needs to cover an agreed list of data segments, user roles, and treatment uses including break-glass. TP30 does not require that we now convert this policy into an XML form, a key question I had on John's requirements. But it does require that we globally identify this policy with an OID, lets say 1.2.3.4.5.6 (the standard example OID).

So, a patient would go into an agreement with a receiving institution, possibly signing a copy of the policy on paper with a pen. The institution would create a TP30 document, which is a CDA document that encapsulates the 'Act' of the patient agreeing to the specific privacy policy. Thus we have the patient identity, receiving institution identity, and the policy agreed to identified (OID). This CDA document is registered in the local HIE announcing to the rest of the NHIN that this receiving institution does have an agreement with the patient for this OPT-IN policy. This receiving institution now attempts to query across the NHIN and/or receive documents from other sourcing institutions. The sourcing institutions will not return results unless they can see evidence that the patient has agreed with the OPT-IN policy with that receiving institution, they can in this case so they return the results requested.

This is exactly what the NHIN did with TP30, and they actually went one step further and did this type of enforcement in the NHIN backbone. They can do this because they can see that the receiving institution is authorized by the existence of the CDA document being registered.

The hard part is getting someone to write the policy language. TP30 even envisions that there could be a small set of policies, including those postulated by John (**bold **added by me)

> 2. Policymaking can constrain technological complexity. If every possible permutation of consent (**opt in, opt out, segmentation of the record, approval for sharing at the institution level, approval for sharing at the provider level, approval based on the situation - emergent care or not, etc.**) needs to be supported by every stakeholder exchanging data, then the number of standards needed will be significant. Ensuring comformance with a large number of standards at every point of data exchange will be challenging. In my experience, something simple such as opt-in consent for data sharing at the institution level, will result in much more privacy because the security technologies required to support it are simple and easy to understand.

So you see, I think that TP30 as it is currently specified, using IHE-BPPC, can and should be used right NOW to give consumers choice, while we continue to develop a privacy/security policy schema and vocabulary that will give them more expressive ability in the future.

