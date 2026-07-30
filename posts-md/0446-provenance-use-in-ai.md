# Provenance use in AI

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/01/provenance-use-in-ai.html
Published: 2024-01-31T12:44:00.001Z
Updated: 2024-01-31T12:44:16.414Z
Author: John Moehrke

---

I have been engaged in a few initiatives around AI/ML, both inside healthcare and broader. I have been engaged to work on a variety of different needs, that all use a variation of Provenance. The following is not a tutorial, but rather an outline of the various ways that Provenance is useful in AI. Useful is not to say that these are currently used.

- Provenance on dataset that is available for various uses, including being used as a learning dataset.
- Provenance on the learning dataset showing where each data came from.
- Provenance on a ML model node showing which data influenced this node.
- Provenance on an AI output showing which nodes influenced this AI output (decision, observation, derivation, etc)
- Provenance on some action taken because of some AI output.

These steps are simplified and generalized. Especially inside of various architectures of AI/ML the concept of a node is not always identifiable. There is a push to use [Provenance to enable explainable and trustworthy AI](https://direct.mit.edu/dint/article/5/1/139/109494/Provenance-documentation-to-enable-explainable-and) that would be able to explain why an AI output came to be. So, the above presumes that some node(s) in the knowledge model is identifiable.

https://blogger.googleusercontent.com/img/a/AVvXsEhk428i0waeiDwRjB1hWml5AG4rFW5SBzYaC2jhNMJ2L10h9cYRkUAF1MrdjqsVUkf4-u72uuefROc9uLyKBRfDAf3BkpD3QBjoe3VDCLsJ-bONok2FDmMsA_8Aj8Zz3WbQA6DqMCDI9h88SpVfMDbVKTeMU15d2vwiLzHiELybDzKHhWv0QVbSrrlgJkK4
These Provenance artifacts are also illustrated here purely as provenance details. That is to say that the Provenance does not carry the inputs or outputs; but certainly, points at them. Thus, one can't look to Provenance to embody the "AI Output", that AI output would be encoded in some other artifact.

I also speak of Provenance broadly. Within FHIR, the [FHIR Provenance](https://hl7.org/fhir/provenance.html) works fine. Outside of FHIR, the [W3C PROV model](http://www.w3.org/TR/2013/NOTE-prov-overview-20130430/) works fine. But it is also possible that one has some other metadata structure that carries the artifacts of Provenance.
Provenance on datasetThis use of Provenance addresses the situation that those looking to teach an AI/ML, need data. The data may already be known, but there may be cases where one looks to a library of data looking for appropriate data. Where appropriate may include quality indicators, fit for use indicators, authorization rights. These are typical "Provenance What" attributes. As well as classic provenance attributes: Who owns the data, Where is the data, When was the data collected, Why was the data collected.

The key here is to identify all the useful attributes that might be needed, and thus profile how that is expressed as part of Provenance. Some use-case needs:

- How was this data collected? User questionnaire, Survey, Synthetic, Combination, Subset, etc
- Is there a regulation covering this data?  Indicate the regulation
- What region was this data collected within?

- Is the data region locked?

- Is the data about human subjects?

- Is there subject authorization?
- Is the data de-identified? To what risk level?

- Use obligations? Must be used in aggregation, must be de-identified, must get individual authorization, must be encrypted, etc
- Allowed uses vs Forbidden uses?

https://blogger.googleusercontent.com/img/a/AVvXsEjEZPnGxUxiXPPHLJfM0YJduhrFHLS-zygT9WVlN2_pm_GIgIFmFRRKnpNVctrWRNv6EP_yfSPbEksyy63kNC-q9lvsfN7sXknmf-MNxcfsdZXczCCaJCLwGtpBToqsRfDp69OwjNxDIB8LJSnQkum3W3n3weCLbjan34ugnlEDlpKJo55oXRqwg_2VZe2w

Note that a source dataset may be derived from other source datasets. This is something that is key to Provenance. To be able to say _this_ data is derived from _that_ data using _how_ methodology. In this way a Provenance can indicate that a dataset imports three other datasets. This said, the above What attributes would also need to be combined in appropriate ways. For example, I pull in three EHR datasets with de-identification that supports longitudinal consistency, and because the data are de-identified the original HIPAA regulation requirement is eliminated, yet the region covered is expanded. As such, there needs to be the ability to navigate back to the source of this derivation, but that pathway is likely privileged so not possible to navigate by all users.

Provenance on Learning datasetThis is very related to the Provenance on source dataset, but the distinction is that the source dataset doesn't always come with Provenance. But the learning dataset should know where all the data came from. Thus, the use-case need here is more classic Provenance holding simply where the data came from. This is not to say that one can't include the full details, but would be unnecessary if one can navigate from the learning dataset provenance to the source dataset provenance. Being able to navigate from one kind of provenance to the other is a key feature of provenance.

If there is a specific obligation that comes with some source data, this might be traceable using Provenance as well. I would think a simplifying methodology would be to have the obligations managed independently, so that the obligations have their own Provenance back to the source of that obligation. In this way a learning dataset may have a functional obligation that is sourced from more than one source dataset. This is simply one obligation (rule) with many Provenance.

Similar to the source dataset discussion around derivation from multiple sources. The Learning dataset would have a wholistic Provenance that expresses the derived state, in addition to Provenance on each of the datasets that were imported.
Provenance on ML nodeI will use the concept of a ML node, as an identifiable portion of a ML knowledge model. If there is a very specific ML model concept of a node, this works for me, but I didn't intend only that. I also know that some ML models don't have identifiable sub-divisions of the model, in that case then Provenance will be only possible to the Provenance on Learning dataset. Thus, the concept that a ML node is not always possible, but it certainly is important to [explainable and trustworthy AI](https://direct.mit.edu/dint/article/5/1/139/109494/Provenance-documentation-to-enable-explainable-and).

The details of how the node was derived from the identifiable data is likely to be less describable. But where it can be explained, that explanation can be recorded in the Provenance as a _how_ attribute.
Provenance on AI outputAn AI model will take some input against the current model and produce some output. This input, current model, and output; are clearly attributes for Provenance of that output. The key use-case here is to track that some output is attributable to AI, and attributable to a given model. Use-case would also then be able to tack these outputs based on a given model, thus if the model is found to be defective, then those outputs can be re-evaluated or put into question.

Here I first put some emphasis on output being a subject of Provenance, so let me be clear that Provenance itself is not a way to encode the output. As with all artifacts, Provenance presumes that inputs, outputs, agents, algorithms, etc; are all encoded in some relevant and good standard and are able to be referenced by the Provenance.
Provenance on Actions taken because of AI outputThis is getting a bit beyond AI/ML, but one uses an AI/ML to do something, and that something is what I am referring to here. I simply indicate that Provenance is applicable here too. So that one can indicate that some action was taken because of some output from an AI.
SummaryProvenance is not the core of AI/ML, but the general concept of Provenance is very valuable to the use of AI/ML

