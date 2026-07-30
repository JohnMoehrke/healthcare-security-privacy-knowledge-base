# FHIR patient extensible data portability

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/06/fhir-patient-extensible-data-portability.html
Published: 2018-06-25T17:06:00.001Z
Updated: 2018-06-25T17:06:22.864Z
Author: John Moehrke

---

Discussions at FHIR DevDays raised this question of a basic way to leverage FHIR API capability to enable the Patient beyond the limited Apps their provider has approved.

If a healthcare provider offers a FHIR API (e.g. argonaut) -- meeting the Meaningful Use "API" requirement. Would it be reasonable to expect that the Meaningful Use "Download" (from View/Download/Transfer) capability would be offered in FHIR format?

Proposed quick-and-dirty solution?
This could be something like a [zipped Bundle containing the results of $everything for that Patient,](https://www.hl7.org/fhir/operation-patient-everything.html)given that patient as the user.  The zipping would help with the potential huge size.

The amount of data would be limited to that which is available on the FHIR API offered, which is often not all possible data.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhUShZkX9qL9oRkBGF4B2XeNtUsRv6t9ySYfh-5j4BEr3YwKxTe77kb8PLSEl6vKM7sHelguAz5niGazQNzPHrpjkVNP2yxyRbimRuXC6EZDAp4BfVsaN9zu3VNZd2Q4viAO7UTwXHJXMrK/s1600/iPhone_X_Apple_Health_Records_screen_01232018.jpg

Concern would come up when this export of $everything includes other data such as documents and images. The theory is that they are all necessary to export, but the problem is the overwhelming size that might result. (Unfortunately compression would be less helpful with documents and images where they are slight variations that are mostly the same, but because of the base64 encoding they all look very different)

Should this be a FHIR Document?
It might be more well-formed to have this be a FHIR Document, but it is not clear to me that adds much benefit over simply an export of all data that is known (aka $everything).

There would be benefit that the Bundle would then be far more identifiable as coming from a specific Organization on a specific Time for a specific purpose. This could also be simply a Provenance resource on the bundle. This might be very important to a downstream recipient of this blob so that it can be authenticated and proven as complete [(Principles of a Document)](http://healthcaresecprivacy.blogspot.com/2013/11/distinction-between-documents-and.html)

Essentially the CCD provides this today, and is often the solution for "download", so this is just a different mime-type (FHIR).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEikvgNaGbwL04vkYozpS68wmIWTop5-QcAh_b34hRBos8tFpnOnSuadk9ZOMDc93NMhaiFxYWTyOybpzYAOk-Z7zxbXNnTIiy2HNZWmV4B-ez4tISVtr2u8l5eCrO48K4ca9un8Xhq7Z3Ml/s1600/manyMimeTypes_oneFormatCode.png

I think just getting an export is more important than making sure it is a FHIR Document.

Why would anyone do this or want this?
The reason why this is useful is for patients that want to use Apps that are not (yet) approved by that provider.  Waiting for each of their providers to approve a useful App can be limiting on the Patient and on the Marketplace.

Counter this with the potential stupid patient that doesn't realize what they are doing with their data... This is going to happen, and when it does there will be an outcry. This outcry will complain that the provider was not acting as a parent to that child, but this kind of an outcry should not be a reason not to do this. Better that the patient be warned, but not forbidden from getting all their data in an download of FHIR format.

Who does this?
If this is reasonable, who does this today?

GDPR
Note that this would also be helpful in support of [GDPR Article 20 - Right to data Portability](https://gdpr-info.eu/art-20-gdpr/).

