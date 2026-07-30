# Patient data embargo management

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/05/patient-data-embargo-management.html
Published: 2022-05-18T17:10:00.002Z
Updated: 2022-05-18T17:21:21.205Z
Author: John Moehrke

---

There are legitimate reasons for data to be embargoed for some timeframe. I am not a fan of these reasons, but as a Privacy and Security subject matter expert, I get asked how to solve these business needs. Many think this is an easy problem to solve, just slap a security tag on the data, but it is a much bigger systems-engineering problem.

Embargo Use-caseThe clearest embargo reason is a patient safety reason, preventing a Patient from seeing a particularly damaging observation, until their primary care physician can have a one-on-one discussion. For example, a lab result that clearly indicates cancer. The clinical expectation is that the primary care physician can break the news more carefully or provide a more complete explanation.

The timeframe is not always clear, and most timeframes get cut short when some activity happens. Such as the above example, once the primary care physician has had the conversation then the embargo should stop.

These embargo timeframes can be just a few hours but can also be many months. I understand from a discussion on FHIR chat that there are countries that have regulations. That allow for timeframe to be up to six months.

Oh, and data embargoed from the Patient would also need to be embargoed from their delegates (parent, guardian, etc).

I don't know of embargo use-cases for Clinicians, no idea either on Payers. I could imagine that authorized research would or should be embargoed with the same rules as for Patients.

Meta Data

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi3GI3qYxU7eIYYQqs4ouOCxqWHc67NU5yqFM7BIun1b3uUZfTp_01GxNHgGap5opyF30RFoGQyPzRhVmGMInLm4mlooYVP8uqgvZx2ZG5z47Upno5JkrSPaGSHB_JuJxP5jThkZKLaLg2fml0DmM_4VquitEGDgGjgkVsVEkgKgOCM2swnUkJvCNn2cg/s514/tagged_duck.JPG
The [security label](http://hl7.org/fhir/security-labels.html) (.meta.security) is not a great place to handle this, due to the variability. The security label could be used to tag data as falling into the category where an embargo might apply, subject-to-embargo. This would not indicate that an embargo does apply, just that the data qualifies for a potential embargo. Not clear what initial data analysis would be able to set this tag, but it is possible that there might be some set of codes and conditions that would be detectable. It might also be that all data is presumed to be subject to an embargo until data analysis or clinician explicitly marks it as not-subject-to-embargo.

So, at this point we have a tag that says the data is either subject-to-embargo, or not-subject-to-embargo. Either method gives us the same state, that of a method to determine which data needs to have some timeframe applied vs which data does not.

When a clinician has a discussion with the Patient, and thus the embargo timeframe should be cut-short, then the clinician can just remove the subject-to-embargo or change it to no-longer-subject-to-embargo. Thus, the mechanism for counting-down the timeframe no longer applies.

Preliminary data statusAn alternative that does not use the .meta.security tagging is to just use the .status element on the data. Most, likely all, data that would be potential subject to an embargo has  a .status element and the vocabulary available for the .status element has a preliminary code. This alternative has all data first published as preliminary, and only after some data analysis does it get set to final. This data analysis might be automated or might be clinician driven. In this case any data marked as preliminary would be embargoed from Patient access. One might expect that a Patient might not be given any data that is not in the final status.

The benefit of this method is that it is leveraging elements that have other clinical uses, but the drawback is that the security infrastructure must be aware of specific FHIR Resources like [Observation](http://hl7.org/fhir/observation.html). Further this method will only work for FHIR Resources that do have a .status element. Where the .meta.security is in the exact same place in all FHIR Resources, so the security infrastructure only need to understand the most basic of FHIR [Resource](http://hl7.org/fhir/resource.html).

Another potential drawback is that this dual purpose of the .status element may interfere with appropriate lifecycle management of the data.

Timeframe ManagementAs indicated in the use-case, the timeframe for automatic expiration of the embargo often varies by setting, data type, and clinician assessment. Where any timeframe exists there needs to be some mechanism to address the timeframe, but where the length of the timeframe is not fixed this makes the problem more difficult.
Count Down ClockFirst solution, come up with some set of timeframes that fit the need, and assign them a code. Use that code on the .meta.security.

- embargo-2-hours
- embargo-2-days
- embargo-1-week
- embargo-2-weeks
- embargo-1-month
- embargo-2-months
- embargo-6-months

As you can see this would be possible if the number of quanta are a few. But gets out of control really quick.

Another alternative is to add an extension with an integer. The integer would be similar to the above in that it would identify some time that would need to elapse.

Both a set of codes and an integer present the problem of time-elapsed-relative-to-what? The _lastUpdated element is available, but it will get updated whenever the data change. Thus any update resets the count down clock.

You could use a Resource specific element, like Observation.issued. Like above with using the Observation.status, using the Observation.issued is elegant but does mean the security layer does need to know about Observation rather than just Resource.
End TimeI would recommend that if an extension is being added, that it rather be a datatype of dateTime, or Period. The meaning of the value would be the date/time after which the embargo is lifted. In this case there is no need to look elsewhere.

For efficiency's sake, once the time has expired; then the .meta.security should be set back to not embargoed. Thus the date comparison only needs to be done on those with active, or about to expire, data.
PermissionThe security wg is working on a Permission resource. It is very drafty at this point, not worth looking too closely at, although we are welcoming use-cases to help drive our design. Note that in this case I am going to use Permission in a negative way, that is that the Patient is Denied access while the Permission is valid. For efficiency, the use of Permission would seem tied to data with a .meta.security with subject-to-embargo. The flag would tell the security layer to go look for a Permission resource instance that applies. That Permission resource has a .validity element that would indicate when the Permission expires.

Note that although Permission has a .validity element, it does not have a way to express Deny.

Note, like the FHIR Permission, the IT Security infrastructure might be able to do everything with no evidence in the FHIR world. That is, an XACML or other access control engine could be given the embargo information for a given resource identifier, it would enforce that rule, and it would flush that rule out when it expires. Thus there would be no FHIR evidence of this rule.
Expiring the embargoSome of these mechanisms will automatically expire the embargo, some can have automated expiration of the embargo, but other mechanisms would require a human to disable the embargo. There should be mechanisms in place to assure that the embargo does eventually expire. Such as when status of preliminary is used, some mechanism should detect that the data was in preliminary state for too-long. This detected status might simply alert the primary care physician, or might automatically disable the embargo.
Abuse for Illegitimate reasonsThe method used for these use-cases can certainly be used for illegitimate reasons. I suspect that many "data blocking" activities are using these legitimate excuses when there is not a legitimate reason. The concern of all Privacy professionals is this abuse. Many would prefer we have no mechanism for legitimate embargo, but that is not reasonable. Thus my approach is to have mechanisms that are clearly designed, and transparent.

Transparency is key to Privacy. When a patient is allowed to know how their data are used, and why restrictions are in place, enable the Patient to be more informed. Thus I would prefer the Patient has access to an Audit Event log of all uses, or attempts to use, their data.  see [IHE Basic Audit Implementation Guide](https://healthcaresecprivacy.blogspot.com/2022/03/ihe-basic-audit-implementation-guide.html)

ConclusionGiven all of this. I would first look at the use-cases and see if they are always applying to Observation. If so, then I would use the Observation.status and Observation.issued. I next would ask if there is a fixed, or small number of fixed, increments. If there are, then a code could be used for that fixed time. I am familiar with a fixed 2 days timeout, after which the embargo automatically expires. I would then have a security label code for subject-to-embargo, and no-longer-subject-to-embargo. I would have the second code so that it was clear that an embargo was enforced. I would always want the subject-to-embargo code to get removed at some point so as to limit the overhead for the vast majority of data, data that has never been subject to an embargo or data that has an expired embargo.

