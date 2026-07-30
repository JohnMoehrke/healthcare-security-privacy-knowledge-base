# Building a MHD Client before MHD is DSTU2 aligned

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/11/building-mhd-client-before-mhd-is-dstu2.html
Published: 2015-11-20T13:32:00Z
Updated: 2015-11-20T13:34:25.708Z
Author: John Moehrke

---

Normal
  0




  false
  false
  false

  EN-US
  X-NONE
  X-NONE











  MicrosoftInternetExplorer4


























































































































































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

To implement a Document Consumer is the easiest of the MHD actors. It is also the one that has the best opportunity for an application developer to be creative and add value. So I will focus on Document Consumer actor from MHD.

XDS Profile found in the FHIR specification:
I would caution against the use of the xds profile in FHIR. It was started by Grahame and I, but it didnâ€™t get any attention between the DSTU1 and DSTU2 stage. So the only thing you will find there is minimal fixes to cause the FHIR specification to build. Fixing this profile in FHIR was part of my motivation for creating the HSI workgroup in HL7, however that workgroup is restricted to not owning anything in HL7. So they couldnâ€™t take ownership and improve it.

This means that the xds profile in FHIR might be right, but it might not. I simply donâ€™t know, because we never had time to work on it.

 Use DSTU2, following the spirit of MHD
Reminder, that IHE is going to be [updating MHD to match HL7 FHIR DSTU2](http://healthcaresecprivacy.blogspot.com/2015/11/ihe-updating-fhir-profiles-to-align.html) So,
 you should really focus on the â€˜spirit of MHDâ€™, while implementing HL7
FHIR DSTU2. This is not what the MHD profile is based on today, but will
 be what it is based on in early 2016.

FHIR DSTU2 [http://hl7.org/implement/standards/fhir/](http://hl7.org/implement/standards/fhir/)

As a Document Consumer you mostly use FHIR as it is defined. Focusing on [DocumentManifest](http://hl7.org/implement/standards/fhir/documentmanifest.html)and [DocumentReference](http://hl7.org/implement/standards/fhir/documentreference.html)

There is a Mapping you can find on these FHIR Resource definitions to
the XDS metadata definitions. These mappings are pretty direct. Mostly
because these FHIR Resources were directly created as
modeled from XDS. Find the [mappings to SumissionSet](http://hl7.org/implement/standards/fhir/documentmanifest-mappings.html#xds) and [mappings to DocumentEntry](http://hl7.org/implement/standards/fhir/documentreference-mappings.html#xds).

 Testing prior to European Connectathon
IHE will not be testing MHD at the [USA connectathon](http://www.iheusa.org/connectathon-registration.aspx), because we don't yet have the MHD ready and therefore they also have had no time to develop test tools. However there is intention to have MHD ready for [European Connectathon](http://www.ihe-europe.net/connectathon/cat-2016) - April 2016 in Bochum/Germany.

Before then, I
 would recommend you simply point your client at Grahameâ€™s FHIR server, or any of the other [Publicly Available FHIR Servers](http://wiki.hl7.org/index.php?title=Publicly_Available_FHIR_Servers_for_testing).
This is what we did at the IHE Connectathon last year with DSTU1. As a
Client you should not be able to tell if the server is just a FHIR
server, or if it is a proxy to XDS, or if it is a proxy to something
else (like an API to an EHR).

The problem of course is that as a Document Consumer actor, you can only query against the resources found in the FHIR server you are pointing at. I wish I had a good answer to this. Developing good examples would be very helpful. Even better is to get these good examples into the FHIR specification, as then they automatically end up in Grahame's FHIR Server. But today there isn't much default content.

API Tooling
If you target FHIR DSTU2, then the HAPI tools that are published in the FHIR specification are perfect for you to use. which has many tools [http://hl7.org/implement/standards/fhir/downloads.html](http://hl7.org/implement/standards/fhir/downloads.html)

Community
 There is a google group for [MHD implementers](https://groups.google.com/forum/#!forum/ihe-mhd-implementors), Just ask to join, I will accept any asks.

There is also good help from the [FHIR community.](http://wiki.hl7.org/index.php?title=FHIR)

Conclusion
We are not where we want to be, but then if we were we would want to be further... So accept where we are and help move us to where we should be. By trying to implement as I have described, you will learn. What you learn, I encourage you to share with the community. The more we share, the more the FHIR and IHE specifications get better. The better they are, the more likely Interoperability happens with quality and efficiency. So please help in what ever way you can. Not everyone is asked to write specification, but everyone can contribute. The smallest question posted to a mailing list can be the most valuable thing.

[Past articles on the topic](http://healthcaresecprivacy.blogspot.com/p/topics.html#mHealth)

