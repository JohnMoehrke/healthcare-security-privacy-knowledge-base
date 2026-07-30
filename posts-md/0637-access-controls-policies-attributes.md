# Access Controls: Policies --> Attributes --> Implementation

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/11/access-controls-policies-attributes.html
Published: 2011-11-21T16:41:00.001Z
Updated: 2011-11-22T16:10:58.484Z
Author: John Moehrke

---

The IHE [Access Control white paper](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf) describes through a diagram that how Policies affect the different resource domains (Users, Patients, Data, etc), and ultimately where the Policy Decision Point gets that information when it needs to make a decision. This simple concept is important to understand in order to determine any gaps in implementation or standards.  The following is Figure 14, found on Page 35. This diagram does not propose to show all policies, all domains, or all attribute sources.   But it does show many.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgHBoBI0UBN6lb9Y6wQASvkNhonNY2rFKHl4hMADIY-srakGJCHW5XSCnKMYI3lt4zAMcZabHBDnxy0AMnt6kq6L4UWFKaWttcb0z6Ry5CKhvdS3BLIJkX9GjqdLRd9Hqz7kDOEuOxZbUAU/s1600/image001-784166.png

The paper goes on to analyze this deeper and Figure 17 (shown below) shows a different view of the attribute domains. In this diagram we can see the different attributes (little red boxes), grouped into the domains (big grey boxes).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg02EeKl5Bepneem1MXwLgdKG2ZM63H8mTJJRp9B46f0V6rkhjqKlKHYV7iV4trOLGhhYM4m_rK4VbxrRHy6brklksnWxM3riVJiuHbONGhvrEeQ2DK3k5IfcJM1hgY5THFyH8zY236_E-w/s1600/image002-784875.png

The paper then shows in Figure 24, the classic XACML engine diagram with annotation on where these issues could possibly be satisfied. Clearly this is just one possible solution,  but it is useful to view concrete models sometimes in order to understand the abstractions.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgvMJNz8ocJDDRXKvSzGmW2JZF7Sn0HOODGu-HYpVpOWMi_84G5vH8nH8iL7Aw5xW-t16SQ8CIiI5XpPhW6dqnD9u8lWQBXPEwKwTY05c7vv2XuSX_bwMz2bxEE4FRY6pfHg8EQkHG-hnkC/s1600/image003-785464.png

This just touches upon a few concepts from the [Access Control Whitepaper](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf). The paper is far more comprehensive than this.

