# Simple definition of ABAC and #FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/08/simple-definition-of-abac-and-fhir.html
Published: 2024-08-23T13:35:00.001Z
Updated: 2024-08-23T13:35:31.267Z
Author: John Moehrke

---

ABAC: data has "attributes" (elements), that may be summarized into "sensitivity tags" (SLS) that are also attributes. Policies indicate "classifications" of data that indicate how data are to be protected based on some attributes (may be sensitivity tags, but can be any attributes). Policies indicate what "clearance" (aka roles) have access to each data "classification". Users are grouped into "clearances" (aka roles); this might be a FHIR PractitionerRole, CareTeam, RelatedPerson, and Group; but might be something non-FHIR (aka OAuth, LDAP, etc).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJxJ_h2PxSwoJXyUOR3HqdCBxyP-5cQW7NQ7XbpZSkCz0-r5A3LAjGJjBEANNRc70-7b57qL1GGkonRli5PKYsgAyE8rX62Z_JCbLnSaj_0SNtiqqaMnQWIrXCRuhvsfFiKrTIEs7BbL10SaH130phk1adrLoFwxWswm_e-b-i8UT8Tv65O8sU0S3r_029/s514/tagged_duck.JPG

Thus:

- user have one or more "clearance"
- data have one or more "classification"
- access is granted if "clearance" permits "classification" (often said to be clearance==classification)

Note key ABAC words are quoted above: "attributes", "classification", "clearance" are the most important.

Now, that is just formal.... adjustments can be made for complexity of policy or simplicity of policy or risk addressing policy...

Must security tags be used?No, ABAC is based on Attributes. So any attribute can be used.

A good example is Observation.category code of 'vital-signs' -- indicates vital signs that are normal health information of no stigmatizing sensitivity. No real need to dig deeper (maybe).

Some ABAC rules can't be implemented with security tags. For example rules related to the author, or rules related to a timeframe, etc. These would address these attributes (elements) in the data.

Then why use security tags?Using security tags, and a security labeling service, allows for the Access Control implementation to be less aware of the data structure. Meaning that the Security Labeling Service is where all the knowledge of the data model and information model exists. The SLS must understand FHIR. The SLS must understand medical knowledge, and the relationships between the complexity of medical knowledge. The SLS boils all that down to a set of codes and places those codes into a common place in all the FHIR resources, the .meta.security element.

Thus the Access Control decision and enforcement need only look at that one element. There is no need to understand that Observation.code is an important attribute.

Thus the above 'vital-signs' rule would be in the SLS, not needed to be implemented anywhere else.

Does the patient tag the data?It is possible for the data to be tagged by the patient, however this is not all that popular of a way to implement the need for patients to be able to identify sensitive data. Better for the Patient's Consent to list out the identifier of those resources that they consider sensitive and thus an explicit rule would exist in the FHIR Consent.provision covering these data. This has the added benefit that the data do not get changed when the patient decides they are sensitive or decides later they are not sensitive. Thus the data are always only Created or Updated by the custodian of the data.

Does the clinician tag the data?It is possible for the data to be tagged by the clinician (Practitioner). This is typical in the Military Secret workflows, but has been shown to be not workable with clinicians. Thus this idea is generally not accepted as a way for the tags to get set.

Do data security tags change over time?anything is possible, but the assessment of the data should be purely about the data. That assessment should not be based on how the data are to be protected or made available. Thus a piece of data that is sensitive to "gender issues" will always be about gender issues and not change.

The one thing to consider is that medical knowledge does change. There was a time when specific drugs were for their original and non-sensitive reasons; but we learned that that drug is also helpful for addressing drug addiction. Thus getting that medication would now be sensitive when it was not before. Thus there is sometimes when medical knowledge changes that data may need to be reassessed.

Here are some of my [previous articles on Access Control](https://healthcaresecprivacy.blogspot.com/p/topics.html#AC)

