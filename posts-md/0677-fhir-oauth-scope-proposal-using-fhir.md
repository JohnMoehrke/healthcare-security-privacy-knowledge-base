# FHIR OAuth scope proposal using FHIR query parameters

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/05/fhir-oauth-scope-proposal-using-fhir.html
Published: 2017-05-10T08:33:00Z
Updated: 2017-05-10T08:33:15.417Z
Author: John Moehrke

---

In FHIR STU3 there are now some [common query parameters](http://build.fhir.org/searchparameter-registry.html). I propose that these common query parameters can be used to advance the OAuth scopes that are defined today. The current SMART scopes are based on simple vectors:

- Patient vs 'user' --

- Where a scope of 'patient' means all results must be from that one patient

- Where scope of 'user' means all results are relative to that user rights to data

- fhir-resource --

- Where a FHIR Resource named will limit results to only that Resource type

- This is a valueset of fixed strings (e.g. "Observation", etc)

- REST operation

http://docs.smarthealthit.org/assets/img/clinical-scope-syntax-diagram.png

Expressed in [EBNF notation](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_Form), the clinical scope syntax is:

clinical-scope ::= ( 'patient' | 'user' ) '/' ( fhir-resource | '*' ) '.' ( 'read' | 'write' | '*' )

To understand the current OAuth scope see a few other articles:

- SMART specification - [Scopes and Launch Context](http://docs.smarthealthit.org/authorization/scopes-and-launch-context/)

- David Hay - [SMART - Scopes and Profiles](https://fhirblog.com/2016/03/23/smart-scopes-and-profiles/)

- My - alternatives to SMART scopes - [FHIR Scopes](https://healthcaresecprivacy.blogspot.com.es/2016/01/fhir-oauth-scope.html)

- My - [Healthcare access control scope constraints on OAuth tokens](http://healthcaresecprivacy.blogspot.com/2013/09/healthcare-access-control-scope.html)

So, if the OAuth authority authorizes the user to access the patient requested, as defined in the launch context, for only Observations, and only read operations. This would be a scope of

>
**patient/Observation.read**

A problem with this is that the actual identifier of the "Patient" is undefined. For SMART this is handled by the 'launch context'.

Propose using common "patient" query parameter for patient scope
With the new FHIR STU3 [common shared query parameters](http://build.fhir.org/searchparameter-registry.html), we could identify the specific patient within the Scope. There is a common query parameter for "patient" against 35 different Resources. This has an advantage to be specific, but has a disadvantage that the scopes are not made up of static strings. I would like to suggest that this use of shared query parameters would be a replacement form the first part of the SMART scopes.

So, rather than relying on the SMART launch context to hold the patient identifier. The example with a patient of 'http://myserver.example/fhir/Patient/f5c7395'

>
**patient="http://myserver.example/fhir/Patient/f5c7395"/Observation.read**

or, we could add it to the end.  I think this more powerful.

>
**Observation.read#****patient="http://myserver.example/fhir/Patient/f5c7395"**

Which is

clinical-scope ::= ( fhir-resource | '*' ) '.' ( 'read' | 'write' | '*' ) '#' ( query | '*')

I a proposing this without working out all the issues. I just want the scope to include the patient.

**Scope is Not Query parameters**

This is NOT a proposal to force these query parameters and trust server search capability. This might be one thing done to make it efficient, but won't work perfectly as not all. The use of search parameters will just help with positive matches; but will not be perfect against false-positives or false-negatives. It will also fail when the other parts of the query are creatively authored to cause the wrong thing to happen.

The scope does need to be ENFORCED. The Resource server is expected to enforce the scope without fail. This is what I mean by more than just query. Most important is inspecting the resulting Bundle to assure that no content is contained in the Bundle that doesn't fit within the Scope.

More common query parameters

Some of the other common search parameters that might be useful:

- **_id **-- when the scope is restricted to exactly ONE resource

- **_tag **-- when the scope is restricted generally to some tag

- **_profile **-- when the scope is restricted to some specific _profile tag

- **_security **-- when the scope is restricted to some vocabulary from the HCS (e.g. confidentiality of "N" normal)

- **encounter** -- when the scope is restricted to a specified encounter

Clearly missing but needed

There are some important vectors in Privacy space that are missing:

- Timeframe for when the data was created - used to hide timeframe or enable a timeframe

- Authored by - used when policy allows only data authored by some org or user

Note, scope is not everything. Where the user is forbidden, they get no authorization at all.

Also, I don't propose how to use negative scopes. Such as this user (Provider) can see any data but not patient Mary.

Not Done Yet

This is not a final solution. I am just putting this out there for discussion. Simply to bring up options for discussion on how to make improvements to Scope. The unfortunate facts of healthcare is that the needs for scope is a complex of multiple vectors; and failure is severe when not appropriately protected or when not appropriately available. Both false positive and false negative can have severe effects.

See my other [FHIR articles](https://healthcaresecprivacy.blogspot.com.es/p/fhir.html)

