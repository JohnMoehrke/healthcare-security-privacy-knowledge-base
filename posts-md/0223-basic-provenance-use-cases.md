# Basic Provenance Use-cases 

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/03/basic-provenance-use-cases.html
Published: 2019-03-13T19:46:00Z
Updated: 2019-03-13T19:46:12.187Z
Author: John Moehrke

---

There is a project starting in HL7 to define an Implementation Guide for "Basic Provenance" for use with CDA and FHIR. The motivation for this project, as I understand, is to move the Healthcare industry from providing very little Provenance, to providing Provenance that provides some value.

From W3C PROV we get a very clear definition of Provenance:

>
Provenance is information about entities, activities, and people involved in **producing a piece of data **or thing, which can be used to **form assessments about its quality, reliability or trustworthiness.**

Why Provenance?

The reason to have Provenance is because down-stream the data you create will be used by someone for some reason, and they need Provenance so that they can rely on your data. [The creation of Provenance is work that must be done up-stream](https://healthcaresecprivacy.blogspot.com/2019/03/state-of-healthcare-provenance-today.html), and the agent doing the work to create Provenance is not benefiting from the work they are doing to create Provenance. Emphasis that created Provenance is only needed down-stream a fraction of the time.

So, what are the most valuable down-stream use-cases where Provenance is needed, so that we can assure that up-stream provides that Provenance. Thus the use-case analysis needs to start from the down-stream use-cases to inspire the up-stream work to be done.

Up to now, most work on Provenance has been on the up-stream use-cases, trying to inspire them to create perfect Provenance. This has failed because the up-stream use-case gains nothing from recording or providing Provenance, and thus there is no apparent value to providing Provenance. Where there is not a clear value-proposition, there will not be implementation.

Use-case for Basic Provenance:

We could start from an infinite set of use-cases where Provenance might be needed, but we would continue to not inspire upstream implementation. So we need a sub-set of the use-cases that are clearly valuable.

The critical question I have today is what is the "Basic" set of use-cases where data Provenance is needed, but where it is not available.  The "Basic" set needs to be understood as a reasonable sub-set of the "Comprehensive" set of use-cases where Provenance could be used. This Basic set of use-cases is critical today to inspire the creation of Reasonable guidance that is clearly justified to be imposed.

In Scope use-case

- When I use data, I need to know the Provenance of that data so that I can assess the quality, reliability and trustworthiness.

- Where data are created by my own organization, I can trust my organization mechanism (out-of-scope is managing Provenance within an Organization)

When data are not locally created:

- When I import data, I need to know the Provenance of the data so that I can assess the quality, reliability and trustworthiness.

- The data is asserted as authored by an Organization (In-Scope, assertions of Organization)

- An individual or device is nice, but often impossible to assess quality, reliability, or trustworthiness of some other organizations individuals or devices. Thus this level of data is nice, but not useful. (Out-of-scope is identification of agents more refined than Organization)

- The data within the data may be derived from, or copies of, data originally from a third Organization. (In-Scope, origin of data that is copied or used in derivations/transforms)

Thus In-Scope

- When data are authored and exported to another Organization, there is a need to have Provenance of the authoring and exporting Organization

- When data are exported that contain data that are derived, or copied, from another organization, then Provenance to that original organization is given.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiA5XhWI5-dizu_biVCti7AeU2nozbYJsGMGQ_OEpvwuszyqc7PLd5L9hU8EffBcHeIioa_A0xebyqKVu3-UDWz9XHPiC2V10pi9yTHQbkbN5dyqkxg21Ez91v-Qig5bQi2lgjAXjMWlxFJ/s1600/W3C_Prov.pngProvenance elements

- What data

- Who Organization authored and exported

- Accurate timestamps

- Indication of Provenance action (DerivedFrom, Export, Import)

- Reasonable mechanism to confirm data are authentic

Not-In-Scope for Basic Provenance --> Advanced Provenance

- Provenance use within an organization for their own data -- Organizations do need this for their own purposes, but would not need to conform to a standard.

- Fine grain Provenance on workflow transitions or data lifecycle events

- Fine grain Provenance actor more refined than Organization

- Transform methods or algorithms

- Digital Signature proof of Integrity

- Provenance on De-Identification or Re-Identification

- Provenance on Delete/Destroy/Deactivate activities

Reference:

- [State of Healthcare Provenance Today](https://healthcaresecprivacy.blogspot.com/2019/03/state-of-healthcare-provenance-today.html)

- [IHE Profile of Provenance for Extracted data from Document Sharing](https://healthcaresecprivacy.blogspot.com/2018/09/webinars-on-mhd-and-mxde-available-from.html)

- [Blockchain Provenance Service](https://healthcaresecprivacy.blogspot.com/2019/03/blockchain-provenance-service.html)

