# Guest Post: Use-Case - Security Audit Prompts Investigation

Originally posted: https://healthcaresecprivacy.blogspot.com/2015/10/guest-post-use-case-security-audit.html
Published: 2015-10-13T17:11:00.002Z
Updated: 2015-10-13T17:11:59.060Z
Author: John Moehrke

---

[Glen Marshall](https://www.linkedin.com/in/glenmarshall) is well known in Healthcare Security circles, and he continues to contribute in Retirement. He produced this use-case and I found it so well written, and it explains Security Audit Logging (FHIR [AuditEvent](http://hl7.org/implement/standards/fhir/auditevent.html)) as distinct from Provenance (FHIR [Provenance](http://hl7.org/implement/standards/fhir/provenance.html)) so well, that I asked him if I could publish it as a guest post. I got his approval almost a month ago, so here it is.






  Normal
  0








  false
  false
  false

  EN-US
  X-NONE
  X-NONE





































































































































































 /* Style Definitions */
 table.MsoNormalTable
 {mso-style-name:"Table Normal";
 mso-tstyle-rowband-size:0;
 mso-tstyle-colband-size:0;
 mso-style-noshow:yes;
 mso-style-priority:99;
 mso-style-parent:"";
 mso-padding-alt:0in 5.4pt 0in 5.4pt;
 mso-para-margin-top:0in;
 mso-para-margin-right:0in;
 mso-para-margin-bottom:8.0pt;
 mso-para-margin-left:0in;
 line-height:107%;
 mso-pagination:widow-orphan;
 font-size:11.0pt;
 font-family:"Calibri","sans-serif";
 mso-ascii-font-family:Calibri;
 mso-ascii-theme-font:minor-latin;
 mso-hansi-font-family:Calibri;
 mso-hansi-theme-font:minor-latin;
 mso-bidi-font-family:"Times New Roman";
 mso-bidi-theme-font:minor-bidi;}

Narrative

Alice is a revenue cycle analyst for the Memorial Health
System.  Her job is to improve the
revenue cycle end to end through workflow, from patient registration, capture
of care billable events, insurance claims, to accounts receivable collection.  It includes problem investigation and
resolution. To perform her job Alice is authorized to view the demographic and
clinical records for patients.  She is
not authorized to make changes to the data.

Bob is a security analyst for the Memorial Health
System.  His job includes reviewing
accumulated Security Audit data to assure that the security policies are
correctly implemented in software and are enforced.   As part of this job he is authorized to
review individualsâ€™ Security Audit access history and patterns, and to trigger
investigations when anomalous activity is discovered.

Bob notices that Alice has been viewing a large number of
cases from the Emergency and Urgent Care departments.  Looking into her access history over the past
year, he sees that the number of cases has more than tripled over the past 2
months.  He advises his manager, Carl,
who, in turn, advises Aliceâ€™s manager, Diane, that an investigation will be
made.

Carl obtains the Data Provenance records associated with the
patients who have been viewed by Alice.
A large number of them are household accidents, in particular involving
children.  He reports this to Diane.

Diane retrieves the Data Provenance records for child
injuries and correlates them with Aliceâ€™s activity reports.  The number of cases that Alice has reviewed
does not correlate with her activity.

Diane reports this to Carl.
She also schedules a meeting with Alice and invites Carl to attend.  During the meeting, Alice admits that she has
been gathering information for her friend who is a product liability attorney,
who has been seeking clients for lucrative toy liability cases.  Diane then terminates Aliceâ€™s employment and
Carl immediately removes Aliceâ€™s authorization to access the Memorial Health
System computer network.

Because this is a reportable Event under HIPAA, Carl and
Diane document it, using the provenance records, and refer it to the Memorial
Health System compliance officer for appropriate follow-up.

**Alternative Scenario**

Diane retrieves the Data Provenance records for child
injuries and correlates them with Aliceâ€™s activity reports.  The number of cases that Alice has reviewed
correlates with her activity to improve ICD-10 coding and collection of revenue
from health insurance for accidental injuries.
Many of them involve children, incidentally.  Diane reports this to Carl, and the
investigation is closed.

Ecosystem Entities

Â·
Actors:

o
Alice: A health system employee who is granted
read-only access to a wide range of patient demographic, insurance, and clinical
data.

o
Bob: A health system employee who is granted
read-only access to security audit repository data.

o
Carl: A health system manager who has read-only
access to Security Audit repository data and Data Provenance repository data,
as well as read/write access to security management processes and data.

o
Diane: A health system manager who has read-only
access to Data Provenance repository data.

Â·
Data Resources:

o
Patient claims and treatment data, containing
records of clinical data and the related charges, the claims sent to payers,
and accounts receivable.

o
Security Audit repository, containing records of
all actions that are mediated using computer and network security
processes.  It is accessed only by
authorized security administrators.

o
Data Provenance repository, containing W5 (who,
what, when, where, how) records for data creation, use, and life-cycle
events.  It is accessed only by
authorized management staff.

Technical Preconditions

Â·
Explicit health system security and privacy
policies exist, are congruent to federal and state regulations, and are
enforced by the computer network and systems.
The actual policies and enforcement mechanisms are out of scope for this
use case.

Â·
Automated processes for computer and network
security management exist, and all security-mediated events are audited.

Â·
Automated processes for data provenance and use
exist, separately from security audit.

Â·
Alice, Bob, Carl, and Diane are able to sign-on
to the computer network and are granted authorities for process and data access
appropriate to their job responsibilities.

Â·
User interfaces and a data vocabulary for
querying the Security Audit and Data Provenance resources exist.  The specific user interface and report
specific design, as well as the data vocabularies, are out of scope for this
use case.

Party-to-Entity Mappings

_Data flow and UML
diagrams go here_

Use Case Steps

Normal Revenue Cycle Analysis Workflow for Alice

Alice is signed-on to the health system computer network

1.
Alice constructs a queries to access claims data
and treatment details for a class of patients.

2.
Alice investigates the query results, looking
for anomalies that indicate patterns that should be repeated (good collection
results), or patterns that should be improved (poor collection results).

3.
Alice formulates recommendations, forwards them
to management for action, and summarizes them in her activity report.

Normal Security Audit Workflow for Bob

Bob is signed-on to the health system computer network.

1.
Bob constructs queries to access security audit
data, looking for security-mediated actions for a class of users.

2.
Bob investigates the query results, looking for
anomalies that indicate unexpected use of the health system data resources or
security policy violations.

3.
If Bob notices anomalies, he analyzes them and forwards
any significant findings to management for investigation.

Investigative Workflow

1.
[trigger] Carl receives a security anomaly
report from Bob.

2.
Carl retrieves the associated security audit
data to identify the sources of anomalies.

3.
Carl retrieves the associated provenance data to
determine â€œwho, what, why, where, and howâ€ the anomalous events occurred.

4.
Carl contacts the appropriate management (Diane,
in this use case) to request an explanation.

5.
Diane correlates the data from Carl with the
associate employee activity reports.

a)
If the activities are not legitimate, per
policies and historical patterns, Diane initiate corrective actions

b)
If the activities are legitimate, she reports it
to Carl to end the investigation.

