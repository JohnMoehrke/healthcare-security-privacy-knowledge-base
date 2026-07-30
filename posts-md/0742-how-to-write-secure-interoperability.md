# How to Write Secure Interoperability Standards

Originally posted: https://healthcaresecprivacy.blogspot.com/2010/02/how-to-write-secure-interoperability.html
Published: 2010-02-16T13:42:00.001Z
Updated: 2010-02-16T15:13:31.942Z
Author: John Moehrke

---

I am an active member of "Interoperability Standards" organizations: HL7, ASTM, DICOM, ISO TC215, OASIS, and IETF. I am also an active member of "Profiling" organizations: IHE, and HITSP.  I am most active in the security/privacy workgroups in these organizations, where we receive strange requests from the 'other' workgroups. These requests are a fragment of a security issue, but don't have enough information around the issue to make them actionable work items. Some of them are issues for which the organization already has a solution, such as Transport Layer Security (TLS). Some of them are simply "[Security Theater](http://en.wikipedia.org/wiki/Security_theater)".

The security workgroups decided to provide some guidance to the 'other' workgroups on how to appropriately design their standard with security-built-in. Security is about mitigating risk to Confidentiality, Integrity, and Availability. So we knew that our guidance would be an instruction set on how to do a [Risk Assessment](http://en.wikipedia.org/wiki/Risk_assessment). We knew that the 'other' workgroups are made up of smart people that needed simply a little guidance, but knew that we needed to carefully craft our guidance so that it would be used. So, we wrote a "Cookbook" on the topic of  writing the "Security Considerations" section of their standard. A title that we figured would have people thinking we were giving them simple instructions, read "Cut-and-Paste", on how they should write their Security Considerations section. We know it is the most simple approach even if one must first do a risk assessment which is typically not seen as a 'simple' task.

The advantages of this approach are:

- The 'other' workgroup must first describe the expectations of the environment that they expect their standard will be used. This includes describing the already available underlying security technology.

- The 'other' workgroup uses the risk assessment tool to quantitatively prioritize the actual risks. Thus they focus on real risks, and can prioritize the most 'risky' issues.

- The 'other' workgroup will flow-down unmitigated risks to the next level of design. There are risks that can't be mitigated by a standards organization. These unmitigated risks should be documented in their standard, "Security Considerations", as risks that are identified but not mitigated. This list of risks can be picked up by the next level of design.

- The 'other' workgroup has good documentation of issues that the 'security' workgroup should work on. The risk assessment is a clear communications tool that has the background and the risk well defined and prioritized.

**These Procedures are now available at:**

- **HL7 version of the** "[Cookbook for Security Considerations](http://wiki.hl7.org/index.php?title=Cookbook_for_Security_Considerations)" has a really good PowerPoint training package. This one has not yet been piloted, but there are a few projects that will be running this process. These pilot projects are closely associated with the security workgroup.

-

- **IHE version of the** "[Cookbook for Security Considerations](http://wiki.ihe.net/index.php?title=Cookbook_for_Security_Considerations#Resources)" has some good experience having used the tool on a set of profiles already. The risk assessments are not considered normative, but are archived so that they can be reviewed when the Profile gets revised. These risk assessment spreadsheets are useful reference when a new 'other' workgroup uses the tool.

In both cases, more has yet to be learned.

