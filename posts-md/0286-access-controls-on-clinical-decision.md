# Access Controls on Clinical Decision Support

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/03/access-controls-on-clinical-decision.html
Published: 2011-03-18T21:49:00Z
Updated: 2011-03-18T21:49:41.475Z
Author: John Moehrke

---

CDS is a specifically difficult area of healthcare to enforcing Access Controls, inclusive of Role-Based-Access-Control and specifically concerning Patient Privacy consent and authorizations. First lets consider what [Clinical Decision Support (CDS)](http://en.wikipedia.org/wiki/Clinical_decision_support_system) does. This direct from Wikipedia (today :-)

> **Clinical decision support system** (**CDSS** or **CDS**) is an interactive [decision support system](http://en.wikipedia.org/wiki/Decision_support_system) (DSS) Computer [Software](http://en.wikipedia.org/wiki/Software), which is designed to assist [physicians](http://en.wikipedia.org/wiki/Physician) and other health professionals with [decision making](http://en.wikipedia.org/wiki/Decision_making) tasks, as determining [diagnosis](http://en.wikipedia.org/wiki/Diagnosis_%28medical%29)  of patient data. A working definition has been proposed by Dr. Robert  Hayward of the Centre for Health Evidence; "Clinical Decision Support  systems link health observations with health knowledge to influence  health choices by clinicians for improved health care". This definition  has the advantage of simplifying Clinical Decision Support to a  functional concept.
I understand that a CDS engine includes a large set of medical decision rules (e.g. drug-to-drug adverse reaction checking), that are applied to the patients longitudinal medical record to assist with providing safe and appropriate care. The CDS might be engaged by [Computerized Physician Order Entry (CPOE)](http://en.wikipedia.org/wiki/Computerized_physician_order_entry) to determine if a new treatment regiment would have any negative effects based on the longitudinal record of the patient.

Clearly when there is a need for unspecified and unfettered access to the longitudinal record there is suspicion that CDS and privacy controls are going to collide.  The good news is that members of the [HL7 CDS workgroup](http://wiki.hl7.org/index.php?title=Clinical_Decision_Support_Workgroup) have decided that although their current timeline didn't include Security or Privacy; they should engage the [Security Workgroup](http://wiki.hl7.org/index.php?title=Security) and use the [Cookbook for Security Considerations](http://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html)... eventually... So, It might not be fully assessed in the next ballot, but there should be the placeholders.

Scott  Bolte is a member of the CDS workgroup, a peer in GE Healthcare, and former security geek. He writes:

> "In the privacy world, once data has been divulged to another system/user, you must assume it has been disclosed and control over it lost. In the CDS world, especially to assist with a diagnosis, it will be common to request vast amounts of data to see which hypothesis best matches the observations. As a result, a CDS query may disclose a patient's entire medical record, and trigger corresponding audit trails.

Even if we assume that the CDS is a trusted system (a dubious assumption), and that audit entries will be made only for data elements that were relevant in the end, it is still easy to maliciously extract data. For example, if you want to see if the patient is on drug X, simply make a CPOE query that includes the contraindicated drug Y. Even without revealing the patient is on X, the rejection of Y will let you draw that conclusion.

The typical security model for CDS probes for all longitudinal  data would include the identity of the requesting user, and thus the  sources of data can restrict the data they return. This security model makes it difficult to determine if there is a potential need for 'break-glass', a form of privacy override.

I found it _interesting _that Scott  included both the use-case problem and covertly included hints to a solutionâ€¦ If the CDS can determine which parts of the record were used to create its output, that is a huge positive step.  Clearly CDS will need to pull vast amounts of information from the longitudinal record much of it not relevant. This not relevant information does not need to be considered 'disclosed' if it is only seen by the CDS automaton (yeah, some will argue).

When the CDS determines the specific data that is going to be  used in the resulting output of CDS, this can be indicated to the source  so that an appropriate Accounting of Disclosures can be recorded. This  might mean that the initial probes by the CDS are marked with a specific  PurposeOfUse that is only authorized by the CDS identity  authentication (I didn't find this PurposeOfUse in the draft I have of ISO 14265); whereas a different PurposeOfUse (more classic PurposeOfUse=1.0.14265.1.1) and identity of the requesting user is used a second time  for those objects that are impactful to the CDS decision. A potential

The CDS can also back-track to determine if those who would receive the output of the CDS would have access privileges as well as privacy authorization to the data used (Access Controls). Thus there could be a CDS decision that canâ€™t be returned even if the CDS could have said something. This is a very uncomfortable position for people to think about, but we must honor the wishes of the patient. There are regions where the patientâ€™s privacy wishes are held higher than the wishes of the care provider (e.g. Australia where Opt-Out really means Opt-Out). Yet there might be exceptions included in the privacy policy that would allow a CDS decision of some kind, specifically the ability to indicate that information relevant was withheld due to privacy concerns thus enabling a Break-Glass (yes it is a policy decision to expose that knowledge is being withheld).

As with any healthcare information is the fact that the requester of data may not be the only consumer as the result may end up in a report that becomes part of the longitudinal record.

The idea that the CDS is an automaton that is fully trusted is an assumption that all HL7 workgroups would have to make, it is an assumption that needs to be said clearly in the Security Considerations so that others can see that it is a precondition that the implementers must work to achieve. HL7 can't do anything in their specifications to assure that the code written is perfectly secure, nor that the deployment of that is perfectly secure.

So, the first step is to follow the [Cookbook for Security Considerations](http://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html)... , and identify the environment and threats.... Sounds like fun to me...

