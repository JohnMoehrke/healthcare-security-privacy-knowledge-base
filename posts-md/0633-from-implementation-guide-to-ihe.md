# From Implementation-Guide to IHE-Connectathon

Originally posted: https://healthcaresecprivacy.blogspot.com/2021/02/from-implementation-guide-to-ihe.html
Published: 2021-02-04T21:03:00.003Z
Updated: 2021-02-04T21:03:25.200Z
Author: John Moehrke

---

So you have an Implementation Guide (aka IHE-Profile), and want to test at IHE-Connectathon....

The following is mostly based on what happens when an IHE Profile (aka Implementation Guide) is written. Much of what I outline is not as visible as it should be. Often these tasks are done by the IHE Connectathon staff, with a bit of help and oversight by the Profile writers and co-chairs. I am working to move some of this more visible, and sooner in the process.

I am not yet convinced that IHE is ready to take on the task of testing a specification not written by IHE. This is talked about a lot, but not much resources have been put toward it. First up was SANER, but it is a bit stalled. I started a TestPlan in the SANER implementation guide, and Keith has improved it. I am just not sure how comprehensive the SANER test plan is.

I am a fan of using IHE-Connectathon for more comprehensive and formal testing, vs using the FHIR-Connectathon more for specification validation and experimentation. See my past articles on "[What is a Connectathon](https://healthcaresecprivacy.blogspot.com/2013/11/what-is-connectathon.html)", "[Maturing FHIR Connectathon without confusing the marketplace](https://healthcaresecprivacy.blogspot.com/2018/02/maturing-fhir-connectathon-without.html)". and "[Introduction to IHE Connectathon and Projectathon](https://healthcaresecprivacy.blogspot.com/2012/06/introduction-to-ihe-connectathon-and.html)".

So the idea of IHE-Connectathon testing of a developed IG goes something like this.

- IHE develops a test plan -- this is the overall plan for how the actors would be tested independently, and how scenarios would test a set of products.
- IHE develops test procedures for everything in the plan
- IHE develops or selects test tools to simulate peer actors for actor testing
- IHE enters the IG, actors, and any optional pathways into Gazelle
- Products sign up for testing
- some IHE-Connectathon happens (virtual or physical or adhoc)
- Products test using the actor test test procedure and tools
- Products submit their results to proctors
- Proctor checks the results with the expected results and passes them or sends them back to try again
- Product is paired up with peers for cross-product testing
- proof of cross-testing is submitted to proctor
- After final review products are given a gold-star

Generally today this starts with #4, and only after 3 or more products sign up for connectathon are steps #1-3 done. We could do this with HL7 Implementation Guides, but I would think we should look for interest before we enter them into Gazelle. Although the theory is that with IG publication and the CapabilityStatements in these IGs, this Gazelle registration could be automated.

Generally today 1-3 is done by two IHE experts. These steps are often done in isolation, and in the first year done very quickly. As the signal that an Implementation Guide needs these written is very close to the time at which the IHE-Connecathon happens. This is why I want step 1 to be done as part of the specification writing. Doing step 1 as part of the specification writing will also assure that the goal of the Implementation Guide is clear.

Step 1 is where I and a few others are thinking Gherkin comes in. Step 1 is a critical step to have cooperation between the specification writers, product implementers, and test writers. Theory is that if we had a mature Gherkin infrastructure and writing, then many of the other steps could be less hard, and the testing could potentially be automated. The use of Gherkin fits nicely because it is very Behavior based, and is considered a critical tool in Behavior Driven Development (BDD). Gherkin promises to provide a well pattered sentence structure (Given, When, Then) so that the sentence structure can be parsed by regular-expressions and glue-code. These regular-expressions and glue-code are the magics, and are special to every project. Theory is that IHE might find some of these reusable.

Here is an example of a test-plan as part of my MHD IG that I am developing, this test plan only covers 25%. It is not using Gherkin (yet), but rather is just a minimally expressed set of test scenarios that are envisioned would be necessary to test comprehensively:
    [http://build.fhir.org/ig/IHE/ITI.MHD/branches/master/testplan.html](http://build.fhir.org/ig/IHE/ITI.MHD/branches/master/testplan.html)

Here is SANER. I started this page, but it has taken on a life beyond my efforts. So I am not exactly sure if it is a good example. But it is again high-level set of scenarios
    [http://build.fhir.org/ig/HL7/fhir-saner/test_plan.html](http://build.fhir.org/ig/HL7/fhir-saner/test_plan.html)

Similar setup can be done with a "Projectathon", which starts with the above already done, and focuses on project specific further refinement. Where projects tend to be regions, countries, or other community. Possibly I will write about this in a future blog article.

The above has not been outlined as well as I just did... so this is just my first try at expressing this.  Each step is likely 20-60 hours of work to do it right. Thus to get to step 6, means at least 100 hours expended. I will see if others agree.

**

