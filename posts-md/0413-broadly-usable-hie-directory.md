# A broadly usable HIE Directory

Originally posted: https://healthcaresecprivacy.blogspot.com/2011/05/broadly-usable-hie-directory.html
Published: 2011-05-24T13:04:00.002Z
Updated: 2011-05-27T19:42:01.406Z
Author: John Moehrke

---

The HIT Standards Privacy and Security committee was given the task to pick 'standards' that would support the use-cases of an Entity Level Provider Directory (ELPD). This is a directory that has information about a healthcare organization, entity. We knew that a Individual Level Provider Directory (ILPD) is going to be needed, and asked for directly following the completion of the ELPD. Thus we **considered** the ILPD while evaluating the ELPD. It seems this forward looking was a bad idea in the minds of the larger[HIT Standards Committee](http://geekdoctor.blogspot.com/2011/05/may-hit-standards-committee-meeting.html). I can't stop thinking about sunday's Dilbert, replace "Lawyer" with "Systems Engineer". http://dilbert.com/strips/comic/2011-05-22/

John Halamka has presented  [A Strawman HIE Directory Solution](http://geekdoctor.blogspot.com/2011/05/strawman-hie-directory-solution.html). I see many problems with this approach, and it seems that this approach includes things that add no value. The problems are not security, or trust. These issues are inherit in the X.509 Digital Certificate system. Digital Certificates can be distributed by any means, they don't need to be restricted. The HIT Standards P&S committee was asked to select a standard, what the HIT Standards committee did was reject it on operational deployment concerns. Concerns that are only half true.

Here is my alternative. The HIT Standards committee has already recommended to HHS/ONC that there would be great value to Healthcare exchanges (both direct and discovery/retrieve) if the certificates used were issued off of a Certificate Authority that is bridged to the Federal PKI. This advantage is two fold, first it is required for the federal healthcare (VA, DoD, IHS, etc), second it will force a specific level of assurance that everyone really would like to know they have. I will assert that this would result in a small number of Certificate Authorities.  This is the good part of the John Halamka step #2 plan, but there is no need for a new healthcare specific top-level-domain (TLD) or restrictions on query.

What I would augment is part #3 of the John Halamka plan, very simply with adding that these Certificate Authorities are recognized as the ELPD suppliers and would be compelled to publish using BOTH the DNS model and the LDAP model recommended by the HIT Standards P&S committee. Given that there is only a few of these ELPDs, they surely could work out LDAP federation between them.

Please note, I am not against the DNS model as an alternative, I am just against a model that is not supported by off-the-shelf solutions. The community must understand that the DNS model for certificate distribution is not working perfectly for the Direct Project, and has well known issues. This DNS model for certificate distribution is NOT supported by off-the-shelf software (aka e-Mail systems); nor by any e-Mail service provider. This DNS distribution of certificates is not even supported by widely used DNS services. It is totally restricted to the Direct Project reference implementation and a few open-source tools.

I am very worried about John Halamka's approach to discoverability through faith in internet search engines. This proposal is not any different than what we have today ([http://www.bidmc.org/ContactUs.aspx](http://www.bidmc.org/ContactUs.aspx)), and I can't find reliable provider contact information. A program surely couldn't find reliable provider contact information from this page. I fail to see how this can be called 'standards' based. Putting our faith in internet search engines is NOT a standard.

I simply suggest that as we move from ELPD to ILPD, and from minimal support of the Direct Project to a richer set of use-cases; we will need the power of a real directory. DNS is a wonderful tool, but it is a hammer and the problem before us is not a nail.

_(added this after first publication)_

Note that DNS 'SRV' records are used to discover the address of an LDAP directory for a given domain. Thus it is not hard to find a LDAP directory, one uses DNS. This is a correct use of DNS, to find a Network Service.

**

**

_(added this 5/27/2011)_

Wes Richel [has provided a solution](http://blogs.gartner.com/wes_rishel/2011/05/27/simple-provider-directories-for-simple-interop/) to the part missing from John Halamka's blog. He has indicated that the web page that a provider would publish would use [microformat](http://microformats.org/wiki/Main_Page), pretty graphical things. This ultimately is

useful as the microformat which for contacts is [hCard](http://microformats.org/wiki/hcard)which is a way to display [vCard](http://www.ietf.org/rfc/rfc2426.txt)formatted information on a web page. Where vCard is a format that holds X.500 directory schema information. This is a potentially good idea and not inconsistent with what I have been recommending. The main difference is that Wes proposes this new flashy graphic format as the method of distribution on a web page (is there an app for that?). The microformat is just a distribution method, what are you distributing?

Ultimately we need a directory schema that meets the use-case needs. This is where the [IHE HPD project](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)spent most of their time. Trying to determine what are the attributes and how would they be encoded. This schema is nothing more than an X.500 directory schema, which can absolutely be distributed by vCard encoded in hCard microformat. The nice part is that this is very much along the right trajectory.

So what we have is the IHE HPD directory schema as a common schema and various distribution methods including: hCard, vCard, LDAP, DSML, etc. Sounds like a useful 'profile' that the S&I Framework could define for the US Realm.

My concern, that simply needs some research, is to what level does off-the-shelf e-mail support this? It is all nice that there is an app for an iPhone to view the hCard information; but if it canâ€™t get that hCard information into the e-mail system for use then it isnâ€™t really a useable solution (this is the same problem I see with the DNS model).

Note: The use of extended-validation-certificates would not be necessary on the web page. The digital certificate must it-self validate to a trusted root, so the trust is self-described. Digital Certificates do not need a trusted distribution method.

**Prior Blog/Resources: **

- [Healthcare Provider Discoverability and building Trust](http://healthcaresecprivacy.blogspot.com/2010/11/healthcare-provider-discoverability-and.html)

- [Healthcare Provider Directories](http://healthcaresecprivacy.blogspot.com/2010/08/healthcare-provider-directories.html) Profile

- [Healthcare Provider Directories -- Lets be Careful](http://healthcaresecprivacy.blogspot.com/2010/10/healthcare-provider-directories-lets-be.html)

- [Authentication and Level of Assurance](http://healthcaresecprivacy.blogspot.com/2011/03/authentication-and-level-of-assurance.html)

- [Healthcare use of Identity Federation](http://healthcaresecprivacy.blogspot.com/2010/07/healthcare-use-of-identity-federation.html)

- [Federated ID is not a universal ID](http://healthcaresecprivacy.blogspot.com/2009/12/federated-id-is-not-universal-id.html)

