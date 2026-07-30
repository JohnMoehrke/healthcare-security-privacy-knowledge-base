# NHIN-Direct Focus and Scope Creep

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/05/nhin-direct-focus-and-scope-creep.html
Published: 2010-05-25T04:09:00Z
Updated: 2010-05-25T04:09:14.737Z
Author: John Moehrke

---

Keith got lots of feathers ruffled today with his blog [Governance, SDOs, PEOs and NHIN Direct](http://motorcycleguy.blogspot.com/2010/05/governance-sdos-peos-and-nhin-direct.html) , primary because he poked at how unlike a standard the current [NHIN-Direct](http://nhindirect.org/) distraction is. My comment to his blog was that the intentions are good, but like all projects it is suffering from scope creep.

> Glen put his finger on it. The project is unabashedly a prototype  project. It makes no pretense of being a standards organization or a  profiling organization. It is trying to re-use existing standards to  solve a problem that the small provider has little time to focus on. We  should view it more as a consulting gig to all the very small doctor  offices, and less like a design-for-all project.

As long as the  focus stays on helping the very little provider solve this problem, I  believe that it will be useful. But as soon as use-cases that are not  specific to the very small doctor office creep in, it will have 'jumped  the shark'. (like CCHIT and HITSP before it) Scope-creep will eventually  kill it as a useful thing.
And like clock work an email storm today tries to expand the scope of NHIN-Direct to support individual patients sitting in their home using nothing but an email client. There was much discussion of patients being allowed to invent their own NHIN-Direct 'Addresses'. This 'Address' looks very much like an email address, and in a few months when NHIN-Direct is done prototyping and ultimately chooses the one or two specifications to go forward with it might just be an email address. But the discussion nonetheless continues to discuss the use-case exactly as a patient using a common email service.

At this point I couldn't take it anymore and respond with:

Reality check... We need to focus on the NHIN-Direct prioritized Use-cases and focus on solutions that best fit the very small doctor office with 5 or less doctors. We can't be blind to the other potential use-cases, but we also can't be blind to the other realities.

At the face-to-face meeting it was made very clear that:

a) There is no reason why a Healthcare Provider can't send email to a patient today.

b) There is no reason why a Healthcare Provider can't send attachments in the email today.

c) There is no legal reason to secure these communications as long as the Healthcare Provider has reasonable assurances that the address they are sending is the one the patient told them to send it to.

At least that is what I heard (I think from Devon McGraw ).

In addition: Consumer grade email services do NOT support S/MIME or PGP. Yes I know that there are some, but they are not the big guys.  Yes I know that one can get add-on packages, or clients. But I assert that they are impossible for the 'common' patient to use, especially those most in need of healthcare. If a patient does know how to set it up, they are free to convince their Provider to use that system. But most importantly, see above. There is no need to confuse patients or providers on this topic.

Now back into the NHIN-Direct use-cases, where the patient is using a PHR like 'service' that is a common service with many other patients; There is a reason to bring in the NHIN-Direct pre-conditions, transaction requirements, and content packaging. The reason is that the PHR is a 'service' that is offered by an 'organization'.

And on this topic, our current specifications do not get in the way of the patient having one or thousands of addresses, or using individual or group endpoints, or even acting as their own organization. The limiting factor will be the willingness of their Healthcare Providing organizations to scale.

Once we are talking 'scale', we should really be discussing Health Exchanges with support for a longitudinal record (e.g. XDS, or NHIN-Exchange). This can be hosted by the patients' PHR or federated by all their providers or both. This is what HealthVault is already doing, providing a longitudinal exchange platform. This is what many HIE projects within the states are doing. See "[Where in the World is CDA and XDS](http://tinyurl.com/wwxds)".

A full scale health exchange includes policies (See [DURSA](http://healthit.hhs.gov/portal/server.pt/gateway/PTARGS_0_10731_849891_0_0_18/DRAFT%20NHIN%20Trial%20Implementations%20Production%20DURSA-3.pdf)). A full scale health exchange includes support for policy bridging including handling of consent and authorization. A full scale health exchange includes organization/entity identification and authentication systems (CA and Revocation checking). A full scale health exchange includes support for security audit logging which can feed an accounting of disclosures report. A full scale health exchange has patient identification and patient discovery mechanisms. A full scale exchange includes methods of data segmentation (aka confidentiality coding). Etc... This scale is NOT the focus of NHIN-Direct.

Reality, NHIN-Direct has prioritized use-cases and a focus to support the small Provider office of 5 doctors or less. Yes this means that they will be talking to larger organizations, but the priority for the solution space preference should be "what is best for the small Provider Office".

