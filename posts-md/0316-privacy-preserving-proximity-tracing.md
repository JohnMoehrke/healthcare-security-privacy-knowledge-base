# Privacy-Preserving Proximity Tracing -- well done #PbD

Originally posted: https://healthcaresecprivacy.blogspot.com/2020/04/privacy-preserving-proximity-tracing.html
Published: 2020-04-07T15:15:00.002Z
Updated: 2020-04-07T15:15:32.712Z
Author: John Moehrke

---

I am impressed by @PeppPt [Privacy-Preserving Proximity Tracing](https://www.pepp-pt.org/) for use in situations like #COVID19 -- Impressive #PbD Privacy by Design.  Their detailed design document with Privacy Considerations, and Security Considerations is available [here](https://github.com/DP-3T/documents/blob/master/DP3T%20White%20Paper.pdf).

https://static.wixstatic.com/media/159fc3_d5038b10872446c3b4169934512c2e11~mv2.jpg

The use-case they are addressing is discovering who someone has been close to, when later that individual is found to be positive COVID-19 infected; while maintaining everyone's privacy.

Their documentation shows good design thinking and transparency of risks, mitigation, and residual. It shows that when one includes Privacy-By-Design from the beginning of a project, that one can preserve privacy while creating a system that meets needs.  There is further [FAQ on issues](https://github.com/DP-3T/documents/blob/master/FAQ.md)

Not only is this a good design of a system, it is excellent exemplar of a specification that includes Privacy Considerations and Security Considerations. These sections outline the persona of attackers, motivations of attackers, and methods these attackers might use. They then go into the design mechanisms that they have included to thwart these attacks. They do also include references to regulation/law that would be used against successful attackers.  I like this inclusiveness of technical design and policy enforcement.

Some concerns I did not see addressed, although these seem small. These are more operational issues than privacy risks:

- They never express the storage usage on the mobile device. It seems that someone in a very populated area would harvest many EphID. So it is not clear how much storage space is needed. The nice part is that this is stored on the device.  They do hint at this in a FAQ that asks about upload, where they express that some might need to upload 600MB daily, which tells me that I might need to store on my device 600MB * 14 day window = 8.5Gig. And this is with compression they outline.  [FAQ](https://github.com/DP-3T/documents/blob/master/FAQ.md)

- They did not address the risk that a mobile device will have some backup (or storage space harvesting) that might expose the data to those beyond the individual using the mobile device. They seem to expect that everyone has perfect control over their own device, which many flashlight applications have proven is a fallacy.

- They don't explain how the end-user is convinced that they have a distributed model of the solution and assured that there is not a centralized exposure. The security and privacy features they have put into place are hard to explain to a typical end-user. I think this is mitigated by the very nature that there is an application that must be installed for this to work. That application will be scrutinized by privacy and security professionals. And further if it is found to be not following the design, it can be revoked from the app-store.

- They don't address _well_ the case where an attacker has motivation to monitor one individual. In this case the attacker can grab EphID for a very short time, where it is known only the targeted individual is present. Then monitor positive individuals looking only at that one targeted individual. Likely a high-value individual, so that kind of an individual should be careful in using this kind of an app. Note that high-value might be overall high-value, such as a sports figure; or may be a local high-value individual, like an estranged spouse.

- They indicate some location data would be recorded, but I couldn't find what that is. They only indicate that the EphID and gross time is captured. I think this is all that is needed, but it is not clear that is all they keep.

- Their proximity detection is only for proximity of the two humans. It does not address when an infected individual leaves virus behind that is picked up much later. The virus can survive in the air for a period of time, and on surfaces much much longer. So there will be many false-negatives.

