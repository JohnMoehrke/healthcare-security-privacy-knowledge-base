# Anonymizing patient records for genomics

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/04/anonymizing-patient-records-for.html
Published: 2010-04-13T01:55:00Z
Updated: 2010-04-13T01:55:16.875Z
Author: John Moehrke

---

This article in the Journal NATURE points to a nice Risk Analysis and Mitigation plan to allow researchers access to genetic information and the diagnosis codes known for the patient. They have even added a mitigation to assure that small populations in diagnosis code pools don't happen through low thresholds and grouping.

> To solve this problem, the new method allows researchers to set two  parameters: the minimum number of patients (k)  that should have the same set of codes, and a 'utility policy' which  specifies how codes should be linked in the anonymized data. [More](http://www.nature.com/news/2010/100412/full/news.2010.178.html?s=news_rss&utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+news%2Frss%2Fmost_recent+%28NatureNews+-+Most+recent+articles%29&utm_content=Google+Reader)

I really like the approach taken as it takes a look at what the minimal information desired and determines through a risk assessment how to achieve that goal. From my read they realized that they simply needed to know what the known diagnosis values were, they didn't need demographics or other indirect identifiers. At least that is all they say they are taking in the article.

I like this approach because it follows nicely the approach that I outlined in [De-Identification  is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html). I hope that the [ONC when they test re-identification of protected data](http://healthcaresecprivacy.blogspot.com/2010/01/onc-to-test-re-identification-of.html) looks carefully at this output, and process they used to come to this conclusion. I do not expect that their output is reusable because De-Identification is highly contextual.

Surely more investigation needs to be done, but I like that this group was willing to think critically about what the minimal information that they needed for success.

