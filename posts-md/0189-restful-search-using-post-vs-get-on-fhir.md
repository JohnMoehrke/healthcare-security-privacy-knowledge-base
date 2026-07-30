# RESTful search using POST vs GET on #FHIR

Originally posted: https://healthcaresecprivacy.blogspot.com/2022/06/restful-search-using-post-vs-get-on-fhir.html
Published: 2022-06-22T13:06:00.003Z
Updated: 2022-06-27T18:24:32.003Z
Author: John Moehrke

---

I got a Question:

> Can you address a specific example of the intersection of FHIR standards and OWASP guidance?
The FHIR spec allows for sensitive ids such as patient identifier to be used on the query string when searching for a patient.  See the following:
[https://try.smilecdr.com:8000/baseR4/Patient?identifier=47](https://try.smilecdr.com:8000/baseR4/Patient?identifier=47)
However, the folks at OWASP consider this practice a vulnerability:
[https://owasp.org/www-community/vulnerabilities/Information_exposure_through_query_strings_in_url](https://owasp.org/www-community/vulnerabilities/Information_exposure_through_query_strings_in_url)https://owasp.org/www-community/vulnerabilities/Information_exposure_through_query_strings_in_url
[Information exposure through query strings in url - OWASP](https://owasp.org/www-community/vulnerabilities/Information_exposure_through_query_strings_in_url)
Description. Information exposure through query strings in URL is when sensitive data is passed to parameters in the URL. This allows attackers to obtain sensitive data such as usernames, passwords, tokens (authX), database details, and any other potentially sensitive data.
[owasp.org](http://owasp.org/)

> Do you have any thoughts or guidance on this topic?  Break the standard (and REST) and implement these GETs as POSTs?  Create a proxy table that maps sensitive ids to external ids and require the usage of the external id on the query parameter?

OWASP is fantastic resource. Everyone should use it.

However on the topic of GET vs POST for search in FHIR, I do have some further emphasis and guidance:

The FHIR core specification addresses the basic support, and thus why Search is supported on POST as well as GET. All the examples are using GET, but that is just because it is easier to show in examples.- [https://build.fhir.org/security.html#http](http://build.fhir.org/security.html#http)
- [https://build.fhir.org/search.html#Introduction](https://build.fhir.org/search.html#Introduction)
Secure Communication is a mustThe OWASP article does recognize that using TLS is helpful against untrusted infrastructure. Fully protecting against them. Communications about patient data better be protected using TLS as any request (GET or POST) will be returning patient data, thus the query parameters are just as vulnerable as the query response.  So, using TLS will prevent all of the Internet infrastructure from grabbing any patient identity or sensitive data.

The problem, as the OWASP article points out is that logging or inspection might happen on the Client or on the Server on either end of the TLS communication. What they don't say in the OWASP article is that the vulnerability is due to failure to secure the endpoints.  Again, patient data will be flowing, so to be worried about query parameters and not data is silly. **Either an endpoint is designed and secured properly, or it should not be trusted with patient data. **So the distinction between POST and GET is really odd. You either have control and can be trusted; or you don't have control and not trusted. If you can't be trusted with GET then you can't be trusted with POST.
Body loggingIf your logging is out-of-control, then I assert you must assume your audit logs are recording the content of the body. Thus the POST body is logged, as is the Response body.
Protect the whole SystemServers can certainly protect themselves fully. Any logging can be controlled to log high quality logs and protect the log storage and access fully, or to not log anything. **We are trusting these servers to have secured patient data, so certainly they should be expected to be able to securely store log files too. **Even cloud based servers that have scale functionalities can be properly secured. If you just secure your database engine, then you have not secured your server. You must secure everything, not just the easy stuff.

So, clients are the biggest exposure point. Applications (aka not browser hosted code) have full control of their environment and thus can also be designed to NOT log things.

Browser apps that leverage the browser for display and networking are not securable, at all! They should not be trusted with patient data, say nothing about allowing them to use GET vs POST.  The exception that is often allowed is when the whole client computer is controlled, such as a Clinician application.  So, are browser apps forbidden, no. But, like Servers a whole Client can be secured. If the whole Client is secured then there is no problem, if anything in the Client isn't secured then the patient data is just as at risk as the logs.

Any service, intermediary, or client that can't be trusted to maintain secure logs should not be trusted at all. **Anyone that puts patient data on a service that can't maintain logs securely is the actual problem.** **Anyone that allows a insecure client to gain access to patient data is the actual problem.**
Patients have rightsNote one exception that as a Patient advocate I must remind everyone... Patients are empowered to make stupid decisions for themselves. It is useful to explain that the patient has chosen an insecureable client, but it is not proper to forbid using the application the patient has chosen. In this case the patient has the right. Privacy Principles favor giving the data to the patient over using security as an excuse to not give them the data. Warn the patient first, but if they say they understand and really want it to happen, then do it.
Not all of FHIR is patient dataThat said, there are many uses of FHIR that are not about patient identifiable data. Infrastructure resources, Directory resources, vocabulary resources, definitional resources, etc.
- [https://build.fhir.org/security.html#SecPrivConsiderations](https://build.fhir.org/security.html#SecPrivConsiderations)

And there are uses of FHIR on synthetic data, or properly de-identified data.
Conclusion I have rallied against this security theatre against GET.  POST is not more secure than GET. It is not. In fact GET enables better, for example in that it supports cache control with trusted infrastructure. GET is also expressly idempotent, where POST is not explicitly (although POST search very likely is).

Comment with arguments for/against this position. I feel confident, but I also know that I don't know everything.

Updates
- A much more [detailed explanation by Robert Broeckelmann](https://medium.com/@robert.broeckelmann/http-post-vs-get-is-one-more-secure-for-use-in-rest-apis-2469753121b0) of GET vs POST search. Concluding very similar as I do.

- The CVE for this situation is [https://cwe.mitre.org/data/definitions/598.html](https://cwe.mitre.org/data/definitions/598.html)

- Grahame Grieve June 22, 2022 at 3:44 PM

>
> I agree, but the way people are fixed to this speaks to a lack of confidence in managing log access. Which is typically true for general web servers, but cannot be true for servers handling PHI / Clinical data

- Note that FHIR Paging forces the use of GET for next / previous page. So, one needs to address securing GET

-
- Note that POST URL parameters are part of the http specification. So just changing to POST changes nothing. One must change to POST NOT using URL parameters, but content type application/x-www-form-urlencoded with the parameters in the body.

