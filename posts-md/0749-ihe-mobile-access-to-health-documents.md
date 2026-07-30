# IHE Mobile Access to Health Documents (MHD) - Implementation Guide 

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/04/ihe-mobile-access-to-health-documents.html
Published: 2021-04-02T20:35:00.004Z
Updated: 2021-04-03T12:05:04.488Z
Author: John Moehrke

---

Public Comment now open until May 2.  - The main purpose of this release is to author and publish the MHD Profile using the Implementation Guide Publisher format. There are breaking changes, so this is a new version.  (See below: Significant changes since MHD Version 3.2)

_

IHE IT Infrastructure Technical Framework Supplement Published for Public Comment

The ITI Technical Committee has published the following updated supplement (in HTML vs. PDF form) for public comment from April 2 through May 2, 2021:
**Mobile Access to Health Documents (MHD) - Rev. 4.0.0**

The document is available at [https://profiles.ihe.net/ITI](https://profiles.ihe.net/ITI). Comments submitted by May 2, 2021 will be considered by the IT Infrastructure Technical Committee in developing the trial implementation version of the supplement. Comments can be submitted via traditional methods at [ITI Public Comments](https://www.ihe.net/iti_public_comments/) or by creating a [GitHub Issue](https://github.com/IHE/ITI.MHD/issues/new/choose).

Significant changes since MHD Version 3.2
- Due to "breaking" changes, this version of MHD is Version 4.0.0-ballot (for public comment), and will be published after public comment resolution as 4.0.0.
- Canonical URLs are different, using '.' rather than '_' as the underbar is not allowed in Canonical URLs.
- DocumentManifest has been replaced by List. Thus both SubmissionSet and Folder are supported with List Resource.
- To support use of List a few extensions have been added, and a few query parameters have been defined for those extensions.
- A full set of conformance resources and examples are included.
- Defined AuditEvent using profiling and examples.
- Hyperlinked to [https://profiles.ihe.net](https://profiles.ihe.net/) publication of ITI specifications.
- Imported IHE published FormatCode vocabulary from [IHE FormatCode Implementation Guide](https://profiles.ihe.net/fhir/ihe.formatcode.fhir/index.html)
- This publication includes the content from the Appendix Z supplement.
- This publication includes a prototype of a test plan. This page is not complete.
- There are known and accepted IG build errors (QA reports: broken links = 0, errors = 49, warn = 44, info = 23). These are to be resolved post public comment.

