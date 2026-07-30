# Patient Master Identity Registry

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/11/patient-master-identity-registry.html
Published: 2020-11-04T20:04:00.002Z
Updated: 2020-11-04T20:07:56.619Z
Author: John Moehrke

---

The[Patient Maser Identity Registry is a new profile](https://wiki.ihe.net/index.php/Patient_Master_Identity_Registry_(PMIR)) (Implementation Guide) from IHE. It is designed to address a new environment that has no existing HL7 v2 or v3 patient identity management solution, that needs a multiple organization Patient Identity Management. It defines the following actors. This is the typical IHE model of defining abstract actors, not systems. Thus these actors can be grouped in various ways inside a system that one might more typically understand.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGivYsgXFTBaGPi0HECWFFdiSnroP-x3J5FZVV5ypDUZPYoZlI3rRHaC9-fXJGc2lvM73n9VHoMJCkXuKjHEWkNRy3sBb2-ij46Qe1xmNKdB61g-RwC4bBD8qnofFWo5J3URwT7eOGGBvG/s1280/PMIR-Diagrams.png
At the center is the Patient Identity Manager, as described in the PMIR profile, this is a very simplistic actor that has no intelligence, it is just a FHIR Server that supports the transactions. Often times a real-world system would have intelligence to detect potential conflicts, or mistakes, or opportunities for linking. A system like that would defined that is is both a Patient Identity Manger, and a Patient Identity Source. This does not mean there are not other Patient Identity Source actors in a network.

There would likely be a Patient Identity Source at each organization. It would likely be in a system that is also a Patient Demographics Consumer. An example would be a Registration Desk.

There would also be typical client apps that would be Patient Demographics Consumers or Patient-Identity Cross-reference Consumers. Note that the Patient Identifier Cross-reference Consumer actor would typically be used in cases where national identifiers are issued to patients, thus a lookup is done using just an identifier. The Patient Demographics Consumer can lookup by identifier, but also can lookup by any of the demographics or identification characteristics.

The Patient Identity Subscriber and Patient Identity Consumer are used together by any system that would like to be notified of changes to a Patient Identity. This would be used by data holders (Data Servers), so that they could correct any data they have. Important is to correct the data when a Patient Identity is merged.

Patient Identity flowThe following shows the flow of these [systems](https://github.com/IHE/HIE-Whitepaper/blob/master/images/PMIR-flow.pu)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhAAf7ol1TtGKPwkk0fdev-9l60QeFGRqBwOleiJveE2wNI46fCJFuTEbSqRFWRAkWkTassVIH6bWPix4ZPpuKH7DQFHQKHQsMxMLY_3RnJWbqwhiSCfUQE3lgqqP1KJpTguWhTNt0hzHUw/s1638/PMIR-flow.png
First shown is that a Data Source (a typical FHIR Server) would subscribe to be notified.

Second shown is a flow at a Registration Desk

- If there is only one Patient found, and all the demographics are correct, then there is nothing more needing to be done. That one Patient found can be used within the community.
- There are three alternatives shown: where one patient needs demographics or identifiers updated, where there is no patient found, and where more than one patient are found.

- In the first case after clarifying that there is a need to make the demographics or identifier change, the Registration desk informs the Patient Master Registry of the  update to the demographics, which causes the Patient Master Registry to record these changes AND inform all the interested parties such as the Data Services that has subscribed.
- In the second case after confirming that no patient has found (e.g. a newborn, or new emigrant), the Registration desk informs the Patient Master Registry of the new patient with given demographics, which causes the Patient Master Registry to record this new Patient AND inform all the interested parties such as the Data Services that has subscribed.
- In the third case after confirming that the patients found are indeed all the same human, the Registration desk determines which patient entry should be merged into the other. The Registration desk informs the Patient Master Registry of the merged patients with specific instructions on which identity should be used and which identity should not be used anymore, which causes the Patient Master Registry to record this merge Patients AND inform all the interested parties such as the Data Services that has subscribed.

This solution is not expected to work everywhere. It is designed for environments that don't have existing Patient Identity infrastructure, and it is designed for places that want to manage a master identity (golden) at the center of multiple organizations.

I do expect that variations will eventually be worked up as well.

