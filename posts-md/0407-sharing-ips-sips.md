# Sharing IPS (sIPS)

Originally posted: https://healthcaresecprivacy.blogspot.com/2024/04/sharing-ips-sips.html
Published: 2024-04-05T13:46:00.001Z
Updated: 2024-04-05T13:46:10.363Z
Author: John Moehrke

---

https://blogger.googleusercontent.com/img/a/AVvXsEiPpiYYhUcK5l1-Am_Qr4hiY0QcudX_eKrSD0lGlRxEa_lY98SrpWN-DBYT1mnJ4uNg0A8ktV71CeVZ27loxGWQ_rsK_b-gHFkFGAmofsbmYSVlQfQ2cYmfWckvQ_yielwRri-HjHoYefVma0OttRv-FORS3wUnoDvfLwcG4hhECOmreb3fiNt8d6hyCSlX
This Implementation Guide ready for Trial-Implementation.  Formal Publication -- [https://profiles.ihe.net/ITI/sIPS](https://profiles.ihe.net/ITI/sIPS)

The Sharing of IPS (sIPS) IHE Profile provides for methods of exchanging the [HL7 International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips), using [IHE Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) but does not modify the [HL7 IPS](http://hl7.org/fhir/uv/ips) specification, nor is there any need to change [IHE Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html). This means that any existing XCA/XDS environment needs NO change to support the IPS.

The [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips) content,
as defined in the [ISO 27269](https://www.iso.org/standard/79491.html) data model specification, utilizes IHEâ€™s [document sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) infrastructure including cross-community, HIE, direct exchange models, and more. It has been designed specifically to remove barriers to adoption, by leveraging architectures that are currently implemented, well-established, and robust.

The sIPS Profile provides implementation guidance to vendors and implementers and joins a growing suite of IPS standards artefacts contributed by a variety of [Standards Development Organizations (SDOs)](https://international-patient-summary.net/) and coordinated by the [Joint Initiative Council for Global Health Informatics Standardization (JIC)](http://jointinitiativecouncil.org/).
https://blogger.googleusercontent.com/img/a/AVvXsEjsExCBjlAKEtms-8xE_behSPqSD0_mHXzt7hlxu2DWvQYNJgXzsWNMWGCUrdthEyTIqLF7WgwoOtTZczfxWeziHV5GgqacDRhDYi3eAyop2vxr5Bx21C-cUpr6IbJZ7VDFre7S0TPjX7FHT-Ycnrr7W_Li8Q80-nqKvEzmXqcvXU9v40uAOJ43J1HZde9-

YouTube presentation, [long](https://youtu.be/DX33OZDeNIs?si=SF0lSo_bg3EEOt72), and [short](https://youtu.be/xBbzExgb0ck?si=oCGx3znkSfujiKdU).

If you want a purely FHIR transport for this FHIR IPS, then look to the
[Mobile Health Document Sharing (MHDS) Profile](https://healthcaresecprivacy.blogspot.com/2020/02/mobile-health-document-sharing-mhds.html)

