# Testing - governance

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/03/testing-governance.html
Published: 2014-03-02T19:07:00.002Z
Updated: 2014-03-02T19:07:42.241Z
Author: John Moehrke

---

Testing is is critical both early and often. Please learn from others failures. The [Apple â€œgoto failâ€](https://www.imperialviolet.org/2014/02/22/applebug.html) provides a chance to learn testing governance lesson. It is just one in a long line of failures that one can learn the following governance lesson from. Learning these lessons is more than just knowing the right thing to do, but also putting it into practice.

The governance lesson I am speaking of is: Testing, Re-testing, and testing again and again and again. In software one needs to create complete tests and continuously test them.  These tests are not just for software development, but also operational deployment. Yes, you running an HIE or a Hospital or a Clinic. What are the essential functions you expect? More important what are the anticipated failures you don't want?

 Lesson â€“ Test failure modes
As one develops any product one will test failure-modes. That is they will make sure that the system fails properly, safely. This is the classic â€˜crash testâ€™ in automobiles, or the UL test for kitchen appliances. These examples are external tests, but I assure you that the manufacture has tested many times against these same kinds of failures before they are ever made into products.

In physical products these tests are re-executed on random samples on the manufacturing line. In software the manufacturing line is â€˜perfectâ€™, so little reason to randomly sample copies of software (actually software distribution does have continuous tests built into the installers and such). Software just needs to apply this principle in a different way, one that recognizes that failures happen when 'change' happens.

 As one develops any product one creates tests to make sure that the product is doing what they want it to do, and not what they donâ€™t want it to do. This is true of software as well as other things. In software there is even the concept that one build the tests first â€“ Test Driven Development.

 It is common for tests to be created for the success case, the â€˜happy pathâ€™. These are the easy tests. Indeed most of the Meaningful Use tests are â€˜happy pathâ€™ tests. Can your software create a CDA with â€˜thisâ€™ content? Can your software display a well-formed CDA document with â€˜thisâ€™ content? Can you send a Direct message to this recipient? These tests will notice when something is not working successfully. These tests are not trying to force errors. Back to the â€œCrash Testâ€, where they deliberately drive a car into a wall. One must come up with failure tests. The failure tests are not as pervasive, yet there should be many many more of these kinds of tests.  These negative tests are hard to create, but critical overall.

 For every test that you expect your â€˜featureâ€™ to shine, you need likely 10 or 100 more that push the limits. In robustness testing, especially for web-services interfaces, there are test software that create random input â€“ â€œFuzzingâ€. These are useful, but they donâ€™t take the place of deliberately created â€˜negativeâ€™ tests.

Lesson â€“ Continuous testing.
Testing your product once is not sufficient. Testing your subroutine once is not sufficient. Once you create a test, get it into an automated test tool. Meaning that every time you build, this test is run to make sure that what you just built is still what you intended. It does not matter why you just changed the source code, run all of the tests you have. You might have just changed the color or font, but test everything. This is especially true when you check-in your code. Automated build systems are common as projects get large. They need to be mandatory and universal.

If this had been done in the Apple "goto fail" case, then it is likely that someone would have created a test for the [code that was being ignored by the extra "goto fail"](http://arstechnica.com/security/2014/02/extremely-critical-crypto-flaw-in-ios-may-also-affect-fully-patched-macs/). These tests would fail (double negative), and thus someone would have noticed and not allowed the changes to continue.

Governance failure modes
In the case of the Apple "goto fail": I can imagine that there was indeed positive and negative tests, and that they are part of continuous testing. These test might have been failing properly. I can imagine that the [extra goto fail](http://arstechnica.com/security/2014/02/extremely-critical-crypto-flaw-in-ios-may-also-affect-fully-patched-macs/) was actually added when testing some new feature. This new feature might have been redundant checks, thus the first check needed to be circumvented so as to have the redundant check executed. A mistake to not remove the extra goto fail, followed by a later removal of the redundant code . I have no idea if this is the case, but I can imagine how multiple accidents can cause stuff like this. There are theories that this [Apple SSL failure was deliberate](https://www.schneier.com/blog/archives/2014/02/was_the_ios_ssl.html), I and others don't think so.

This is why one needs to â€œTrust but Verifyâ€. That is create positive tests, create more negative tests, and execute these tests constantly. Note that being open-source is no protection, this code was openly published. Note that being pervasively used is no protection, this code was very widely deployed by Apple. Note that this failure was a failure-mode failure, so properly working was not enough.

Operational governance

This is not just a software development problem. This governance needs to be applied at many levels. Everyone that is deploying software should have their own sets of tests, both positive and negative. Yes these tests are not going to be as invasive, but they should hit upon the critical things.

Software updates happen, likely to fix a discovered bug (proving that bugs happen). When these software updates are applied to your operational environment they change the system slightly. These slight changes should only be positive changes, but unintended consequences can happen. Thus if you have positive and negative tests in your deployment environment, you will know that the system is working as expected both from the positive and negative perspective.

Hospitals that rely on good security, need to make sure that what security they have is indeed good and stays good. This means that when they say that TLS will be used with mutual authentication; that they have regular testing of that requirement. Testing happy-path is not hard, it is tested by normal-business. Testing failure modes is much more important, and requires some creativity. Have tests of expired certificates, revoked certificates, valid certificates that are not authorized for that purpose, etc. Have tests for failure-modes of the failure-modes, what happens when the certificate revocation check can't be done due to a network failure? Further testing the failures here, will also test your happy-path of your audit-log system and you business-continuance system. Having these tests in your operational deployment environment would have shown you that Apple was not 'trustable'.

Trust but Verify.

