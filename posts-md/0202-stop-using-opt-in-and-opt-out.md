# Stop using OPT-IN and OPT-OUT

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/04/stop-using-opt-in-and-opt-out.html
Published: 2017-04-04T16:55:00Z
Updated: 2017-04-06T16:36:11.821Z
Author: John Moehrke

---

In various conversations on [Consent](https://healthcaresecprivacy.blogspot.com/p/consent.html), including #FHIR Consent, discussions often get mixed-up because we use the terms "OPT-IN" and "OPT-OUT". These terms are trouble. We need to stop using â€œOPT-INâ€ and â€œOPT-OUTâ€.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj97RGf2_AGfhaHGGOUJ-6DYmywpUhPZVRPGgccptPq91G-eMz9wEJYc88D3XJuDcz2Cz4wortSSpOl9RLuOJ3CcS8LngiNm4W_VjxnmWoNbAPAP2AtoFtJCto2GiWJBt_yb-4PGRlT_vQF/s1600/Slide3.PNG

I want to propose a set of terms. I will never get everyone to stop using opt-in and opt-out, but where better terms can be used, I propose better terms. Better, as in, more descriptive and accurate communications.

The reason is that these terms can mean very different things based on what the person listening is thinking. They can mean a consent â€˜modelâ€™ or they can mean a consent â€˜stateâ€™ or they can mean an 'action' by the patient. Especially confusing because there is a possibility for all thee to be the same and **not the same**.

State Model --

In this model we look to consent as a [state-diagram](https://en.wikipedia.org/wiki/State_diagram), also called a [finite-state-machine](https://en.wikipedia.org/wiki/Finite_state_machine), or a [directed-graph](https://en.wikipedia.org/wiki/Finite_state_machine). In a state-diagram is made up of a finite number of '[states](https://en.wikipedia.org/wiki/State_(computer_science))' diagrammed as circles, with arrows indicating events that can occur.  A [state-transition-table](https://en.wikipedia.org/wiki/State_transition_table), and [uml](https://en.wikipedia.org/wiki/UML_state_machine#Basic_UML_state_diagrams)representations can also be used.

At the most gross level of Privacy Consent we recognize that there is a 'state' where data is shared, for legitimate medical treatment purposes, with trusted partners, who are authorized by their licensing and role. And another state where data is NOT shared, except for legitimate and authorized medical emergency...

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhLSGtmZWh0OxkuNVRLkVUrBOIMt0MsD-5gYbPjZnBDdyzD5K1T0FEIxDgs-QR0VscjuCaiev9N04wExB0BSXpWmoLDLQy5tULMa8CZ-0i2hpo6LnHGjRJVlGCO7cxfzRM-sgwNpzeRey3Y/s1600/Slide1.PNGNote I am defining a Treatment purpose of use, setting parameter that indicate that the sharing would be for legitimate and authorize purposes. This is to counter distracting arguments, distracting from my point. Insert any caveats necessary, and there is still an understanding of OPT-IN and OPT-OUT as a state of consent.

as a State:

- OPT-IN state â€“ Permitted to sharing the patient's data for Treatment purpose

- OPT-OUT state â€“ Denied to share the patient's data for Treatment purpose

I think this is better said using the terms Permit and Deny

Event Model

This might also be called the 'action'.  It is often predominately determined by regulation.

Some view OPT-OUT as a model where absent an indication from the Patient, their data can be used. This is to say that the patient must OPT-OUT if they don't want their data shared.

Some view OPT-IN model as one where absent an indication from the Patient, their data can not be used.

You will note that this model uses terms that are also aligned with the 'first action' that a patient can do.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjlQ2djlpS61PbFASQ3WzsQ42nqDOZfK7w0pifysFpfFxygJEaOwWJNfOUGgXN-ZzVrCgzakT2WnpoAP-0SHjiNh2PZ8s3MciJ680m5eUBylDRNlfv0PkjHTXQSOHcdvdSCj_NnH_6R8lFw/s1600/Slide5.PNG

I think this is better represented by the "event" or "action" of the patient giving authorization, that is to "Authorize"; or the patient revoking that authorization, that is to "Revoke".

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjAM3dlPIPHgBurr79dPLTXmjT20y8uhze90upf32IIy4ZupXGEqrvbC0GzlFbthsJ4gty6uaOyNXfHxSCx-JtMqHi_xb9aJb3w2pdxRmsrCsf7m180ElPTQL9Hs8JMKMYVdwruB8a2QHjp/s1600/Slide6.PNG

First state

This perspective uses the term to define the starting point, as the state.

- opt-in environment, the patient is automatically put into opt-in state.

That is improper definition, as it uses the term to define the term. So I will re-write it using the "Permit" state term

- opt-in environment, the patient is automatically put into Permit state.

This perspective is important to understand, but does not help with any clarity. As once the patient has made that first action then the distinction is not valuable. That is to say, the second or third or fourth action just confuse the perspective.

I propose we use:

States (Leveraging these terms as used in XACML):

- **Permit **â€“ a â€˜stateâ€™ data is shared

- **Deny **- a â€˜stateâ€™ of NOT sharing

Model - Initial State

- **Implied-Consent** â€“ A â€˜modelâ€™ where without a consent the patient data sharing is Permitted.

- Start in Permit state

- **Explicit-Consent** â€“ A â€˜modelâ€™ where without a consent the patient data sharing is Denied

- Start in Deny state

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhnpSZ7-6nmUZtbV2Ipd3jQtPPmxmKLMwfYxqpbzqqKK2g-qjKLUxn8lsc1UmH8GufukN82KY0LkdkOgCSKsThjP4sA2TkxwAahdUR2iu3_4BDUDxot-j0I25VmU60xZmIhiVUgV4zT8XVm/s1600/Slide4.PNG

The Initial State is usually driven by regulation. Such as Such as HIPAA, which is a model where patient data is allowed to be used for Treatment, Payment, and Operations without getting a consent from the patient.  It is common for HIPAA to be called an Implied-Consent environment, for the patient has implied their consent by seeking treatment.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi_P7qYIUxiN949LKrGlC3CboNIoWDMBv4yUr88NeQ2nXhGE63DHexcgOMI8wtrxgBocvIqu4gGqAuQqjwqLGLAopl4qINWyyY-lh_z7NXtxxMyHTKmHUnkJf-c_r2AnpY-D1KIlUQUR7uX/s1600/Slide3.PNG

Where as EU has as an Explicit-Consent dominant model. That is that no action on data without consent from the individual that data is about.

Explicit-Consent is also common with sensitive topics, that are considered more sensitive than normal health topics. Likely due to stigma. These topics are often held to an Explicit Consent model, even where normal health topics follow Implied Consent.

Also some regions, or even organisations simply choose to use an Explicit-Consent model for various reasons. Explicit-Consent can be seen as more [Privacy Principled](http://healthcaresecprivacy.blogspot.com/2015/04/privacy-principles.html), but can also impede progress that might be 'implied'

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSWWsxHHbH89sEUX6iBCJKo117n3ln7iMqMchblXlP1QWRFdSGga0kDJ0PxQaeNJChBMnV6n1kfLl2mgJnEsleJuGdbYJilQUsCydgHwV4FHDUvVugX2y04LPTo2f0W3SWV1DWSbl_aioG/s1600/Slide8.PNG

I propose a set of terms, while not defining terms for the 'actions'. This because the actions are what tends to be very realm specific. Some environments allow a verbal consent, others allow a web-form checkbox, others require digital signatures, others have very specific language, others have special technology, others allow for delegation and assignee, etc. So the actions, or 'state transitions' are much harder to agree upon.

And, there are certainly more states...

Updated: 4/6/2017 to include recommended "Event" description and diagram

