# HL7 ballot - Healthcare Security/Privacy Classification, Vocabulary, and Ontology

Originally posted: https://healthcaresecprivacy.blogspot.com/2013/09/hl7-ballot-healthcare-securityprivacy.html
Published: 2013-09-14T03:29:00.001Z
Updated: 2013-09-14T03:29:22.882Z
Author: John Moehrke

---

I will end the week on a positive note. This is about two ballots that in my mind are very interrelated.

- HL7 Healthcare Privacy and Security Classification System, Release 1

- PRIV_SEC_CLASS_SYS_R1_N1_2013SEP

- HL7 Version 3 Standard: Security and Privacy Ontology, Release 1

- V3_SECPRONT_R1_N2_2013SEP

Both ballots are also on their second (or more) round. Thus I beat them up badly last time, and they have been worked over much during committee time. I still wanted to read them thoroughly and make sure that I agreed with the result. I have to say that I am very pleased with how they came out. I will still watch Bernd vote to see what he has to say. The German voting block seems to be indicating that Bernd will be submitting negative comments.

I don't claim to understand ontology well enough to truly know if the Ontology ballot is a good ontology, it feels more like just an organized vocabulary. In looking at the result, and thinking through all the things that ontology should bring, I simply don't see the benefit. That said, they did respond to all my concerns. The current Security and Privacy Ontology is readable and doesn't say anything  that I disagree with. I don't think it has gone far enough, but my efforts in committee didn't persuade so it is unlikely a negative ballot comment to the same will be considered persuasive. It is likely to be used mostly as input to future work. It is not usable in any real-world way today.

The Healthcare Privacy and Security Classification is the best part of this ballot season.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjVbUQblTucMNEXAtXAtyFwUYNKtse4hN6MKTSaO6HxyMdCJeysvsz-U0ovUgVI9NzL-xXNk75yGWTSz2GgqeM2JoECjmqaeIbgYdDXMkWXc_l5iUVwvGmv5zKMBMRg5F5K_Nw5f4MQQW8V/s1600/tagged_duck.JPGThis sets up a more comprehensive set of security/privacy tags. Where today we have only the one dimensional ConfidentialityCode, this adds more dimensions. These dimensions are not new, but our understanding, vocabulary, and method of interoperability have been immature. This immaturity was why the ConfidentialityCode was pulled back to a simple risk based scale. Now we have better mechanisms, better vocabulary, and can communicate the meaning. The new full set of security tags are:

- [1â€¦1] Confidentiality Security Classification Label Field

- [0â€¦*] Sensitivity Security Category Label Field

- [0â€¦*] Compartment Security Category Label Field

- [0â€¦*] Integrity Security Category Label Field

- [0â€¦*] Handling Caveat Security Category Field

Each has a unique vocabulary, at least one set of vocabulary available from HL7. Likely other vocabularies can come from elsewhere like ISO, or even an exchange organization boundary.

I have an IHE Change Proposal (690) assigned to me that will create an XDS mechanism to carry out the Interoperability component of the Healthcare Privacy and Security Classification ballot. I intend to implement a structure just like this all within the existing ConfidentiatiltyCode XDS slot. This is a multi-value slot, so should be able to carry this larger tag set just fine. This CP will mostly be instructions on how to use the existing ConfidentialityCode metadata to carry at least a ConfidentialityCode, and one or more of the other types. It will then instruct on how to tell when you have a value what kind of meaning one would apply to it: Sensitivity, Compartment, Integrity, or Handling Caveat. Rather simple given that these are independently identifiable vocabulary code systems. This is my theory anyway.

I do have some comments on these ballots, but none of them rise to the need to ballot negative.

