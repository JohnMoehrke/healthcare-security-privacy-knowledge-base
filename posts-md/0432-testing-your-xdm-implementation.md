# Testing your XDM implementation

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/05/testing-your-xdm-implementation.html
Published: 2012-05-06T23:25:00.004Z
Updated: 2012-05-07T16:48:47.653Z
Author: John Moehrke

---

I am seeing more and more interest in testing XDM compliance. That is the XDS variant where by the documents and metadata are placed onto a filesystem, along with some browser ready files for low-tech viewing. This 'filesystem' could exist on USB-Memory (sticks), or on CD-ROM.Actually they could exist on anything that can take a file-system, so they are actually hardware independent. The FAT filesystem seems like it will live far beyond the wildest dreams.

More important is that this filesystem can be ZIPPED up and this zip file placed into an e-mail, hopefully secured with S/MIME. This is indeed a part of the Direct Project, where the security is mandated. The use of an XDM.ZIP file is part of the Direct project and is mandatory for any system capable of sending the XDM compliant ZIP. The reason this is mandatory is that the XDM format brings along many good advantages that allow for the receiver to more easily handle the documents. It includes metadata for

- Patient Identification -- patient ID, patient name, etc

- Provenance -- Author person, Facility, publisher, etc

- Privacy/Security -- Confidentiality Codes, Hash, Size, Author, Patient ID,

- Routing -- Intended Recipient, type of document, format of document, mime type, etc

- Lifecycle -- Previous document that this would replace, transforms, signs, etc

And other...

In the Direct Project the XDM zip file is required to be sent if the sending system can send it, because if you can format in the XDM format then you are enabling better interoperability.

The receiver doesn't really need to have anything special to handle this format. The zip format is supported natively on many operating-systems. The XDM format requires that there be an INDEX.HTM and a README.TXT; and the documents are simply laid out in a filesystem. The INDEX.HTM is encouraged to simply use FILE url formats to allow simple viewing. Thus the XDM format can actually be MORE friendly than a bare file alone.

But if the receiver does understand the XDM then it can leverage the metadata.

**So, how do you test your XDM?**

The IHE Connectathon has an online validation tool at

     [http://ihexds.nist.gov/xdstools2](http://ihexds.nist.gov/xdstools2)

Use the "**Message Validator**". There is a selection for XDM, where you can provide an XDM zip file that you have created. It will validate the zip file provided according to XDM specification. It validates the
directory format, metadata, alignment of metadata and documents.  It uses
the new minimal metadata requirements for XDM that was created for the Direct Project.

If you want to see an XDM or test that you can view or import one; there are some samples on the [IHE ftp site](ftp://ftp.ihe.net/Connectathon/XDM_samples/). On that directory you will also find a XDM_Boone.ZIP that Keith [offered](ftp://ftp.ihe.net/Connectathon/XDM_samples/XDM_Boone.ZIP).

Update:

[Another place with XDM samples](http://iheos.svn.sourceforge.net/viewvc/iheos/xdstools2/trunk/testdata/XDM-Samples/)

