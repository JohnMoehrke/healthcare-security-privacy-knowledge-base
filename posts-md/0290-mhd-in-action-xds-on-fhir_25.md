# MHD in action -- XDS on FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/02/mhd-in-action-xds-on-fhir_25.html
Published: 2016-02-25T15:07:00Z
Updated: 2016-02-25T15:07:55.094Z
Author: John Moehrke

---

Two independent projects this week sent to the FHIR mailing list their diagrams of how they are using FHIR as an API to classic XDS environments. I thought both diagrams were fantastic illustrations of the power of the [MHD, PIXm, and PDQm profiles](http://healthcaresecprivacy.blogspot.com/2016/02/mhd-pixm-and-pdqm-aligned-with-fhir.html). The power of using FHIR as a simplifying API to classic environments. These diagrams are not only technically wonderful, but also beautiful.

I have asked for permission to republish these diagrams. They are not my diagrams.

**From the Jose Maria Olmo Millan working on the prevvy project, writes:**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiRAhv1HS6RG1UHqn20VJL-oiPUv0rOBVWgT7UcezPPpKzM2SoCgnD_Kzh0LilJcrrdCbbFZXafq21E4EJbAg2NRrrOuT7fd9p8PCkSycdlkz221WHmgMGhtYpRu5hMfhlSkLhC5_CW53w9/s1600/image001-793228.png

We are using a similar approach for our patient centric platform ([prevvy.co](https://urldefense.proofpoint.com/v2/url?u=http-3A__prevvy.co&d=CwMFaQ&c=IV_clAzoPDE253xZdHuilRgztyh_RiV3wUrLrDQYWSI&r=B4hg7NQHul-cxfpT_e9Lh49ujUftqzJ6q17C2t3eI64&m=q9PZK16KOprzyzqIVhNMLqpXUqdPiYm4nrzMRMq7wHk&s=0-Kiop5Z-YT1zPF5OmR16l_oNcxHhHz0Iuw7q_K0RYE&e=)). We have developed a FHIR/IHE server and we store CDA and FHIR documents in the same IHE infrastructure using IHE metadata capabilities.

 ..

FYI, this is our  FHIR/IHE/DIRECT architecture

**From Ioana Singureanu working on SAMHS BHITS project writes:**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiMG9UfHyc2FsLzmTfXNBcscHrqlZGmc81AcfRAQmv9JYcpiXeVva3kMOrhJ0A8Hoc8Hhb60xItA7ybEwL8f8uKJeMtxS893Uv7PVfwTia6EUEaDXW-dEEgjYEIHrR8jErPd3xs2K2RnrY8/s1600/image002-794956.jpg
I'm supporting the SAMHS BHITS project to create a standard-based, open-source patient portal application (My Health Compass).  Our project will use FHIR as an abstraction layer for the application. Our IExHub will expose FHIR services to the application while an  HIE using standard-based SOAP services (IHE ITI) and/or HL7 Version 2 transactions.

We are not using FHIR for information exchange right now but when EHRs will support FHIR, the our users will be able to  directly to one more EHRs to read and, in some cases, even create new resources (e.g. privacy consent).

Here is an overview of the component architecture:

Note that SAMHS will be at HIMSS next week, seek out Ken Salyards out at the FHA area of the HIMSS Interoperability Showcase.

Note they are also doing more than this, specifically there is also discussion on CDAFHIR. Ill let Keith speak about that.

These are great examples. Well done!

