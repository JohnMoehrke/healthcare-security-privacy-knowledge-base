# Have MHD Clients? What Infrastructure should you deploy>

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/02/have-mhd-clients-what-infrastructure.html
Published: 2020-02-29T23:34:00.006Z
Updated: 2020-02-29T23:34:58.154Z
Author: John Moehrke

---

I am working up a set of decisions around the use of XDS vs XCA vs MHDS. In the past XDS was used when one wanted to create a Document Sharing HIE, and XCA was used to federate XDS Document Sharing HIE and add in EHR based Document publications. Now IHE has the MHDS infrastructure, so the question is likely to come up.

Mostly if you have XDS clients, you need to continue to use XDS or XCA. -- Add MHD as an API to enable MHD clients

If you have no legacy, then it is possible that MHDS is the right platform for you.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgXa9ya0PPPY3VLEgs6qxiFzvqCMus53c3CmcKbl1tkO1q3TuOkyXz7mAO0fhkPh_QdkVAW0bEqYD8OljhaMN_tfUUR1ctVlaziW2RlgJZSuQAPWWAl2vXC4u6OM6OoroWTXJitJ5nuEgN2/s1600/XDSonFHIR-MHD%252BmXDE%252BQEDm.png

There is likely future IHE projects that will federate MHDS, enable connection of MHDS to XCA federations, and add XDS api to MHDS. All of these are unusual configurations, so will need market demand to come to the table to make it clear they are needed, vs simply being academic gaps.

