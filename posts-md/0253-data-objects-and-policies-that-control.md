# Data Objects and the Policies that Control them

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/01/data-objects-and-policies-that-control.html
Published: 2011-01-06T01:39:00Z
Updated: 2011-01-06T01:39:45.376Z
Author: John Moehrke

---

In reading the [President's Council of Advisors on Science and Technology (PCAST)](http://www.whitehouse.gov/administration/eop/ostp/pcast) report on ["Realizing the Full Potential of Health Information Technology to Improve Healthcare for Americans: The Path Forward";](http://www.whitehouse.gov/sites/default/files/microsites/ostp/pcast-health-it-report.pdf) among the many comments that I could make on it, I want to focus this blog article on one very specific point. The point I want to discuss is the directionality of the relationship between the Data Object and the Policies that Control them. This point is not specific to PCAST, and has been discussed many times over the years.

In the PCAST report Section "**V. Privacy and Security Considerations**", on page 49 in the following sub-section quoted below is the part I highlight in yellow:

> **A Health IT Architecture for 21st-Century Privacy and Security**

We believe that a universal exchange language based on tagged data elements will allow the design of much better privacy and security protection than currently exists for either paper or electronic sysÂ­tems, for two principal reasons.  First, the ability to tag an individual piece of data with privacy Â­related information, as part of its metadata, enhances privacy safeguards.  Second, because tagged data eleÂ­ment exchange protocols are designed to be efficient for the rapid exchange of small pieces of data, it is feasible to use security protocols that involve multiple exchanges of challenge and response.  We illustrate these points in this and the next subsection.
I will note that I am reading the PCAST report as a set of principles brought together by the small group invited by the Whitehouse. So, First I will note that this is a small group; Second this was a closed group; Third it was not a very transparent process, and Fourth this was a group with some [suspicious membership](http://motorcycleguy.blogspot.com/2011/01/pcast-and.html). But this is not what I want to focus on.

I have no problem with 'tagged data elements', I speak highly of this in [Data Classification -  a key vector enabling rich Security and Privacy controls](http://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html). The actual value of  these tags is part of the discussion.  _ In the future I would like to have a discussion about the practical realities of  their implied definition of an 'element', where I would like to  recommend that a 'Document' is a reasonable size to manage today. _

**Data Objects pointing at the Policies that control them**:

What I want to focus on is the directionality of the model being propagated by the PCAST report. They indicate that the individual piece of data has a tag (metadata) with the privacy related information. I read this that the Metadata points at the privacy policies that describe how to control the individual peice of data (the 'element').

Data Object  --> Privacy Policy

**Policies point at the Data Objects that they control**

This seems like a logical approach, and indeed was the approach that BPPC took in the first version. In the first version of BPPC the confidentialityCode of any document could hold the OID of the BPPC policy. This seemed logical to us at the time too. But what we found out was that this doesn't scale with the age of the data-set. What I mean is that as a patient changes their mind regarding sharing (opt-in, opt-out, etc), one needs to go and change all the metadata tags on all the data, rather than just change the policies.

So BPPC now has the confidentialityCode as a sensitivity/confidentiality classification, and the BPPC policy is self-contained. If the BPPC policy needs to have special rules about a specific Document, the the BPPC policy points at the document. For example when a patient wants a specific episode summary hidden, it is identified by the unique number in the privacy policy.

Privacy Policy --> Data Object

**Indeed as the patient changes their privacy policy, or the organization changes their privacy or security policies; these changes should be reflected in the privacy/security policies, not in changes to the data. The data hasn't changed, the policy has changed.**

**Metadata describes the Data as facts, and Policies have the specifics about how to control the data**

In fact the Data object does have metadata that is used in the Access Control decision. Metadata that does include a confidentialityCode, classCode, formatCode, Patient Identifier, Facility Identifier, Author Identifier, etc. But I don't see these as 'pointers', but rather 'security context attributes'. See the IHE white paper [Access Control](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf) - Published 2009-09-28

**I am optimistic that the authors were not trying to impose an architecture, but rather identifying a principle. As a principle the directionality should not matter. **

PS. software engineers might find this useful, or might be confused by it -- this is like the first-year school assignment in linked-lists, stacks, and fifo... the obvious direction of the pointers is not the right direction to implement. Ok, that might not help at all...

