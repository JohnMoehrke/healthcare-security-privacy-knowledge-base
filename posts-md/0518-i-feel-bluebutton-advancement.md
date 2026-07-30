# I feel BlueButton advancement

Originally posted: https://healthcaresecprivacy.blogspot.com/2014/02/i-feel-bluebutton-advancement.html
Published: 2014-02-04T15:31:00Z
Updated: 2014-02-04T15:31:29.402Z
Author: John Moehrke

---

Many of the people I work with in standards world are frustrated at their lack of access to their own health information. My experience here in Wisconsin has been very different. Even before any of this Meaningful Use push, I had access to a patient portal where I could see a summary of my medical record and some of the lab results. I don't go to to doctor that much, so I can't really point out missing information. I have always had some electronic access.

Last year I pulled my medical summary and got a PDF as well as the old style [blue-button](http://www.healthit.gov/patients-families/blue-button/about-blue-button) text file. Both carried the same information. The PDF was simply a more 'pretty' version of the text file. Nothing fancy, but fully available electronically.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEheD_uUB7wnEInbFGYrARhmGl73so9Ym511cvLpVxNSbf7zp7YDuiqgmjGh6OhWEV29E13sfHJj6Q9FisN1VWg4deTRnxQqU2y6J-AsPex8yelg4XdfW9zADX6wn5bAjQGk0UoYxxRh18AK/s1600/myBlueButtonUI.png

Today I went to my patient portal and it was a very different user interface. The new patient portal gives me a nice view of my future appointments, and past visits. It allows me to send a secure message to my doctor. I can view each test result. I can view and pay outstanding bills. For some prescriptions I can request renewal.  I also can delegate access to others, such as my wife; and if delegated I can access others information. The UI is easy enough for me to understand, seems should be easy enough for anyone that is internet savvy.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiBdDeZiZnrX3LQ1Fw96r6IDrR6F8yDKONt1oNYkyNztJnQhcdtnGaYNuJz9s2CcaWf3U5haaD6TaJBBhPUGTo0kEV-vMXeHdZdAlgY3_2SBne-ZSqkPQH_BRbBPUOHpxeGESBakudTEDIG/s1600/mySummaryPDF.pngThis time when I asked for my health information I was able to get my health summary in CCD format. The [Blue Button Plus](http://bluebuttonplus.org/). The above diagram shows how they explain this new CCD format. Note that the button to download is not really a 'blue' color, but rather an orange/rust color. This also comes with a PDF version that most people can view, this PDF is a more colorful and seems more readable.

The nice part for me is that the download is also a XDM formatted zip file that contains the CCD in full XML format. As I look at this content it is even nicely formatted. There is nothing else in this XDM but the CCD. I am not sure I have anything else not included in the summary (Lab results) that could be on the XDM.

The same is not as true about the hospital visits, which for me is just emergency room visits. Even my most recent visit for a post automobile accident checkout was not readily accessible. It was accessible, but I first needed to fill out specific paper work to release it. This paperwork was not difficult, and it gave me reasonable choices. Depending on 'why' and 'to where' the release was to happen it was either free or would cost something. I chose to release it with the reason of 'continued healthcare' and released to my general physician. So it was free. This information seems to have shown up at my GP, but it is not fully available to me. I am guessing that because it is not authored by my GP, it is not published to me by my GP.

I expect that the data released from the Hospital to my GP is done through the Wisconsin HIE ([WISHIN](http://www.wishin.org/)). This is an XCA based health exchange across all of Wisconsin. I am on their technical standards advisory committee. This has been far more successful than the mandatory (by HHS/ONC) deployment of Direct. I can't figure out how I might use Direct to send my information to someone of my choosing. This Wisconsin wide exchange is now getting connected to the Nationwide Health Exchange ([HealtheWay](http://www.healthewayinc.org/)).

