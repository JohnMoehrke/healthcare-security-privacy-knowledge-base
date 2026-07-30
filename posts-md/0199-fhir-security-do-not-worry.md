# FHIR Security: Do (Not) Worry

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/01/fhir-security-do-not-worry.html
Published: 2015-01-18T18:49:00.001Z
Updated: 2015-01-18T18:52:06.029Z
Author: John Moehrke

---

I have been asked quite often to explain how to secure FHIR. I have two different answers, depending on what you are trying to do. These two different answers are driving confusion so I need to explain them.

- Donâ€™t worry about security, It is simply a use of the existing Security layers built into HTTP.

- Worry about Privacy and Security first thing in your design, bolting it on later will not work well and will cause issues.

These two answers seem very confused, but let me explain the context of them. They should not be taken as absolutes, meaning sometimes you do need to worry about security and sometimes you donâ€™t. They are actually very related. The basics of Security for FHIR are written up on the [FHIR Specification](http://www.hl7.org/implement/standards/fhir/security.html).

 Donâ€™t worry about security
The first answer is the one I give to those in HL7 that are working on developing FHIR, or just getting their feet wet learning FHIR.

Developing FHIR Resource definition:
The committee members developing FHIR need to focus on developing well thought-out Resource Definitions. So I assure them that there is already security design built into the fundamental general-purpose standards that we are basing FHIR on. That we have a level of confidence that they can go ahead and design their Resources ignorant of how security and privacy will be enforced.

 Resources should be â€˜just rightâ€™ sized. Not too big.
There are exceptions for committee members that are developing FHIR. One exception that I am trying to get more recognition for is related to the size of Resources. Not really size, but in the number of elements included in the Resource definition. The security models that we are thinking about for protecting FHIR work best when they can make a YES/NO decision on a whole Resource content. If they have to hide some of the elements in a Resource, then you end up with a far more complex solution. It can be done, but not easily. And when things get hard, they generally donâ€™t get implemented or get implemented wrong. So I recommend that anytime a Resource is getting too big, it should be evaluated on if there are mixed sensitivity.

Note that 'too big' is a general statement. For example the "[Family History](http://hl7-fhir.github.io/familyhistory.html)", which is really not big at all, but is full of things that all are likely to need different types of protection. I would rather see this broken up into a bunch of resources so that each family member in your family history is documented in an independent Resource, so that Privacy can be more easily enforced.

Prototypes and Learning
Those just learning FHIR also need similar assurances. In fact I am comforted that this is the group that tends to question my statements about not worrying about security. These people get started using FHIR, using HTTP to an open test-server. No security at all. No HTTPS, no User Authentication, no Access Control, no evidence that Privacy Consents will be honored. I am glad that these people start to really worry, they should. But they also need assurance that it is okay to learn FHIR on a test server that has no security.  They however soon become part of the camp that needs to hear the Second answer.

Disturbing is that these people clearly haven't looked for the [FHIR Security Page](http://www.hl7.org/implement/standards/fhir/security.html).

 Privacy and Security by Design
Those who are writing applications that are going to use FHIR really need a totally different mindset. They must focus first on how Privacy will be respected, and how Security will be protected. This is the mantra of the â€œPrivacy by Designâ€ efforts.

http://hl7.org/implement/standards/fhir/security-layout.pngBasics of FHIR Security
The basics of FHIR Security are documented on the FHIR Security page. This page will get improved over time. It includes â€˜motherhood and apple pieâ€™ of HTTP RESTful security. It however doesnâ€™t include much detail for the implementer. So, how does one execute on this â€œPrivacy and Security by Designâ€ directive? The first answer is look at your  programming toolkit and application platform documentation. It likely has instructions on how to turn on HTTPS, and forbid access to your server hosted Resources. Follow those instructions, there is nothing special for healthcare.

User Authentication  (AuthN)

User Authentication is a bit more complex, but start again with your programming toolkit and application platform documentation.  I would recommend that you look to supporting Federated Identity Management. This is an approach that treats the User Authentication step as a â€˜Serviceâ€™. That is, your application doesnâ€™t get involved in the act of authenticating the user. Your application, through your web-server / application-server, force a user to be authenticated by a sub-set of â€˜trusted third party identity providersâ€™. Yes, you need to manage the list of â€˜identity providersâ€™ that you trust. This management is within your web platform, but you likely need to expose the configuration to someone, who is authorized as the administrator.

In this way, your application will redirect the browser session or application session over to a web user interface hosted by one of the â€˜trusted third party identity providersâ€™. This is where the user would authenticate, using whatever technology that â€˜identity providerâ€™ supports. This means you are not involved in the decision on how the user gets authenticated, but this is why you want to be careful about the management of the list of â€˜trusted third partiesâ€™; as you really need to be able to â€˜trustâ€™ them. The advantage for you is that you never need to know their password, nore even that a password is what is used. The â€˜trusted third party identity providerâ€™ can be using very fancy biometrics, smart-cards, anythingâ€¦

The result of this is that you receive back from this â€˜trusted third partyâ€™ a â€˜claimâ€™. This claim is often encoded using SAML, if the identity provider is a business organization or government body. This claim is often encoded using â€œOAuth 2.0â€ and â€œOpenID Connectâ€, if the identity provider is a consumer focused Internet service provider (e.g. Facebook, Google, LinkedIn, Twitter, etc).  Remember YOU get to determine who you put â€˜trustâ€™ in; so donâ€™t worry that you will be forced to trust â€˜Facebookâ€™.

With HTTP REST, the use of OAuth is going to be easier; so quickest path is through OAuth. Note that there are bridging services that can convert a SAML claim into an OAuth claim.

- There is efforts in the past to profile this: IHE IUA and Bluebutton++.

- There are efforts now starting to do a better job: HEART and such.

User Authentication in an Application

The above is really about the overall architecture of user authentication in a web environment, and how to apply this to a web-server. If you however are developing a web application that will use a FHIR Server as the backend, then you need to look into your programming platform and application platform for how to support â€œOAuth 2,0â€; also look for â€œOpenID Connectâ€.

In this case you will need to handle a special OAuth 'token', that indicates that the user has authorized your application (the Authorization part of OAuth).

 User Authorization (AuthZ)

This is a much more complex topic than I want to discuss in this article. The main problem is highlighted on the FHIR Security page. The solution is often a bunch of layers of Access Control decision and enforcement.

There will be many more blog articles, updates to FHIR, and new profiles that appear this year.

 Conclusion

So, the key is to understand if you are just learning FHIR, developing FHIR Resource definitions, or developing an software that will be used on patient data. Sometimes you should be confident that security is not something you should worry about; sometimes it should be the first thing to worry about. In all cases, it is important to understand why you are not worried or deeply worried.

Resources[mHealth Security](http://healthcaresecprivacy.blogspot.com/p/topics.html#mHealth)

- [Healthcare access control scope constraints on OAuth tokens](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)

- [mHealth Identities using trusted intermediary](http://healthcaresecprivacy.blogspot.com/2013/09/mhealth-identities-using-trusted.html)

- [getting to mHealth solutions - real People](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-real-people.html)

- [getting to mHealth solutions - Users](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-users.html)

- [Internet User Authorization: why and where](http://healthcaresecprivacy.blogspot.com/2013/06/internet-user-authorization-why-and.html)

- [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html)

- [Privacy and Security in Designing an mHealth Application](http://healthcaresecprivacy.blogspot.com/2013/03/privacy-and-security-in-designing.html)

- [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/04/mhealth-solution.html)

- [IHE efforts in RESTful security](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)

