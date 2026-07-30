# Universal Health ID -- Enable Privacy

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/02/universal-health-id-enable-privacy.html
Published: 2012-02-01T18:15:00Z
Updated: 2012-02-01T18:15:52.222Z
Author: John Moehrke

---

I enjoyed reading the Wall Street Journal article â€œ[Should Every Patient Have a Unique ID Number for All Medical Records?](http://draft.blogger.com/Should%20Every%20Patient%20Have%20a%20Unique%20ID%20Number%20for%20All%20Medical%20Records?)â€, at least until I got to the section by Deborah Peel. I respect Deborah as an advocate for Privacy, but her argument against Universal Health ID is a complete non-sequitur. Deborah says â€œBut a universal health ID system would **empower government and corporations to exploit** the single biggest flaw in health-care technology today: Patients can't control who sees, uses and sells their sensitive health data.â€

I added the bold on the words â€œ**empower government and corporations to exploit**â€ as this is the part that is totally FALSE. There is nothing in having a universal ID that â€˜empowersâ€™ anyone. In fact one of the struggles that I am faced with in writing Privacy standards is that there is not a solid patient identifier that I can apply to [Privacy Directives and Privacy Policy](http://healthcaresecprivacy.blogspot.com/2011/08/ihe-privacy-and-security-profiles-basic.html).  This concept that having a universal ID empowers exploitation is totally wrong. What is empowering the exploitation today is that there is no way to determine what policies apply to the data. Therefore the default policy could just possibly be â€˜exploit awayâ€™.

  **Without a solid link between the policy, patient, and data; there is no control. **I want to enable the patient to control their data, for that I need to know who the patient is. The thought that healthcare organizations would never keep your data, and always transfer it to a PHR, is simply not going to happen in the USA due to many many rules including medical licensing, public health reporting, disclosure, and malpractice. We need to get over the failed attempt to change. This doesn't mean the PHR doesn't have it's place, I believe it does hold a strong role as a peer on an HIE. I just see controlling the patients data as being something that needs to be addressed Universally. For that we need strong identifiers, strong policies, and strong data management.

I have written on [Patient Identity Matching](http://healthcaresecprivacy.blogspot.com/2011/12/patient-identity-matching.html), this is the process that is being used today. It is an error prone process, and worse it requires that everyone share the patient demographics in the most exacting detail they possibly can, and that centrally there is a database of all of the shared demographics. This is MORE of a privacy violation than if the central core needed to only hold Patient ID values, where a Patient ID value is an opaque string of numbers uniquely assigned to that patient by an assigning authority (binding both the identifier and the identifier of the assigning authority â€“ results in a unique value).

The first section of the Wall Street Journal article, written by Michael Collins, hinted at this. I wonâ€™t bother hinting. The ramifications of NOT having a universal ID is that we are FORCED to expose high fidelity patient demographics. Even if we are using a PHR, even if we are using Direct Push. We MUST fully describe the patient in order to make sure we are dealing with the right patient.

Note that Patient Safety will eventually come into the picture, as ultimately before the patient is treated they need to be highly identified, using their Universal ID alone at treatment time is simply not â€œSafeâ€. â€“ For one, we know that people share insurance ID values so that their treatment is paid for.

We do NOT need a single Universal ID: especially not a single assigning authority. All we need to do is determine a set of assigning authorities that are considered â€˜good enoughâ€™. When I say â€˜good enoughâ€™ what I mean is that the assigning authority has processes in place to positively identify and prove that the human they are assigning an identity to is really that specific human. We know of some of these â€˜assigning authoritiesâ€™ already: Passport, and Driverâ€™s License. Yes, these are non-healthcare identifiers; but if you have one then you should be able to use it. Many states are starting up mandatory Voter identity systems, these likely are going to be â€˜good enoughâ€™ too.  More likely is to simply use the identifier assigned by your GP, or Your Insurance. Fact is we donâ€™t need to have a pre-determined list of assigning authorities, each facility can determine what is â€˜good enoughâ€™ for them; yes it would be nice if there was a starter set already proofed.

How are these used? Simply, they are entered into the Patient Identity Matching as a â€˜high assuranceâ€™ identity with the assigning authority value. Thus they can be matched directly, bit-for-bit.

Not that any system MUST recognize that any ID value can be revoked or replaced. Thus there is a need to keep old ID values in a cross-reference. This is another reason there is no 'single' health ID; and there will likely be multiple over time, even if things are always wonderful for the patient.


Once this is done, we end up with a really cool thing. The patient can choose their own Voluntary Patient ID; likely their PHR address. Yes, this is enabled by recognizing the use of IDs as a binding between the unique value assigned and the identity of the assigning authority. You all see this daily, when you use an e-mail address. Globally unique, because the first part is your identity the second part is the identity of the assigning authority. In these cases, the assigning authority is likely not highly trusted, but if the patient trust them then they are likely trustworthy.

Patient Privacy is enabled when we have strongly assured Identifiers. We don't even need to invent a new system. We just need to use the identifiers that we have already. It would not hurt to have a new system of trustable [opaque identifiers](http://healthcaresecprivacy.blogspot.com/2011/02/creating-and-using-unique-id-uuid-oid.html) that support [federation](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html).

