# IHE Audit Log Specifications

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/06/ihe-audit-log-specifications.html
Published: 2019-06-05T18:19:00Z
Updated: 2019-06-05T18:22:23.571Z
Author: John Moehrke

---

For those that struggle with the way that IHE documents the specific requirements of audit logging per type of security event or per ITI transaction; there is an easier tool. The [IHE Gazelle "Security Suite](https://gazelle.ihe.net/gss)" Tool has each audit log message broken down and explained.

My hope is that soon this tool is the way that IHE documents the transaction patterns, so that the supplements and technical-framework documents no longer have the ugly tables.

Here is what shows for the [IHE ITI-2 User Authenticate Login message:](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=11)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg7dFAOtL_IZ9udTNbFaJVhbv0rtKEFwN0XIkP9WPrL3XK7jtZYZcCgsSKkHewTo7Rr3EHgKDEpn0ge0zkY_UxsoQq6wcIZ2a6JrRLm_oB1oZPGTukV-PQ_BON6tnA73UrWX3u4nGDL25qm/s1600/ATNA-userAuthLogin.png

The Gazelle tool is also used for Testing...

Here is the generic Security relevant events. These are expected of any application/service that participates in these security relevant events. DICOM -- [PS3.15 - A.5.3](http://dicom.nema.org/medical/dicom/current/output/html/part15.html#sect_A.5.3)

- [IHE - DICOM - Application Entity Start](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=64)

- [IHE - DICOM - Application Entity Stop](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=65)

- [IHE - DICOM - Audit Log Used](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=67)

- [IHE - DICOM - Begin Transferring DICOM Instances](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=93)

- [IHE - DICOM - Data Export](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=94)

- [IHE - DICOM - Data Import](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=104)

- [IHE - DICOM - General Message Format Conventions](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=66)

- [IHE - DICOM - Instances Accessed](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=107)

- [IHE - DICOM - Instances Transferred](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=108)

- [IHE - DICOM - Query](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=106)

- [IHE - DICOM - Security Alert](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=102)

- [IHE - DICOM - Study Deleted](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=105)

There are also a specification page for EACH of the other ITI transactions. For example (They are ALL in the Gazelle tool, so go there and see them all):






  ITI-TF-2a
  3.2.6
  [IHE -
  ITI-2 User Authentication Login](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=11)


  ITI-TF-2a
  3.2.6
  [IHE -
  ITI-2 User Authentication Logout](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=12)


  ITI-TF-2a
  3.10.5.1.2
  [IHE -
  ITI-10 Patient Identifier Cross-reference Consumer audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=97)


  ITI-TF-2a
  3.10.5.1.1
  [IHE -
  ITI-10 Patient Identifier Cross-reference Manager audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=98)


  ITI-TF-2a
  3.18.5.1.1
  [IHE -
  ITI-18 Document Consumer audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=16)


  ITI-TF-2a
  3.18.5.1.2
  [IHE -
  ITI-18 Document Registry audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=51)


  ITI-TF-2a
  3.21.5.1.1
  [IHE -
  ITI-21 Patient Demographics Consumer audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=71)


  ITI-TF-2a
  3.21.5.1.2
  [IHE -
  ITI-21 Patient Demographics Source audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=72)


  ITI-TF-2a
  3.22.5.1.1
  [IHE -
  ITI-22 Patient Demographics Consumer audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=73)


  ITI-TF-2a
  3.22.5.1.2
  [IHE -
  ITI-22 Patient Demographics Source audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=74)


  ITI-TF-2b
  3.32.5.1.1
  [IHE -
  ITI-32 Portable Media Creator Audit Message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=135)


  ITI-TF-2b
  3.32.5.1.2
  [IHE -
  ITI-32 Portable Media Importer Audit Message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=136)


  ITI-TF-2b
  3.38.4.1.4
  [IHE -
  ITI-38 Initiating Gateway audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=91)


  ITI-TF-2b
  3.38.4.1.4
  [IHE -
  ITI-38 Responding Gateway audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=100)


  ITI-TF-2b
  3.39.4.1.4
  [IHE -
  ITI-39 Initiating Gateway audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=92)


  ITI-TF-2b
  3.39.4.1.4
  [IHE -
  ITI-39 Responding Gateway audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=101)


  ITI-TF-2b
  3.41.5.1.2
  [IHE -
  ITI-41 Document Repository or Document Recipient audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=20)


  ITI-TF-2b
  3.41.5.1.1
  [IHE -
  ITI-41 Document Source audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=17)


  ITI-TF-2b
  3.42.7.1.2
  [IHE -
  ITI-42 Document Registry audit message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=21)


  ITI-TF-2b
  3.42.7.1.1
  [IHE -
  ITI-42 Document Repository or Integrated Document Source/Repository audit
  message](https://gazelle.ihe.net/gss/audit-messages/view.seam?id=19)

