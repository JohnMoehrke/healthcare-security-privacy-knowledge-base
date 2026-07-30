# Securing mHealth - the role of IHE profiles

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/09/securing-mhealth-role-of-ihe-profiles.html
Published: 2011-09-23T13:58:00Z
Updated: 2011-09-23T13:58:17.441Z
Author: John Moehrke

---

I was notified and volun-told by Keith a few hours before he submitted his new Profile Proposal "[IHE XDS for mHealth access to HIE](http://motorcycleguy.blogspot.com/2011/09/ihe-xds-for-mhealth-access-to-hie.html)". He and I have been bumped around constantly by mostly invisible forces pushing for both RESTful interfaces and more simple ways to access XDS (and XCA). So this profile proposal is born out of that abuse. Therefore it is really not fully developed yet, although it is more fully developed than any of the other profile proposals put before the [IHE ITI committee this week](http://wiki.ihe.net/index.php?title=ITI_Planning_Committee_2011/2012_Planning_Cycle#Webinar_.231_AGENDA.2FNotes).

Securing mHealth is not easy, there are so many risks that arise when one goes onto an inherently portable device. So, very quickly there are questions about how IHE will specify the "Security Considerations" of this profile that Keith presents.

Of course I will first point very quickly to the IHE process for determining exactly this, [Cookbook for Security Considerations](http://wiki.ihe.net/index.php?title=Cookbook_for_Security_Considerations). This process has been discussed on my blog multiple times - [There is No Security Pixie Dust](http://healthcaresecprivacy.blogspot.com/2011/05/there-is-no-security-pixie-dust.html) - it is Risk based and thus very powerful, flexible, and scale-able. This process gets the profile writers to think through security/privacy risks and place reasonable requirements into the profile. The result is typically a few recommendations to include 'capabilities' such as the [IHE ATNA profile](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html).

When I mentioned this to Keith, he quickly pushed back and asked why simply HTTPS couldn't be used. I pointed out that HTTPS is HTTP over TLS, just like IHE ATNA says. Turns out he was worried about the "Mutual Authentication" aspect of IHE ATNA. It was at this point that I understood that Keith had fallen into a trap that many people fall into, and to see someone like Keith do it is to recognize that it is a huge and inviting trap.

When the IHE ATNA profile indicates that a product must be capable of using Mutually-Authenticated-TLS, we are indicting a capability. We are not indicating an operational reality. So, if a hospital chooses to use an application that uses the new "mHealth access to XDS" profile; they will do a risk assessment of their operational environment and _they_ will determine what parts of IHE ATNA they want to use, and what parts they don't want to use. So if _they_ determine that they have good control over their mobile devices (how, I don't know, but lets imagine for now), then _they_ can choose to not to use the client side authentication portion of IHE ATNA. It is _their_ choice, and this choice is enabled by the _capability_ built into the IHE ATNA profile that is mandated be grouped with the _Profile_. The alternative is that the new profile doesn't say anything about security considerations, and the application developer doesn't implement any security, then the operational environment has no capabilities to attempt to use.

We could hope that the application developer thinks about security, but then what security do they include that they are sure the service will also include? Lets say that the application developer chooses to use S-HTTP, while the service provider chooses HTTPS; this results in an interoperability FAIL (Yes, I know this is contrived, but I expect you can see the point where there are so many possible miss-matched choices that can be made). This is the exact reason why IHE exists, to scope interoperability problems into a single interoperable solution - profile.  This is exactly what IHE ATNA is doing for secure communications. This does not mean that S-HTTP is a bad idea, and there is nothing wrong with using S-HTTP. It simply means that no claims can be made about how that solution complies with IHE.

Another example is the Security Audit Logging that is part of IHE ATNA. Again, this is a capability not an operational mandate. If the local environment doesn't have an Audit Record Repository, then the capability is turned off. Hopefully it is simply redirected to a local file with appropriate filesize management.

All of this is simply Risk Assessment "flow down". Meaning that at each level of design one does a Risk Assessment, and manage the risks as best as they can at that level of design. Documenting your environmental assumptions, security capabilities, and residual risk. The next level of design will take prior design outputs as inputs to a Risk Assessment. This next level of design Risk Assessment will do what it can to address the risks, using the controls available to it. Eventually one gets to the operational environment where again the Risk Assessment takes as inputs all the outputs of prior Risk Assessments. This operational environment will use all the security capabilities available, possibly buying more controls, writing procedures, building walls, and eventually covering residual risk by Insurance. This is very much the model outlined by [IEC 80001](http://healthcaresecprivacy.blogspot.com/2010/11/iec-80001-risk-assessment-to-be-used.html).

**Conclusion**

a) Profiles need to consider security, and make recommendations on security profiles to use and any unresolved security risks critical to be addressed in the product design.

b) Profiles are there to assure interoperability, this is true about the security profiles as well. The security profiles are there to assure that the security choices on either side of a transaction are interoperable.

c) The security profiles are not there to handle security completely, just interoperability. This is why [user-identity assertions](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-cross.html) are included, but not the user interface used nor the [access controls](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles.html). The application design and operational environment deal with user interface and access controls in a functional way.

d) Profiles specify capabilities, not mandate that they are used in an operational environment. So IHE ATNA specifies that a product claiming IHE ATNA supports Mutually-Authenticated-TLS for all network traffic communicating protected data, but in an operational environment this might be used on no connections, some connections, or even downgraded to just server side authentication.

e) Risk Assessment at many levels assures that each level of design has done what it can to enable a secure operational use. Ultimately the operational environment risk assessment is responsible.

