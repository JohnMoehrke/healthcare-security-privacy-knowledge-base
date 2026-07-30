# Data Classification -  a key vector enabling rich Security and Privacy controls

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/08/data-classification-key-vector-through.html
Published: 2010-08-10T13:51:00.002Z
Updated: 2010-09-15T14:31:07.815Z
Author: John Moehrke

---

In this article I will introduce the concept of Data Classification, what it means to Healthcare IT, and how it can enable rich Security and Privacy controls. There are many aspects to rich Security and Privacy controls, so Data Classification is not THE answer, just like Consent is not THE answer. These many aspects of Security and Privacy controls work together.

The concept of Data Classification is not new, it has been around for likely thousands of years. The idea is that some data is rather PUBLIC and can be exposed to anyone, while other data is very SECRET the kind of data one would only share with a very small number of people. I am not going to say that this concept has been around since the XXX ages, because I don't know and don't think it is important to look it up. I am sure you can look down in the comments and someone will have done the research and they should get credit. I suspect this could be seen back thousands of years.

There is much talk in the US healthcare initiatives about "**Segmentation**". Segmentation is typically what ones does to physically separate different Data Classifications. I think it is being spoken about in the US healthcare initiatives more as a direct synonym to what the classic Security community sees as Data Classifications. Even if Segmentation is the classic idea of physically separating data of different Data Classifications then we need to understand Data Classifications. I will assume that the word "Segmentation" is being used so as to not to be confused with Military Classification Levels. They have the same goal, but there are individuals that can't grok.

One of the models that has received the most visibility (ahem) is the Military "Classification Levels". We have all seen movies where there is a piece of paper or folder with the word "Top Secret" stamped across it. This is a 'Classification' of the content of the paper/folder into one of the various Classifications. Typically there are 5 classifications that we are use to seeing: **Unclassified, Restricted, Confidential, Secret, and Top Secret.**  We all know from the movies that Unclassified documents are available to everyone, yet Top Secret documents can be seen only by a very few.

This label on the document is 'metadata' that is carried by the document. This metadata is an outcome of the classification step, and is an independent step from provisioning of a user into Roles and roles into Permissions. Thus there is independent processes for classifying data, and for assigning permissions that a specific user has.This use of metadata also decouples the data from the transportation mechanism, as no matter what way that document is transported the metadata that explains the classification is attached.

**Confidentiality Code**

Healthcare Standards have our own version of this, the confidentialityCode. Looking at this today, we would likely pick a different name, but this is the one we got. Almost without exception healthcare standards have a confidentialityCode associated with all objects. This is true of HL7 CDA (CCD), HL7 v3 messages, and HL7 v2 messages. This is true of DICOM objects. This is true of IHE XD* metadata about documents. This is a universal place to hold the sensitivity classification of the object. This is a way that a sender can inform a receiver of how to handle the data in their access controls. This is a way that a publisher of documents can indicate the sensitivity classification of a document.

Unfortunately the vocabulary for the confidentialityCode needs some work. I say unfortunately, but in reality this reflects that we have not been able to look at this value very consistently. So today the vocabulary for confidentiality code is part Sensitivity Classification, and part Confidentiality Classification. These are not necessarily incompatible ideas, but they are trying to encode in the same value something different. Where as Sensitivity Classification would say this is "Secret", the confidentiality code would explain why it is secret (i.e. HIV).

My experience is that most implementations understand this, and choose a small subset of the existing confidentialityCodes and use them as Sensitivity Classifications, similar to the Military Classification.Note that like with the Military Classifications, these are clearly increasing in sensitivity and don't expose 'why' the classification is given. There are other codes, but they are inconsistent with Segmentation. I recommend against using the other HL7 confidentialityCodes  (e.g. HIV, PSY, SDV).

**Useful Value-Set from the HL7 ConfidentialityCode vocabulary (2.16.840.1.113883.5.25)**

**L -- Low** -- Low sensitivity,

**N -- Normal** -- Normal clinical data to be handled by normal 'good health care practice' rules

**R -- Restricted** -- Restricted clinical data, restricted to those having a care relationship

**T -- Taboo** -- Information not to be discussed with the patient

The process for establishing an objects confidentialityCode must be inclusive of the healthcare organizations evaluation of how sensitive the information is AND how the patient would evaluation how sensitive the information is (See Magic section below).

**Redaction **

Add we even have seen where documents with high classification levels are "Redacted", and the Redacted version of the document is considered of a lower classification level. For example when someone makes a request for release of a highly classified document, large segments of the document may be blocked out. These large blocks of text might be specific names of individuals that were involved but who were not considered important to the message of the text.

When the identifiers are being Redacted, we in healthcare should see this as De-Identification. That is the idea that one can remove the identifiers from health information and thus the information becomes less 'sensitive'. I very much believe in the ability to use De-Identification to provide new-life to the data, but also know many ways in which it can go wrong. See [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html).

Clinical trials is a domain where there is funding and motivation to  establish meaningful redaction and transform profiles that can provide  automatic processing. It has been common for years to use manual  Redaction (Paper and Film) on the data shared with a clinical trial.  This is not just for Privacy reasons, but also for the clinical trial  integrity (blinding of factors other than the one being studied). This  experience with Redaction has resulted in updates to standards such as  DICOM supplement 143. An important distinction that clinical trials has  is that it is very  clear what the purpose of the specific clinical trial, what data is  needed, and what data is not needed; this is not true in general  healthcare.

Removal of the sensitive information is a very useful tool. Done wrong, it can be a very bad tool. There are plenty of examples of where someone has 'thought' they had done proper redaction, but it turned out to be simply a display layer where the actual sensitive information was still present.

**Transforms**

Redaction can be used in a different way that is highly useful. One might remove the most sensitive information from a document leaving just the critical health values. This form of Redaction is often seen as a "Transform" of the data. When the data is in XML form, this form of Redaction is quite easy. One must be very careful to only allow information into the transform that is well-known to be safe. This means that any free-text fields need to be blocked.

One of the most talked about health documents today is a C32. A C32 is a Medical Summary, the content may include administrative (e.g., registration, demographics, insurance, etc.) and clinical (problem list, medication list, allergies, test results, etc) information. Generally this is a minimum of clinical information that is needed by almost every care giver. Although this document is not about a specific episode of care, it could contain information that is highly sensitive.  It is possible to provide two documents, one with the highly sensitive information and a transform that has removed this highly sensitive information. The system doing the publication of the document knows best what information is specifically sensitive, so it is uniquely qualified to publish these two different documents. These documents could then be Segmented or Classified differently.

In the context of XDS, the original document could be registered with a "R". The Transform could be registered using the XDS relationship of Transform with a "N" classification. In this way someone can see that the two documents are related and access the one that the user is authorized to view. This publication of two independent but linked documents may be preferred by those that want to Segmentation as there is a clear line between the two documents. This eliminates the need to perform a transform at retrieve time, and reduces the risk of accidental inappropriate disclosure. For example the audit log clearly indicates which of the two documents were used vs relying on a real-time transform.

**Enabling Policy**

Just like how the Military Classifications allow them to separate the act of classifying data from authorizing individuals, so does the confidentialityCode. So, lets look at a simple Truth-Table. Note that I added "Research Information" . This just to show that the limited set of confidentiatlityCodes can be extended. So imagine information marked with Research Information is specifically published for research use. This Truth-Table also shows the results of a set of Policies.

 **.                                   ConfidentialityCode**

**Functional   Role** **L** **N** **R** **T** Research   Information
 Administrative   Staff **X** **X**
 Dietary   Staff  **X**
 General   Care Provider  **X** **X**
 Direct   Care Provider  **X** **X** **X**
 Emergency   Care Provider  **X** **X**
 Researcher     **X**
 Patient   or Legal Representative **X** **X** **X**

It is very possible for a Patient Consent to directly influence these. For example the patient may be given the ability to provide their Preferences for this Truth-Table, and if accepted that would become the Policy for their data. Thus the Consent Policy becomes the Truth-Table for that patient's data.

There could be a different Truth-Table for "Emergency Mode" of operation, such as under natural disaster like Katrina.

**Magic:**

The unsaid magic in all of this is that there is no well-known mechanism today to automate the Data Classification. We have the place to store and communicate the Data Classification in the confidentialityCodes, but we don't have rules to use to determine if the object should be described as R rather than N. We have Consent Directives that can explain how to handle these differently categorized data, capturing the truth-table. But we do not have a good way to determine for any given object, what should the confidentialityCode be. We leave this as a task for anyone publishing data. The one creating a document or object is the one most aware of the information that is in the document or object. Today this is the individual or system that is expected to make the hard decision. In XD*, the confidentialityCode is mandatory. Most simply say "N".

We do have some regulatory assistance. In the USA 42 CFR Part 2 "Confidentiality of Alcohol and Drug Abuse Patient Records" makes it clear the types of things that we should certainly mark as "R". But even with this very specific regulation text, it is hard to be exact. Often times when one thinks they have a well-known set of rules, a doctor will come along and indicate that the combination of three factors would indicate that a patient is HIV positive. The combination become really hard to track down.

This Magic is likely to continue for sometime. Is this a bad thing?  It is bad in that it is a part of the process that is not deterministic,  so yes we want it fixed. Many organizations have tried to come up with a  way to do this. Ultimately we would like to encapsulate the rules that patient wants used to determine the Data Classification in a Patient Preference or Consent. This is ongoing standards work.

Usually the magic is the publishing doctor selecting a radio-button: R vs N. They are usually right.

**Conclusion:**

For now, I just want to get confidentialityCode used. Having information differentiated by the Data Classification enables Role-Based-Access-Control. Without it, all data is seen as viewable by everyone.

**Resources:**

- [Internet2 Data Classification Toolkit](https://wiki.internet2.edu/confluence/display/itsg2/Data+Classification+Toolkit)

- [University Mass Data Classification](http://www.massachusetts.edu/dataclassificationfaq/faq.cfm)

- [Wikipedia Data Classification](http://en.wikipedia.org/wiki/Classified_information)

- [DICOM Supplement 142 Clinical Trial De-identification Profiles](ftp://medical.nema.org/medical/dicom/supps/sup142_pc.pdf)

- [IHE Access Control White Paper](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_WhitePaper_AccessControl_2009-09-28.pdf) - Published 2009-09-28

- [HL7 Confidentiality Code Vocabulary](http://www.hl7.org/Library/data-model/RIM/C30203/Confidentiality.htm)

My Blog

- [Availability of Consent Documents and their rules](http://healthcaresecprivacy.blogspot.com/2010/06/availability-of-consent-documents-and.html)

- [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html)

