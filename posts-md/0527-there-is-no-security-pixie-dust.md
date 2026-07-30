# There is No Security Pixie Dust

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/05/there-is-no-security-pixie-dust.html
Published: 2011-05-02T18:58:00.001Z
Updated: 2011-05-03T19:09:01.112Z
Author: John Moehrke

---

At IHE, HL7, DICOM, and elsewhere those writing a Profile or Standard turn to the security-geeks in the room and ask them to fill out the now highly recommended "**Security Considerations**" section, or ask us which other Profile they can cut-and-paste from. The security-geeks respond with "There is no security pixie dust".

Within IHE the security-geeks have published a process the "[Security Considerations Cookbook](http://wiki.ihe.net/index.php?title=Cookbook_for_Security_Considerations)" that is intended to be used by the writers of Profiles, a process that 'considers' 'security'.  The reason why we came up with the [Security Considerations Cookbook](http://wiki.ihe.net/index.php?title=Cookbook_for_Security_Considerations) is exactly because each profile is different, and that security must really be '**considered**' by the profile authors. There really is no short-circuit of the process with a cut-and-paste from another profile. There is no magic security pixie-dust.

The profiles in the Final Text were published well before we came up with the cookbook, so they are not a good example (BPPC and XDS are good, but not simple profiles). It turns out that the Profiles where we have spent significant effort using the "[Security Considerations Cookbook](http://wiki.ihe.net/index.php?title=Cookbook_for_Security_Considerations)" have  not gone to final text yet. This is why you don't find a really good example of Security Considerations in the Final  Text Technical Framework. For good examples of Security Considerations one needs to look at the Trial Implementation supplements, But having a 'really good example' is impossible. Let me explain by example:

[SVS](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_SVS_Rev2-1_TI_2010-08-10.pdf)

- This is a really good example of a profile that has explicitly declared that ATNA is not mandatory, but if one decides to group them in their application, then the encoding of the audit message is specified.

- The wording is not perfect, we always find some text that likely needs changing. The volume 2 stuff should actually be more clear about the 'if a developer does group with ATNA, this is the encoding'

- But this  profile has the advantage that it is just operating on vocabulary, and thus no identifiers or clinical data.

[XCPD](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_XCPD_Rev2-2_TI_2011-03_04.pdf)

- This is also a really good example, especially for Vol 1.

[RFD](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_RFD_Rev2-1_TI_2010-08-10.pdf)

- This is a good example of Vol 1, and that is all that this one identifies. This is because the actual content carried by the Vol 2 transactions is unknown.

[HPD](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Suppl_HPD_Rev1-1_TI_2010-08-10.pdf)

- This is a good example of something totally different

- This one might have the best wording in Vol 2...

But in ALL cases, you can see the influence of the RISK ASSESSMENT.

- It is only after the risk assessment that we know if a mandatory grouping with ATNA is the right thing to do.

- It is only after the risk assessment that we know if other things should be done, or should be explicitly NOT done.

- Etc...

So, you MUST actually 'consider' security, through following the process defined in the [Cookbook_for_Security_Considerations](http://wiki.ihe.net/index.php?title=Cookbook_for_Security_Considerations). There is no magic security pixie-dust.

Note: The same is  true in the [HL7 Security Considerations Cookbook](http://wiki.hl7.org/index.php?title=Cookbook_for_Security_Considerations)

