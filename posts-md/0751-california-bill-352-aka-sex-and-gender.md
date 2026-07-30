# California Bill 352 - aka sex and gender sensitivity

Originally posted: https://healthcaresecprivacy.blogspot.com/2023/10/california-bill-352-aka-sex-and-gender.html
Published: 2023-10-05T15:27:00.005Z
Updated: 2023-10-05T15:31:28.369Z
Author: John Moehrke

---

The following question(s) were asked today, and I figure my response is informative to a broader audience.

>  Has anyone implemented anything pertaining to this?

Prevent the disclosure, access, transfer, transmission, or processing of medical information related to gender affirming care, abortion and abortion-related services, and contraception to persons and entities outside of this state in accordance to this part.[https://leginfo.legislature.ca.gov/faces/billNavClient.xhtml?bill_id=202320240AB352](https://leginfo.legislature.ca.gov/faces/billNavClient.xhtml?bill_id=202320240AB352)

I'm trying to think through how to go about it and it seems challenging. These are some initial thoughts.Resources should use security labels. Which ones?
There should exist valuesets that define codes which are considered sensitive.. it doesn't seem like any exist
Access by a user/practitioner might not be as challenging because we may be able to determine the state in which the practitioner is practicing via an OIDC claim or a business identifier.. not totally sure about that
Access by a system is potentially more difficult... client registrations would need to contain some assurance about the locale of the application. Some may not segment application registrations in such a way
Access by a patient seems like it would be straightforward, but perhaps not. The patient has the unfettered right to see the data. But, what if a fhir-based app they use has server/architecture outside of ca?
Perhaps a scope could be introduced: "i-am-outside-of-ca", or "i-am-inside-ca"
Must we perform partial hydration of resources? For example, if a portion of the resource is sensitive. If the Patient resource cannot be accessed, the rest of the ecosystem can loose meaning
Documents, Binaries, eg CDAs - must generate a version "for CA" and another for "not CA"
HIEs, QHINs, ...

Mohammad Jafari and I have done work on this in [DS4P](http://hl7.org/fhir/uv/security-label-ds4p/STU1/)and [IHE-PCF](https://profiles.ihe.net/ITI/PCF/index.html); we continue to refine this as part of our technical advisory participation in SHIFT. -- [https://www.drummondgroup.com/shift/](https://www.drummondgroup.com/shift/)

Grahame is correct that GENDER would be the most specific sensitivity policy code. This could be the code used to tag data that is sensitive to GENDER, although this is actually a policy code. A more general approach would be to use the SEX code which is a more proper sensitivity indicator. Whichever of these codes you use to tag data, would then be used in the Consent resource to indicate how those tagged data are to be protected.

In IHE-PCF I have a use-case that shows how this is done using the advanced option
[https://profiles.ihe.net/ITI/PCF/content.html#3584-advanced](https://profiles.ihe.net/ITI/PCF/content.html#3584-advanced)

As to the question on "There should exist a valueset that define codes which are considered sensitive..."
I will reference you to the Appendix P in the IHE-PCF
[https://profiles.ihe.net/ITI/PCF/ch-P.html#p5-security-labeling-service-models](https://profiles.ihe.net/ITI/PCF/ch-P.html#p5-security-labeling-service-models)

First, there was one attempt at creating these value-sets... they were done by SAMSA, they are quite old and are not currently maintained. The SHIFT project is looking for some proper organization and governance to take on the task of updating and maintaining these.

However, no matter how perfect a value-set is; it will always need local tweaking to your organizations use of codes, and will not address use-cases of second or third order relationships.

On blinding part of a resource... you are correct that this is dangerous area. It is an area that we chose in IHE to leave to later versions of the IHE-PCF; we needed basic profiling done first.... Partial resource redaction is likely to be a very specific thing, I expect that partial redaction will first appear in the Patient resource itself. That is to say that the gender extensions may be something that blinding might be seen as still useful for specific users (e.g. the food service doesn't need to see this). When doing blinding like this, there is also the policy on how to indicate that the resource itself is not complete, where we do have the SUBSETTED tag that is used for use-cases like _summary; but in the privacy blinding to indicate that data has been redacted is to send signal to recipient... POLICY is going to be the hard part, the technical implementation can be achieved once a policy is defined.

On the client is within CA or not... WOW, very dangerous territory.. I suspect that this is more risky than even sub resource redaction.

Note that the Gender Harmony workgroup did have some discussion on this, and also chose to defer solving it at this time.
[https://build.fhir.org/ig/HL7/fhir-gender-harmony/#out-of-scope](https://build.fhir.org/ig/HL7/fhir-gender-harmony/#out-of-scope)

Conclusion

The fact that this is not well described has nothing to do with the technical capability, we have that ready. The main problem is defining comprehensive policies and addressing the risks to privacy, security, safety, and effectiveness.

Very likely that this bill could be used to get a bunch of people together to define policy and profile how to make it work. Forcing functions are always critical to change.

I think that the [SHIFT](https://www.drummondgroup.com/shift/)workgroup is in the best position to address this. They have a very broad participation that can best see the whole picture... and I am on that project.

