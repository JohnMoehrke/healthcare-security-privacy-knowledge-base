# Guidance on HTTP Access Denied

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/02/guidance-on-http-access-denied.html
Published: 2016-02-18T15:51:00.005Z
Updated: 2016-02-18T15:51:58.262Z
Author: John Moehrke

---

Normal
  0





  false
  false
  false

  EN-US
  JA
  X-NONE






































































































































































 /* Style Definitions */
 table.MsoNormalTable
 {mso-style-name:"Table Normal";
 mso-tstyle-rowband-size:0;
 mso-tstyle-colband-size:0;
 mso-style-noshow:yes;
 mso-style-priority:99;
 mso-style-parent:"";
 mso-padding-alt:0in 5.4pt 0in 5.4pt;
 mso-para-margin:0in;
 mso-para-margin-bottom:.0001pt;
 mso-pagination:widow-orphan;
 font-size:10.0pt;
 font-family:"Times New Roman","serif";}

A [web-server](http://healthcaresecprivacy.blogspot.com/p/topics.html#FHIR), especially hosting [FHIR](http://healthcaresecprivacy.blogspot.com/p/topics.html#FHIR), must choose the response carefully when an [Access Denied](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC) condition exists. Returning too much information may expose details that should not be communicated. The Access Denied condition might be because of missing but required Authentication, the user is not authorized to access the endpoint, the user is not authorized to access specific data, or other policy reasons.

To balance usability of the returned result vs appropriate protection, the actual result method used needs to be controlled by policy and context.

Typical methods of handling [Access Denied](http://healthcaresecprivacy.blogspot.com/p/topics.html#AC) used are:

- **Return a Success with Bundle containing zero results** â€“ This result is indistinguishable from the case where no data is known. When consistently returned on Access Denied, this will not expose which patients exist, or what data might be blinded. This method is also consistent with cases where some results are authorized while other results are blinded.

- **Return a 404 â€œNot Foundâ€** â€“ This also protects from data leakage as it is indistinguishable from a query against a resource that doesnâ€™t exist. It does however leak that the user authentication is validated.

- **Return a 403 â€œForbiddenâ€** â€“ This communicates that the reason for the failure is an Authorization failure. It should only be used when the client and/or user is well enough known to be given this information. Thus this method is most used when the user is allowed to know that they are forbidden access. It doesnâ€™t explain how the user might change things to become authorized.

- **Return a 401 â€œUnauthorizedâ€** â€“ This communicates that user authentication was attempted and failed to be authenticated.

I hesitated to include 451 "Unavailable For Legal Reasons", but couldn't seriously consider this given the specific [context of 451](https://en.wikipedia.org/wiki/HTTP_451). Which is specifically intended to expose information that is not allowed to be exposed.

