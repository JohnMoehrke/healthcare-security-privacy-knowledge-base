# IHE FHIR Privacy Consent IG

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/10/ihe-fhir-privacy-consent-ig.html
Published: 2022-10-25T14:29:00.004Z
Updated: 2022-10-25T14:37:54.269Z
Author: John Moehrke

---

IHE IT-Infrastructure has agreed to start a new work item on the topic of Privacy Consent, using FHIR. This minimally would be a re-evaluation of the use-cases in [BPPC](https://profiles.ihe.net/ITI/TF/Volume1/ch-19.html)for use with FHIR Consent, but likely will go beyond that scope simply because of modern needs, modern toolings, and ease at which the FHIR Consent can support them.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhu0NFMT8rwZNPqcZYn8xT2QWOaqZuaFBltsQ3L3ObecXp4IFi1yueRhFygYGqi5wirllZbikWvV9S3OkRkqASQdUfO5E7qaSITkMitPwVaGvlGkeRuNI-feMLRCLp_87cb1yL_QxP2aBwm6i9c1iftjhHxQ1ce-x36OfZtrjxq0kNfVix-gJAN7Q1X2A/s960/Slide8.PNG

I really don't want to call this new IHE-Profile "BPPCm", the BPPC acronym is hard enough to say without tacking on an 'm'.   What should this implementation guide be called? The inclusion of the technical solution (FHIR) is discouraged as it indicates a solution before the problem is identified. The name could be very generic, like Privacy Consent IG, but we do tend to indicate in the title the scope limits in the use-cases.

Proposed ScopeMuch like [BPPC](https://profiles.ihe.net/ITI/TF/Volume1/ch-19.html)does for XDS community. This Implementation Guide (IG) would do for FHIR community. This IG could be used with MHDS, which already has some of the framework for more specific Consents, but BPPCm would be more complete than what is [indicated in MHDS](https://profiles.ihe.net/ITI/MHDS/volume-1.html#1504-mhds-overview). This IG could also be used for organization use or community use beyond MHD/XDS, which would include use-cases like [QEDm](https://wiki.ihe.net/index.php/Query_for_Existing_Data_for_Mobile_(QEDm)), and [IPA](https://hl7.org/fhir/uv/ipa/2022Jan/index.html). This would leverage BasicAudit to record access control decisions and recording of consents.

This IG would
- Define a set of privacy policies with canonical URI and/or code.
- Define a set of Consent patterns that are foundational.
- Define actors for creation/update of Consent, Registry of Consents, Decision actor, and Enforcement actor.

See article - [https://healthcaresecprivacy.blogspot.com/2022/05/explaining-fhir-consent-examples.html](https://healthcaresecprivacy.blogspot.com/2022/05/explaining-fhir-consent-examples.html) and - [https://healthcaresecprivacy.blogspot.com/2019/11/fhir-consent-mapped-with-bppc.html](https://healthcaresecprivacy.blogspot.com/2019/11/fhir-consent-mapped-with-bppc.html)
https://github.com/JohnMoehrke/ITI.BPPCm/blob/master/README.md#use-casesUse-casesThis section includes explanation of some example scenarios and points at example Consent resources for them. These example scenarios are provided for educational use only, they are not an endorsement of these scenarios.
https://github.com/JohnMoehrke/ITI.BPPCm/blob/master/README.md#consent-policyConsent Policysome policy URI could be defined for common consent terms. Not clear that these will be detailed enough to use in practice, but would be useful categorization of policy types.
- Explicit Permit (patient elects to have some information shared) is required which enables document sharing
- Explicit Deny (patient elects to not have information shared) stops all document sharing
- Implicit Permit allows for document sharing
- Explicit Deny of sharing outside of use in local care events, but does allow emergency override
- Explicit Deny of sharing outside of use in local care events, but without emergency override
- Explicit Permit authorization captured that allows specific research project
- Change the consent policy (e.g., change from Permit to Deny)

In each of these cases the provisions of the instance of Consent could further constrain.Notice of Privacy PolicySome realms only require that the patient be given access to the organizations privacy policy. In these realms the patient is not given the choice to accept, reject, or change the terms of privacy policy. The expectation is that the patient can stop the engagement with the healthcare provider if they don't like the privacy policy (yes, we know this is a fallacy in many situations).
https://github.com/JohnMoehrke/ITI.BPPCm/blob/master/README.md#basic-signed-acknowledgementBasic signed acknowledgementThis section covers the most basic of privacy consents, that simply records an acknowledgement to a given privacy policy permitting data sharing. This is only slightly different than the Notice of Privacy Policy, in that with this example, there is some evidence captured from the ceremony. Such as a patient initialing or signing a form indicating they have received the Privacy Policy. Similar to the Notice of Privacy Policy, the Patient is not given a choice to reject or change the terms of the privacy policy. The specific version of privacy policy recorded can also be helpful to know when a given patient needs to be presented with the new version of the privacy policy.
https://github.com/JohnMoehrke/ITI.BPPCm/blob/master/README.md#change-to-deny-sharingChange to deny sharingThis section covers the case where a basic permit has been used, but for some reason the authorization is revoked or rejected. An example might be where the organization does allow the patient to reject a previously permitted action, and the patient has expressed they want to deny sharing now. Another example might be where legal action has happened compelling an organization to revoke the consent.
https://github.com/JohnMoehrke/ITI.BPPCm/blob/master/README.md#some-patient-specific-provisionsSome patient specific provisionsAuthorizing or Denying access to:
- who by a given Practitioner, CareTeam, RelatedPerson
- why by a given Purpose Of Event codeswhy by a given named Research projects
- data by Confidentiality class (Normal, but not Restricted) -- presumes a mature SLSdata by sensitivity class -- presumes a mature SLS
- data by authored timeframe
- data by authorship (authored by someone in organization XYZ)
- data by identifier (explicit reference)
- when specific period of time data can be accessed

https://github.com/JohnMoehrke/ITI.BPPCm/blob/master/README.md#not-likely-to-be-in-scopeNot likely to be in scopeThese seem to be possible with Consent resource in R4, but not clear they are priority or even possible.

- Use of Consent besides Privacy (consent to treat, advanced directives)
- .action -- this is not well enough defined in Consent
- applied obligations or refrains -- no clear place where these go in Consent
- .class -- this is not well enough defined in Consent
- data related to an identified data resource (e.g. all data related to this Encounter)

