# Erasure Receipt

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/05/erasure-receipt.html
Published: 2018-05-21T15:06:00.001Z
Updated: 2018-05-21T15:06:19.583Z
Author: John Moehrke

---

During the [GDPR discussions at the HL7 workgroup meeting in Cologne](https://healthcaresecprivacy.blogspot.de/2018/05/gdpr-on-fhir.html), we uncovered a potential 'nice to have' in the general information technology space, an 'Erasure Receipt'. The idea is that [GDPR includes Article 17 the Right to Erasure](https://gdpr-info.eu/art-17-gdpr/) ([Recital 65 - Right of rectification and erasure](https://gdpr-info.eu/recitals/no-65/)), which is similar to the 'Right to be Forgotten' ([Recital 66 - Right to be forgotten](https://gdpr-info.eu/recitals/no-66/)). In GPDR there are requirements that the data controller must pass on the Erasure request to other downstream Controllers that they have disclosed the data to; AND they must inform the Individual of each of these downstream Controllers ([Article 19 - Notification obligation regarding rectification or erasure of personal data or restriction of processing](https://gdpr-info.eu/art-19-gdpr/)). The Erasure Receipt would focus on making statements about the act of Erasure.

I think this would be good to get as domain independent, not something that Healthcare does alone.

Like a Consent Receipt
Much like the ["Consent Receipt" work that Kantara has developed](https://healthcaresecprivacy.blogspot.com/2018/03/fhir-consent-resource-mapping-to.html). Where the Consent Receipt is a consistent concept that states the facts about a Consent that an individual has agreed to. The first versions of this Consent Receipt was not structured or coded, but had some requirements of the text and would be delivered to the Individual. The main goal of a "Consent Receipt", much like any cash register receipt, has very little use when everything works as expected, but is there as evidence in the case where things do not progress as expected. Specifically when the terms of the Consent are not enforced, the Individual can leverage their Consent Receipt against the violating custodian.

Erasure Receipt
So an "Erasure Receipt" would be given to the Individual after they have asked for data to be Erased. When that Erasure works as expected, the Erasure Receipt has very little usage. However if at a later time it is found that the data was not properly erased, then the Erasure Receipt can be used against the violating custodian. We also envisioned that the Erasure Receipt might be useful to probe the custodian to check that there is no current evidence of the data that was erased. So the Erasure Receipt is an artifact that shows due diligence, transparency, and trustworthiness.

One reason why an Individual might request Erasure is when they withdraw their consent. In this case the Erasure Receipt and Consent Receipt might be the same.

>
"... where a data subject has withdrawn his or her consent or objects to the processing of personal data concerning him or her, ..."

Requirements of an Erasure Receipt

I am not a lawyer, so this is not legal advice... So the overall requirements that I think an Erasure Receipt has is:

- Date of Erasure Request

- Date of Erasure Receipt (typically must be within 90 days of request)

- Jurisdiction

- Human Language

- Identification of the individual

- Identification of the data controller

- Description of data to be Erased

- Purpose of Use the data was collected under

- Type of data that was collected

- Identifier of previously capture Consent Receipt

- Exceptions

- Reason why data could not be Erased (e.g. Medical Records Retention, Obligation to Report)

- Identification of Purpose and Type of data not deleted

- Success

- Identification of Purpose and Type of data deleted

- Method used to Erase (e.g. Deleted, De-Identification, etc)

- Downstream Recipients

- For every downstream Recipients of the data being asked to be Erased.

- Identification of downstream Processer

- Response if any received from request made to downstream Recipient

- Pseudonym -- given the Individual has been Erased, a pseudonym (i.e. GUID) can be assigned to the remaining data, proof of erasure, and the Erasure Receipt.

- This might be useful by the individual in the future to probe the erasure facts

- This might be most useful where the data are de-identified and maintained for other required purposes. A probe of the pseudonym would show integrity of that data, while assuring the Controller no longer knows who the individual is.

Once the Erasure has happened, and the Erasure Receipt has been delivered. The Custodian must now erase the individual details around the Erasure Request. Thus the power of the Erasure Receipt is that it is placed into the Individuals hands and only that Individual. **Thu the Erasure Request likely does need to be Digitally Signed by the Custodian.**

Erasure Exceptions
Given my discussion is most around Healthcare, the first clarification that I always express is that the GDPR Erasure Request does not override a Healthcare organizations regulated requirements ([Article 23 Restrictions](https://gdpr-info.eu/art-23-gdpr/)), such as Medical Record Retention regulations. Thus an Erasure Request in these cases might be completely denied. The likelihood is that there might be some data held by the Healthcare organization that is not protected by a regulated responsibility, such as social contacts and interactions.  This exception puts many in Healthcare at ease. I then remind them that under GDPR, once that regulated reason expires they MUST erase the data. Thus if your country has a requirement to maintain Healthcare data for 30 years, once that has expired the data must be erased.

Other similar use-cases
This similar concept might also be applied to the [Article 16 - Right of rectification](https://gdpr-info.eu/art-16-gdpr/), [Article 18 - Right of restriction of processing](https://gdpr-info.eu/art-18-gdpr/), and [Article 21 - Right to object](https://gdpr-info.eu/art-21-gdpr/).  I simply did not look further into this.

Conclusion
Erasure is different than Consent, but the receipt processing and overall use as a token when things do not progress as expected is similar. The big advantage of an Erasure Receipt comes when it can be Digitally Signed and include structured content.

I am not a Lawyer, this is not legal advice...

