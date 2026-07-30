# Age services are a no-win

Originally posted: https://healthcaresecprivacy.blogspot.com/2026/05/age-services-are-no-win.html
Published: 2026-05-12T13:30:47.896Z
Updated: 2026-05-12T13:30:47.897Z
Author: John Moehrke

---

I have written on Age-Services, those theoretical services that can provide age-protected services a way to learn the age of their user without learning their birthday.  [Age Verification is much more important than porn](https://healthcaresecprivacy.blogspot.com/2025/10/age-verification-is-much-more-important.html)

I hear excited proposals that promote that Apple and Google, as platforms, should be the Age service. Each time, I am yelling into the dark at a very specific problem does not get brought into the picture.

The Age service is a thankless service. It would not be able to be a paid service; it won't be able to include advertising. Which is bad enough. But it is also a huge overhead. The API is not hard to implement. The API could be designed in various ways to protect the individual. What is hard to handle is the backend requirements from government subpoena.

An Age service must know strongly the identity of the individual, and thus they must know the birthdate. This is rather obvious, but this itself puts the Age Service in the tough spot of protecting from accidental exposure, or malicious attacks. Highly valuable data, means expensive protections. Protections that also must include audit logs of all legitimate uses, as well as requests that are blocked as illegitimate.

Age-Service is far more expensiveThis is already an expensive service, that I explain has no revenue stream.

https://blogger.googleusercontent.com/img/a/AVvXsEhvG3BQ4R7rZGadYkR2ABEVwJBy7bTBlKucKdI6sln_zkubG7u9_yM2I7bvF9eBYMB52KTmhyTrzkAA79ZiKw3QYDKagkDuHfkqM0D8opl9RBCmnSeitpUHuuWonStmCWkDlESI9ej8hJCV4e5I_ZlXvbzll6B1igBKJQnmwyAMvbb-rudoimhIrQj0zS8U

The Age service knows which age-limited services that a given user is using. They will get requests, or need to issue assertions, for a targeted age-limited service. Thus, it is possible for Apple / Google to know what age-limited services a given user is using. When, and from where. Could they not save a log? Possibly, but they could be compelled to save a log. And they need a log to protect themselves from age-protected service claims that they were given an age value that was never released. E.g., I dispensed beer because the age-service said the user was 21, but in reality, no such age assertion was ever issued.

E.g., An age-limited service "cannabis-today" needs to know that the user placing an online order is of legal age, so age-service is engaged to determine this. This use of "cannabis-today" is legal in the state where the company and user live. But one time, the user is out-of-state, in a state where cannabis sales are not legal, and now that state issues subpoena for records. The individual may not have even tried using the "cannabis-today" app, but it was on their phone. --- this story is not just about cannabis --

The knowledge of which age-limited services a given individual is using is valuable to governments that want to control population. Further, they will want the full log to find individuals using age-limited services.

Date Of BirthDifferent topic on the same subject... an age-limited service can learn the birthdate of an individual by probing every-day. On the day that the age goes up, that is their birthday. Long time ago SAML had an age service, and they noticed this problem, so they indicated that some fuzzing of the birthdate would be used. However, this presents a problem, does the service indicate age transition early and thus is wrong, or does the service indicate late and make the individual angry about not being recognized as 21 on their birthdate.

ConclusionWill governments continue to ask for such a system, yes. I am not surprised they will ask for this. I would actually think they are wrong to not ask. But because they ask, does not mean that it should be provided. In my other article I express that many of these age-limited services are services that are needed by disenfranchised and powerless.  The age-limited services are often the only way for these individuals to get access to the services they need. If the age-service is compromised, or if the government is able to compel the age-service to give up data, then these individuals are put at risk.

