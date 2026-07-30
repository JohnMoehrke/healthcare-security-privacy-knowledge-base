# US ONC Requests Comments - Certificate Issuing

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/06/us-onc-requests-comments-certificate.html
Published: 2011-06-03T16:21:00Z
Updated: 2011-06-03T16:21:03.600Z
Author: John Moehrke

---

There is a very narrow window of opportunity to provide comments to our US Government comment.  The memo went out on June 1, and the deadline is June 5. This is a 5 day window if you received the memo 3 days ago, 2 days if you waited for me to tell you. Does it bother anyone else that not only is this only 5 day window, but the deadline is SUNDAY.  Exacerbated by the very fact that those most likely to have the answers are NOT watching ONC on a daily basis. Those with the answers are those that deal with general purpose IT Security.

This commenting opportunity is regarding how to handle the problem that is, issuing Digital Certificates for securing Healthcare IT. The [press release](http://susiecookhc.wordpress.com/2011/06/02/onc-requests-comments-certificate-interoperability-initiative-report/)is not that helpful, but I will pull it apart for you. First drill down and you will find that there is a really [good presentation by the HIT Policy Privacy and Standards Tiger Team](http://wiki.siframework.org/file/view/ONC_Certificate%20Interoperabililty_Assessment%20Report_Draft%20for%20Comments.pdf) (Not the committee I am on). They have done an exceptional job of bringing together very helpful information.

The key areas that ONC wants comments on include:

- What burdens will providers face to obtain and manage these digital certificates both at an individual and organizational level? How can these burdens be minimized?

- Is there sufficient competition in the marketplace to ensure that providers will have access to best pricing and service?

- What role can Health Information Exchange (HIE) and Health Information Service Providers (HISPs) have in providing and maintaining digital certificates for providers and organizations?

- Among the options listed, what are the costs and time requirements for each?

- What is the incremental cost to become a cross-certified certificate authority compared to the cost to become a WebTrust/ETSI-certified CA?  What factors contribute to the increased cost?

Your comments need to go to a specific place as well.                 [http://wiki.siframework.org/message/view/CI+-+Analysis+Support+Team/39763196](http://wiki.siframework.org/message/view/CI+-+Analysis+Support+Team/39763196)

They need comments regarding this. I have my opinion, and it has been registered. I encourage everyone to respond. Specifically I think that we need to get comments from the International community, where there is already deployment of certificates for their healthcare use. We need to get comments from other industries where certificates are issued (not likely to happen, especially given the timeframe). We need to get comments from healthcare organizations that have certificate deployment projects underway, I am guessing here that the large provider organizations have something.

My latest opinion is that

> I recommend that we don't look to lower our standards (that is to make  the solution cheep and thus not really secure) but rather raise the  usefulness of the Certificate Identity. If the Government would combine  many projects 'need' for an identity then we could rationalize an  equitable solution. That is to say that all of these needs for identity  should be Coordinated.

>  a) Direct - end-to-end message security/authenticity

b) Exchange - organization participation in a regional and/or national exchange (NwHIN Exchange)

c) Medicare plus - and other insurance exchange needs

d) Prescribing (especially the new eRx on Schedule 2)

e) Medical Records - signatures attesting authorship

f) Quality Reporting - identity of the institute reporting

g) Immunization Registries -

h) Medical Credentials

i) Clinical Trials - attesting each submission is already done this way.  But participants in a clinical trial could also attest to their  participation

j) Medical Professional Societies - HIMSS, RSNA, AAMI, etc...

*) etc... surely there are others...

>  Ultimately enough uses of an identity and the costs and inconvenience of getting it well provisioned become insignificant

>  Ultimately these could then be used for daily authentication to the EHR  (or more practically requested on-demand when the system wants to be  sure the user is who they say they are. Meaning lesser and more  convenient means are used at each touch, possibly  RFID/nearField/wireless based)

>  Tie this to NPI - they already have a directory (private) for NPI.

>  I would however make sure that the identity is just an identity. Meaning  the binding to authority is done outside the identity. That is to say  that none of the above use-cases is directly inside the  certificate/identity; but rather these are legitimate uses of the  certificate/identity. The Authority thus can be granted and revoked  while the identity remains constant.

