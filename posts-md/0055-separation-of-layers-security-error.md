# Separation of Layers: Security Error Codes

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/04/separation-of-layers-security-error.html
Published: 2011-04-15T16:17:00Z
Updated: 2011-04-15T16:17:04.447Z
Author: John Moehrke

---

This is going to be a deep technical article. In short: To those profiling a use-case, Please don't combine behaviors of the different architecture layers: that is keep Security separate from Transport separate from Session separate from Application behaviors.

There are many projects that are looking to use IHE XDR to enable workflows. These projects are building on top of existing NwHIN Exchange and IHE profiles for very specific use-cases. It is not unusual to profile a higher level workflow on another Profile, for example IHE does this them-selves in projects like XDS-I from the IHE Radiology Domain. These projects try really hard to profile everything, which is a good thing. The mistake that often happens is that they start to mix the different [OSI layers](http://en.wikipedia.org/wiki/OSI_model). That is they over specify application needs on transport or security layer.

XUA is a profile of SAML that is specific to Transactions that use SOAP. So the XUA assertion can be added to  XDR, but also QED, XDS, XCA, XDS-I.b, etc... The big advantage of using XUA (or SAML in general) is that the receiver of the transaction has information that they can use to further enable access controls on the service side. These access controls would either allow the transaction to continue, for which the security layer gets out of the way and lets the next layers to process the request; or could have found some reason to deny the transaction, an error case.

In all cases of an error due to the SAML assertion must follow the SOAP and WS-Security specifications. This is recognizing that the SAML assertion is part of the security layer and not part of the application layer.

[IHE XUA Profile](http://www.ihe.net/Technical_Framework/index.cfm#IT), covers this in section IHE ITI TF Vol 2b:3.40.4.1.3 "Expected Actions"

> **[3.40.4.1.3 "Expected Actions"](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Rev7-0_Vol2b_FT_2010-08-10.pdf#page=92)**
****The X-Service Provider shall validate the Identity Assertion by processing the Web-Services
Security header in accordance with the Web-Services Security Standard, and SAML 2.0
Standard processing rules (e.g., check the digital signature is valid and chains to an X-Identity
Provider that is configured as trusted). If this validation fails, then the grouped Actor's associated
transaction shall return with an error code as described in WS-Security core specification section
12 (Error Handling, using the SOAP Fault mechanism), and the ATNA Audit event for
Authentication Failure shall be recorded according to ATNA rules.

The XUA Profile references the SOAP, WS-Security, and WS-I Basic Security Profile. The SOAP fault is specialized in the WS-Security specification section 12 "Error Handling"

This section explains why faults are not mandated, because policy may choose to provide no response at all so as to be more robust to attacks
The is also emphasized by WS-I Basic Security Profile â€“ R5814

[R5814](http://www.ws-i.org/Profiles/BasicSecurityProfile-1.1.html#BP_Requirement_R1029)Where the normal outcome of processing a SECURE_ENVELOPE would have resulted in the transmission of a SOAP Response, but rather a fault is generated instead, a RECEIVER MAY transmit a fault or silently discard the message.

In the WS-Security specification defines that the fault mechanism is to be used.

**[12 "Error Handling"](http://www.oasis-open.org/committees/download.php/16790/wss-v1.1-spec-os-SOAPMessageSecurity.pdf)**
â€¦
If a failure is returned to a producer then the failure MUST be reported using the SOAP Fault
mechanism.  The following tables outline the predefined security fault codes.  The "unsupported"
classes of errors are as follows.  â€¦

There are 8 fault values defined, I am not going to list them here as for SAML assertions there is more specialization.  The [WS-Security specification has a profile for SAML assertions](http://www.oasis-open.org/committees/download.php/16768/wss-v1.1-spec-os-SAMLTokenProfile.pdf) that further explain a reason for 5 of the fault values.

**Reformatted from Table from Section 3.6 "Error Codes"**

>
- **wsse:SecurityTokenUnavailable** - A referenced SAML assertion could not be retrieved.

- **wsse:UnsupportedSecurityToken** - An assertion contains a  element that the receiver does not understand.** or** The receiver does not support the SAML version of a referenced or included assertion.

- **wsse:FailedCheck** - A signature within an assertion or referencing an assertion is invalid.

- **wsse:InvalidSecurityToken** -The issuer of an assertion is not acceptable to the receiver.

- **wsse:UnsupportedSecurityToken** - The receiver does not understand the extension schema used in an assertion.

**Conclusion **

So, any reason for rejecting the transaction because of the content of the WS-Security header, including the SAML assertion, is represented by SOAP Faults. The reason is not further differentiated beyond these reasons is for good-security-practice reasons. First one expects that a good-partner in a transaction does understand the Policies and Requirements; thus any further reason code would not help a good-partner but would clearly help a malicious individual. Note that the service could certainly log in their audit log a very detailed reason for the failure. A good-partner, upon getting a WS-Security fault, can ask for assistance in understanding the requirements and policies using other channels (e.g. Phone). There can also be exceptions to this rule during provisioning, for example during early provisioning of a relationship with a good-partner one could be more expressive, but once the  relationship goes into production these expressive errors are turned off. I would recommend against this as it is common for these debugging-modes to be left enabled by accident thus exposing the operational environment. The audit log with phone call is a far more secure mechanism.

