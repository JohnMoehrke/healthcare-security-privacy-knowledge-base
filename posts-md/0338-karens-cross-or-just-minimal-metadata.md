# Karen's Cross or just Minimal Metadata

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/08/karens-cross-or-just-minimal-metadata.html
Published: 2012-08-28T02:26:00.001Z
Updated: 2019-11-06T15:15:48.913Z
Author: John Moehrke

---

I made the Karen's Cross [observation about the NPRM](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-170202-transport.html), but I seemed to have failed to make it clear. The transport identified in Meaningful Use 2 as (b) is NOT a transport, it is a functional specification for a service that converts Direct to/from XDR. It is a service specification. It is NOT a transport specification. Both sides of this service specification are fully specified. On one side is Direct, on the other side is XDR. What makes this more difficult to understand is the (a)+(b) or (b)+(c) math...

The alternate view is that ONC just means the minimal metadata specification. I am hopeful this is the right read.

**Â§ 170.202 Transport Standards. (b) ONC XDR and XDM for Direct Messaging Specification (incorporated by reference in Â§ 170.299).**

The specification is properly identified, you can find it [here](http://healthit.hhs.gov/portal/server.pt/community/healthit_hhs_gov__direct_project/3338), it is actually [this](http://wiki.directproject.org/file/view/2011-03-09%20PDF%20-%20XDR%20and%20XDM%20for%20Direct%20Messaging%20Specification_FINAL.pdf), and comes from [XDR and XDM for Direct Messaging](http://wiki.directproject.org/XDR+and+XDM+for+Direct+Messaging+Working+Version).

If they meant only to require the metadata portions as mandatory, they should have said that. Actually these metadata requirements have been incorporated into IHE XDR as a specific option. So they could have identified this option.  But they did not, they said the WHOLE SPECIFICATION.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhcZKUelKRrZ_L1T-D-HotkKkwzpSPC2n5Zs2OBnkmNSHz3qa9TZ2FSQ7e1d1XBMgo4Xis3WFAYAqlg2z7YMXExlAOkoyvjWfMWD8zOz0XwhU74zB-sQ9z2gJshNo0UMbzzy9AVNQG28xhB/s1600/NHIN_Direct_Model_v0.2.png
Karen's Cross

The (b) transport is pointing toward a specification that was written as part of â€œThe Direct Projectâ€. This specification shows how interoperability can be achieved when one system is using purely the secure e-mail of â€œThe Direct Projectâ€ and another system is using IHE-XDR. Both specifications are PUSH, both support the same high-level goals. They are simply different transport/session level encoding. This specification shows the relationship between the e-mail transport and the IHE-XDR + SOAP transport. For example it explains how an XDR submission set with multiple documents can be converted into an XDM submission set with multiple documents, the result zipped according to the XDM option for â€œsecure e-mailâ€, and this ZIP file placed into a secure e-mail message following â€œThe Direct Projectâ€.

>
The following table shows the cases of conversion that SHALL be performed.

**Receivers**

RFC5322 + MIMERFC 5322 + XDMSOAP + XDR
**Senders**RFC 5322 + MIMENo ConversionNo conversion

- receiver expected to be able

to use non-XDM format- Transport Conversion

- Metadata is created
RFC 5322 + XDMNo Conversion

- receiver is expected to be able

to handle XDM packageNo conversion- Transport conversion

- metadata simply transformed
SOAP + XDR- Transport conversion

- metadata is simply transformed

- delivered as XDM package- Transport conversion

- metadata is simply transformed

- delivered as XDM packageNo conversion

This is a proxy or bridging specification. It isn't a specification that EHR technology would implement. It is the bridging technology, a proxy service, that allows for mostly-seamless interaction regardless of if both sending and receiving support the very same transport. It is a specification that shows how two radically different transports can be made to work by a proxy system.  This proxy or bridging service would typically be running at the edge of one type of network as a transparent gateway to the other network.** So there would be only a few of these proxy/bridge systems.**

**Why did we need Karen's Cross?**

Back when the Direct Project was working hard on defining the specification and other parts around it. There was a recognition that those that can talk Direct, and those that can talk XDR can talk to each other if we work out exactly how to convert from one to the other.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEifsYKUlgpliueHi0YW5uXJMOJSk3bKdjzIehyphenhyphen2kGrW3w7pi49sNTtTIp2khNCofpN5Kqq1sSsAl0wSOVpb9Amwc7bs5mP9mTpj42Pz4rvuPmB6fFBYW5jcFnSl1VKbzftyMwhlLBnaQ7a3/s1600/NHIN_Direct_Model_v0.2.png

This was graphically shown on the white board by Karen, and thus became known as Karen's Cross. The diagram did get cleaned up and is shown at the above, pulled from the Direct project wiki article on the [Intersection with Exchange](http://wiki.directproject.org/Intersection+with+Exchange) . The top of the Cross shows two systems communicating using the Direct specification, the bottom shows two systems communicating using the NwHIN-Exchange push transport (which is XDR). If one stays totally on top, or totally on the bottom there is no problem. But if you want to cross over then you need the RED arrows. It is these RED arrows that make up the â€œ[XDR and XDM for Direct Messaging](http://wiki.directproject.org/XDR+and+XDM+for+Direct+Messaging+Working+Version)â€.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjxQFrunPcXLQkEQHbJubDpubQLzhRHwV3LkW-fNO6FR763NKvZxOwTnKT2AlcMGz2I2iYA-8AQXt_nTipQB_EG_rxX233jLIzdYBRpyF-Qb1g2364_NRhyj2auTrzTSB5XYqYBppSFcnd4/s1600/NHIN-Direct-Deployment-Models-E2-r2.pngWhat Karen's Cross shows is that the end systems don't need to know what the technology of the other system is, and that the conversion is done using automation transparently. In Deployment Model terms, here is the diagram for the RED arrow from the top left to the bottom Right. It shows how this system converts a Direct e-mail message into an XDR message delivered over the NwHIN-Exchange.

The RED arrow from the bottom left to the top right is shown here.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjOYWrwoTBx6AQlTV0VXeS1sydMZrnHpTbNTipWoiiS-inoKmrXN_xyJIu7_tHpSc6M3R-TvYouk-0BLDlJnG5DyZqNvJsTFu76bGn_XG1vz_eqZSc5dpei1_Pa3FYrCu5H4bNnLKW3NM9Q/s1600/NHIN-Direct-Deployment-Models-E2-r2.pngThere is far more description done at the Direct wiki [Deployment Models](http://wiki.directproject.org/Deployment+Models) page. I encourage even a quick look at this. This is simply further proof of the magic of the use of Standards, the little blue box.

**Conclusion**

It is very possible that all that ONC wanted to pull from this specification was the minimal metadata. This is a reasonable thing to pull from the specification. This minimal metadata recognized that some metadata that IHE had originally identified as required simply isn't always going to be available.  However if this is what they wanted to do they should have said so. IHE has adopted this minimal metadata directly into XDR specification and XDM specification -->  [Support for Metadata - Limited Document Sources](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_Support-for-Metadata-Limited-Doc-Sources_Rev1-1_TI_2011-08-19.pdf). So there is no need to use such specification pointing gymnastics.  I think I am going to assume that all they intended was the minimal metadata.

The whole transports could have been said far more simply using IHE profiles. There is NO technical difference. It is so frustrating that all this specification complexity is because there is a desire somewhere to keep IHE profiles out.

