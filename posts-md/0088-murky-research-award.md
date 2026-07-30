# Murky Research Award

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/04/murky-research-award.html
Published: 2014-04-04T19:06:00.004Z
Updated: 2014-04-04T19:06:44.102Z
Author: John Moehrke

---

I am going to take a page from [Keith](http://motorcycleguy.blogspot.com/), and his [Ad Hoc Motorcycle Guy Harley Award](http://motorcycleguy.blogspot.com/p/ad-hoc-harley-award-winners.html). This is an authorized pillage of his idea. I thus create the Murky Research Award, tip of a hat to [Car Talk - Click and Clack](http://www.cartalk.com/)- [Murky Research](http://lmgtfy.com/?q=cartalk+Murky+Research). I am constantly reminded of Murky Research when I explain to people how to pronounce my name.(Keith also recommended this title). Sorry my graphic isn't as nice as the  [Ad Hoc Motorcycle Guy Harley Award](http://motorcycleguy.blogspot.com/p/ad-hoc-harley-award-winners.html).

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFgpC_TpQVi8EV9GMM2cc-52rMn8DSHSa1_MmA5N2LZwHhRwjUSkk1jVKvNDW8lJeHWsx4wpBaRiTr6vB63uzSE6wZnXGtuFTA7FqRw4Oga_5I4KE6meHHIxXXmQJfV0vvLpsQjT0xXBn5/s1600/tagged_duck.JPGThe First Murky Research Award goes to[Josh Mandel](http://www.linkedin.com/pub/joshua-mandel/35/472/883), who showed tremendous **Research abilities, **transparency, and ultimate Professionalism in is pursuit of knowledge on [security vulnerabilities he discovered in some EHR products regarding malformed CDA](http://smartplatforms.org/2014/04/security-vulnerabilities-in-ccda-display/) (an XML form) documents that are not robustly sanitized and validated before being displayed using a simple stylesheet and an off-the-shelf browser (or browser framework). The details of this are far better explained by  Josh.






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
 mso-para-margin:0in;
 mso-para-margin-bottom:.0001pt;
 mso-pagination:widow-orphan;
 font-size:11.0pt;
 font-family:"Calibri","sans-serif";
 mso-ascii-font-family:Calibri;
 mso-ascii-theme-font:minor-latin;
 mso-hansi-font-family:Calibri;
 mso-hansi-theme-font:minor-latin;
 mso-bidi-font-family:"Times New Roman";
 mso-bidi-theme-font:minor-bidi;}

>

Dear Strucdoc and Security WGs,

In this era of personal health records and Direct messaging,
it's increasingly unrealistic to assume that an EHR can trust every (C-)CDA
document that arrives in a clinician's inbox. Here's an article I've published
on the SMART Platforms blog describing a set of security considerations for the
display of potentially malicious C-CDA documents:

[http://smartplatforms.org/2014/04/security-vulnerabilities-in-ccda-display/](http://smartplatforms.org/2014/04/security-vulnerabilities-in-ccda-display/)

This post describes a set of security considerations that
are probably well-known to many of you -- but that have been overlooked by
multiple real-world EHR products, leading to serious vulnerabilities.

Bringing "best practices" to real-world implementations
is critical, and as a community we should think about how HL7 might help. (In
this specific case, for example, by hardening stylesheets _and _including
warnings that these stylesheets are unsafe for use with untrusted documents. In
general, by advocating for well-defined vulnerability reporting protocols and
bounty programs.)

Best,

  Josh

Not only did Josh do the research into the deep details, and write them up in exacting details, but what you all don't yet know is that he has been working one-on-one with the vendor community to help them understand the problem, multiple times delaying his release to give a vendor another week. Did this all with the utmost discresion and professionalism. I know he is going to publish more deeper details.

It is not easy for someone who knows this level of problem to be so professional and to utalize the rules of [responsible disclosure](http://en.wikipedia.org/wiki/Responsible_disclosure). My hat goes off to Josh Mandel. Thank You.

