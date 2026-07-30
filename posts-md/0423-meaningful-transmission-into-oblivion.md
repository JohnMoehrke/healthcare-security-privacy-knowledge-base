# Meaningful Transmission into Oblivion

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/04/meaningful-transmission-into-oblivion.html
Published: 2012-04-10T19:49:00Z
Updated: 2012-04-10T20:48:53.109Z
Author: John Moehrke

---

Today I heard that the Meaningful Use Stage 2 criteria require only that PHI can be Transmitted, never Received. I was shocked and didn't believe it was so. I asked around and indeed we couldnâ€™t find any case where the Meaningful Use Stage 2 criteria ever requires a certified product be capable of receiving PHI that was transmitted by another.

This kind of one-sided conversation is typical of government work, but that surely canâ€™t be the intention. Surely ONC didnâ€™t mean that they want everyone to be able to Send health information while at the same time no-one is required to be able receive it. But clearly that is all that the ONC rule calls for. â€œtransmit to 3rd partyâ€, and â€œtransmit summary of care recordâ€. One could include â€œdownloadâ€ by the patient. Never includes receive or uploadâ€¦

http://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/BH_LMC.png/300px-BH_LMC.png

**Oblivion is a dark place**, where all Health data probably  already exists. Why send more of it there?

This is so absurd that I had described the receiving side when I [covered the Meaningful Use Transports](http://healthcaresecprivacy.blogspot.com/2012/03/meaningful-use-stage-2-170202-transport.html). Indeed all discussions of Health Information Exchange always speak of how one receives the documents. It is the  reception of the documents (pushed or pulled) that ultimately provide the benefit of a HIE. The original author or custodian doesnâ€™t get any benefit from their participation in the Exchange. So, it could be that ONC simply figures that reception is obviously needed and thus will happen naturally.

**Hope springs eternal**, is an unreliable way to get change.

Some of the use-cases such as immunizations, surveillance, or reportable cases are indeed one-way. There is no need for these to have receive sides.

Receiving externally sourced documents does have struggles that are unique and difficult. The Meaningful Use stage 1 included criteria to Display documents, I guess one could assume this is enhanced at MU2 without need for clarity? I think it needs to be made clear. Specifically CDA documents by definition only require that the narrative part be displayed. There is no CDA criteria that I am aware of that requires that any of the structured and coded part be used in any display or even used in anyway at all. Just that the narrative block can be displayed.

Typically the Reception side is done through some human mediation. This is done to allow for quality controls to check that the content is intact, that the patient is identified and matched, that there is proper coding or manipulation of coding, that there is appropriate permissions applied, that there is appropriate routing to appropriate people, etc. So, typically there is not much that one can do purely in technology. This is especially true with the Direct Project, when the sender didn't utilize the XDM.zip content packaging with the defined [XD* Metadata](http://healthcaresecprivacy.blogspot.com/2011/08/one-metadata-model-many-deployment.html). But even when metadata is perfect, codes are aligned perfectly, and there is clear need and permissions; the automated flow directly into the Legal Medical Record will be carefully controlled by Medical Records oversight. I think that the legal Medical Records domain is not considered enough.

**Patient Provided data** is important yet a difficult topic due to plenty records of intentional abuse (drug seeking behavour) or unintended (forgetting some critical factor). Patient provided 'upload' is even harder as it also has to deal with issues of potential falsification. I have had these discussions with some as well, people really wanting [Digital Signatures](http://healthcaresecprivacy.blogspot.com/2010/11/signing-cda-documents.html). I think Digital Signatures will eventually happen, but they are not a panacea and there are other ways for a provider to check on the accuracy of another provider's authored content. Such as, ask the other provider for confirmation. For truly patient authored content, the kind of thing the doctor first asks you in the exam room: "What is the problem?"; this is always considered suspicious until the doctor confirms with his own observations... (I would say taken with a grain of salt, but we all know salt is bad for the health).

**
**

**Conclusion**

Thus at best the Reception side should be expected to be a human mediated queue (inbox). There will be cases where it is more automated, especially with Query/Retrieve exchanges. But that is a different topic.

**Updates**

Note that the NPRM does require the capability to incorporate the summary of care record and to reconcile clinical information [Â§170.314(b)(1) Incorporate summary of care record] and [Â§ 170.314(b)(4) Clinical information reconciliation]. But I would stress that in order to incorporate one must first catch it.

Note2 that the NPRM [Â§170.314(b)(1)] does say what should be done after one catches a 'summary of care record'. And it is right in line with my concern above. But it still doesn't say what precedes the 'incorporation' functionality, nor what one would do with anything that might come in on the defined 'Transports'.

>
Â§ 170.314(b)(1)(1) Transitions of care â€“ in corporate summary care record . Upon receipt of a summary care record formatted according to the standard adopte d at Â§ 170.205(a)(3), electronically incorporate, at a minimum, the following data elements: Patient name; gender; race; ethnicity; preferred language; date of birth; smoking status; vital sign s; medications; medicati on allergies; problems; procedures; laboratory tests and va lues/results; the referring or  transitioning providerâ€™s name and contact information; hospital admission and  discharge dates and locations; discharge instructions; reason(s) for hospita lization; care plan, including goals and instructions; names of  providers of care during hospitalizations; and names and contact information of any additional known care team members beyond th e referring or transitioning  provider and the receiving provider.

**

