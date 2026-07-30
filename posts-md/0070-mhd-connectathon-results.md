# MHD Connectathon Results

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/01/mhd-connectathon-results.html
Published: 2015-01-30T16:21:00Z
Updated: 2015-01-30T16:21:55.067Z
Author: John Moehrke

---

IHE Connectathon did informal testing of [Mobile access to Health Documents (aka #MHD - #XDS on #FHIR.](http://healthcaresecprivacy.blogspot.com/2014/11/fwd-call-for-participation-mhd-xds-on.html)We had 9 different implementations testing at the Connectathon. : Qvera, Caradigm, Relay Health, CareEvolution, CRG Medical, Allscripts, EMC, ONC â€“ Dragon, and an individual effort.



https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjd_GtOV4SYDmfboLe8jA6ULGh6sqTZU-A04TaAl7OB2wG-flSwaedeaF6C-0z-IWOMSVQ0fyQSRP8ppuQ_7jJr8tADygn3IvOqPeYzFfFKG0Xcbk7l6fSPlmf3KzezFZkH0TbYHH1E3mwh/s1600/image004-740773.png

MHD has a wide variety of deployment models, leveraging the simplicity of HTTP REST and the data model and interaction model defined in FHIR.  One use of MHD is as a front API to XDS, but the profile can also be used for point-to-point PUSH (similar to XDR), or access to a Community (like XCA), or just as a simplified API to an EHR or a Direct HISP.

Among this august group they succeeded to cross-test in 25 different pathways. Which might sound large or small depending on how you do the math, but I will assure you this is just shy of all possible combinations of the Actors implemented.

There was a much larger use of XML than JSON. All publication side were done using XML.

Most gratifying for me was that we were able to point the Document Source and Document Consumer implementations at the [Publically Available FHIR servers](http://wiki.hl7.org/index.php?title=Publicly_Available_FHIR_Servers_for_testing). Using Grahameâ€™s server and Ewoutâ€™s server. This was a fantastic proof that the IHE profile is truly a profile of FHIR, and not a deviation or special case. IHE still has some work to make this formal, in the eyes of HL7, but we now have the joint workgroup to help make this happen.

Overall the group identified a small number of open issues that will be fed into the Public Comment. Most of these are typos, most of them leftover from the first revision of MHD. Each of these we discussed how to resolve. The biggest issue on how to handle the Minimal Metadata vs Full Metadata, where we will leave it as is for now, but after HL7 FHIR DSTU2 we will pursue creation of two formal profiles to identify the differences.

The conclusion is that the MHD profile, once the issues are resolved, should move to Trial Implementation. Everyone understands that this is based on HL7 FHIR DSTU1; which means we will need to adjust again this summer when DSTU2 gets finalized.

This conclusion was so definitive that the MHD testers have been invited to join the HIMSS Interoperability Showcase, as participants within the normal workflows. AND the next IHE Connectathon in Luxemburg will be testing MHD more formally.

For more [on mHealth](http://healthcaresecprivacy.blogspot.com/p/topics.html#mHealth)

