# #FHIR and Bulk De-Identification 

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/09/fhir-and-bulk-de-identification.html
Published: 2017-09-27T14:02:00Z
Updated: 2017-09-27T14:02:04.759Z
Author: John Moehrke

---

Might be time to dust off a concept that hasn't been discussed for a while. But first let me explain two factors that bring me to that conclusion.

Bulk Data Access

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi88buAos57hnJOCSmJlCG-cxNq4LhUI8_rcBzTydmtuwrqh0BWIPC2mKU-jIkKftugptrb9JQ8R2V4FurGJn9rHQs2UvxZKxVxH647UecneEVljesKYh5bRqJhxCtbfk4ALOeqUaPkRoM-/s1600/Big-Data%253DExposed.png

The addition of a [Bulk Data Access in #FHIR](http://www.healthintersections.com.au/?p=2689) was a hot topic at the San Diego workgroup meeting. Grahame has explained it on his [blog](http://www.healthintersections.com.au/?p=2689). What is not well explained is the use-cases that drive this API request. Without the use-cases, we have simply a "Solution" looking or a "Problem". When that happens one either has a useless solution, or one ends up with a solution that is used in appropriately. The only hint at what the Problem is a fragment of a sentence in the first paragraph of Grahame's blog article.

>
"... in support of provider-based exchange, analytics and other value-based services."

Which is not a definition of a use-case...  But one can imagine from this that one use-case is Public Health reporting, or Clinical Research data mining, or Insurance Fraud detection... All kinds of things that Privacy advocates get really worried about, with good reason.

De-Identification
There have been  few, possibly unrelated, discussions of De-Identification (which is the high level term that is inclusive of pseudonymization and anonymization). These are also only presented as a "Solution", and when I try to uncover the "Problem" they are trying to solve I find no details. Thus again, I worry that the solution is either useless, or that the solution will get used inappropriately.

I have addressed this topic in FHIR before, [FHIR does not need a deidentify=true parameter](http://healthcaresecprivacy.blogspot.com/2015/06/fhir-does-not-need-deidentifytrue.html)  . Back then the solution was to add a parameter to any FHIR query asking that the results be deidentified. The only possible solution for this is to return an empty Bundle. As that is the only way to De-Identify when one as no use-case.
https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEikhnfxEeoUILvILBNiqFGeR44nN9CH6A4CYNb5WqsEJwJOD1c5JG15fZMJl8IWbQGpOlMoRXU-bYM_AYqctHvRpD6c10GT4JdkIPWP4KvLDP6VYcyNhdri7m7a-9xRT6rz5PSjG1T_xBb1/s1600/De-ID_Process.pngDe-Identification is a Process

[De-Identification is a Process](https://healthcaresecprivacy.blogspot.com/2013/05/de-identification-data-chemistry.html) that takes a use-case 'need' (I need this data for my use-case, I want this data for my use-case, I need to re-identify targeted individuals, my use-case can handle X statistical uncertainty, etc). This De-Identification Process then determines how the data can be manipulated such that it lowers the Privacy RISK as much as possible, while satisfying the use-case need.  [IHE has a handbook that walks one through the Process of De-Identification.](https://healthcaresecprivacy.blogspot.com/p/topics.html#DEID)

All De-Identification use-cases have different needs. This is mostly true, but some patterns can be determined once a well defined set of use-cases have been defined. DICOM (See [Part 15, Chapter E](http://dicom.nema.org/medical/dicom/current/output/html/part15.html#chapter_E)) has done a good job taking their very mature data-model (FHIR is no where near mature enough for this pattern recognition). These patterns, even in DICOM, are only minimally re-usable.

Most detailed use-cases need slightly different algorithm, with different variability acceptable.  For example IHE applied their De-Identification handbook to a [Family Planning use-case and defined an Algorithm](https://healthcaresecprivacy.blogspot.com/2016/12/ihe-analysis-of-optimal-de.html). Another example is [Apple's use of Differential Privacy (a form of fuzzing)](https://healthcaresecprivacy.blogspot.com/2016/06/apple-makes-difference-with-targeted.html). These are algorithms, but they are not general purpose algorithms. These examples show that each De-Identification algorithm is customized to enable a use-case needs, while limiting Privacy Risk.

Lastly, Privacy Risk is never brought to zero... unless you have eliminated all data (the null set).

De-Identification as a Service

What I propose is that a Service (http RESTful like) could be defined. This service would be defined to be composable, thus it would be usable in a pipeline. That is the output of a #FHIR query (Normal, or Bulk) is a Bundle of FHIR Resources. This would be the input to the De-Identification Service, along with a de-identificationAlgorithm identifier. The result would be a Bundle of data that has been de-identified to that algorithm, which may be an empty Bundle where the algorithm can't be satisfied. One reason it can't be satisfied is that the algorithm requires that the output meet a de-identification quality measure. Such as [K-Anonymity](https://en.wikipedia.org/wiki/K-anonymity).

The De-IdentificationAlgorithm would be defied using a De-Identification Process. The resulting Algorithm would be registered with this service (RESTful POST). Therefore the now registered algorithm can then be activated on a De-Identification request.

De-Identification Algorithm Consideration

So, what kind of Algorithms would need to be definable? Best is to look at the IHE Handbook which [defines many data types, and algorithms that are logical](https://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html).

For #FHIR. We would first need to an assessment of each FHIR Resource, element by element. Identify if this element is a Direct Identifier, Indirect Identifier (Quasi Identifier), [Free Text](http://healthcaresecprivacy.blogspot.com/2014/06/de-identifying-free-text.html), or Data.  This effort would best be done as the FHIR resources approach maturity. It could be represented within the FHIR specification, much like the _summary flag is represented...

Direct Identifiers -- Remove, Replace with [fixed values](https://healthcaresecprivacy.blogspot.com/2013/02/fake-it-properly.html), Replace with faked and random data, Replace with pseudonym replica, Replace with project specified identifiers, Replace with reversible pseudonym, etc...

Indirect Identifiers -- Remove, Fuzz, Replace, Generalize, Unmodify

[Free Text](http://healthcaresecprivacy.blogspot.com/2014/06/de-identifying-free-text.html) -- Remove, Unmodify, interpret into codes removing unknown text

Quality Output -- Analysis of output to determine if it meets quality such as [K-Anonymity](https://en.wikipedia.org/wiki/K-anonymity)

Just a hint of what it will take...

Conclusion

Plenty of good work to do, but the basis is well known.

Bulk Data -- De-Identification can be much more reliability (lowering Risk reliability) when the De-Identification process is executed on a Data-Set. Meaning the larger the number of Patients in the data-set, the more likely that one can protect Privacy. As this data-set approaches ONE, the risk approaches 100%.  This fact is usually the downfall of a de-identification result, they overlook how easy re-identification can be, especially where there is motivation and skill.

[My other articles on De-Identification](https://healthcaresecprivacy.blogspot.com/p/topics.html#DEID)

