# Considerations for Implementing the SLS RI

Originally posted: https://healthcaresecprivacy.blogspot.com/2026/04/considerations-for-implementing-sls-ri.html
Published: 2026-04-30T15:00:00Z
Updated: 2026-04-30T15:00:00.110Z
Author: John Moehrke

---

In a previous post I introduce a [Reference Implementation of a Security Labeling Service.](https://healthcaresecprivacy.blogspot.com/2026/02/security-labeling-service-reference.html) I published this as open-source on the SHIFT [SLS RI GitHub Repository](https://github.com/SHIFT-Task-Force/sls-ri). I published the [API definition including profile on ValueSet](https://build.fhir.org/ig/SHIFT-Task-Force/sls-ri-ig/branches/main/index.html) for defining a sensitive tagging ValueSet of codes. With an IG that holds many prototype [ValueSets of sensitive topics](https://build.fhir.org/ig/SHIFT-Task-Force/SLS-ValueSets/branches/main/index.html). I also explain how sensitive topics are a [subset of data, distinct from Normal health data](https://healthcaresecprivacy.blogspot.com/2026/04/sensitive-data-as-venn-diagram.html).

The SLS Reference Implementation is designed to provide an informative example of how to implement the Security Labeling Service (SLS) for Health Information tagging so that fine grain access controls can be implemented. Data tagging applies a categorization code to a FHIR resource based only on the content of that FHIR resource. The tag does not indicate what kind of access control is applied. The access control rules are separate.
When is tagging needed?
- Data does not need to be tagged if there is no access control policies (e.g. Consent, Business Rules, or Regulations) that would apply different rules to different categories of data.
- Data does not need to be tagged if the current state of Consent is blanket permit or deny. That is when the Patient Consent has no specific rules per category then the tagging is not needed.
- Data need only be tagged sufficient to support the categorization of the access control policies. The SLS RI is configured by loading the SLS Policies as ValueSets
- When the tagging policies change (e.g. the SLS ValueSets are updated) then any data that was tagged under the old policy needs to be retagged. The SLS RI implements a timestamp on the tags to allow for not retagging if the SLS policies have not changed since last tagging.

The Reference Implementation of the SLS is designed to provide clarity of the concept of tagging. It is not designed to be fast or efficient. In a real-world system, the tagging of the data would be designed into the system utilizing features of that system (e.g., leveraging database indexing).
When to apply the SLS RI?Executing the SLS against any data is an expensive operation. This is true as the number of entries in the SLS policies increases. The SLS must look at all codes in the data and detect if any of the codes match any of the configured SLS policies. Thus, the more policies (ValueSets) and the more entries in those ValueSets, the more computationally expensive the tagging process becomes. The SLS RI includes a timestamp so that data are not inspected unless the data timestamp is older than the SLS Policies. [See ValueSet Profile](https://build.fhir.org/ig/SHIFT-Task-Force/sls-ri-ig/branches/main/index.html#valueset-profile)

There is a concern with legacy databases not having an element to hold the security tags. Thus there needs to be a way to support SLS in those cases.

There are a few ways to apply the SLS RI:
Executed on all data Creation and Updatehttps://blogger.googleusercontent.com/img/a/AVvXsEgvKkxmQSeHo8rZzRO7fHiYxapTDYlZ8qVFOKr5PFXwvriTGK0YRuaHZ62TdDDGZIkw0OyYPJAUKZ1dlMqC7j4Q_t0BBfIAp8cTXrxMRvJYmvEuOhwVgdkJeunDBU3KRBYqnVrQ6KEEHkl961cE-NIMpV6DX3xP9zKP5MXvuZ3X-_f5pSjWFvo0afQyGGQ1
This is the most comprehensive approach, ensuring that all data are tagged appropriately. However, it may have performance implications due to the need to tag every resource. It also relies on the system being able to persist the tags with the data. This approach also must retag data when the tagging policy (e.g. SLS ValueSets) changes.

This model likely can be implemented efficiently with a systems design of a SLS into the database. Thus, the use of the SLS RI is not likely directly usable if this is the model desired.

Executed on demand when a Patient's data are accessedhttps://blogger.googleusercontent.com/img/a/AVvXsEg99CVoBnKH9EKPo8LVE5LEuTAytT9CevgswPXEB1lrF33suedx0NEOcJfZ1K_4J2ayIQyqO-qB2o3KqusZmWjQH7dRwqzAQr3P7hWpu7fhtQefB8bIHbXGz7t1PZq8U87h-xP78zf1rjrpO6biD7L-pQl3T9vbDjkTBY5No13MScSCEJym5SUw97Kn5Mli

When a Patient's data are accessed, a task examines all of that Patient's data and applies the appropriate tags. This approach allows for dynamic tagging based on the current state of the data and the applicable access control policies. However, it may lead to performance issues due to the need to tag data at the time of access, which could introduce latency. It also relies on the system being able to persist the tags with the data. This approach has the benefit of not changing data to add tags unless that Patient is actively being accessed. Thus historic patients that are no longer being accessed would not need to be tagged.

The system should keep some timestamp at the Patient level to know when the Patient was last tagged, so as to keep from running this task unnecessarily often.

Executed on demand with each Search with writebackhttps://blogger.googleusercontent.com/img/a/AVvXsEjpCrr_rvIKWEdNtQEq9gsalOVyIX3NvlRm9Zj8R-7sSwSBMslFFdNsD6J9lX0Hlgkaqfnn5TKtsicdFxJJRd04x68OTuI6w0hABpCVQrKNy4Da2rlb91fjiavEdDhLQWKLL6nPaoJRBGEQPSi_2w5_1UHXudt-Pt-8yHLpR1Iy55JjZcejCT66sj3kGK3c

When a search is executed, the SLS RI is executed to inspect the Search Bundle and any new tags are written back to the database. This approach allows for dynamic tagging based on the current state of the data and the applicable access control policies at the time of search. However, it may lead to significant performance issues due to the need to tag data at the time of search, which could introduce latency. It also relies on the system being able to persist the tags with the data. This approach has the benefit of not changing data to add tags unless that data is actively being searched for. This inspection of the Search Bundle would only be done if the Access Control decision has residual rules to further remove categories of sensitive data.

Executed on demand with each Search doing only inline tagginghttps://blogger.googleusercontent.com/img/a/AVvXsEjNDV8IFyDFc3PTu0NbzZgpfnmTPCCCXjLfu51g89JezsXJcqYYcLTX8l9rrRx5MuE6aN9uuurckMYuwhGEmJXmvxXhDRaKPNSnsTMphjjknF2TUfFyBexJ-tIvv7erH39VzO5hdtmnoLezIj8nABDnTFJiXV0xjd1A8dRLn_oOWPUlVaVSU2geCRtK2Gwu
When a search is executed, the SLS RI is executed to inspect the Search Bundle and any new tags are only added to the Search Bundle in memory and not written back to the database. This approach allows for dynamic tagging based on the current state of the data and the applicable access control policies at the time of search without changing the underlying data. However, it may lead to performance issues due to the need to tag data at the time of search, which could introduce latency. This approach has the benefit of not changing data to add tags unless that data is actively being searched for and does not require that the system be able to persist the tags with the data. This inspection of the Search Bundle would only be done if the Access Control decision has residual rules to further remove categories of sensitive data.

ðŸŽNote, this is one of those projects I do pro bono but would love if someone would care enough about it to contract with me. [Sustaining the Work That Sustains Trust: Why Iâ€™m Seeking Support for Some of My Standards Efforts](https://healthcaresecprivacy.blogspot.com/2026/01/sustaining-work-that-sustains-trust-why.html)

