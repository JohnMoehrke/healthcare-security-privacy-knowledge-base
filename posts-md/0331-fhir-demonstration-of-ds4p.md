# FHIR Demonstration of DS4P

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/10/fhir-demonstration-of-ds4p.html
Published: 2013-10-02T15:36:00.001Z
Updated: 2013-10-03T02:26:14.335Z
Author: John Moehrke

---

This is a [video that was made by Duane](https://www.youtube.com/watch?v=SKHUdiLcC0w), working for the VA.

_
This video is of his work done at the FHIR Connectathon. Recognize that he wrote this application from NOTHING, learning FHIR starting Saturday. Love it when someone like this proves the â€œFastâ€ in FHIR. Note that he does sugar coat some things, like any good engineer showing his boss what he did.

Duane did indeed start with his existing â€˜security/privacy classification serviceâ€™, that was developed in the USA under the[Data Segmentation for Privacy (DS4P)](http://healthcaresecprivacy.blogspot.com/2013/09/hl7-ballot-data-segmentation-for.html). DS4P is a region specification of the more fully functional [Healthcare Security/Privacy Classification System](http://healthcaresecprivacy.blogspot.com/2013/09/hl7-ballot-healthcare-securityprivacy.html). In that project this service operates on a CDA document. It is handed the CDA document, and based on a set of programmable privacy/security rules and leveraging a Clinical Decision Support engine for clinical knowledge assessment, will find and mark anything that falls into an expressly sensitive topic (e.g. HIV, Sickle-Cell, Drug-Abuse, etc).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFgpC_TpQVi8EV9GMM2cc-52rMn8DSHSa1_MmA5N2LZwHhRwjUSkk1jVKvNDW8lJeHWsx4wpBaRiTr6vB63uzSE6wZnXGtuFTA7FqRw4Oga_5I4KE6meHHIxXXmQJfV0vvLpsQjT0xXBn5/s1600/tagged_duck.JPG

The rules are programmable, and indeed he had to change the rules as he couldn't find any evidence in the FHIR test servers of these kinds of issues, so he just adjusted the rules. The ultimate rules would be up to policy writers. In his case, DS4P has specific rules from USA regulations/laws.

So, once the CDA is marked, other rules tell the code what to do with those marked areas. Again programmable rules. For example one could say that for [users with role=X](http://draft.blogger.com/), that Sickle-Cell information must be totally removed. Yes this has issues with Medical Records and Medical Ethics; but it is intended to be a demonstration of possibility to automate, not necessarily a best-case of the rules themselves.

YES, we have had plenty of doctors totally appalled at the idea. But rather, think about a Dietitian putting together a lunch meal, no need to know if the individual has Sickle-Cell.

Anyway, he took this service and the ability to find healthcare information through FHIR,

http://hl7.org/implement/standards/fhir/security-layout.png
and mocked up what he could. Imagine this is a shim that sits between the user and the raw FHIR data. It speaks FHIR on the top and bottom. Just like one of the diagrams found in the [FHIR security section](http://hl7.org/implement/standards/fhir/security.htm).

