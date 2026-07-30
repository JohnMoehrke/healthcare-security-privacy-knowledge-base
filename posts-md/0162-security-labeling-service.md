# Security Labeling Service

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/09/security-labeling-service.html
Published: 2022-09-21T11:52:00.002Z
Updated: 2022-09-21T11:52:37.712Z
Author: John Moehrke

---

Data may be â€œNormalâ€ medical data or â€œRestrictedâ€ medical data. The distinction is for this IG focused purely on data classification for sensitive topics.

The various clinical Resources in FHIR are very complex and highly variable. Although Observation is the most often used Resource, sensitive data may exist in ANY other FHIR resource including Allergies, Procedures, CarePlan, Medication, Problems, DiagnosticReport, DocumentReference, ImagingStudy, Genomics, etcâ€¦ By assessing the sensitivity classification and placing that assessment into a well-known location found in all FHIR Resources - .meta.security, the Access Control does not need to be aware of the kind of FHIR Resource, it can just process the data as a DomainResource and simply look at the .meta.security element.

The classification of data into sensitive topcs is the role of the Security Labeling Service (SLS). The SLS inspects the data, and may use the context of the data to identify the sensitivity classification. It is expected that most data will not be considered sensitive, aka â€œNormalâ€.
Data tagging ConsiderationsSome data are direct and clearly in a sensitive category. But there can be indirect relationships, such as three medications prescribed together are a clear indication of a sensitive category but are not individually.

Some data may also not be sensitive in the coding, but rather sensitive in the narrative, this would be poor data quality but it is a reality that should be considered. Thus an SLS may need to include some Natural Language Processing to find sensitive human words in narrative.

Some approaches use well-defined ValueSets, where others use a list of words. The list of words can be search across the data without regard for the data structure, which has the benefit of not needing to have the SLS data schema aware. The list of words can be codes, such as snomed numeric codes.
Architecture approaches to data taggingWhen the SLS is executed is a systems design decision. General alternatives are:
Pre Tagging dataTagging the data as it is created, updated, or imported.
Pre categorize data within the EHR databaseEHRSLSBatch/New/Updatetagged results
**

Which has the advantage that the access to the data does not need to assess the data, it just uses the existing sensitivity tag.
Query/Use enforcement based on pre-calculated SLSEHRAppACEQueriestagged resultsenforce rules
**

This solution is likely to be more performant on use of data, but may not have as accurate sensitivity tags due to the dynamic nature of policies around sensitivity, and dynamic nature of data relationships. This solution also requires that the EHR database support data tags.
Use time tagging datahttp://build.fhir.org/ig/JohnMoehrke/ConsentWithSegmentation/branches/main/sls.html#use-time-tagging-data

Alternative is that the data are temporarily tagged prior to use, thus the sensitivity is freshly determined and used only for that access enforcement
Real-Time sensitivty classification at Use/Query/ExportEHRSLSAppACEQueries/Uses/ExportQuery resultstagged resultsenforce rules
**

This solution does not require that the EHR database be updated to support tagging of data, but may incur a performance impact on data use.
Example ValueSetsOne way to understand a very basic SLS is that it looks for clinical codes in the data. It might do this using ValueSets, but likely would need to do this in a more performing way.

There are [some valueSets that were authored 9 years ago by SAMSA](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1142.58/expansion/Latest)(requires a free login to see the details). This was during a critical point in the early development of the use of Security Labeling. These valueSets are old, but they are informative. Any standards based managed ValueSet would need to be used as input to a organizational use in an SLS. So the fact these are 9 years old is not as important as that they are a well informed base to start with. I have put the SAMSA valuesets into some ValueSets of my own.

- [Set of codes that indicate ETH](http://build.fhir.org/ig/JohnMoehrke/ConsentWithSegmentation/branches/main/ValueSet-SlsSensitiveETH.html)
- [Set of codes that indicate PSY](http://build.fhir.org/ig/JohnMoehrke/ConsentWithSegmentation/branches/main/ValueSet-SlsSensitivePSY.html)
- [Set of codes that indicate SEX](http://build.fhir.org/ig/JohnMoehrke/ConsentWithSegmentation/branches/main/ValueSet-SlsSensitiveSEX.html)
- [Set of codes that indicate HIV](http://build.fhir.org/ig/JohnMoehrke/ConsentWithSegmentation/branches/main/ValueSet-SlsSensitiveHIV.html)

Example Data with tags

- [Observation of Alcohol Use](http://build.fhir.org/ig/JohnMoehrke/ConsentWithSegmentation/branches/main/Observation-ex-ObservationAlcoholUse.html) marked with ETH
- [Observation of a Blood Sugar](http://build.fhir.org/ig/JohnMoehrke/ConsentWithSegmentation/branches/main/Observation-ex-bloodSugarB-0.html) not marked sensitive

http://build.fhir.org/ig/JohnMoehrke/ConsentWithSegmentation/branches/main/sls.html#example-data-with-tags

