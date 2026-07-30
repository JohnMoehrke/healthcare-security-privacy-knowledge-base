# PDQm - Patient Demographics Query as Mobile API

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/07/pdqm-patient-demographics-query-as.html
Published: 2014-07-28T05:58:00.001Z
Updated: 2014-07-28T05:58:14.544Z
Author: John Moehrke

---

The IHE ITI committee last week approved the Patient Demographics Query for Mobile (PDQm) profile go forward to Trial Implementation. This puts it on track for testing at the [USA Connectathon in Cleveland](http://www.ihe.net/connectathon/). This is the first Profile of the new [FHIR](http://hl7.org/fhir)core standard. Both are in a trail state, so it is possible things will change. But these both are based on very mature concepts.

The executive summary is that this is a very minimal profile of the HL7 FHIR Patient resource. Two items have been made mandatory, where the FHIR spec leaves them potentially optional. One extension was added to support the pediatrics use-case that is an option in PDQ. Otherwise it is a simple FHIR 'GET' transaction, aka Query, that returns a Bundle (aka Atom Feed) of the resulting matching entries.

Use-case for PDQm

 The Patient Demographics Query for Mobile (PDQm) Profile defines a lightweight RESTful interface to a patient demographics supplier leveraging technologies readily available to mobile applications and lightweight browser based applications.

-                                         The functionality is identical to the PDQ Profile described in the ITI TF-1:8. The differences are transport and messaging format of messages and queries. The profile leverages HTTP transport, and the JavaScript Object Notation (JSON), Simple-XML, and Representational State Transfer (REST). The payload format is defined by the HL7 Fast Health Interoperable Resources (FHIR) draft standard.

Using these patterns, the PDQm Profile exposes the functionality of a patient demographics supplier to mobile applications and lightweight browser applications.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhezRsMtgxt0qYOq_VMoSModUGPsYsFFjRnisB3flQ50NkQUXWK_T7aMuDEsqS7iWa6WXlMX6lvf0GEb8A7EBS-bw87XxEt2s4M0FWYHm_4JULd3TPFzq_PRZWePRMQid9guRdFg6SQ2PQp/s1600/image002-733878.png

The following list provides a few examples of how PDQm might be leveraged by implementers:

- A health portal securely exposing demographics data to browser based plugins

- Medical devices which need to access patient demographic information

- Mobile devices used by physicians (example bedside eCharts) which need to establish patient context by scanning a bracelet

- Web based EHR/EMR applications which wish to provide dynamic updates of patient demographic information such as a non-postback search, additional demographic detail, etc.

- Any low resource application which exposes patient demographic search functionality

- Any application using the MHD Profile to access documents may use PDQm to find an appropriate patient identifier

- This supplement is intended to be fully compliant with the HL7 FHIR specification, providing only use-case driven constraints to aid with interoperability, deterministic results, and compatibility with existing PDQ and PDQv3 Profiles.

Currently the HL7 FHIR standard is in â€œDraft Standard for Test Useâ€ (DSTU) and may experience a large amount of change during this phase. Readers are advised that, while the profiled components in this supplement may not accurately reflect the most recent version of the FHIR standard, implementations of PDQm will be tested as specified in this supplement. Changes to the FHIR DSTU will be integrated into this supplement via the formal IHE Change Proposal (CP) process.

Using the FHIR Patient resource, IHE needed only profile two elements. IHE sets the patient name and identifier as mandatory, whereas the core FHIR allows them to be empty. This is the FHIR Patient Resource as it is used by PDQm.

FHIR Patient Resource ++

This is the definition for the Patient Resource contained within the Query Patient Resource response message. The purpose of the definition is to describe the data elements relevant for this transaction. It is a restriction of the Patient Resource found in chapter 5.1.2 of the FHIR standard. For the complete FHIR definition of this Resource please see ITI TF-2x: Appendix W

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEixVZxZ56TfLRAB8-4Au8Puno0tx0VpPL3MsgOLABAijQrsSm7Vvk2NnMAsoJ7Frte7zsKJest3PK1p76OpmIcGn5PdRiFwf0hLKK7k_RCpvhaidwPz9EaSPH-vz88MON2P-z-i49Xcm69K/s1600/image003-738198.png

Pediatrics Demographic Option

PDQm has usecases to support new-born that have not been fully identified, and thus require that the motherâ€™s maiden name be included in their Patient resource. This was introduced to PDQ with a Pediatrics Option. This use-case is not currently supported by the FHIR DSTU, so IHE has extended the Patient resource to include this. IHE will be bringing the use-case to HL7 for proper handling (recognizing that it is most likely the mothers name, not the motherâ€™s maiden name that is desired).

...

"extensionDefn" : [

  {

       "code" : "mothersMaidenName",

       "contextType" : "resource",

       "context" : [ "Patient" ],

       "definition" : {

              "short" : "Patient's mother's maiden name",

              "formal" : "The name of the patient's mother",

              "min" : 0,

              "max" : 1,

              "type" : [

                     {

                           "code" : "HumanName"

                     }

              ],

              "isModifier" : false

       }

  }

]

...

PDQm as a RESTful API to a mature PDQ and PIX environment.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgpphyphenhyphenigfY4SrhwkAzVfZxWvpHDoEETPHUSbK4_0y5l5CA9VxUigPCJ1Pfvj2xB0fMgjuiawiK613AJLi7OKmkgEXubngMLEbgzk38iKffAi5t_BdyDnUD8WOEskRPAbTG7MdVosCsRDL3w/s1600/Slide15-729021.PNG

PDQm can be viewed as an API to a classic PDQ or PDQ v3 environment. Same PDQ use cases and interactions, using the FHIR encoding for the transaction from the mobile consumer. This diagram shows an implementation of a gateway that converts the PDQm into a normal PDQ transaction via a gateway.

PDQ attributes

The following table shows the attribute mapping between PDQ, PDQ v3, and PDQm.

Abstract Field

PDQ

PDQ HL7v3

PDQm

Identifier List

PID.3 and PID.18

Id

identifier

Name(s)

PID.5 and PID.9

Name

name

Date / Time of Birth

PID.7

birthTime

birthDate

Gender

PID.8

administrativeGenderCode

gender

Address(es)

PID.11

Addr

address

Telecommunications Address(es)

PID.13 and PID.14

Telecom

telecom

Language(s) of communication

PID.15

languageCommunication

communication

Marital Status

PID.16

maritalStatusCode

maritalStatus

Non-Medical Identifiers

PID.19 and PID.20

asOtherIds

identifier

Death Date/Time

PID.29

deceasedTime

deceasedDateTime

Motherâ€™s Maiden Name

PID.6

personalRelationship.name

See ITI TF-2c: 3.78.4.2.2.2

Patient Birth Order

PID.25

multipleBirthOrderNumber

multipleBirthInteger

PDQ Query Parameters

And the query parameters, mapped between the three

Abstract Parameter

PDQ

PDQ HL7v3

PDQm

Identifier List

@PID.3 and @PID.18

livingSubjectId

Identifier

Name

@PID.5

livingSubjectName

given and family

Date / Time of Birth

@PID.7

livingSubjectBirthTime

Birthdate

Gender

@PID.8

livingSubjectAdministrativeGender

Gender

Address

@PID.11

patientAddress

Address

Domains to be Returned

QPD-8

otherIDsScopingOrganization

See ITI TF-2c:3.78.4.1.2.4

Motherâ€™s Maiden Name

@PID.6

mothersMaidenName

mothersMaidenName.given and mothersMaidenName.family

Patient Telecommunications Addresses

@PID.13

patientTelecom

Telecom

The result of a query is a â€œBundleâ€, which for XML encoding is derived in FHIR from the standards based ATOM feed.

Examples

Here is a sample Query, in HTTP form, requesting **JSON **format be returned, all **Male **patients with the Given name â€œ**John**â€ and the Family name â€œ**Smith**â€.

GET http://pdm-sample:8080/iti-y1/Patient?_format=**application/json**+fhir&gender=**M**&family=**Smith**&given=John&count=10

User-Agent: Fiddler

Host: pdq-sample:8080

**Here is a sample result.  Amazingly there is only one John Smith.**

HTTP/1.1 200 OK

Connection: close

Content-Type: application/json+fhir; charset=UTF-8

Content-Length: 2683

Date: Sun, 06 Apr 2014 20:38:23 GMT

Expires: Sat, 05 Apr 2014 20:38:20 GMT

{

  "resourceType" : "Bundle",

  "title" : "Search results for resource type Patient",

  "id" : "urn:uuid:c179d5bd-e81e-4fe0-981a-46f6c6588f",

  "link" : [

    {

      "href" : "http://pdm-sample:8080/iti-y1/Patient?_format=application/json+fhir&gender=M&family=Smith&given=John&count=10",

      "rel" : "self"

    }

  ],

  "updated" : "2014-04-06T20:38:23Z",

  "totalResults" : "1",

  "entry" : [

    {

      "title" : "Patient \"1\"",

      "id" : "http://pdm-sample:8080/iti-y1/Patient/1",

      "link" : [

        {

          "href" : "http://pdm-sample:8080/iti-y1/Patient/1",

          "rel" : "self"

        }

      ],

      "updated" : "2014-03-11T20:34:55Z",

      "content" : {

        "resourceType" : "Patient",

        "text" : {

          "status" : "generated",

          "div" : "\r\nJohn Smith (Male) - 1974-12-25
"

        },

        "identifier" : [

          {

            "use" : "usual",

            "system" : "urn:oid:1.2.36.146.595.217.0.1",

            "value" : "12345",

            "assigner" : {

              "display" : "Acme Healthcare"

            }

          }

        ],

        "name" : [

          {

            "use" : "official",

            "family" : [

              "Smith"

            ],

            "given" : [

              "John",

              "James"

            ]

          },

          {

            "use" : "usual",

            "given" : [

              "James"

            ]

          }

        ],

        "telecom" : [

          {

            "use" : "home"

          },

          {

            "system" : "phone",

            "value" : "+1(202)555-6474",

            "use" : "work"

          }

        ],

        "gender" : {

          "coding" : [

            {

              "system" : "http://hl7.org/fhir/v3/AdministrativeGender",

              "code" : "M",

              "display" : "Male"

            }

          ]

        },

        "birthDate" : "1974-12-25",

        "deceasedDateTime" : null,

        "address" : [

          {

            "use" : "home",

            "line" : [

              "123 Main St. West Unit 33"

            ],

            "city" : "Chicago",

            "state" : "IL",

            "zip" : "00000"

          }

        ],

        "managingOrganization" : {

          "display" : "ACME Medical Centres"

        },

        "active" : true

      },

      "summary" : "\r\nJohn Smith (Male) - 1974-12-25
"

    }

  ]

}



Conclusion

IHE won't be the only one to profile FHIR. This supplement helps give synergy between the two PDQ flavors, providing a new flavor. The advantage of this new flavor is that applications can more easily process it. It doesn't really make the server job easier

Blog References on mHealth

- [Healthcare access control scope constraints on OAuth tokens](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)

- [mHealth Identities using trusted intermediary](http://healthcaresecprivacy.blogspot.com/2013/09/mhealth-identities-using-trusted.html)

- [getting to mHealth solutions - real People](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-real-people.html)

- [getting to mHealth solutions - Users](http://healthcaresecprivacy.blogspot.com/2013/07/getting-to-mhealth-solutions-users.html)

- [Internet User Authorization: why and where](http://healthcaresecprivacy.blogspot.com/2013/06/internet-user-authorization-why-and.html)

- [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/01/security-considerations-healthcare.html)

- [Privacy and Security in Designing an mHealth Application](http://healthcaresecprivacy.blogspot.com/2013/03/privacy-and-security-in-designing.html)

- [mHealth Solution](http://healthcaresecprivacy.blogspot.com/2013/04/mhealth-solution.html)

- [Security Considerations: Healthcare RESTful Resource specifications](http://healthcaresecprivacy.blogspot.com/2013/04/mhealth-solution.html)

- [IHE efforts in RESTful security](http://healthcaresecprivacy.blogspot.com/2013/01/ihe-efforts-in-restful-security.html)

- [IHE mHealth Hackathon](http://healthcaresecprivacy.blogspot.com/2012/11/ihe-mhealth-hackathon.html)

- [The Magic of FHIR](http://healthcaresecprivacy.blogspot.com/2012/09/the-magic-of-fhir.html) â€“ The HL7 movement toward REST resources, away from v3 and v2

- [IHE Mobile access to Health Documents - Trial Implementation](http://healthcaresecprivacy.blogspot.com/2012/09/ihe-mobile-access-to-health-documents.html)

