# Encryption is like Penicillin

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/02/encryption-is-like-penicillin.html
Published: 2012-02-20T15:02:00Z
Updated: 2012-02-20T15:02:23.821Z
Author: John Moehrke

---

There is a renewed interest in broad application of encrypting all information that is stored anywhere. This drive arises from some highly visible cases where large amounts of Patient Identifiable Health Information was lost or stolen. The USA Breach Notification have [almost double the previous year](http://www.cmio.net/index.php?option=com_articles&view=article&id=31642:report-19-million-records-affected-by-breaches-since-late-2009). Many state and federal laws require various levels/types of Breach Notification to impacted individuals, government authorities, and even the public at large. These Breach Notification laws often exclude the requirement for notification when the lost or stolen Patient Identifiable Health Information is stored in encrypted form. This exclusion creates a strong incentive to encrypt all data at rest.

I am not going to advocate against encryption, it is a wonderful security tool. I am going to advocate for using this tool appropriately. Like Penicillin, it must be used to fight only the things that it can fix and should not be overused as it has side-affects and unintended consequences. I speak often about using [Risk Assessment/Management to address security and privacy](http://healthcaresecprivacy.blogspot.com/2010/11/iec-80001-risk-assessment-to-be-used.html); it is the logic tool that security experts use to identify what is truly a risk worth addressing, and what is the appropriate response to address that risk.

http://roaring20scush8.wikispaces.com/file/view/20090203223840!Penicillin_cures_gonorrhea.jpg/128789427/20090203223840!Penicillin_cures_gonorrhea.jpg

In Healthcare, care givers use a form of Risk Assessment/Management to diagnose and treat as well. This is why I want to bring up the imperfect analogy that Encryption is like Penicillin. The application of Encryption to address a security risk is a form of prescription, but much like Penicillin, Encryption is not the cure-all. Encryption, like Penicillin, works for specific types of problems. Encryption, like Penicillin, when used improperly can make the overall health worse - (see yellow sticky on computer monitor for the encryption key). Encryption, like Penicillin, needs to be applied carefully after assessing the risk. I could say that Encryption, like Penicillin, when used too much becomes ineffective; but I don't know exactly how to get to that conclusion. Encryption, like Penicillin, is ineffective when not fully applied correctly (poor key management vs stopping taking pills when feel better). There are cases where applying Encryption, like Penicillin, would cause greater harm. I am guessing I could go on and on; but I am way beyond my understanding of Penicillin.

http://www.harding.edu/slwilliams/JailCard.jpg

Encryption is seen as a cure-all, like Penicillin was decades before. We have gotten smarter at applying Penicillin today, we need to apply as much smarts at applying Encryption. So, please apply Encryption appropriate to the risk that it is solving. The Breach Notification legislation giving a 'get out of jail free' card to those that have applied encryption doesn't help. Meaningful Use should add clarity that a well designed system that never puts PHI onto a portable device is just as good as applying encryption to a portable device because it has PHI needing to be protected. Yet we need to recognize that sometimes it is appropriate for a portable device to hold PHI and it not be encrypted; in these cases strong physical controls are needed. Recognizing that there is a risk that the strong physical controls may fail leaving no fallback protection.

The analysis is needed, Risk is never brought to zero.

The following is a deeper White Paper I wrote a few years ago that never got published.  It focuses on the topic applied to formal Medical Devices, where there is a clear intended use and patient safety concern. This is just as applicable to informal Mobile Health devices:

------------------------------------------------------------------

This white paper recommends a balanced means for appropriately selecting the security technology in support of regulatory compliance. In many cases, it is consistent with a devices intended use that removable media or hard-drives in portable devices should be encrypted to provide the right mitigation for the risk of loss of that device. However there is also a case to be made where a mandate, applied too broadly, can adversely impact the specialized Medical Device in a manner that reduces its safe and effective use for its intended purpose. Consistent with the goals of health care delivery, the design and operation of a Medical Device gives top priority to mitigating the risks to Patient and Operator safety. Such design considerations combined with the environment of use sometimes leads to technical security controls that are less stringent than that found on a general purpose laptop.  This is a common perception among policy makers, however applying security technology appropriately can produce more secure systems when the system is a dedicated device, and not a general purpose laptop, since it is much easier to define the use case scenarios and mitigate the risk

**History: **

For most of its practice, health care has relied on printed records on paper and film to facilitate workflow during diagnosis and treatment. The security and privacy of paper records systems have relied on care givers' professional oaths, physical security, and the reality that it is time consuming and hard to conceal unauthorized record duplication and dissemination. The emerging and maturing Electronic Medical Records (EMR), Electronic Health Record (EHR), and Health Information Exchange (HIE) provides far more opportunity for access to the data, both authorized and unauthorized. New diagnostic and treatment technologies plus the introduction of inexpensive means of storage, communication, and manipulation of medical data has further increased the volume of information managed.

Physical controls are less meaningful and one of the important advantages is their ease of transfer and viewing. Thus, the electronic form of health records are,  perhaps too often, easily moved onto portable devices such as iphones, ipods, tablets, USB-Memory, or CD/DVD, or even portable computers. The reasons the data are moved outside of a controlled EMR and onto a portable device are many, but the primary push seems to be ease of use and collaborative workflow and even expedited quality monitoring.

**Breach Notification Regulations **

There has been a large increase in states and countries that have developed Breach Notification laws and regulations. This began in 2002 with California, and, in the US spread to 46 states in 8 years. In general, these laws apply to finance- and ID theft-related personal data but starting with the 2009 California law, medical data was included as a type requiring mandatory breach notification. In the USA, Personally Identifiable Information (PII) is a term often used to identify this broader set of information that includes: Financial data: SSN, credit card, bank account, insurance ID, etc.; and/or Healthcare data: patient status, diagnosis, etc. Massachusetts went beyond the California reporting statutes to actually legislate the required security controls around PII. The original proposed law had a strong focus on encryption, but the enacted law (MA 201 CMR 17.00) included risk analysis to allow for scalability of the solution to the realities of the risks without explicitly mandating encryption.

After the aggressive but voluntary breach notification campaign by the United Kingdomâ€™s Information Commissionerâ€™s Office, Germany became the first European country to enact mandatory breach notification effective on September 1, 2009 (the July 10, 2009 amendment to the Federal Data Protection Act â€“ FDPA). There is a great deal of discussion in the EC about adding breach notification to the European Commissionâ€™s Privacy Directive (95/46 EC).

The USA Federal medical privacy regulation known as HIPAA was updated in January 2010 with the HITECH Act which includes explicit requirements for privacy breach notification. It amplifies the broader applicability the security controls listed in HIPAA including encryption for electronic protected health information (HIPAA 164.312(2)(iv)). However, it does this as an addressable technical control that is one of many selected in managing the risks associated with PII. In addition to this regulation, The USA Department of Health and Human Services (HHS) issued a Final Rule on breach notification that included notifying HHS directly of breaches of more than 500 individualsâ€™ records. The final rule came out in July 2010; and we now have the [HHS wall-of-shame](http://www.hhs.gov/ocr/privacy/hipaa/administrative/breachnotificationrule/index.html). This is a very powerful force for change.

Canada includes Breach Notification in the Personal Health Information Protection Act (PHIPA). Although not specifically mandating encryption by law, some authorities, such as the Ontario Information and Privacy Commissioner has ordered provincial health units to  to encrypt personal health information on mobile devices. Similarly, the United Kingdomâ€™s National Health Serviceâ€™s Chief Executive has directed that all transfer of PII or storage on portable devices be protected with encryption. So, some health organizations are mandating encryption but to date, law and regulation has favored applying risk analysis to properly balance the cost and performance impacts of encryption with the potential benefits and harm.

Almost all of the laws and regulations mandating breach notification permit an exception to notification the Patient Identifiable Information is unusable, unreadable, or indecipherable (as with encryption or de-identification). However, when a breach does occur, it is an embarrassing and potentially expensive situation that is [complex to manage](http://www.histalkpractice.com/2011/12/03/first-hand-experience-with-a-patient-data-security-breach-12311/).

Of course, there is careful thought behind allowing local organizations to conduct their own risk analyses to determine their own policies with regard to data protection (including encryption). A proper risk and cost balanced conclusion about security controls can only be made by qualified staff familiar with the institutional mission, the dangers associated with the provision of heath care and the real damage caused by PII breaches. Balancing safety, effectiveness, security, and privacy must be done in the face of an evolving and expanding legal, health, and threat landscape. The dictum â€œfirst do no harmâ€ applies strongly here and careful consideration of harm must come to bear.

**Ways data gets exposed **

To understand what a Breach is, letâ€™s examine the ways that data can be exposed to unauthorized access.

**Hackers**

Focused and funded hackers are after very specific information. They will likely use a wide variety of methods to get access to the information or resources they seek. The case of encrypting data at rest only protects against this threat if the access gained is not a normal network interface.  Even in those cases requirements such as those for medical emergencies require the medical device always be available for its intended purpose.  In those cases the self authentication of the device on boot into the application can provide a hacker direct access to the information they seek.  This however could be mitigated by physical controls.

There are less focused attacks with automated tools. In this case the attacker is opportunistic, often times not even interested in the information but rather wanting a computing device with an internet presence. Again the relevance is related to the type of access granted.

A sample of the breach notices present at the HHS/OCR Breach Notification web site reveal very few instances where hacking was used, which resulted in a moderate number of patients exposed. This is an unacceptable value, but we will see that it is very small in comparison.

**Unauthorized Access**

In this case someone was given access under a liberal access control policy but was caught, through audit logs, accessing records that they should not have been accessing.  Some examples of this:

- Coral Gables Couple â€“selling patient data to personal-injury lawyers

- Lawanda Jackson [UCLA Med] â€“ multiple celebrity patient

- George Clooney â€“ 2 dozen employees inappropriately accessed the records out of curiosity and were disciplined

When we look at the HHS/OCR Breach Notification web site, we see that this threat resulted in a handful of organizations needing to Notify, which resulted in about tens of thousands patients exposed. These cases tend to be highly visible as they are usual sensational or involve VIP individuals.

**Accidental loss**

In this case we find cases like a laptop being left in a taxi, or a memory-stick being left in a suit coat at the cleaners. Often times these cases are true accidents, and it is unlikely that the resulting lost data are actually used in a way that causes harm. However, there is a chance that the data exposure might lead to harm so the Breach Notification must be triggered.

When we look at the HHS/OCR Breach Notification web site, we see that this case results in a dozen entries, exposing a hundred thousand patients. This is clearly a case where encryption would mitigate exposure from these inherently portable devices.

**Theft of a Portable Device**

In this case we have outright theft by an attacker. These cases are distinct from a Hacker because the thief physically takes device. It is not clear in these cases if the thief is interested in the data, or just wants the valuable device to pawn for cash.  Some cases:

- Laptop

- workstation taken from corridors

- medical-devices that incorporated computers

- systems taken from loading docks

- systems taken from shipping services

There is an extreme case of physical theft where BlueCross BlueShield of Tennessee experienced a breach 1 Million patientsâ€™ records in a [theft of 57 hard-drives from call center](http://www.modernhealthcare.com/apps/pbcs.dll/article?AID=/20091125/REG/311259947)

**Exposure carries level of risk of data exposure. **

In all of these cases the breach carries some level of risk of exposing patient identifiable information. Of course, lacking patient identifiable information there is no risk of exposure. Risk exists because there is a potential for harm to the affected individuals. This harm may be realized by damage to reputation, personal dignity, future healthcare, finances, and peace of mind. Many of these arise from crimes relating to identity theft such as financial fraud or health fraud. Of course, these risks occur in a context of the benefits provided by health care. All analysis of â€œacceptable riskâ€ must be accompanied by a clear understanding of the benefits of the technology, the risks of compromise to confidentiality, integrity, and availability of data, and the incremental risks to other facets of the healthcare process while trying to minimize a threat to any one element.

For more details on how to balance all in the process of  Risk Management see any text on risk management such as the USA National Institute of Standards publication [NIST SP 800-30 Risk Management Guide for Information Technology](http://csrc.nist.gov/publications/nistpubs/800-30/sp800-30.pdf).

**The fix needs to be proportional to the risk**

Mitigating any risk needs to be informed by benefits, costs, policy, physical environment, procedures, and other factors. The solution needs to be carefully considered so that it doesn't introduce new risks, such as a patient safety risk, or machine performance degradation risk.  Encryption of Data-at-Rest is not always the preferred path. Considerations include:

- Is there patient data on the device?

- How much patient data on the device?

- Federal rule does not require notification for less than 500 patients exposed.  State rules may be stricter.

- How easy is the patient data to find and/or identify as such

- What value does the patient data have (low grade data or high value data)

- Are there other controls in place to mitigate the risk

- Is the device use critical to life

- Bedside monitor in an ICU is critical is visible to care takers at all times

- Ventilator must perform job consistently

- Defibrillator must be useable by anyone

- Is the device physically secured

- MRI bolted to floor in isolated room with double doors

- Servers in data-centers with key-entry locks

There are positive benefits of Encryption:

- Unanticipated loss of physical device is protected

- Decommissioning of physical device (hard drive) is less of a concern as encrypted data doesn't need to be erased

- DoD does not consider encrypted HD sufficient

- Others as defined in [NIST 800-111](http://csrc.nist.gov/publications/nistpubs/800-111/SP800-111.pdf).

There are problems introduced by Encryption

- system performance reduction may introduce unintended operational problems

- are there costs associated with keeping performance adequate by cost-incurring upgrades to processor, disks, transfer speeds, etc.

- Changes to Workflow to login at startup

- Loss of encryption key results in destroyed data (non escrowed keys)

- Catastrophic emergency situations, e.g.,. Katrina; harder to give volunteer health providers access to the device

Again, through structured risk analysis, these factors can be examined and balanced.

**Conclusion**

Health delivery organizations must build compliance programs meeting the needs of law, regulation, policy, contract, and ethics.  In reaching security control decisions (e.g., encrypting data at rest), we needs to consider the intended use of the device, physical environment, user, performance, fidelity of data, data volume, and cost.

Generally for mobile devices (laptops, PDA, USB-Memory, backup-tape, CD-ROM, DVD, etc) that store PHI, encryption that follow the NIST 800-111 guidelines would be well advised. There are standards available to support encryption at the Document or Media level. See the [IHE Document Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html).

Some devices and workstations are designed to not store locally or limit local storage to cache until the data is offloaded to formal storage. In these cases there is little or no PHI to be exposed if the device is lost or stolen.

For devices that are physically secured (MRI, CT, CathLab, PACS, EHR Servers, Data/Application Servers) in staff-controlled environments, it is not clear that the performance and equipment costs are proportional to the actual risks.

In general, medical devices provide substantial benefits in the diagnosis, treatment, and monitoring of disease. Protecting the PII managed by these devices is essential in the provision of health care. Decisions about the specific means to protecting that data must take into considerations the safety of patient and operator, the effectiveness of the organizationâ€™s health mission, and the security of data and systems managed. There is no one solution that fits all potential threats â€“ a carefully considered balance is necessary.

------------------------------------------------------------------------

**Resources:**

- [IEC 80001 - Risk Assessment to be used when putting a Medical Device onto a Network](http://healthcaresecprivacy.blogspot.com/2010/11/iec-80001-risk-assessment-to-be-used.html)

- [Using both Document Encryption and Document Signature](http://healthcaresecprivacy.blogspot.com/2011/10/using-both-document-encryption-and.html)

- IHE [Document Encryption](http://healthcaresecprivacy.blogspot.com/2011/09/document-encryption.html)

- [Predicting Meaningful Use Stage 2 Security](http://healthcaresecprivacy.blogspot.com/2011/12/predicting-meaningful-use-stage-2.html)

- NIST Guide to Storage Encryption Technologies for End User Devices [SP800-111.pdf](http://csrc.nist.gov/publications/nistpubs/800-111/SP800-111.pdf)

- NIST Risk Management Guide for Information Technology Systems [sp800-30.pdf](http://csrc.nist.gov/publications/nistpubs/800-30/sp800-30.pdf)

- article on [overcoming resistance to encryption](http://www.healthcareinfosecurity.com/articles.php?art_id=4307)

- The 2011 USA Breach Notification have [almost double the previous year](http://www.cmio.net/index.php?option=com_articles&view=article&id=31642:report-19-million-records-affected-by-breaches-since-late-2009).

