# HL7 Data Segmentation for Privacy

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/08/hl7-data-segmentation-for-privacy.html
Published: 2013-08-20T16:40:00.001Z
Updated: 2013-08-20T16:40:53.315Z
Author: John Moehrke

---

That which the [S&I Framework](http://wiki.siframework.org/) - [Data Segmentation for Privacy (DS4P)](http://wiki.siframework.org/Data+Segmentation+for+Privacy+Homepage) created, now is being [balloted in HL7](http://www.hl7.org/participate/onlineballoting.cfm?ref=nav). This is a win for those that have seen previous HHS/ONC projects create something only to see it die due to lack of funding, interest, or new administration (e.g. [HITSP](http://www.hitsp.org/)). This is an example of a project that S&I Framework took too the limit of what it could do. It wrote the [Implementation Guide](http://wiki.siframework.org/Data+Segmentation+for+Privacy+Standards+and+Harmonization), and ran multiple pilot projects. So, now the work is brought to HL7. Where, in the words of [Wes Rishel](http://blogs.gartner.com/wes_rishel/), "Change the consensus group, change the consensus.". This new consensus has not changed much, but it has changed somethings I think are critical. I also will be looking closely at the ballot for more things that could be changed.

Much of the new consensus is to harmonize with other works in progress. Such as the efforts I am driving to define a [RESTful equivalent to XDR and XDS with Mobile access to Health Documents (MHD)](http://healthcaresecprivacy.blogspot.com/2013/08/time-to-kindle-fhir-it-needs-ballot.html), and updates to the definition of [IHE ITI Technical Framework Metadata](http://www.ihe.net/Technical_Frameworks/#iti).

In the [ballot](http://www.hl7.org/participate/onlineballoting.cfm?ref=nav)are three things. First, a CDA specification that shows how to identify different segmentation within a CDA document, Second, a specification for XDM metadata for use with Direct, Third, a specification for XDR. Yes, this third part is XDR, but it is called XDS-Metadata-Content-Profile because the current [IHE Technical Framework Volume 3](http://www.ihe.net/Technical_Frameworks/#iti) section 4.0 is called "XDS Metadata". This is about to change, as IHE is publishing new Technical Framework and Volume 3 section 4.0 is now written more broadly to include XDS, XDR, XDM, XCA, and be ready to for others like MHD.

>
HL7 Implementation Guide: Data Segmentation for Privacy (DS4P), Release 1
Chapter 1: CDA R2 and Privacy Metadata Content Profile

- HL7_IG_DS4P_R1_CH1_CONTENT_N1_2013SEP.pdf

Chapter 2: NwHIN Direct XDM Metadata Content Profile

- HL7_IG_DS4P_R1_CH2_DIRECT_N1_2013SEP.pdf

Chapter 3: NwHIN SOAP/Exchange XDS Metadata Content Profile

- HL7_IG_DS4P_R1_CH3_EXCHANGE_N1_2013SEP.pdf

Sample Files
CDA R2 and Privacy Metadata Content Profile

- SegmentedDocumentContentProfileSample.xml

Chapter 2: NwHIN Direct XDM Metadata Content Profile

- SampleXDMetadata.xml

