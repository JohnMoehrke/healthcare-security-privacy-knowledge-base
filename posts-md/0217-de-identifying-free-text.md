# De-Identifying free-text

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/06/de-identifying-free-text.html
Published: 2014-06-30T02:22:00.001Z
Updated: 2014-06-30T02:22:58.012Z
Author: John Moehrke

---

Each time I [blog on De-Identification](http://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html), I get questions about free-text fields.  The focus on free-text fields is covered in [ISO 25237](http://www.iso.org/iso/catalogue_detail?csnumber=42807) healthcare specification on De-Identification, in [DICOM](http://www.dclunie.com/dicom-status/status.html#BaseStandard2013), and in the IHE Handbook on [De-Identification](http://healthcaresecprivacy.blogspot.com/2014/06/fw-ihe-iti-published-pdqm-ser-and-de-id.html). They all cover the more broad concept of â€œNon-Structured Data Variablesâ€. This includes free-text fields, but also recognizes other data that are not well constrained upon input and storage. So this includes Voice Recordings, Images, and even calls out the medical imaging standards of DICOM. DICOM also addresses this problem space, pointing out that historically it is common for the Radiology image to have burned-into the image identifying and routing information.

Why is Free-Text a concern?

So the specific problem with non-struct

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiqy2gnZfuyejjhCKIx7J-HJ7x8Nt3bP_S8DgGkoeYHnlkzrIP4AG60bIXI5bBNPj8Jv-o8QxvKv0-K21qedqki3gUhlkXmwn1VQUbSWr-_ZdqETDy4HnCsts4hV1tsmiZMoI3LDUlItRPm/s1600/mySummaryPDF.png

ured data elements/attributes/variables are that they could contain Direct Identifiers, Indirect Identifiers, or simply non-identifying data. It is the very fact that they are non-structured that results in this non-deterministic situation. Often times these fields are simple text-editing fields where the clinician can write anything they want. They might be prompted to enter relevant information, like description of the disposition of the patient. However without restrictions, the clinician could have put the patient name into the field.

Free-text is not safe

This is where the Intended Use-case of the resulting data-set comes into play. If there is no need that comes from the Intended Use-case for these non-structured data fields, then simply dropping them. My second rule of De-Identification is that by default you get ZERO data elements. The intended use-case needs to justify everything that is provided. Most of the time the value of a free-text field is of no value. Often times they are included simply to future-proof a workflow. That is there is a free-text field to handle â€˜anything elseâ€™. So deleting the free-text field is really the most likely right way to handle it.

Useful Free-text

However there are times where for example a study is being done, and those clinicians participating are instructed to put critical study information into a normally unused free-text field. Thus the field content is critical to the Intended Use-case of the resulting data-set. In this case, we do know that the otherwise free-text field, really might contain some structured data. So the easy thing to do is pre-process the free-text fields to extract out the information that is needed by the Intended Use-case of the resulting data-set into a structured and coded entry. Throw away the rest of the free-text field. Treat the new coded entry according to the normal processing rules, which does mean it must be determined if it is a Direct Identifier, Indirect Identifier, or non-identifying data; and one must also look at the values resulting to determine if they might themselves identify an individual.

What is important here is to recognize that you have converted the free-text into structured and coded values. So, ultimately you are not passing free-text, the free-text field is destroyed.

Unstructured Image

It is much less likely that you can post-process images or voice into structured data, but I am not going to say it canâ€™t be done. DICOM has a very comprehensive treatment of De-Identifying DICOM objects.  Specifically [Chapter E of Part 15](http://medical.nema.org/dicom/2013/output/html/part15.html#chapter_E) â€“

5. The de-identifier should ensure that no identifying information that is burned in to the image pixel data either because the modality does not generate such burned in identification in the first place, or by removing it through the use of the Clean Pixel Data Option; see [Section E.3](http://medical.nema.org/dicom/2013/output/html/part15.html#sect_E.3). If non-pixel data graphics or overlays contain identification, the de-identifier is required to remove them, or clean them if the Clean Graphics option is supported. See [Section E.3.3](http://medical.nema.org/dicom/2013/output/html/part15.html#sect_E.3.3) The means by which burned in or graphic identifying information is located and removed is outside the scope of this standard.

Conclusion

I am a fan of De-Identification, when used properly and for the right reason. However De-Identification is not the only tool to be used, sometimes data simply should be properly managed, including Access Controls and Audit Controls. This same conclusion is true of data that are De-Identified, that is unless you end up with the null-set then you will have some risk that needs to be properly managed, including Access Controls and Audit Controls.

Free-text fields, all fields that you don't know have a specific structure to them, need to be treated carefully. Best case is to delete their content, but if you need part of the content then parse that information out into structured and coded values, discarding the original free-text.

References to Blog articles

- [De-Identification: process reduce risk of identification of entries in a data-set](http://healthcaresecprivacy.blogspot.com/2014/06/de-identification-process-reduce-risk.html)

- [De-Identification - Data Chemistry](http://healthcaresecprivacy.blogspot.com/2013/05/de-identification-data-chemistry.html)

- [Guidance Regarding Methods for De-identification of Health Information](http://healthcaresecprivacy.blogspot.com/2012/11/guidance-regarding-methods-for-de.html)

- [The Emperor has no clothes - De-Identification and User Provisioning](http://healthcaresecprivacy.blogspot.com/2012/08/the-emperor-has-no-cloths-de.html)

- [De-Identification is highly contextual](http://healthcaresecprivacy.blogspot.com/2009/10/de-identification-is-highly-contextual.html)

- [Redaction and Clinical Documentation](http://healthcaresecprivacy.blogspot.com/2010/08/redaction-and-clinical-documentation.html)

