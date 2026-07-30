# What does the SAML assertion mean in a XDS/XCA query/retrieve?

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/03/what-does-saml-assertion-mean-in-xdsxca.html
Published: 2014-03-20T22:04:00Z
Updated: 2014-03-20T22:04:29.839Z
Author: John Moehrke

---

I have received this question from multiple sites. I will take this as a really good thing. It shows a maturing of the HIE market. The question comes about from a few different perspectives, but ultimately it boils down to a question of what the meaning is of that SAML assertion that is put into the XDS or XCA query and retrieve transactions. The reality is that the problem is not unique to XDS/XCA, it is true of any transaction that uses the PULL model. That is where a request is made for some information, and some information is returned back.

This is especially hard in a federated environment (like XDS and XCA)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjMu3RGJgJCO6SDB90Au8YgXLeW0ZVVRuab7GHAae0TxERI1w2d1HabpLTsTL_WBr6G5HdNmrpJFK_sAvb4RJkpjOol3d4F4rtzER_MALsx1Rv-vI-o0yegI1jsK6SY3zRMa6MNKMTK2lnj/s1600/Slide57.PNG

, as the Access Control decision can't be made ONCE. There is no central authority. The Access Control decisions and enforcement are federated / distributed. The Requesting environment (e.g. EHR) is expected it controls things within their environment, it has access controls inside the EHR system. The Responding environment may trust the Requester has done the right Access Control, it still would like the identity for audit logging purposes. The Responding environment might also want to do further access control rules.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgZDmFXhpVvkSPqfcENx3WVQs6BNSd6H5qPoH1IV15SfDWbBNRwXxkrjgjuz_VlTb4v5teK8YP1wl_VWzgkImwE4ZqYvcOtw3QKkOubIMsZ5qebALchjEkJBeIeUC8INhAxmCyWMMSaFqwa/s1600/IHE-Cross-Community_2011-09-15-735949.png

In XCA (XCPD shown for emphasis that this isn't just XCA but any PULL style transaction.) there are multiple intermediaries, and the request will end up at many endpoints. Those endpoints can't be predicted at request time.This picture is even simple showing only two levels. This can be nested almost infinite levels.

What is the SAML claiming?

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhZs1Kcpp8Y7NuFXC04QZZs0EBHV6MW7_V2P9ZcRvJuGOSrNMGHMF-1zoHAHIxQQ39mQo_JYR27t3Jj-IO5KvHpy-xHEk3qesJVsfivEYRJ4aFCpAWf5qrOEzrnh9cMH0LclSv3p4Moo6wP/s1600/image001-734661.png

A common mistake is to presume that the [SAML assertion (i.e. XUA)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html) is a claim about the 'user' that caused the transaction to happen. This isn't wrong, if that is indeed going to be the scope of the access that will be given to the response. This perception is common, because we sometimes need to use the example of 'user' to help differentiate the SAML assertion from the [TLS identity (i.e. ATNA)](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html). The reality is that they can be the same, if that is the right scope. One might do this too, as the SAML assertion is far more accessible on the service layer application code, the TLS identity is hard to get at.

The most likely case is that the response to a request will be incorporated into the requesting system (e.g. EHR), and thus further managed by that requesting system's access control rules. Thus the SAML assertion should be identifying the 'entity' that represents the scope of where the data will be available. This thus should then be the sum total of the roles, where your local roles are harmonized into the role vocabulary used in the Exchange.

This is also true about the PurposeOfUse statements. Meaning one must ask for all intended PurposeOfUse. One can't presume that 'treatment' is understood by the recipient as meaning both 'treatment' and 'payment'; and certainly doesn't mean 'research' and 'marketing'.

Deeper dive on the DS4P use-case
This issue was brought to light during the DS4P efforts. This is especially troubling in this environment as the Legal Release is a targeted release, and thus a broad request should be rejected. Thus we have a miss-match between the desire to get the most broad access to the data, while the data might need to be fine-grain controlled. How to resolve this is not yet clear. The DS4P presumes that a broad request can be responded to with constricted rules, but there is no pathway for this returned restriction.
Authorization vs Identity
The point to be made at this point is that the SAML assertion we
generally use (e.g. XUA) is an assertion of identity, yet a SAML assertion can be
an assertion of authorization. These authorization assertions are more
commonly associated with XACML environments.[Note that in OAuth](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html), they are all primarily authorization tokens where the authorization is ignored and the identity is used. Same result different perspective.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEinpI3mM4yRzfKytr1L5bhQPNWGRTdPJ4IhEqiXhK7JzV_4W4-FBIEJQeb0WIKE4s0GYuEmba5nKOM2HzdeyeIjj-yQTBMd_Cc0y8XAHz3PW6dFi1egYheC7D30wLIOZKE-afUBX0nV4Sjp/s1600/image001-711546.png

The XACML way to do this is through two step mechanism. That is I ask the Access Control engine for authorization to access broad data.  I get back from that an authorization assertion, possibly with a constrained list of users/roles/purposeOfuse/etc. I use that authorization to do the XCA query.  Where as to day the SAML assertion is an identity assertion, not an authorization assertion. This is the topic I cover for  [OAuth token scope constraint](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html). In both XACML and OAuth there is presumed to be a central all-knowing Access Control authority. This is simply not true in a federated architecture. So we tend to make multiple levels of decision, allowing the resource holder to be the final decider.

So what do we do with a SAML Identity Assertion environment?
The current architecture, using SAML Identity Assertions, result is that somehow the requester needs to ask for a rather broad request, yet recognize that this broad request might be too broad for the access control rules to allow. Which means you might get rejected.  The rejection code should indicate that the rejection in this case is due to too broad of a request. You could then try again with a more constrained SAML Identity Assertion.

Conclusion
So, the currently used SAML identity assertion (e.g. XUA) should identify the widest scope. Resources should recognize this. This is reality, not some hack. This is backoff mechanism is cumbersome, but if you tune your initial requests to 80% of the cases (Normal medical records for treatment use only), then the result is mostly success. The 20% (I am not claiming real values) then recognize that they need to be handled differently (probably individually and without automatic incorporation into the EHR). This can all be handled automatically by the requesting software. It does NOT need to involve the user.

Moving beyond this model is very hard. It requires a backbone of Access Control decision points that are 'all-knowing', and 'fully trusted'. I don't see this happening. I think Federation is more sustainable, and scales.

I have other articles on the Access Control topic:

- [Healthcare access control scope constraints on OAuth tokens](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)

- [Advanced Access Controls to support sensitive health topics](http://healthcaresecprivacy.blogspot.com/2012/09/advanced-access-controls-to-support.html)

- [Policy Enforcing XDS Registry](http://healthcaresecprivacy.blogspot.com/2012/03/policy-enforcing-xds-registry.html)

- [Healthcare Metadata](http://healthcaresecprivacy.blogspot.com/2012/05/healthcare-metadata.html)

- [Texas HIE Consent Management System Design](http://healthcaresecprivacy.blogspot.com/2012/08/texas-hie-consent-management-system.html)

- [Data Classification - a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html)

- [Healthcare Access Controls standards landscape](http://healthcaresecprivacy.blogspot.com/2011/03/healthcare-access-controls-standards.html)

- [Handling the obligation to prohibit Re-disclosure](http://healthcaresecprivacy.blogspot.com/2011/11/prohbition-of-re-disclosure.html)

- [Access Controls: Policies --> Attributes --> Implementation](http://healthcaresecprivacy.blogspot.com/2011/11/access-controls-policies-attributes.html)

- [IHE - Privacy and Security Profiles - Consistent Time](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_28.html)

- [IHE - Privacy and Security Profiles - Audit Trail and Node Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html)

- [IHE - Privacy and Security Profiles - Enterprise User Authentication](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles_30.html)

- [IHE - Privacy and Security Profiles - Cross-Enterprise User Assertion](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html)

- [IHE - Privacy and Security Profiles - Basic Patient Privacy Consents](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html)

- [IHE - Privacy and Security Profiles - Access Control](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles_11.html)

