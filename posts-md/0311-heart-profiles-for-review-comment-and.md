# HEART profiles for review, comment, and approval

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/11/heart-profiles-for-review-comment-and.html
Published: 2015-11-23T23:24:00Z
Updated: 2015-11-23T23:37:41.532Z
Author: John Moehrke

---

The [HEART workgroup](https://openid.net/wg/heart/) has developed three profiles that have been stable since April. They now want these formally reviewed for comments, with the expectation that this will result in a vote for approval as "[Implementers Draft](http://openid.net/wordpress-content/uploads/2010/01/OpenID_Process_Document_December_2009_Final_Approved.pdf)" status (equivalent to IHE "Trial Implementation", and HL7 "Draft Standard for Trial Use"). The three profiles that are ready for review for comment and approval are:

- HEART profile for [OAuth 2.0.](http://openid.bitbucket.org/HEART/openid-heart-oauth2.html)
http://openid.bitbucket.org/HEART/openid-heart-oauth2.htmlhttp://openid.net/wordpress-content/uploads/2015/01/HEART-venn-300x278.png

- HEART profile for [OpenID Connect.](http://openid.bitbucket.org/HEART/openid-heart-oidc.html)

- HEART profile for [User-Managed Access (UMA).](http://openid.bitbucket.org/HEART/openid-heart-uma.html)

The profiles are very generic and not specific to healthcare. They are profiles simply to bring focus on the simple use of OpenID Connect, OAuth 2.0, and UMA. Review these with a focus on readability and reusability. Don't look in these for anything special for healthcare. Actually if you find something special for healthcare in here, please comment on that.

These have been stable since April, so they have been available for comment for 7 months. The specific call right now is to get these closed out as Implementer Draft status in two to three weeks. So now is the time to look at them if you have not yet looked at them. If you have looked at them, then now is the time to comment.

How to Comment and get involved
Please get involved, this is an
important effort to the advancement of healthcare user authentication,
authorization, privacy, and security. This work is critical to success
of FHIR, and usable for any HTTP (RESTful) efforts in healthcare.

To get involved go to the HEART home and follow the instructions: [https://openid.net/wg/heart/](https://openid.net/wg/heart/)

**HEART scopes**

- HEART profile for Fast Healthcare Interoperability Resources [(FHIR) OAuth 2.0 scopes](http://openid.bitbucket.org/HEART/openid-heart-fhir-oauth2.html).

The fourth profile is one written based on the prior foundational work from the [SMART effort](http://smarthealthit.org/). This profile is a library of OAuth 2.0 Scopes. That is, scopes to be used when asking for OAuth authorization decisions, or to decorate an OAuth security token. This library is not only specific to healthcare, but specific to FHIR. So please review this profile for how useful these scopes are. Are the scopes at the proper level of abstraction? Are the scopes useful? Are there additional scopes that should be listed.

Might be useful to have scopes that are more broad? Might be useful to have scopes that are considering DICOM WADO/QIDO?

Future HEART
There is continuing work going on in the HEART workgroup. So  please don't look to these three profiles as the only work from HEART. They are actually work finished 6 months or more ago. The effort today is on defining patient managed authorizations, such as consent as controlled by the patient themselves.

Clearly this will enhance the scopes beyond the fixed list in the scopes profile.

Also, See my blog on  [FHIR Security initiatives](http://healthcaresecprivacy.blogspot.com/2015/10/fhir-security-initiatives.html)

