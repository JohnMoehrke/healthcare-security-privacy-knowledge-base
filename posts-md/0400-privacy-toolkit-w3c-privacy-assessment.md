# Privacy toolkit - W3C Privacy Assessment

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/05/privacy-toolkit-w3c-privacy-assessment.html
Published: 2017-05-26T14:42:00.001Z
Updated: 2017-05-26T14:42:39.450Z
Author: John Moehrke

---

This is a short article simply to point toward W3C "Specification Privacy Assessment". I watch many standards bodies, and interact with a few. W3C is most mature "Standards" organization with regards to considering privacy impact that their standards have. Others are working toward having some process for considering privacy while writing a standard specification. But the others are more aspirational, where W3C is 'doing it'.

The best [introduction is a presentation](http://lists.w3.org/Archives/Public/www-archive/2012Oct/att-0030/SpecificationPrivacyAssessment-20121008.pdf/). This is fantastic presentation, very detailed. I would love to present these slides as there is so much depth on each page.

They have a set of [Questions that each W3C specification writing team must consider](https://www.w3.org/wiki/Privacy/Privacy_Considerations). These questions are not intended to short-circuit a real Privacy Impact, but rather to focus on some of the obvious top issues. Here is an excerpt:

- can the information be used (alone or in combination with other APIs / sources of information) to fingerprint a device or user?

- may I access to the information I created?

- may I record it myself (locally)?

- am I able to have actions on this personal record?

- may I block partly or totally the record of the information?

- may I fake it? (think about fuzzy geolocation or voluntary fake location)

- Is the data personally-derived, i.e. derived from the interaction of a single person, or their device or address? (If so, even if anonymous, it might be re-correlated)

- Does the data record contain elements that would enable such re-correlation? (examples include an IP address, and so on)

- What other data could this record be correlated with? (e.g. the ISP)

- If you had large amounts of this data about one person, what conclusions would it enable you to draw? (e.g. maybe you could estimate location from many ambient light events by estimating latitude and longitude from the times of sunrise and sunset)

- Am I likely to know if information is being collected?

- How visible is its collection and or use?

- Do I get feedback on the patterns that the information could reveal (at any instant, over time) so I can adjust behaviors?

- if a background event about the device is fired in all browsing contexts, does it allow correlation of a user across contexts?

- can code on a page send signals that can be received by device sensors on nearby devices?

You can see that W3C considers all of the [Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html), not just confidentiality.

They also have defined some re-usable Privacy Considerations. Such as the "[Web Applications Privacy Best Practices](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/)"

- [Best Practice 1](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-privacy-by-design): Follow "Privacy By Design" principles

- [Best Practice 2](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-user-driven): Enable the user to make informed decisions about sharing their personal information with a service.

- [Best Practice 3](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-choices-in-context): Enable the user to make decisions at the appropriate time with the correct contextual information.

- [Best Practice 4](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-sp-choices): When learning user privacy decisions and providing defaults, allow the user to easily view and change their previous decisions.

- [Best Practice 5](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-usability): Focus on usability and avoid needless prompting.

- [Best Practice 6](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-active-consent): Active consent should be freely given, for specific data, and be informed.

- [Best Practice 7](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-clarity): Be clear and transparent to users regarding potential privacy concerns.

- [Best Practice 8](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-clarify-one-shot-or-repeated): Be clear as to whether information is needed on a one-time basis or is necessary for a period of time and for how long.

- [Best Practice 9](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-data-granularity): Request the minimum number of data items at the minimum level of detail needed to provide a service.

- [Best Practice 10](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-data-retention): Retain the minimum amount of data at the minimum level of detail for the minimum amount of time needed. Consider potential misuses of retained data and possible countermeasures.

- [Best Practice 11](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-use-https): Maintain the confidentiality of user data in transmission, for example using HTTPS for transport rather than HTTP.

- [Best Practice 12](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-secure-storage): Maintain the confidentiality of user data in storage.

- [Best Practice 13](https://www.w3.org/TR/2012/NOTE-app-privacy-bp-20120703/#bp-audit-log): Control and log access to data.

The "[Device API Privacy Considerations](https://www.w3.org/TR/2010/NOTE-dap-privacy-reqs-20100629/)". Which includes a nice breakdown of the[Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html) to those that impact Device design.

The "[Mobile Web Application Best Practices](https://www.w3.org/TR/2010/REC-mwabp-20101214/)". Which not just itemizes a fantastic set of Best Practices (cookie use, client storage, robustness, informing user, avoid redirects, etc...). But goes into detail on these best practices

    3.1 [Application Data](https://www.w3.org/TR/2010/REC-mwabp-20101214/#bp-applicationdata)

    3.2 [Security and privacy](https://www.w3.org/TR/2010/REC-mwabp-20101214/#bp-security)

    3.3 [User Awareness and Control](https://www.w3.org/TR/2010/REC-mwabp-20101214/#bp-inform-control)

    3.4 [Conservative use of resources](https://www.w3.org/TR/2010/REC-mwabp-20101214/#bp-conserve)

    3.5 [User Experience](https://www.w3.org/TR/2010/REC-mwabp-20101214/#bp-presentation)

    3.6 [Handling Variations in the Delivery Context](https://www.w3.org/TR/2010/REC-mwabp-20101214/#bp-devcap)

    3.7 [Further Considerations](https://www.w3.org/TR/2010/REC-mwabp-20101214/#bp-further)

see also my articles

- [Security/Privacy Risk Assessment/Management](http://healthcaresecprivacy.blogspot.com/p/topics.html#RISK)

- [Privacy Principles](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html)

- [Privacy Consent Management](https://healthcaresecprivacy.blogspot.com/p/consent.html)

