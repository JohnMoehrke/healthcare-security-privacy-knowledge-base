# HIE future bright -- FHIR API to Document Sharing

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/11/hie-future-bright-fhir-api-to-document.html
Published: 2017-11-28T14:39:00.004Z
Updated: 2017-11-28T14:54:44.782Z
Author: John Moehrke

---

I think the most useful value-add that an HIE can add is an API that is based on FHIR. This is true of an XDS based HIE, Regional Exchange (XCA), Vendor based EHR, nationwide Exchange, and Direct HISP. It is something I expected to be more included in the [WISHIN Future is bright conference.](https://healthcaresecprivacy.blogspot.com/2017/11/future-of-hie-is-bright.html)

At an HIE level:

- Initially I would focus on enabling Apps to query for and read the data available in the HIE.

- Later adding capability to publish new content.

- Initially I would focus on Document sized objects,

- Later moving to more element level.

- Likely move to publishing Documents before element level access

- For targeted Apps, that is the most highly vetted and trusted, they will be Reading and Writing at the Organization level.

Documents
There has been much focus lately on the publication side of Document Sharing. Great advancements in CDA content formatting. This work done largely by a set of people that work within IHE Patient Care Coordination (PCC) and the HL7 StructuredDoc workgroup. Both of these groups do much of their work together. Trying to keep up with the number of calls that they have will fill half of your week, every week, week after week.

So today we have really good specifications of how various types of Documents should look like. The C-CDA Implementation Guide is considered the pinical of this work.

Why Documents? Well I [covered](https://healthcaresecprivacy.blogspot.com/2013/11/distinction-between-documents-and.html)that before, but the short answer is that because we are looking at communicating data outside of one organization, we need to carry with the data a good amount of [context of that data](https://healthcaresecprivacy.blogspot.com/2011/10/critical-aspects-of-documents-vs.html). Not just Provenance (Who, What, Where, When, Why), but also care setting, intention of the event, duration of the event, etc... This context is very important to the meaning of the data contained. Especially if the data is historic.

Note that Documents does not just mean CDA. A [Document Sharing environment can share FHIR documents](https://healthcaresecprivacy.blogspot.com/2017/01/fhir-documents-in-xds.html).

Apps accessing Document Sharing (HIE)
In the case of a Document Sharing exchange (XDS, XCA), the API would enable an App to query for a specific Patient, and any Documents that are available for that patient. The IHE [PDQm](http://wiki.ihe.net/index.php/Patient_Demographics_Query_for_Mobile_(PDQm))and MHD profiles are defined to do just this. One just needs to define carefully which parts of these profiles that are implemented. These parts are separately defined in the profiles so that they can be chosen alone.

The HIE would implement the [PDQm Supplier actor](https://simplifier.net/IHEPatientDemographi/IHEPDQmsupplier). This actor has an API that can be used to query for a Patient record using a set of query parameters. There is no special magic in the IHE [PDQm](http://wiki.ihe.net/index.php/Patient_Demographics_Query_for_Mobile_(PDQm))profile, it is just a FHIR Patient. By being an IHE Profile, the capability that is needed is easily specified as simply an [IHE PDQm Supplier actor](https://simplifier.net/IHEPatientDemographi/IHEPDQmsupplier). The only other actor in the profile is the [IHE PDQm Consumer,](https://simplifier.net/IHEPatientDemographi/IHEPDQmconsumer) which is what the App would implement to execute searches.

The MHD profile needs to be approached similarly. In this case the IHE MHD profile contains four Actors, only two of which are needed for Query/Read. The other two are used for Publication.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1olM2Lla_cQkzFSp6wImSJ5oqeGULJwLWleOodYIyefk9kJoNTzrS8Yepb20Id-99_gSmRiDP-30p7ra4joPihagerFMdiqrBdAVvk_o5-MG_Stv0S3eCry26sCUlylrKJ09JjKeg3iBa/s1600/MHD-ReadOnly-Server.pngThe Document Consumer actor is the one that the App would implement, and the Document Responder is the actor the HIE would implement. This mirrors the Query/Retrieve side of XDS and XCA; so this same specification works for an XDS based HIE as a XCA based HIE or Community Exchange.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj7Rcxp3ltt_17N24ojjP-PvBK756DWF1jKwdah-_Q812VR6naPdyL1gy-OOreMvghOzb02vRE6YI5lgwA35UiwV7IM5iHHPbRQwHTqmHZI86sc4BOCJfjJGlOqHByU728kRf_VHnaz4pjq/s1600/Slide2.PNG

Another simplifying step that the Document Responder can do if it knows that SubmissionSets / DocumentManifests are not all that useful to implement the "Find Document Manifest [ITI-66]" as a stub that always returns an empty Bundle. This is not a recommendation in the IHE MHD profile, but it is a fact that if there are no SubmissionSets / DocumentManifests available then zero results is a valid response.  An App that uses the "Find Document Manifest [ITI-66]" transaction will get zero results found. More likely is that there will be no realistic Apps that look for SubmissionSets / DocumentManifests. This is not to say that they are not useful, but rather that they are useful only in specific and highly complex use-cases.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhweqZ8AuAnqXisAtLyMfwztdg5i6NA9Gxd6xPG1Tts2gwnZCis7Ts_o5hb2W1mG-Fp6u1dbL5fvrzEcyZMjKeSQDD_FQ8nfhgDdDdzSew-MwRBUbxESkLKZ9rS3SOyJJZzBtAx9hraj4IO/s1600/image005-742659.png

This kind of a situation can exist in an XCA environment, as there is no mandate that all Communities are XDS communities. It can also happen when the API is being served by an EHR, PHR, or other data source. The only time that SubmissionSets / DocumentManifests are expected is when the Document Responder is an API to an XDS environment. This setting does have an Option "XDS on FHIR".

Direct on FHIR

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh7ojhPy4mj1o1ufP5T-PfQB5C2DQIrw6SWxophoJ9leH8WJV3obySp9PtPDW6w0RMK-Gxna0KGHjYxk-aXhQOE58ZKlu_n-q6JZjtuVRTWPoIHJh70FS9HUuaNaaTOGpaY_Rgv6yzIimf6/s1600/MHealth-Diagrams-Direct.png

The last configuration I want cover in this article is to express how the MHD profile can be used as an App API to a Direct based HISP. If you don't know what a "Direct HISP" is, then this section is not useful to you. But if you know what a Direct HISP is, then I think that adding a MHD API to your HISP is a great way to enable Apps that use MHD as a consumer to also be able to use your HISP as a document source.

In this case I might suggest that both sides of MHD be implemented, so that the App could Send Direct messages using the Publication API defined in MHD. This is done just like is done with XDR today, but using the more easy to implement FHIR objects.

Security and Privacy
As with any Interoperability API dealing with Healthcare information, Security and Privacy

are important. IHE doesnâ€™t mandate a specific Security or Privacy model, as that would be Policy. But IHE does encourage the use of [ATNA](http://wiki.ihe.net/index.php/Audit_Trail_and_Node_Authentication), and [IUA](http://wiki.ihe.net/index.php/Internet_User_Authorization). This also described on the [FHIR Site on the Security](http://hl7.org/implement/standards/fhir/security.html) page. The [SMART](https://healthcaresecprivacy.blogspot.com/2015/10/fhir-security-initiatives.html) solution has a large following, and thus I need to recommend it over the IHE solution at this time. There is also [HEART](https://healthcaresecprivacy.blogspot.com/2016/01/fhir-oauth-scope.html). I am hopeful they [eventually merge and improve](https://healthcaresecprivacy.blogspot.com/2017/05/fhir-oauth-scope-proposal-using-fhir.html).

Conclusion
First step is to add a Document based Query/Retrieve interface to the HIE. This leverages all of the existing infrastructure, and all of the existing documents that have been published and made available. It benefits from all the characteristics of a Document, while leveraging the ease of implementation of FHIR.

So, an HIE regardless of architecture should implement a PDQm Source, and a MHD Document Responder. Wrap that in security from either IUA or SMART.  Because the Apps are already being written to this API...

Also see my [FHIR Topic](https://healthcaresecprivacy.blogspot.com/p/fhir.html)

