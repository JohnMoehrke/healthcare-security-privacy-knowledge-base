# ACME is not appropriate for Heathcare use

Originally posted: https://healthcaresecprivacy.blogspot.com/2019/06/acme-is-not-appropriate-for-heathcare.html
Published: 2019-06-18T19:21:00.001Z
Updated: 2019-06-18T19:21:46.411Z
Author: John Moehrke

---

There is a new standard from IETF -  ACME -- [https://datatracker.ietf.org/doc/rfc8555/](https://datatracker.ietf.org/doc/rfc8555/)

Abstract

   Public Key Infrastructure using X.509 (PKIX) certificates are used
   for a number of purposes, the most significant of which is the
   authentication of domain names.  Thus, certification authorities
   (CAs) in the Web PKI are trusted to verify that an applicant for a
   certificate legitimately represents the domain name(s) in the
   certificate.  As of this writing, this verification is done through a
   collection of ad hoc mechanisms.  This document describes a protocol
   that a CA and an applicant can use to automate the process of
   verification and certificate issuance.  The protocol also provides
   facilities for other certificate management functions, such as
   certificate revocation.

see an article  [Let's Encrypt ACME Protocol is now standardized by the IETF](https://hub.packtpub.com/lets-encrypt-acme-protocol-standardized-by-ietf/)

https://upload.wikimedia.org/wikipedia/en/f/fa/Zoomandbored.jpg

The ACME protocol is the standardized variant of "Lets Encrypt" certificate issuance. This is NOT appropriate for healthcare use, as this model of certificate management is primarily intended to make the process of server identity proofing as fast as possible. The intended result is that more web servers would support TLS encryption, with the restriction that there is no authentication of the identity proofing.

This is very counter to the use of certificates and TLS in healthcare as recommended by IHE-ATNA profile. The ATNA profile specifically focuses on mutual-authentication using TLS to a locally known trusted authority. In this profile we explicitly explain that this model should NOT use the certificate store that is managed by web-browsers. This ACME model weakens even the web-browser certificate management.

I would recommend against any use of ACME for ATNA based secure node or secure application; and would recommend against use of ACME managed certificate for ANY healthcare traffic, even simple HTTP based traffic.

