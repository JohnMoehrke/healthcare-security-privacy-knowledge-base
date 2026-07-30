# Patient Portal - view, download, TRANSMIT

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/10/patient-portal-view-download-transmit.html
Published: 2012-10-07T00:39:00.001Z
Updated: 2012-10-09T18:17:58.170Z
Author: John Moehrke

---

Transmit only, not receive. Much simplifying the EHR functionality and perfectly logical for patient and provider. This is NOT what I complained about in [Meaningful Transmission into Oblivion](http://healthcaresecprivacy.blogspot.com/2012/04/meaningful-transmission-into-oblivion.html). Totally different topic, and they fixed that.

I have been in quite a few discussions around very simply the "Patient" experience of using an EHR based Portal supporting [View, Download, and Transmit](http://www.healthit.gov/buzz-blog/electronic-health-and-medical-records/consumer-health-it-summit-vdt-twitter-pledge/). The questions are never around what it means for a patient to be able to View, that is rather obvious. It is not easy to pull off, likely one of the hardest parts to make work well. Download is even rather easy, it is some form of [ABBI. Following Keith's recommendations there](http://motorcycleguy.blogspot.com/2012/10/a-bake-off.html). Ill let Keith argue over the format that download should take, or even the technology. Ultimately MU2 does indicate the download is of the ambulatory summary or inpatient summary. I would like to have choice of the format, as the CCDA format isn't readable by me. I want it, but I also would like a nicely formatted PDF.

The concern that comes to me is what does it mean to give the patient the ability to "**Transmit**"? This question comes to me mostly because I have parsed the [Transports specification with excruciating detail](http://healthcaresecprivacy.blogspot.com/2012/09/meaningful-use-stage-2-transports_9.html). I [was also part of the Direct Project](http://healthcaresecprivacy.blogspot.com/2010/05/nhin-direct-privacy-and-security.html) that created Transport (a), as well as very active member of almost all the other standards in (b) and (c).

**Direct and only Direct**

First there is the problem with the Transmit criteria has bound both the specification of what content must be transmitted with the specification of the transport. Further the transport is defined as exactly ONE transport [**Â§170.202(a)**.]. They ONLY specify the (a) Transport. The Patient is forced to use the Direct Project as the transmit, at least by certification criteria. As we learned before that in practice the Direct Project is not forced. The Direct Project is only forced as a minimal Transport.

>
Â§ 170.210(e) Patient engagement. (1) View, download, and transmit to 3rd party. (i) EHR technology must provide patients (and their authorized representatives) with an online means to view, download, and transmit to a 3rd party the data specified below. Access to these capabilities must be through a secure channel that ensures all content is encrypted and integrity-protected in accordance with the standard for encryption and hashing algorithms specified at Â§ 170.210(f).

...

>
(C) Transmit to third party. (1) Electronically transmit the ambulatory summary or inpatient summary (as applicable to the EHR technology setting for which certification is requested) created in paragraph (e)(1)(i)(B)(1) of this section in accordance with the standard specified in **Â§170.202(a)**.

(2) Inpatient setting only. Electronically transmit transition of care/referral summaries (as a result of a transition of care/referral) selected by the patient (or their authorized representative) in accordance with the standard specified in **Â§170.202(a)**.

**Malicious Documents?**

There is no requirement to UPLOAD or even RECEIVE. This is the first simplification from a technology perspective. Uploading brings along many issues that are amazingly numerous and much harder to deal with. For example by supporting upload or receive one must have mechanisms where a document from unknown provenance be introduced. This could at worse be a malicious document full of 'trojan' or 'worm' like code. The document might look like a perfectly good clinical document, but be falsified by the patient. At best the document might be from another provider and unchanged, but impossible to prove that it was unchanged. Far better to get the 'other' provider to provide their copy of the document through secure transports.

This from page 61-61 of the preamble comments

>
Comments. A commenter recommended that this certification criterion should include more specific capabilities than we proposed such as, accommodate patient generated data to â€œuploadâ€ into the EHR; include linkages to patient specific education materials; and be based upon a standing patient preference.

Response. We did not accept this recommendation. We believe the certification criterion is properly scoped to support its correlated MU objective and measure and do not seek to introduce additional burden that could be value-added functionality outside the scope of certification that EHR technology developers can include for competitive purposes.

**Simplified Transport - Send from ONE identity.**

The other positive about not including Receive is that it greatly simplifies the Transmit.  When a Patient is using a secure portal to interact with their healthcare provider EHR, they are a 'user' of that system. For the most part they are a very limited user, limited at least to only accessing their own records. As a limited user they are not on the same footing at an employee at the healthcare provider institution. As such, when the patient asks that their medical summary be Transmitted to someone else, the EHR doesn't necessarily need to send from the Patient identity. The first simplification is that the EHR can Transmit the document on behalf of the patient, that is, "by" a single identity such as 'the medical records department'. This is what would happen in the paper world, so there is precedent  In this way there is no need for the EHR to have individual identities for each Patient. All Patients can be represented by just one identity. Actually the Transmit function can always be done by 'the medical records department'. Thus the EHR only need have one identity, even for Provider delivery.

This does mean that the recipient of a Patient requested Transmit of a document can't respond back only to the patient. If they respond they will be responding back to the sending identity, likely 'the medical records department'. This might initially sound like a bad thing. Why would the original healthcare providing organization get 'between' the  patient and the recipient. The reasons are numerous and all good reasons. If the patient requested that  the  Transmit be to a Doctor; then that Doctor should have direct relationship with the patient. If the patient requested that the Transmit be with their PHR, then the patient can just use their PHR. Any Transmit back to the original sender should likely be intercepted, inspected, and carefully routed. This would be the responsibility of the medical records department.

**Simplified Transport - No Receive at all -- No HISP**

Further since there is no need to Receive, there really is no need to support inbound email for patients at the Healthcare Provider. The healthcare provider organization will likely need to receive something via Direct, but that might be a very different software module. I am focused on the Patient Portal as a standalone software module. That software module needs only support Transmit, it doesn't need to have an e-mail server exposed to the internet to receive e-mail. It doesn't need to publish certificates. It doesn't need to deal with all the more robust things one must do as a server vs a client.

Yes, this means that there is no need for a HISP. All the software functionality can work just fine behind the firewall of the  healthcare provider organization.

**Send ONE document to ONE recipient**

There is no stipulation in the regulation if one must be able to send more than one document at a time. I would recommend that if you support more than one document at a time, please use the XDM content package. It is designed to be simple yet help contain the content and explain the relationships of multiple content items.

There is also no stipulation that a patient be allowed to specify more than one recipient. The Direct Project tells you how to do this, but it really isn't needed. If the patient needs to send to more than one, then simply send multiple times.

**Patient Portal Software Modules**

Given the above, what does it take to be the "Transmit" portion if you are just a Patient Portal?

**Administration:**

A) You must get a Direct e-mail address for the sender. Likely this is simply configuration parameter. It comes from the Healthcare Provider organization, who likely just has one for their Medical Records Department -- MedRec@sunnyfamilypractice.org

B) You must get a Direct friendly Certificate issued for this e-mail address. This is the most difficult part because it is in the policy space that has not yet been settled. Note that you end up with a Private key that must be very carefully protected in addition to the Certificate which is expected to be public.

B.1) Normally you would need to publish this Certificate via both DNS and LDAP; but not really needed in this case. It might be published for other reasons, such as that it really is the Medical Records Department at the healthcare provider and they really do want to receive Direct messages for other reasons not associated with the Patient Portal support for Transmit.

C) You must be given the list of 'trustable' Certificate Authorities. These are all the 'authorities' that the Healthcare Provider organization will be trusting. This list likely comes from consensus including organizations like DirectTrust.org

D) You should be given a list of directories. This is part of the second method of certificate discovery that was added to the Direct specification. The standards used are tried and true, LDAP. Commonly used inside of organizations, in this case providing a "Healthcare Provider Directory" or "White Pages" on the internet. (see (c) below)

**Software Components:**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgY3QX50gCAKW5LmcrEc0S1xX6nf_FC0Q6mGK7sfBphyY4PjhmGvP7fWm3SgOhrVi1mGGw_C3cTWnAsze_VZTlV4raMmR4S-JCFMsZoiiQ3y-q1UOrnOidqYO4sRNLqQ4URcJsu_mwwNJrz/s1600/EHR+Patient+Portal+-+Transmit.png

a) User Interface: Allows the user to select the document to send. Likely forcing only one be chosen.

a.1) In order to send more than one, it is best to use the XDM content packaging system.

b) User Interface: Allows the user to type in an e-mail address they want to send to. There really is no way to just look at the text and determine if it is a good address. yes it must meet e-mail address encoding, but that is not enough. So your software needs to try to find a valid certificate (see step (d))

c) User Interface: Could use the alternative certificate discovery mechanism from Direct to query the Healthcare Provider Directory -- White Pages. In this way assisting the Patient in finding the right e-mail address. Much creativity can be applied to this user interface.

d) Once you have a destination e-mail address you must determine if it is valid. This is done by finding a digital certificate via one and/or two methods identified in the Direct specification

d.1) DNS query: Given the e-mail address one just asks the internet DNS system if anyone knows of a certificate for the given e-mail address. You get back zero or many.

d.2) LDAP query: Given the list of directories given in (D) above, you query each looking for a certificate for the given e-mail address. You get back zero or many.

e) If you have one or more certificates then you need to look at each one of them and determine if they are well formed, correct for the given e-mail address, not expired, and the signature on the certificate validates to one of the trusted certificate authorities you were given in (C) above.

f) If you have zero certificates, or none that are good, then you clearly need to tell the patient that the e-mail address they gave is not correct. And start over.

g) You then create an e-mail message according to the Direct specification. Use the given e-mail address for TO:, and the FROM is the sending e-mail address from (A).

h) You then S/MIME the message (making it secure). This uses the certificate you discovered in (e) to encrypt the message, and the private key from the certificate from (B) to sign the message. You will also include the (B) certificate in the message for good housekeeping.

i) You then need to SMTP send the message. This has two parts, both rather easy. This is the  part that all e-mailers need to do, so it should be readily available as a reusable software component.

i.1) DNS MX record lookup. This is a use of the DNS to ask the internet for the correct 'next hop', the next e-mail server, to send e-mail to with the given e-mail address. It typically returns the address of the mail server of the recipient. It can be some intermediary. Don't worry, as the message is well protected.

i.2) SMTP send. Your software will connect to the address that the DNS MX record said to connect to and using the SMTP protocol transfer the message to the target.

j) Please record in an audit log that this happened...

That is all there is. In detail. Just a few software components: smtp sender, DNS requester, Certificate validation, Certificate Authority store, Private key store, LDAP requester, and user interface. Most of the hard work is done on the Receiving side of Direct. For more see the [Deployment Models on the Direct Project wiki](http://wiki.directproject.org/Deployment+Models)

**Updated**:

Keith went and implemented all of this using the Direct Project reference implementation.[Direct Transmission in Java : The Go-Cart Version](http://motorcycleguy.blogspot.com/2012/10/direct-transmission-in-java-go-cart.html)

