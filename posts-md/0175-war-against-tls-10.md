# War against TLS 1.0

Originally posted: https://healthcaresecprivacy.blogspot.com/2016/12/war-against-tls-10.html
Published: 2016-12-09T15:56:00.001Z
Updated: 2016-12-09T16:25:02.573Z
Author: John Moehrke

---

I have gotten into multiple [discussions](https://chat.fhir.org/#narrow/stream/implementers/topic/testing) on [the](http://exchange-specifications.wikispaces.com/TLS+Encryption+Clarification) topic of TLS 1.0. The result always seems to end up in no change of anyone position.

There are a few agreed to points:

- SSL is fully forbidden.

- TLS 1.2 is best

- TLS 1.0 and 1.1 are not as good as 1.2

- Bad crypto algorithms must not be used (e.g. NULL, DES, MD5, etc)

**However some people are taking a policy decision that TLS 1.2 is the ONLY protocol. They are allowed to make this policy change, as long as it doesn't impact others that can't support that policy**

I have no problem with a war on SSL. I simply have a realist view on available implementations of TLS 1.2 on platforms where software is available to run. I would love for everyone to have the latest protocols, and for those protocols to be perfectly implemented. Reality sucks!

Standards Recommendation on TLS
What is expressly frustrating is that they point at standards as their justification. YET those standards explicitly allow use of TLS 1.1 and TLS 1.0 in a very specific and important practical case... that is wen the higher protocol is not available.

It is this last clause that seems to be escaping recognition.

The 'standard' being pointed at is IETF (the writers of the TLS protocol) [RFC7525](https://tools.ietf.org/html/rfc7525).  This isn't just an IETF specification, it is a "Best Current Practice" -- aka [BCP195](https://tools.ietf.org/html/bcp195) -- May, 2015

**Recommendations for Secure Use of Transport Layer Security (TLS) **

**and Datagram Transport Layer Security (DTLS) **

Let me excerpt the important part of [that standard from section 3.1.1](https://tools.ietf.org/html/rfc7525#section-3.1.1): Bold and highlight added for emphasis.

3.1.1 SSL/TLS Protocol Versions

   It is important both to stop using old, less secure versions of SSL/
   TLS and to start using modern, more secure versions; therefore, the
   following are the recommendations concerning TLS/SSL protocol
   versions:

   o  Implementations **MUST NOT negotiate SSL version 2**.

      Rationale: Today, SSLv2 is considered insecure [[RFC6176](https://tools.ietf.org/html/rfc6176)].

   o  Implementations **MUST NOT negotiate SSL version 3**.

      Rationale: SSLv3 [[RFC6101](https://tools.ietf.org/html/rfc6101)] was an improvement over SSLv2 and
      plugged some significant security holes but did not support strong
      cipher suites.  SSLv3 does not support TLS extensions, some of
      which (e.g., renegotiation_info [[RFC5746](https://tools.ietf.org/html/rfc5746)]) are security-critical.
      In addition, with the emergence of the POODLE attack [[POODLE](https://tools.ietf.org/html/rfc7525#ref-POODLE)],
      SSLv3 is now widely recognized as fundamentally insecure.  See
      [[DEP-SSLv3](https://tools.ietf.org/html/rfc7525#ref-DEP-SSLv3)] for further details.

   o  Implementations **SHOULD NOT negotiate TLS version 1.0 [[RFC2246](https://tools.ietf.org/html/rfc2246)];
      the only exception is when no higher version is available in the
      negotiation.**

      Rationale: TLS 1.0 (published in 1999) does not support many
      modern, strong cipher suites.  In addition, TLS 1.0 lacks a per-
      record Initialization Vector (IV) for CBC-based cipher suites and
      does not warn against common padding errors.

   o  Implementations **SHOULD NOT negotiate TLS version 1.1 [[RFC4346](https://tools.ietf.org/html/rfc4346)];
      the only exception is when no higher version is available in the
      negotiation.**

      Rationale: TLS 1.1 (published in 2006) is a security improvement
      over TLS 1.0 but still does not support certain stronger cipher
      suites.

   o  Implementations MUST support TLS 1.2 [[RFC5246](https://tools.ietf.org/html/rfc5246)] and MUST prefer to
      negotiate TLS version 1.2 over earlier versions of TLS.

      Rationale: Several stronger cipher suites are available only with
      TLS 1.2 (published in 2008).  In fact, the cipher suites
      recommended by this document ([Section 4.2](https://tools.ietf.org/html/rfc7525#section-4.2) below) are only
      available in TLS 1.2.

   This BCP applies to TLS 1.2 and also to earlier versions.  It is not
   safe for readers to assume that the recommendations in this BCP apply
   to any future version of TLS.

Note the last bullet tells you that you yourself must support TLS 1.2. A good thing if your platform allows it.

Financial industry PCI standard
Doesn't PCI require that organizations stop using TLS 1.0?

(Taken from [Sequoia recommendation on TLS](http://exchange-specifications.wikispaces.com/TLS+Encryption+Clarification), as I a not a PCI expert)  As of 2016-11-23, the PCI issued the following text on their public web site at: [https://blog.pcisecuritystandards.org/migrating-from-ssl-and-early-tls](https://blog.pcisecuritystandards.org/migrating-from-ssl-and-early-tls) which states "The Payment Card Industry Security Standards Council (PCI SSC) is **extending the migration completion date to 30 June 2018** for transitioning from SSL and TLS 1.0 to a secure version of TLS (currently v1.1 or higher). These dates provided by PCI SSC as of** December 2015 supersede **the original dates issued in both [PCI Data Security Standard v3.1](https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf) (DSS 3.1) and in the [//Migrating from SSL and early TLS//](https://www.pcisecuritystandards.org/documents/Migrating_from_SSL_Early_TLS_Information_Supplement_v1.pdf) Information Supplement in April 2015."

Conclusion

Yes, it would be great if everyone had all the latest protocols, and that all those protocols were implemented without errors... BUT reality gets in our way. Especially so with Interoperability where reality is that we are trying to achieve Interoperability.

UPDATE: Reader should note that [RFC7525](https://tools.ietf.org/html/rfc7525)is very readable and full of far more recommendations than just TLS version. Including detailed discussion of [cypher suites](https://tools.ietf.org/html/rfc7525#section-4), and [authentication](https://tools.ietf.org/html/rfc7525#section-4.3)types, [etc](https://tools.ietf.org/html/rfc7525#section-6). There is no perfect solution or configuration. Security is RISK MANAGEMENT, and needs continuous care and monitoring by an expert.

