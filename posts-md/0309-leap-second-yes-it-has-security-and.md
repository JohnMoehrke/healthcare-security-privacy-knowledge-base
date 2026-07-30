# Leap Second, yes it has security and privacy relevance

Originally posted: https://healthcaresecprivacy.blogspot.com/2012/06/leap-second-yes-it-has-security-and.html
Published: 2012-06-27T21:41:00.001Z
Updated: 2012-07-03T02:45:22.765Z
Author: John Moehrke

---

There is a leap second on June 30th. The security relevance is,  how will your software deal with this leapsecond. Will events that happend during the extra second be properly accounted for? will it be shown as 60 seconds, or will 59 show up for 2 seconds? -- the 'accountability' side of Security.

Will your timers handle a request to delay by 60 seconds, when there actually are 61? Will a deadlock occur? -- the 'availability' side of Security.

Will your software adjust the clock at all? Or will it be terminally behind a second, likely many seconds since we have had almost a half minute of leapseconds. This is what the [GPS system does](http://www.zdnet.com/blog/hardware/the-time-displayed-on-most-android-phones-is-wrong/19387), rather than deal with the accounting mess.

- [Leap second: June 30 to be longer than other days](http://news.cnet.com/8301-17938_105-57461756-1/leap-second-june-30-to-be-longer-than-other-days/)

of course on the other side of GMT they see it differently

- [Leap second to be added on July 1](http://7thspace.com/headlines/415467/leap_second_to_be_added_on_july_1.html)

and businesses care too

- from [Business insider](http://www.businessinsider.com/leap-second-will-be-added-june-30-2012-6)

a good quality implementation of NTP will simply smooth the second out so that there never is simply a leapsecond, but rather a bunch of leap microseconds.

but not all time sync are that advanced

- [How the Windows Time service treats a leap second](http://support.microsoft.com/kb/909614)

- [Leap second handling in SUSE Linux products](http://www.novell.com/support/kb/doc.php?id=7001865)

And...

- [Warning: Problem with Leap Seconds in Red Hat Enterprise Linux](https://access.redhat.com/knowledge/articles/15145)

----------------------------------

Update: July 2, 2012 -- Fantastic [analysis done By Rob Horn](http://fairhaven.typepad.com/my_weblog/2012/07/leapseconds-redux.html). Not just what the problem was, but why we find ourselves in this strange space where this matters yet doesn't really matter.

