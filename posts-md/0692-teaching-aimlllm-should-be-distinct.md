# Teaching an AI/ML/LLM should be a distinct PurposeOfUse

Originally posted: https://healthcaresecprivacy.blogspot.com/2023/10/teaching-aimlllm-should-be-distinct.html
Published: 2023-10-19T15:07:00.001Z
Updated: 2023-10-19T18:36:06.710Z
Author: John Moehrke

---

I have been thinking about a specific need around AI/ML. That is, that when data are being requested/downloaded for the intent of feeding to a Machine Learning; this action should be distinguished from a request for Treatment.https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgCwbNLLZI_W_kFr3e5gu_7hcXrNkI-417Kb_BQ58rUR4ZsT_A3dnetiuj8IUh-4kEbiBavCz5wwMf3BSWSKHgXcaQDfr1NWfQR1KtaXRCpmOyGcwyexKgwqei5L1tHd0YnIc5ePdleTarVSF8BMef7N2Y3FCuU6Xa5s7QP2KgwoQK6u8VcL67QZ562zN0C/s1280/Slide1.PNG

This came up on a TEFCA/QTE call this week, where a question was posed as to how a patient could express that they wanted to forbid their data from being used to teach Machine Learning.

This use-case would need the above ability to understand when a data request could result in the data being used for Machine Learning.  Note that data requests are encouraged to include ALL purposeOfUse values for which the data would be used. So in the USA, this would include Treatment, Payment, and Operations. (Note that it is known in the existing nationwide health exchange that many participants can't handle more than one, and thus in that exchange Treatment is presumed to be TPO. I don't like this, but reality is often less than perfect).

Thus, I think we need a specific PurposeOfUse to indicate these requests intend to be used for Machine Learning. I think that this PurposeOfUse would logically be a sub-concept of the existing Healthcare Operations. I argue this because it clearly is not about Treatment, or Payment; that is not to say that the resulting algorithms may not be used for Treatment or Payment; but the reason to ask/get data at this point in the data flow is to feed the Machine Learning.   It might be argued that the Machine Learning Training PurposeOfUse would possibly be a new top level PurposeOfUse, but I don't think that is correct either as much of the data captured already today is presumed to be available for Machine Learning (best-practice is that it is consumed in de-identified form, but this topic is not about de-identification or not).

It is possible that we might need a new Obligation/Refrain code as well (thanks to Kathleen for pointing this out). Thus data could be communicated with an attached Obligation to not use it for Machine Learning Training (seems like a refrain). I don't mind putting this code in, but at this time Obligation/Refrain codes are not used, where PurposeOfUse is emerging as being used.

So a PurposeOfUse code specific to Machine Learning

- can be used in a response (bundle) to indicate positively the intended purposeOfUse allowed
- can be used in a request to indicate desired purposeOfUse -- which could be rejected if the responder disagrees
- can be expressed in a security token to indicate authorized PurposeOfUse
- can be used in policy rules to indicate permit/deny of that specific policy. In this way a data-use-agreement could state that the high level operations purpose of use is intended to enable all sub-concepts; and it could be used to indicate that the high level operations purpose of use is intended to ONLY speak to some sub-concepts such as eliminating the Machine Learning as being allowed or requested.
- can be used in a Consent, where allowed, to allow an individual patient to express rules specific to that purposeOfUse.
- can be placed on a dataset that has been properly gathered with that purposeOfUse
- can be placed on a data item within a dataset to indicate that the data has been properly gathered with that purposeOfUse

- note tagging the dataset is more common, as replicating the tag millions of times over at the data resource level is not adding value, but I express this one as a dataset might be a mixture of some data that was collected with authorization and some that were not. this would require tagging each data resource.

I would like to get wider consensus on this(these) concepts before we add a code. This consensus would also help inform what it is called, what it is described as, where it is placed, etc. I am confident that we have healthcare standards infrastructure to support this new use-case.

