# Patient Matching as a Science

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/04/patient-matching-as-science.html
Published: 2016-04-07T18:58:00Z
Updated: 2016-04-07T18:58:46.549Z
Author: John Moehrke

---

A critical science in healthcare that has many dimensions and use-cases or misuse-cases.

De-Identification -- Break the binding:

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj_79Sy_8J9Jj595KIhvxMV4wpFiApRU_Xs5aRj8Gr6oQ0WxkqvxXP6m9i8lA7E75QEN2as8Vbp88lxQmJn5iLdON7262j8ZYykipetFQKXvtid_h0g6NxFfTAwpsepStgWnbXyVtgFh1c2/s1600/De-ID_Process.png

I have been involved lately with a few De-Identification [projects](http://healthcaresecprivacy.blogspot.com/2015/12/de-identification-for-family-planning.html). To be complete [De-Identification, Anonymization, and Pseudonymization](http://healthcaresecprivacy.blogspot.com/p/topics.html#DEID). Where the [goal](http://healthcaresecprivacy.blogspot.com/2015/02/is-it-really-possible-to-anonymize-data.html)is to end up with a set of data that is useful for some research project, yet has as low of a Privacy risk to the individuals for whom the data is about.

These efforts go through great length to remove Direct Identifiers, those values that are publicly known to uniquely identify a single individual. For example a Driverâ€™s License number, Passport number, Medical Records Number, Email Address, Personal Phone Number, etc.

These efforts then struggle with the Indirect Identifiers, also known as Quasi-Identifiers. These are values that are not unique to that individual, but do describe a narrow aspect about the individual. For example a birth day, gender, postal/zip code, etc. There is also the 'little' issue about [free-text fields](http://healthcaresecprivacy.blogspot.com/2014/06/de-identifying-free-text.html).

The struggle with [De-Identification](http://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html) is that these Indirect Identifiers are often needed by the research project. They very often need to know the gender, age, and region they live.  Thus often times these efforts leave some risk.

The concern is that with some risk left in a de-identified dataset there is a possibility that someone who has legitimate (or illegitimate) access might try to re-identify the individuals and thus violate privacy. This is an â€˜attackâ€™ upon the de-identified dataset.

Patient Identity Matching -- Make the binding:

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi65LFnnt-NdiUMFbwau7oJe4n-6Uh6kM2gezC_gzps97oQB67khXFupZHbV2RopBCfgODxubFMjrexgA4f9-RRPE1a_8z3Vf-QtbZ7A7RzeD-Sy42k4dRp1PwJcQs9VMIpmsx51XJiDFZZ/s1600/20061126-712992.png

I have also been involved lately with a few [Patient Matching projects](http://healthcaresecprivacy.blogspot.com/2013/12/policy-needs-to-get-out-of-way-of-good.html). Where the goal is to end up with a cross-reference between many different Patient Identifiers, that is to identify when two different Patient Identifiers are actually about the same human. This is often referred to as De-Duplication, as you are removing duplication, when you are actually not removing it but just assertively acknowledging it.

These Patient Matching projects are most prevalent in the USA, where our government has forbidden funding to even discuss a [national](http://healthcaresecprivacy.blogspot.com/2013/12/policy-needs-to-get-out-of-way-of-good.html)Patient Identity project. Thus in the USA, Patient Identity Matching, is the only choice. This is not really true, the private sector can solve the problem; but the [healthcare private sector](http://healthcaresecprivacy.blogspot.com/2013/04/hie-patient-identity-problem.html) is far to fragmented to work together on thisâ€¦ Kind of true, more to come on thatâ€¦ My view is a good [Patient Identifier enhances Privacy](http://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html).

Binding Methodology:
I see these as two sides of the same coin. In the one case we are struggling to break any identification linkage, where as in the other we are trying to use any fragment of truth to create linkages. The motivations are very different, the outcome is very different; but the methods are very much the same.

Correlations between direct identifiers gives a positive match. Correlations between indirect identifiers gives evidence of a possible match. Each possible match has a strength based on that specific indirect identifier population characteristic (gender only gives a 50% confidence). Some threshold of â€˜possibleâ€™ matches is considered sufficient to indicate an actual match. Any dissonance breaks any matches, or indicates dirty data.

Data is often sub-optimal, aka dirty. Dealing with False-Positives, and False-Negatives turns into more art than science.

[Risk](http://healthcaresecprivacy.blogspot.com/p/topics.html#RISK)... There is always risk, no matter how you slice it.

My other blog articles on these topics can be found at [De-Identification, Anonymization, Pseudonymization](http://healthcaresecprivacy.blogspot.com/p/topics.html#DEID), and [Patient Identity](http://healthcaresecprivacy.blogspot.com/p/topics.html#PID).

