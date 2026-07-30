# De-Duplicating the received duplicate data

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/04/de-duplicating-received-duplicate-data.html
Published: 2018-04-12T14:39:00Z
Updated: 2018-04-12T19:34:20.987Z
Author: John Moehrke

---

Everyone is frustrated by duplicate data. In Healthcare space there is a fresh cry from Clinicians around their frustration at seeing duplicate data. **On the bright side, this means that they are now getting data. So we in the Interoperability space MUST be succeeding with all the efforts to create Health Information Exchanges, and to enable Patient to access their data.**

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgEjIMJc-5wOo46xLZMKY80Ijk_H76Fnu1Gc00XCVEX9XgMCj5PFF8HbafuFsXeO9ib5QV5tyWWq4l1Q6-9gZ_X-UW0RzPQfA1VTvPv4TVA5UenuqT6g5lmaK8IP7ShHoNp_NokFHPxzaKT/s1600/20170825_164325-730698.jpg

We standards geeks are quickly put in our chair because we failed to prevent this duplicate data problem... Well, yes and no. Each standard we created included mechanisms that are there specifically prevent duplication. However when those standards are used, shortcuts are taken. It might be a shortcut in the software development. It might be shortcuts in deploying a network. It might be shortcuts in deploying a network of networks. It might be a shortcut when the data was created. It might be a shortcut when the data was exported. It might be a shortcut when the data was 'Used'... But it is shortcuts, that is where the standard was not used the way it was intended to be used.

Are these shortcuts bad???? Not necessarily. Many times a shortcut is taken to get a solution working quickly. If no shortcuts were taken, then we wold not be where we are today. Thus shortcuts are good, in the short-term. Shortcuts are only bad when they are not fixed once that shortcut is determined to be presenting a problem. Some shortcuts never present a problem.

Standards solutions to Duplicate Data
Let me explain the things that are in the standards we use today (XDS, XCA, CDA, and Direct) that can be used to prevent duplicate data:

- Patient Identity -- the protocols used to create the virtual identity out of the many identities given to a Patient by many different organizations. (XCPD, PIX, PDQ, etc)

- Home Community ID â€“ unique identifier of a community of organization(s)

- Patient ID Assigning Authority (AA) â€“ uniquely identifies the authority issuing patient identifiers. Usually one per healthcare organization, although can be assigned at a higher level.

- Document unique ID â€“ uniquely identifies a document regardless of how it was received (Including when received through Direct or Patient portals)

- Document Entry Unique ID -- A document entry is metadata about a document, including the document uniqueID. A document entry has a unique ID.

- Element ID â€“ unlikely to be used today, but the standards support it. Fundamental to FHIR core

- Provenance - unlikely to be used today, but would uniquely identify the source

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhUShZkX9qL9oRkBGF4B2XeNtUsRv6t9ySYfh-5j4BEr3YwKxTe77kb8PLSEl6vKM7sHelguAz5niGazQNzPHrpjkVNP2yxyRbimRuXC6EZDAp4BfVsaN9zu3VNZd2Q4viAO7UTwXHJXMrK/s1600/iPhone_X_Apple_Health_Records_screen_01232018.jpgElaboration of these points

This is a complex problem, and many layers are used to solve various parts of that complex problem. Where each layer addresses a specific portion of the complexity.

Discovering the virtual Patient Identity

The protocols like IHE PIX, PDQ, and XCPD are designed to discover the [various identifiers that the patient is known by](https://healthcaresecprivacy.blogspot.com/p/topics.html#PID). This is a reality, even in a case where government dictates  national identifier.

Duplicate network pathways
Broadest reason for duplicate data is that there are multiple pathways to the same repository of data (documents). Such as HealtheWay, CommonWell or CareQuality. Use just one of these and you don't have multiple pathways, use more than one and you might. The reason to use more than one is caused by the fact that each network has a subset of overall healthcare providers. The duplication is that some participate in more than one network... just like you are... Thus if no one participates in multiple networks, there is no duplicate pathways.

https://sequoiaproject.org/wp-content/uploads/2014/10/heat-map-5.png
Heat-Map for CareQuality Network

You might end up finding that you have two or three pathways to the same healthcare organization. You could just disable specific endpoints through specific networks. Pick to talk to a partner only through one of the networks. I would argue that this method of avoidance will be low tech, and initially effective. However as the network matures and expands we need a method to recognize when a new duplicate pathway happens.

I would argue that having multiple pathways is possibly useful to address major disasters that take out one of the networks, or one of the pathways.

Duplicate pathways are detectable, and when detectable, can be automatically prevented.

**Detecting duplicates by homeCommunityID. **This is the most reliable, but not perfectly foolproof. This however does require that the participants in these networks use the homeCommunityId as it was intended, as an identifier of a community that uniquely holds data.

Special case of hiding communities: Most configurations of XCA behave, but there are some communities that hide many sub-communities behind them. If these sub-communities are only attached through the one community interface, then there is no problem. This is the likely case for these configurations. These configurations are done this way as convenience to the sub-communities. that is to say the sub-communities like that the larger community adds value and connects them to the world. If one of these sub-communities ever decides to connect to another network, then they must become a full community everywhere, else they become a duplicate data source knowingly.

**Preventing duplicate data using the homeCommunityID:** So the point is that homeCommunityID is a strong indicator of duplicate pathway that would result in duplicate data. Given that in Patient Discovery (XCPD) you target the patient discovery question to a specific homeCommunityID(s), you are in control of which communities you target. Where you have already gotten a response back from a homeCommunity, you can skip the potentially duplicative Patient Discovery (XCPD) or can ignore the secondary results if you already sent out the question. By having a secondary pathway choice, allows you to dynamically detect that the primary pathway is failing. Yes you would need to identify primary vs secondary preferences; logic for delayed attempts; and handling of delayed responses.

Duplicate Patient Id Assigning Authority (AA)
I first mentioned that there are protocols used to discover all the identifiers that a single patient has. This is made up of a Patient ID and the Assigning Authority (AA) that issued that patient ID.  The patient ID assigning authority (AA) is the second level indicator of a unique organization. This can be used today, because everyone does indeed manage their own patient identities, and thus must have a globally unique AA.

Special case is where a community aggregates patient identities into a community patient identity. Such as will happen in an XDS Affinity Domain. Like the sub-community issue above, this is likely not a problem as those that participate in XDS Affinity Domain tend to be small and only want one connection.

Where a nation issues patient identifier, the Assigning Authority (AA) becomes just the national Assigning Authority and no longer would be useful for de-duplicating. In this case many organizations and communities would use the same assigning authority and patient identity. This does not cause duplicate data, but does make the Assigning Authority less helpful at detecting duplicate data.

Duplicate Document UniqueID
The Document UniqueID is an absolute proof of duplicate documents. The Document UniqueId is readily available in the Document Sharing (XDS/XCA) metadata, so can be used at that level to keep from pulling a document unnecessary. With other networks, like Direct or Patient apps, the Document UniqueId can be found within document types like CDA or FHIR. If a case is ever found where this canâ€™t be used as an absolute proof of duplicate document, then the source of that document must be fixed.

**This solution will work regardless of the network. This will work with XDS/XCA based networks, but will also work with FHIR based networks, or where the Patient uses an app of any kind. **

A special mention of on-demand documents, but I will address them below.

Duplicate data element identifiers

The solution that would work absolutely the best, happens to be the one least likely to be available today.

The standards (CDA and FHIR) include the capability to uniquely identify data elements (resources). However, like a good standard, they allow you to not uniquely identify the data element. Yes, I said this was a good thing. It is a good thing for low-end scale. It is a really bad thing for a mature market. This is where Implementation Guides and Profiles come in. In the case of CDA there are implementation guides that do require each data element be uniquely identified, and that Provenance proof always accompany data.

However uniquely identifying at the data element level is very expensive. That is it is hard to code, makes the database bigger, adds validation steps, and such. When that data is only used within the EHR, there is no value to all this extra overhead. Thus it is often never designed into an EHR.

Duplicate data thru Provenance

Special mention of Provenance... This is supported by the standards, but very poorly implemented. It is expressly important when a unique piece of data is used beyond the initial use. For example where a lab result was taken for one condition, but it also was found to be helpful in a second diagnosis. Both for the same patient, different conditions or different episodes. This is especially true when that original data was exported from one system and imported into another. So a historic CDA was used at a different treatment encounter. That second use needs to give credit to the first, Provenance. How this factors ino duplicate data is that a CDA document from the second encounter will include the very same data from the first. Now two different documents from two different organizations carry the same data but that data has different element identifier as it exists in two places. The solution is Provenance can show the second instance is a copy of the first.

I have worked with EHR that could tell you where the data came from. If it was imported from a CDA received from some other organization, this was noted. Most of the time these Provenance were empty, thus you assume the data was internally generated. But the capability was there on Import, the database had support for Provenance. Using this data on export is another task, thus an opportunity for shortcut...

I also am the owner of the [Provenance resource in FHIR.](https://healthcaresecprivacy.blogspot.com/2016/03/provenance-vs-audit-it-is-not.html)

Clinically same
This is what most deduplication engines work on, they detect that the data found is already known and presume the data is duplicate.  They leverage any identifiers in the data. But ultimately they are looking at the clinical value and determining that they have the same clinical value.

This works except for longitudinal repetition that is clinically significant (an observation presents and resolves over and over)

Duplicate On-Demand Documents
On-Demand documents present the hardest to deal with case of duplicate data. These are also detectable if they follow the IHE on-demand profile. In that the document entry that advertises the availability of on-demand data has a globally unique and stable identity. Thus you can know that you should NOT request a new on-demand instance be made, because you already know about the data. The problem is that you don't know that that new instance would not contain new data.

So using the unique ID of this on-demand document entry would need to be carefully handled. Never pulling a new on-demand document, will prevent you from ever learning of new data. However pulling a new on-demand document unnecessarily will cause you to spend energy determining that all the data it contains is data you already knew. This is a false-positive and false-negative.

There are poorly implemented on-demand solutions, that don't follow the IHE specification. They create a new on-demand document entry each time they are queried. This is not correct. There should be one uniquely identified document entry that everyone gets the same. When that document is requested, is when the on-demand generation of the specific document is done. And, that generated document should be stored as a 'snapshot'.  These poorly implemented on-demand solutions will present two totally different document entries each time you query, so if you are querying via duplicate pathways, you will think you have found two totally different sources of unique data.

Good news is that if the generated document is of the highest quality, then the content can quickly be separated into data you know from data that is new. That is to say tha the element level identity and/or Provenance can prevent unnecessary duplication.

Detecting a Duplicate
As you can see there are many identifiers, that when they are found to be EQUAL then you know you have duplicates. I present them from largest scope to smallest scope. The larger scope you can use the less energy it takes to stop processing duplicate data. This solution breaks down when the identifiers are not equal, in that case you are not assured that you do not have duplicate data.  Thus the whole spectrum must be used, one level is not enough. Ultimately there will be false-positives and false-negatives.

Organizational Policy driving Maturity
Now that we have Interoperability, we need to address over-Interoperability.  I think that identifying the need for HealtheWay, CareQuality, CommonWell, DirectTrust, and any other networks to have reasonable and good control of their identifiers. There is already strong push to move to more coded documents like C-CDA R2.1. There are efforts around [Provider Directories.](https://sequoiaproject.org/carequality/active-sites-search/)

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhKsTVwOiIy3NZUdAlgZ1jrpQKXw9j3qz_4mRXg6ZGAOIACzIvC1MM_Q-hzNyLqmUgZVRWJnyW04rDruQG4Swyrh9fhFH13FlMJXlA2bzIwOKF0oaJFj9scz-p5JM6aOtu26OqptxdRbVUY/s1600/654px-MXDE_Picture.jpgI donâ€™t think this is a big effort, most do the right thing already today. What is needed is governance that says that the right behavior is expected, and when improper behavior is found it must be fixed. The current Sequoia specifications do not address this level of detail.

Improvement is always good, but we must recognize that much of the health data is longitudinal, and it is very possible a document was created 10 years ago according to the best possible guidance at that time. That historic document likely contains good data, but does not conform to current best-practice. Postelâ€™s law must guide: Be specific in what you send, liberal in how you receive from others.

IHE Mobile Cross-Enterprise Document Data Element Extraction
I have worked on projects within both IHE and HL7 on these topics. I canâ€™t claim they have solved the issue, but they have raised up the common set of issues to be resolved and gathered good practice as I outline above. The most recent project is one in IHE that starts with the Document Sharing infrastructures (XCA, XDS, and CDA) much like above, and presents the de-duplicated data using FHIR API (QEDm). This solution built upon the family of Document Sharing profiles and FHIR profiles IHE has.

See [https://wiki.ihe.net/index.php/Mobile_Cross-Enterprise_Document_Data_Element_Extraction](https://wiki.ihe.net/index.php/Mobile_Cross-Enterprise_Document_Data_Element_Extraction)

