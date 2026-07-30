# Meaningful Use Stage 2 -- 170.202 Transport

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-170202-transport.html
Published: 2012-03-14T21:15:00Z
Updated: 2014-08-05T18:09:52.391Z
Author: John Moehrke

---

Updated August 2014 - Seems people are still reading this post. To find useful articles on the topic also reference to the [Secure Communications](http://healthcaresecprivacy.blogspot.com/p/topics.html#Com), [HIE](http://healthcaresecprivacy.blogspot.com/p/topics.html#HIE), and [Direct](http://healthcaresecprivacy.blogspot.com/p/topics.html#Direct)topics.



When I look at just the transport specification of the [Meaningful Use Stage 2](http://www.healthit.gov/providers-professionals/meaningful-use-stage-2) [certification criteria](http://www.gpo.gov/fdsys/pkg/FR-2012-03-07/pdf/2012-4430.pdf). The short conclusion is that there is now an HIE transport that is defined for exchanging documents between organizations. The most clear part of this is that a certified product would need to support the Direct Project, mostly secure e-mail. Less clear is what else is a mandatory or optional for document transport. The remainder of the transport specification references proxy specifications for bridging Direct and XDR. Lastly there is a optional sub-strait (aka SOAP) that IHE XUA, XDS, XCPD, XCA, and XDR are based on. The conclusion on this  is less clear, but I will be making strong recommendations to ONC. Overall I think this is a positive stepping stone, not a final solution.

**Detailed breakdown:**

There is now a defined and approved standard for â€œTransportâ€ in the Meaningful Use stage 2 certification criteria. Note that these are actually "Document Exchange Transports", as there are quite a few other transports specified in Meaningful Use including HL7 v2. I think it is best to refer to Â§ 170.202 Transport standards as the "HIE Transports" as they are clearly for communicating outside of a healthcare organization. Something IHE calls Cross-Enterprise or Cross-Community. The following is the text right from the regulation, it is not that hard to read:

Â§ 170.202 Transport standards.

The Secretary adopts the following transport standards:

(a)  Directed exchange.

(1) Standard . Applicability Statement for Secure Health Transport (incorporated by reference in Â§ 170.299).

(2) Standard . External Data Representation and Cross-Enterprise Document Media  Interchange for Direct Messaging (incorporated by reference in Â§ 170.299).

(3) Standard . Simple Object Access Protocol (SOAP)-Based Secure Transport Requirements Traceability Matrix (RTM) version 1.0 (incorporated by reference in Â§ 170.299).

(b) [Reserved]

Later in the standard it specifies the mandatory vs optionality. This is done first in Â§ 314(b)(2), but equally also in Â§ 314(e)(1)

(ii) Transmit. Enable a user to electronically transmit the summary care record created in

paragraph (b)(2)(i) of this  section in accordance with:

(A) The standards specified in Â§ 170.202(a)(1) and (2).

(B) Optional. The standard specified in Â§ 170.202(a)(3).

This means that a certified EHR must support both Direct Project specification; and can support a SOAP transport. There is something else here, but that is a topic that I will get into below.

**Â§ 170.202(a)(1) Standard . Applicability Statement for Secure Health Transport (incorporated by reference in Â§ 170.299).  **

This line item is clear and unambiguous, though there will be confusion. This is the classic definition of â€œ[The Direct Project - Applicability Statement for Secure Health Transport](http://wiki.directproject.org/Applicability+Statement+for+Secure+Health+Transport+Working+Version)â€. This means that documents are transferred between two points using secure e-mail as attachments. The definition of secure e-mail is the one implemented by most mature e-mail packages (e.g. Outlook/Exchange, Thunderbird).  The core specification is that end-to-end security is assured by everyone having a digital identity certificate, the whole e-mail message is both encrypted and signed, the attachments are either just the documents with no metadata, or a ZIP file enclosure using the IHE-XDM content packaging. Oh, and if a sending application can create IHE-XDM zip file, it must use the IHE-XDM zip file; thus it can't send a document without metadata.

http://wiki.directproject.org/file/view/NHIN-Direct-Spec-Picture.PNG/162892573/NHIN-Direct-Spec-Picture.PNG

This specification can be deployed in many different ways, and this is where confusion happens. As part of the Direct Project I authored an article where I diagrammed the most likely [Deployment Models](http://wiki.directproject.org/Deployment+Models).  The purpose was not to show end-to-end communications, but rather show both sending and receiving sides of the same deployment model. The little blue-box (shown at the left) is there to show 'The Direct Project' magic. That any of the sender deployment models can communicate to any of the receiver deployment models because of the magic of a standards based specification.

http://wiki.directproject.org/file/view/NHIN-Direct-Deployment-Models-A-r2.png/186450613/640x480/NHIN-Direct-Deployment-Models-A-r2.png

The prime way that many would have you choose to implement the Direct Project specification is to out-source to a third party, a Health Information Service Provider (HISP). This is a business model that takes some of the burden away from the Healthcare Provider. For some Healthcare Providers this is a useful model, but is not the only way to deploy the Direct Project specification.  This might also be referred to as a "Full Service HISP". The drawback is that you must totally trust this HISP provider and give them the keys. They will be impersonating you, and will see everything you send and receive.

http://wiki.directproject.org/file/view/NHIN-Direct-Deployment-Models-C-r2.png/186452633/640x480/NHIN-Direct-Deployment-Models-C-r2.png

These Full Service HISP might also offer a Web-browser interface. This is again likely a good idea. For the very small doctor office a web-browser experience is likely the best experience. If this is the way you want to interact with other doctors, then I would recommend it. However, like the Full Service HISP, you are totally trusting this service provider, giving them the keys, and allowing them to see everything you send and receive.

It is not clear in the Meaningful Use Stage 2 criteria how a Full Service HISP is going to be related to the Certification of EHR Technology. Indeed the concept of a Full Service HISP is explicitly designed to be disconnected from the EHR technology. So, will there be a certifying program just for Full Service HISP?

http://wiki.directproject.org/file/view/NHIN-Direct-Deployment-Models-B-r2.png/186451207/640x480/NHIN-Direct-Deployment-Models-B-r2.png

The Direct Project specification can also be deployed simply using an e-mail program like Microsoft Outlook/Exchange, or Thunderbird. This option is a good one if you have technical capabilities, or have an IT staff that can get things configured. Once configured, it is very transparent. I myself sign every email I send, and sometimes encrypt with people I want to have private conversations with. This is totally secured end-to-end, I only trust the machine that I run the email client on. I don't even have to trust my e-mail service provider as all they get is the encrypted messages.

http://wiki.directproject.org/file/view/NHIN-Direct-Deployment-Models-D-r2.png/186452875/640x480/NHIN-Direct-Deployment-Models-D-r2.png

The Direct Project specification can also be directly deployed by the EHR software, thus providing a much more seamless user experience. This might be tightly built into the code-base, or might be done through services.  The advantage here is that it can be a seamless user experience.

The purpose of the [Deployment Models](http://wiki.directproject.org/Deployment+Models) was to add clarity. It was also used during the [Security Risk Analysis](http://wiki.directproject.org/Threat+Models) that the Direct Project executed. I was involved with that too. This resulted in a [Direct Project Security Overview](http://wiki.directproject.org/Direct+Project+Security+Overview). I am quite happy with the security analysis and ultimately the security story behind the Direct project.

**Â§ 170.202(a)(2) Standard . External Data Representation and Cross-Enterprise Document Media  Interchange for Direct Messaging (incorporated by reference in Â§ 170.299).**

This is at first confusing, but I can help make it clear. The reliance to EHR certification is not clear. It will take some explaining, so hang with me...

This one is pointing toward a specification that was written as part of â€œThe Direct Projectâ€. It is miss-represented in that the title actually is â€œ[XDR and XDM for Direct Messaging](http://wiki.directproject.org/XDR+and+XDM+for+Direct+Messaging+Working+Version)â€, which when the acronyms are properly expanded is â€œCross-Enterprise Document Reliable Interchange and Cross-Enterprise Document Media Interchange for Direct Messagingâ€.  I will assume this is simply a clerical error of acronym expansion.

This specification shows how interoperability can be achieved when one system is using purely the secure e-mail of â€œThe Direct Projectâ€ and another system is using IHE-XDR. Both specifications are PUSH, both support the same high-level goals. They are simply different transport/session level encoding. This specification shows the relationship between the e-mail transport and the IHE-XDR + SOAP transport. For example it explains how an XDR submission set with multiple documents can be converted into an XDM submission set with multiple documents, the result zipped according to the XDM option for â€œsecure e-mailâ€, and this ZIP file placed into a secure e-mail message following â€œThe Direct Projectâ€.

This is a proxy or bridging specification. It isn't really a specification that EHR technology would implement. It is the bridging technology that allows for mostly-seamless interaction regardless of if both sending and receiving support the very same transport. It is a specification that shows how two radically different transports can be made to work by a proxy system.  This proxy or bridging service would typically be running at the edge of one type of network as a transparent gateway to the other network. So there would be only a few of these proxy/bridge systems.

**Karen's Cross**

http://wiki.directproject.org/file/view/Karen%27s_Cross_v0.1_2010.05.12.png/141437895/760x472/Karen%27s_Cross_v0.1_2010.05.12.png

Back when the Direct Project was working hard on defining the specification and other parts around it. There was a recognition that those that can talk Direct, and those that can talk XDR can talk to each other if we work out exactly how to convert from one to the other. This was graphically shown on the white board by Karen, and thus became known as Karen's Cross. The diagram did get cleaned up and is shown at the right, pulled from the Direct project wiki article on the [Intersection with Exchange](http://wiki.directproject.org/Intersection+with+Exchange) . The top of the Cross shows two systems communicating using the Direct specification, the bottom shows two systems communicating using the NwHIN-Exchange push transport (which is XDR). If one stays totally on top, or totally on the bottom there is no problem. But if you want to cross over then you need the **RED arrows**. It is these RED arrows that make up the â€œ[XDR and XDM for Direct Messaging](http://wiki.directproject.org/XDR+and+XDM+for+Direct+Messaging+Working+Version)â€.

http://wiki.directproject.org/file/view/NHIN-Direct-Deployment-Models-E1-r2.png/173924303/640x480/NHIN-Direct-Deployment-Models-E1-r2.png

What Karen's Cross shows is that the end systems don't need to know what the technology of the other system is, and that the conversion is done using automation transparently. In Deployment Model terms, here is the diagram for the **RED arrow** from the top left to the bottom Right. It shows how this system converts a Direct e-mail message into an XDR message delivered over the NwHIN-Exchange.

http://wiki.directproject.org/file/view/NHIN-Direct-Deployment-Models-E2-r2.png/173924425/640x480/NHIN-Direct-Deployment-Models-E2-r2.png

The **RED arrow** from the bottom left to the top right is shown here.

There is far more description done at the Direct wiki [Deployment Models](http://wiki.directproject.org/Deployment+Models) page. I encourage even a quick look at this. This is simply further proof of the magic of the use of Standards, the little blue box.

**Â§ 170.202(a)(3) Standard . Simple Object Access Protocol (SOAP)-Based Secure Transport Requirements Traceability Matrix (RTM) version 1.0 (incorporated by reference in Â§ 170.299).**

Back to the Meaningful Use Stage 2 text for item (3). What is being referenced here is not just simply SOAP, but a specific profiling by NwHIN-Exchange of SOAP, leveraging the WS-I Basic Profile, bound with some secure transport (Mutually Authenticated TLS), and user assertion (SAML). The specification being referenced is an effort to re-document the sub-strait specifications that the NwHIN-Exchange is using for secure transport. The specification can be found at [NwHIN SOAP Based Secure Transport](http://modularspecs.siframework.org/NwHIN+SOAP+Based+Secure+Transport+Artifacts). This sub-strait is very similar to what IHE specifies in IHE ITI TF Vol 2x Appendix V â€œWeb Services for IHE Transactionsâ€ + the secure communications from IHE-ATNA + the user assertion from IHE-XUA.

Yes it is very similar but not perfectly equal. The reason is simple, the NwHIN-Exchange has made some choices along the way, Policy decisions. Thus they have specified some things slightly differently. Using an URI for the NwHIN (actually nhin) rather than the one defined by IHE (which is actually a registered URI space). Is this difference important? Not really, most systems should be able to easily set these things by configuration.

The way this new documentation is being re-written is simply a perspective on documenting. There was a decision made to first document the common transport use in the NwHIN-Exchange, then document the specific services. They haven't gotten to documenting the services, this critical missing piece is the SOAP remote procedure calls and response encoding that the NwHIN-Exchange also uses: XCPD, XCA, and XDR. These additional specifications provide the actual interoperability specification.

I would say that the IHE XD* profiles are super-compliant as they all run over the transport defined in Â§ 170.202(a)(3).

**Conclusion**

There is clear room for improvement of the text, and these improvements will be suggested, but overall this is a good positive move into Document based HIE. The [Document Exchange] transport specified in **Â§ 170.202(a) "Direct Exchange"** is a stepping stone. We can see this in that there is clearly a **Â§ 170.202(b) â€œ[Reserved]â€. **Optimistically I would say that this is an open door to more classical Publish/Discover/Retrieve Exchanges like those built on IHE-XDS, and federated using IHE-XCA.  There is a recorded tutorial by IHE on how to build various architectures of [Health Information Exchange](http://healthcaresecprivacy.blogspot.com/2012/01/hie-using-ihe.html).

ONC is trying to mandate that EHR technology support a standards based transport that when made operational by a Meaningful Use Healthcare Provider will be able to communicate with other Meaningful Use Healthcare Providers. What gets in the way is the lack of understanding of** Karen's Cross**, that one set of EHR technology could choose Direct, while another set of EHR technology chooses IHE-XDR. These two sets of EHR technology can communicate through services that implement Karen's Cross, which is a totally different internet present service. What is more cool is that because of the[common metadata model](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html), these can interact with XDS and XCA environments without loss of clinical content or describing metadata.  This is a fine stepping stone, but we must keep moving forward to more capable HIE standards and architectures.

I will further expand on HIE and the next logical stepping stones soon, I have links to this and my other observations on[Meaningful Use Stage 2](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-security-privacy.html)

