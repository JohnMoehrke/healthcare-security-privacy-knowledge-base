# Healthcare Blockchain - Big-Data Pseudonyms on FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/05/healthcare-blockchain-big-data.html
Published: 2016-05-18T14:09:00.003Z
Updated: 2016-05-18T14:09:49.654Z
Author: John Moehrke

---

Grahame [challenged us all to think about a realistic use-case for blockchain](http://www.healthintersections.com.au/?p=2512)technology in Healthcare.

Blockchain is a hugely hyped technology, because of the excitement of bitcoin. The technology is really not new, it is just a special mixture of crypto technologies, not unlike Digital Certificates; except rather than proof through decoupled proofs, blockchain has a public ledger where transactions must be recorded with proof that the transaction happened.

The magic of Bitcoin is that it creates value as it is used, and this created value supports the financial burden of the infrastructure/technology. One might even argue that bitcoin is approaching a nexus where the value created is not worth the burden ; and that this could cause the whole thing to collapse (like a pyramid scheme -- but I didn't say that)

What is very important to point out is that blockchain is PUBLIC, and PERSISTENT. Meaning we can't put sensitive information there. We can't put data there that needs to be corrected. Thus putting healthcare information onto the blockchain is just not going to happen. Sure we can encrypt it, but that doesn't use the blockchain.  What you put on the blockchain can't be revoked, it is persistently in the public view. So we also have to be very careful. Bitcoin isn't worried about this because these are exactly what it needs, it is a public journal of transactions and these need to exist forever.

So we can either figure out was to use the bitcoin system, where we primary focus on the monetary value; which is useful. Some have proposed ways that insurance, or at-least a trust-fund, could be used to pay for medical procedures. Including putting executable script into the blockchain that expresses when the money would be released.

I however think that the real challenge Grahame is putting forth is can we use the blockchain technology to build a uniquely Healthcare blockchain? For this we need to solve the fundimental funding problem, that is how do we financially support this blockchain?

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgfV1XOg7dRcSf6q9mJtDUc6vYFNnlty4CkNPsjMjuYxFlzjBTsBvKQ2gEITHJoZXXftfp8IoUIwlH2oHdbnFYxgZjbSqUIbYz_TSbvib4zC9vHhOzqbCYeNpY95zOuqypxmTzpsm944nl5/s1600/Big-Data%253DExposed.pngI might suggest that a potential solution is as a journal of public pseudonyms linked to data access points (FHIR API) and authorization servers. The chain would assert (signature) the authenticity and pseudo-provenance of the data. While also enabling accessibility under he control of that data owner's control (UMA/OAuth).  The patient would initiate this, get their pseudonym, scrub their data as much as they want while still adhering to structure (FHIR profile) and integrity (hard to enforce) rules.

The important part about this is that it addresses the Identity problem; in that patient controls the identity. This can't start from the provider (although they can participate upstream). These identities are opaque, verifiable, and permanent. All the attributes that bitcoin leverage.  The patient can choose to be known, by linking their blockchain identifier to their Patient resource; or they can choose to publish a pseudo-Patient resource.

This leverages FHIR as the API; and UMA as the decision engine and source of disclosure rules... So everything that we are working toward in the standards is still needed.

Fraud is still a problem. Not in use of the data, as I covered that; but in publishing false data. This system doesn't address a malicious individual that invents healthcare data and publishes it for value. One individual could invent millions of data and pseudonyms; thus poisoning the actual big-data pool.   Solution might be that some set of authorities do strong identity proofing prior to issuing a pseudonym... so, someone other than the patient knows the true identity... ugg.

This is inspired by the "[New Deal on Data](https://www.linkedin.com/pulse/new-deal-data-dazza-greenwood)"; an effort to build massive big-data while having sufficient rules around abuse.

My articles on  De-Identification, Anonymization, Pseudonymization

- [De-Identification for Family Planning](http://healthcaresecprivacy.blogspot.com/2015/12/de-identification-for-family-planning.html)

- [FHIR does not need a deidentify=true parameter](http://healthcaresecprivacy.blogspot.com/2015/06/fhir-does-not-need-deidentifytrue.html)

- [NIST seeks comments on De-Identification](http://healthcaresecprivacy.blogspot.com/2015/04/nist-seeks-comments-on-de-identification.html)

- [Is it really possible to anonymize data?](http://healthcaresecprivacy.blogspot.com/2015/02/is-it-really-possible-to-anonymize-data.html)

- [PCAST - Big Data: A Technological Perspective](http://healthcaresecprivacy.blogspot.com/2014/07/pcast-big-data-technological-perspective.html)

- [De-Identifying free-text](http://healthcaresecprivacy.blogspot.com/2014/06/de-identifying-free-text.html)

- [De-Identification: process reduce risk of identification of entries in a data-set](http://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html)

- [Fake it properly](http://healthcaresecprivacy.blogspot.com/2013/02/fake-it-properly.html)

- [De-Identification - Data Chemistry](http://healthcaresecprivacy.blogspot.com/2013/05/de-identification-data-chemistry.html)

- [Guidance Regarding Methods for De-identification of Health Information](http://healthcaresecprivacy.blogspot.com/2013/05/de-identification-data-chemistry.html)

- [The Emperor has no clothes - De-Identification and User Provisioning](http://healthcaresecprivacy.blogspot.com/2012/08/the-emperor-has-no-cloths-de.html)

- [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html)

- [Redaction and Clinical Documentation](http://healthcaresecprivacy.blogspot.com/2010/08/redaction-and-clinical-documentation.html)

