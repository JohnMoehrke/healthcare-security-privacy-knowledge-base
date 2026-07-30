# De-Identification as a Service

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/11/de-identification-as-service.html
Published: 2024-11-01T17:50:00.005Z
Updated: 2024-11-01T17:50:43.605Z
Author: John Moehrke

---

I have had some conversations lately around a De-Identification Service, specifically if it is possible for a general service that could be used like Actors within IHE. The problem that I have historically came up with is that there is no standard for defining de-identification policy, that set of rules that would drive the de-identification process in a way that (a) protects against re-identification, and (b) provides sufficient detail in the resulting dataset for a (c) given purpose.

There are standards on the concept of De-Identification, and I have written articles on the process. Key to any discussion on De-Identification is to recognize that it is a process, it is not an algorithm. De-Identification is not like Encryption, or Signatures for which one can have a defined algorithm. This because De-Identification is trying to balance opposing forces: The appropriate use of the data that needs specific fidelity to the data, against the inappropriate re-identification of the subjects of the data whose privacy must be protected.

IHE has defined a "[De-Identification Handbook](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Handbook_De-Identification_Rev1.1_2014-06-06.pdf)" that speaks to how to go about defining a De-Identification Policy, and addresses why this is something that is a process. This handbook helps you identify what parts of your data are direct identifiers and what are indirect identifiers. It identifies some common ways to change data during the de-identification process, such as redact, generalize, fuzz, replace, etc. The handbook also covers how to assess your dataset to see if your choice of policy is sufficient.

I have a general orchestration diagram in my Security and Privacy Tutorial - [http://bit.ly/FHIR-SecPriv](http://bit.ly/FHIR-SecPriv)

https://blogger.googleusercontent.com/img/a/AVvXsEgAujq-4zQLzruj6obWW37P_6eVS1_uPvGdJ7O0cM4l_STubclzqPPQ08on_4ptq1uJ8A5Z84YySEjBtzsbr3zg3nQ9DINDGgdEDdlL_UVUP-QOYGCRDmy_6d-twej4tlLu_cTc6RcFwhpfiYMzbNF823fuvNtyhUw6MUiDrLImrBjrHqQ0vWep7a3p52_j

This diagram is very abstract, presuming some kind of Query can be done by some Research Analytics App, that can be mediated by a De-Identification Service which if the request is authorized and appropriate can forward the request to a Resource Server. The Resource Server responds with the full fidelity data, the De-Identification Service mediates and de-identifies the data before returning the results to the Research Analytics App. This generalization presumes alot, including that the query can be mediated like this, and that the results can be de-identified in-real-time. Most De-Identification is done on a dataset, so that the resulting dataset can be analyzed to see that it has indeed met the goal of de-identification, often using an algorithm like K-Anonymity. The above could be done, but is far more of a systems design task, and not as simple as shown.

I think a more likely is that De-Identification Service orchestration is on a PUSH or FEED of data. That is not to say that it might not be a Query, but rather that it is a BULK of data. So, for example the FHIR Bulk Data Access might work.  So, for this let's take a generic push set of Actors and Transaction.

https://blogger.googleusercontent.com/img/a/AVvXsEiwLT6B8Ux841wPRa8vxuoKrt5osGVMG3Jsgu-u_M2fRWXE-yDpzAxJJWjLz99-kqbV6tTOVmF8hkHf1SqMcYfn2D9G_7-bp9-eTqZ_DvLs3T90E2XFcHtIx3FYCURyc2Wk-jQDBw15q4USYvlT3qVRBXW0O0hSBVBfguaU3dwJSZ2HY_-YpedX6a1siFCK

In this diagram there is a data source and a data recipient and some standards-based transaction between them.

We then insert our De-Identification Service in between by Grouping a Data Recipient with our De-Identification Service and by also grouping a Data Source. Thus, the original two actors, are now end-to-end talking, but they are talking to each other with an intermediary.

https://blogger.googleusercontent.com/img/a/AVvXsEhMY3M1wjnlDks9ODWpwBhUNaTcAhOaw3GolWqmHsSwrIBkZZt14cixgnKxpTDlgcx1S0sap4vaFvTyh3aEY5zBEsH4H2PJWlxuaN1r-j99P0XKyh20YSCc2BAedwCCXR3YSrPzy3Nk_CFfDKnzTdO09LYH1rFxGMU2eYmQVLfa-wdsAT-E_NbBPUTkGLlJ

We then recognize that the de-identification policy needs to be available to the De-Identification Service and must be administered by some Policy Admin

https://blogger.googleusercontent.com/img/a/AVvXsEgEyAxVToOjq9ONMjbjb5muSxt2HvuKSOG0KhoHMPI1-pKaGk5fMrNeNBdnhJAqn7Ofgf0AGJFKAffqDsjtu_QSU9-Wx_MkhR9zNC_5zKdN5PCWo2RxFfq2qpHc5GzZzMY9IIGVHYTXh92hx1XK3iOXCqXA6pJZ4miAP3G_0bTCeVhG1hdNEk4csrxrli-W

Unfortunately, I don't know of a Standard that exists for De-Identification Policy. So, these two actors can't really be defined. They need to be some functionality inside of the De-Identification Service.

So, this is the diagram I come up with. This is more than what I discussed above, as it starts with Document based sharing, and ends up with De-Identified FHIR Rest queries. Thus, the data is feed into the De-Identification Service (MHD), but that De-Identification Service groups a bunch (mXDE) of other IHE profiles and ultimately provides access to the De-Identified data using FHIR Rest (QEDm). This diagram does not abstract out the policy, it is part of the systems design.

https://blogger.googleusercontent.com/img/a/AVvXsEjcvhwgCRsTIuOCRKTU63OFt76ht42k4tc5OfCeVhH9YJKxAe-E_kzwgAZdiqMUlwxa-4KdevK-aMIOZkQxvPTEnxX-F-JK7GpLmPpU5hkxq1PMrZSlOWYrOYVIT6wnZUbYCKihoXrmRI42SqJs8fxEBzgkVgPnSkFaryjUqW2PuLQ3Xx2CSkdMcxOCGK1z

I have used MHD and QEDm in this example. But given that I simply grouped within the De-Identification Server the peer Actor from those transactions; then the external view of the De-Identification Server is that it is using MHD and QEDm standards; essentially magic happens inside.

Similar can be done with other standards. This left as an exercise to my reader.

