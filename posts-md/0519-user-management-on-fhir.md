# User Management on FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/07/user-management-on-fhir.html
Published: 2021-07-06T17:00:00.002Z
Updated: 2021-07-06T17:00:48.084Z
Author: John Moehrke

---

The FHIR standard is a data-model and interface (API) specification for access to health-care data. As such this is a domain of data that is specific to the health of subjects. This is a very big domain, but not all encompassing. When interacting with domains outside of health-care, links between the data is done via Identifiers. FHIR has a data type structure for an Identifier that is designed to hold any kind of globally unique identifier. This identifier data structure thus would hold identifiers such as

- Social Security Number
- Drivers License Number
- Medical Credential Number
- Employee Number
- Organization Identifier (Employer Tax Identifier, domain name, etc)
- National Provider Identifier (NPI)
- bank account number

and

- **User Identity (username, userId, etc)**

Note that Identifier is also used for things besides human identifiers. Such as legal-case-number, global-shipment-identification-number, vehicle-identification-number (VIN),  device-serial-number, animal-identification-number.

All of these are information managed in another domain outside of FHIR.

User Management is driven by Organization needsThe user management within an organization will be driven by the needs of the organization. Often this will be driven by early applications (aka the oldest application). Many organizations use Microsoft Active Directory, which does support Authentication and Authorization standards of SAML and OAuth.

Other platforms for User Management would be Apache Directory, Open LDAP, or an external OAuth provider like Google/Facebook etc.
RESTful standard for User ManagementThere is a RESTful standard API defined in IETF -- System for Cross-domain Identity Management: Protocol (SCIM) -- [RFC-7644](https://datatracker.ietf.org/doc/html/rfc7644)

This has not received enough interest to be put into the FHIR security pages as a recommendation. I understand that Grahame has leveraged this in his reference server. There is an old, and unmanaged, page that Grahame created comparing [SCIM to FHIR models](https://wiki.hl7.org/FHIR_Comparison_to_SCIM)., and [his blog](http://www.healthintersections.com.au/?p=2673). The [Health Samurai also indicates it supports SCIM](https://www.health-samurai.io/services).

I note that Microsoft Azure Active Directory [seems to use SCIM as their API for user management](https://docs.microsoft.com/en-us/azure/active-directory/app-provisioning/customize-application-attributes#provisioning-a-custom-extension-attribute-to-a-scim-compliant-application). I am not an expert on Microsoft Active Directory, so I might be wrong. Would love to get comments confirming or redirecting my understanding.

