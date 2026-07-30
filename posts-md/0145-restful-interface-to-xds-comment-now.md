# RESTful interface to XDS - Comment NOW!

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/07/restful-interface-to-xds-comment-now.html
Published: 2012-07-05T18:41:00.004Z
Updated: 2012-07-05T18:41:48.534Z
Author: John Moehrke

---

The [IHE ITI mHealth Profile](http://healthcaresecprivacy.blogspot.com/2012/06/ihe-iti-mhealth-profile-public-comment.html) is in Public Comment for only a little bit more. The formal due date is today, but anytime is a good time to comment. I will work hard to get any constructive comments worked into the profile. The IHE IT Infrastructure domain has [published just this one new supplement for Public Comment](http://www.ihe.net/Technical_Framework/public_comment.cfm#IT). The supplement is formally â€œMobile access to Health Documents (MHD)â€, but is often referred to as the mHealth profile.

I have [explained the profile](http://healthcaresecprivacy.blogspot.com/2012/06/ihe-iti-mhealth-profile-public-comment.html)

I have [explained the user authentication model](http://healthcaresecprivacy.blogspot.com/2012/06/what-user-authentication-to-use.html)

I really want comments on the profile, especially the Open Issues

OPEN ISSUES
As a Public Comment version there are many issues that have come up during the development that are not fully locked down. Most of them are due to the learning-curve of the committee. Thus I really want constructive comments on the whole Profile but specifically on these Open Issues. The open issues are far more detailed in the document, they are basically:**

- Restricted â€œCreateâ€ to ONE document, with derived SubmissionSet

- No access to SubmissionSet, Folders, and Associations

- Patient ID is needed as part of URL

- Bring in hData as framework and thus ATOM in GET path for multiple entries?

- Conditional get is not supported due to the differences between the semantics of HTTP and XDS concepts of resource age.

- Do we need more on Security, specifically Audit?

- JSON use of anonymous objects or not?

