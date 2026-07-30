# Testing your ATNA Audit Log implementation

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/10/testing-your-atna-audit-log.html
Published: 2012-10-31T18:04:00.001Z
Updated: 2016-08-25T17:42:04.866Z
Author: John Moehrke

---

Updated August 2016 New test tools for [ATNA Audit Log messages in Gazelle](https://gazelle.ihe.net/gss/server/test.seam?timestamp=ANY|1471976238398|1471976238398&simulator=13790)

I am asked often for examples of [ATNA Audit Log messages](http://healthcaresecprivacy.blogspot.com/2011/05/ihe-privacy-and-security-profiles-audit.html). IHE has far better than simple examples of ATNA audit messages.

First this information is part of a fantastic set of tools and infrastructure that the Connectathon team puts together. [Their announcement to those that have registered](http://na2013.wustl.edu/) has fantastic information around ALL profiles and how to test, prepare for connectathon and make the most out of the experience. PLEASE start with [this](http://na2013.wustl.edu/)information as it is critical to set the framework and background.

IHE has created an ATNA test tools, both client and server. The test tool for testing an ATNA Secure Node, that would be sending ATNA audit log messages, will catch and validate the message. It has an interface that shows you the messages that you have sent.

Syslog Collector info page:  [http://ihewiki.wustl.edu/wiki/index.php/Syslog_Collector](http://ihewiki.wustl.edu/wiki/index.php/Syslog_Collector)

http://ihewiki.wustl.edu/wiki/images/a/a9/2012SSxml.png

If your product is an ATNA Audit Record Repository then you can use their test tool to send various audit log messages to you. It has a web interface where you pick the message that you want to receive. Easy as pie.

Syslog Sender info page:  [http://ihewiki.wustl.edu/wiki/index.php/Syslog_Sender](http://ihewiki.wustl.edu/wiki/index.php/Syslog_Sender)

The syslog sender tool itself has a drop down list of audit messages it can send: [http://gazelle-gold.wustl.edu/SyslogSender/Sender.jsf](http://gazelle-gold.wustl.edu/SyslogSender/Sender.jsf)

The Syslog Collector currently has complete ATNA validations (using Schematron) for the following messages. Note this is just a list I copied today from the wiki, go there for more details. Double-NOTE that this even points you directly to where the specification is for that audit log message.

- User Authenticated (Login) audit message ITI-2 (110123/1101140) TF-2a 3.2.6

- User Authenticated (Logout) audit message ITI-2 (110123/1101140) TF-2a 3.2.6

- Patient Identity Source Actor Audit Msg (Adm/Reg/Upd) (ITI-8/110110) TF-2a 3.8.5.1.1

- PIX Manager or Document Registry Actor Audit Msg (Adm/Reg/Upt) (ITI-8/110110) TF-2a 3.8.5.1.2

- Patient Identity Source Actor Audit Msg (Merge) (ITI-8/110110) TF-2a 3.8.5.2.1

- PIX Manager or Document Registry Actor Audit Msg (Merge) (ITI-8/110110) TF-2a 3.8.5.2.2

- PIX Consumer Audit Msg (ITI-9/110112) TF-2a 3.9.5.1.1

- PIX Manager Audit Msg (ITI-9/110112) TF-2a 3.9.5.1.2

- PIX Manager Update Notification Audit Msg (ITI-10/110110) TF-2a 3.10.5.1.1

- PIX Consumer Update Notification Audit Msg (ITI-10/110110) TF-2a 3.10.5.1.2

- Registry Stored Query Document Registry Audit Msg (ITI-18/110112) TF-2a 3.18.5.1.1

- Registry Stored Query Document Consumer Audit Msg (ITI-18/110112) TF-2a 3.18.5.1.1

- PDQ Consumer Audit Msg (ITI-21/110112) TF-2a 3.21.5.1.1

- PDQ Source Audit Msg (ITI-21/110112) TF-2a 3.21.5.1.2

- Patient Demographics and Visit Query Consumer Audit Msg (ITI-22/110112) TF-2a 3.21.5.1.1

- Patient Demographics and Visit Query Source Audit Msg (ITI-22/110112) TF-2a 3.21.5.2.1

- Provide and Reg Doc Set-b Document Source audit Msg (ITI-41/110106) TF-2b 3.41.7.1.1

- Provide and Reg Doc Set-b Document Repository or Document Recipient audit Msg (ITI-41/110107) TF-2b 3.41.7.1.2

- Register Document Set-b Document Registry Audit Msg (ITI-42/110107) TF-2b 3.42.7.1.1

- Register Document Set-b Repository or Src/Rep Audit Msg (ITI-42/110106) TF-2b 3.42.7.1.1

- Retrieve Doc Set Doc Consumer Audit Msg (ITI-43/110107) TF-2b 3.43.6.1.1

- Retrieve Doc Set Doc Repository Audit Msg (ITI-43/110106) TF-2b 3.43.6.1.2

- PID V3 PID Source Audit Msg (ITI-44/110110) TF-2b 3.44.5.1.1

- PID V3 PIX Mgr / Doc Registry Audit Msg (ITI-44/110110) TF-2b 3.44.5.1.2

- PIX V3 Consumer Audit Msg (ITI-45/110112) TF-2b 3.45.5.1.1

- PIX V3 Manager Audit Msg (ITI-45/110112) TF-2b 3.45.5.1.2

- PIX V3 Manager Update Notification Audit Msg (ITI-46/110110) TF-2b 3.46.5.1.1

- PIX V3 Consumer Update Notification Audit Msg (ITI-46/110110) TF-2b 3.46.5.1.2

- PDQ V3 Source Audit Msg (ITI-47/110112) TF-2b 3.47.5.1.2PDQ V3 Consumer Audit Msg (ITI-47/110112) TF-2b 3.47.5.1.1

- Value Set Consumer Audit Msg (ITI-48/110107) ITI_Suppl_SVS_Rev2-1_TI_2010-08-10 3.48.6.1.1

- Value Set Repository Audit Msg (ITI-48/110106) ITI_Suppl_SVS_Rev2-1_TI_2010-08-10 3.48.6.1.2

- Multi-Patient Stored Query Document Consumer Audit Msg (ITI-51/110112) TF-2b 3.51.5.1.1

- Multi-Patient Stored Query Document Registry Audit Msg (ITI-51/110112) TF-2b 3.51.5.1.2

- Document Metadata Subscriber Audit Msg (ITI-52/110112) ITI_Suppl_DSUB_Rev1-1_TI_2011-08-19 3.52.6.1.1

- Document Metadata Notification Broker Audit Msg (ITI-52/110112) IHE_ITI_Suppl_DSUB_Rev1-1_TI_2011-08-19 3.52.6.1.2

- Document Metadata Notification Recipient Audit Msg (ITI-53/110107) ITI_Suppl_DSUB_Rev1-1_TI_2011-08-19 3.53.5.1.1

- Document Metadata Notification Broker Audit Msg (ITI-53/110106) ITI_Suppl_DSUB_Rev1-1_TI_2011-08-19 3.53.5.1.2

- Document Metadata Notification Recipient Audit Msg (ITI-54/110107) IHE_ITI_Suppl_DSUB_Rev1-1_TI_2011-08-19 3.54.5.1.1

- Document Metadata Notification Broker Audit Msg (ITI-54/110106) ITI_Suppl_DSUB_Rev1-1_TI_2011-08-19 3.54.5.1.2

- XCPD Initiating Gateway Audit Msg (ITI-55/110112) ITI_Suppl_XCPD_Rev2-3_TI_2011-08_19 3.55.5.1.1

- XCPD Responding Gateway Audit Msg (ITI-55/110112) ITI_Suppl_XCPD_Rev2-3_TI_2011-08_19 3.55.5.1.2

- XCPl Initiating Gateway Audit Msg (ITI-56/110112) ITI_Suppl_XCPD_Rev2-3_TI_2011-08_19 3.56.5.1.1

- XCPL Responding Gateway Audit Msg (ITI-56/110112) ITI_Suppl_XCPD_Rev2-3_TI_2011-08_19 3.56.5.1.2

- Update Document Administrator Audit Msg (ITI-57/110106) ITI_Suppl_XDS_Metadata_Update_Rev1-2_TI_2011-08-19 3.57.4.1.4.1.1

- Update Document Registry/Recipient Audit Msg (ITI-57/110107) ITI_Suppl_XDS_Metadata_Update_Rev1-2_TI_2011-08-19 3.57.4.1.4.1.2

- Provider Information Source Audit Msg (ITI-59/110106) ITI_Suppl_HPD_Rev1-2_TI_2011-08-19 3.59.5.1.

- Provider Information Directory Audit Msg (ITI-59/110107) IHE_ITI_Suppl_HPD_Rev1-2_TI_2011-08-19 3.59.5.1.2

- Value Set Consumer Audit Msg (ITI-60/110107) ITI_Suppl_SVS_Rev2-1_TI_2010-08-10 3.48.6.1.2

- Multiple Value Set Repository Audit Msg (ITI-60/110106) ITI_Suppl_SVS_Rev2-1_TI_2010-08-10 3.48.6.1.2

- On-Demand Document Source Audit Msg (ITI-61/110106) ITI_Suppl_On_Demand_Documents_Rev1-2_TI_2011-08-19 3.61.7.1.1

- On-Demand Document Registry Audit Msg (ITI-61/110107) ITI_Suppl_On_Demand_Documents_Rev1-2_TI_2011-08-19 3.61.7.1.2

- XCF Responding Gateway Audit Msg (ITI-63/110106) ITI_Suppl_XCF_Rev1-1_TI_2011-08-19 3.63.6.1, see also TF-2b 3.41.7.1.1

- XCF Responding Gateway Audit Msg (ITI-63/110112) ITI_Suppl_XCF_Rev1-1_TI_2011-08-19 3.63.6.1, see also TF-2a 3.18.5.1.1

- XCF Initiating Gateway Audit Msg (ITI-63/110112) ITI_Suppl_XCF_Rev1-1_TI_2011-08-19 3.63.6.1, see also TF-2a 3.18.5.1.1

- Notify XAD-PID Link Change PIX Manager Audit Msg ITI-64/110110 ITI_Suppl_XPID_Rev1-1_TI_2011-08_19 3.64.5.1.1

- Notify XAD-PID Link Change Document Registry Audit Msg ITI-64/110110 ITI_Suppl_XPID_Rev1-1_TI_2011-08_19 3.64.5.1.2

