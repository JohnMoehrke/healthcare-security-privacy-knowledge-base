# Timebound XDS queries done right

Originally posted: https://healthcaresecprivacy.blogspot.com/2018/07/timebound-xds-queries-done-right.html
Published: 2018-07-21T17:32:00.003Z
Updated: 2018-07-21T17:32:51.915Z
Author: John Moehrke

---

As the author of the soon to be published IHE "Document Sharing Metadata Handbook", I have been involved in some very deep and disturbing discussions on how to do timebound queries in XDS/XCA. I say very deep because this discussion included almost a dozen of the best minds on the XDS Metadata and Query models. Disturbing because the discussion showed that the simple concept of timebound queries in XDS/XCA is not understood well. Perplexing because we have figured this out many times. If it takes us this long to re-invent this understand, then it must be much harder for others.

Mistakes have been made
I wrote an article on our first attempt. I thought it was good. It was not wrong. But it would have resulted in false-positives, and false-negatives that can be avoided. See [Basics of doing Document Sharing Query right](https://healthcaresecprivacy.blogspot.com/2018/04/basics-of-doing-document-sharing-query.html).

For the version of the Metadata Handbook that we sent to public comment, we flipped the logic, thus making a very bad mistake.

Back to the mostly right logic I had in my article, a couple of optimizations were determined this week in the solution we came up with.

One adjustment, to add wiggle-room on the query parameters, helps because although we want everyone to have well synchronized clocks, many of these times are based on human statements of start and stop. Thus adding wiggle-room extends the times you are looking for to put your start a bit earlier, and you stop a bit later.

The other adjustment is to use the other two service time query parameters to eliminate document entries that have only one of the service times (start or stop, but not both). Clearly if something stopped before the time you are interested in, then it s not what you are looking or; same is true about something that didn't start until after then timeframe you are looking for.

When we got to the final understanding, it became clear that it is possible our readers don't understand this too. Some form of this might end up in the Technical Framework, as this handbook (and blog) have very limited audiences.  We also felt we had done this before, and had written up changes to the Technical Framework. We had, but had only discussed the CreationTime, which is  point in time. Service Time is a range, which brings more complexity...

serviceStartTime - serviceStopTime

When there is a timerange of the service event that you are interested, you will query against the serviceStartTime and service StopTime metadata element to find documents that indicate they fit your timerange. . The service times are specific to the time range of the treatment or episode. This is different than the document creation time, which is when the document was created. The query results will return any document whose â€œservice timeâ€ falls within that range. It is important to note that these parameters work together to give a period of time.

Given you are interested in a specific time range (Start -> Stop).

The serviceStartTimeFrom and serviceStopTimeTo are clear they should bound that time with a little slop to deal with poor timeclocks:

- **serviceStartTimeFrom **parameter in the query should be set to a few minutes before the time you are interested in being the **Start **of the service time range

- **serviceStopTimeTo **parameter in the query should be a set to a few minutes after the time you are interested in being in the **Stop **of the service time range

When either or both service time is missing on a DocumentEntry, it will be included in the above query results. So we need to look for ways to eliminate these false-positives.

Some DocumentEntries will have a service **start **time but not have a service **stop **time. This is common in chronic care, radiology, and other circumstances where the end of the service has not happened or where the end is unknowable;  therefore you should include a query parameter that would eliminate DocumentEntries that have a declared start time well after the time range you are interested in:

- **serviceStartTimeTo **parameter in the query should be set to a few minutes before the time you are interested in being the **Stop **of the service time range

Some DocumentEntries will have a service stop time but not a service start time. This is not common, but will happen where there is no clear start time to an observation, therefore you should include a query parameter that would eliminate DocumentEntries that have a declared stop time well before the time range you are interested in:

- **serviceStopTimeFrom **parameter in the query should be set to a few minutes after the time you are interested in being the **Start **of the service time range

Some DocumentEntries will have neither service start or stop. These will be returned regardless of any timeframe query parameters.  Your Community Metadata Specification should encourage all metadata publications populate the serviceStartTime and serviceStopTime element as much as possible to avoid false-positive query results.
_

Post processing to eliminate false-positives

Ultimately one will get false-positive results from the query, the solution is to look at ALL of the metadata to find reasons to find and eliminate these false-positives.

Conclusion

The only real way to avoid false-positives is to force all DocumentEntries in the Community to have at least ONE service time. Most of the time **Service Start Time **can be determined.  It might be only to the accuracy of the day, or month, or year. But even that eliminates many false-positives. When there is not one of these times available, one is sure to have false-positives. For the Metadata Handbook, this is a fantastic observation as it can become a community rule that at-least one, preferably both times must be filled in.

Yes we know that there are MANY other query parameters. Yes we know that one could design better query language support. The point though is that this is the system we have. AND when used properly it will work just fine. Any data publisher that doesn't follow the rules will mess up Any well designed system. This is not a case of a poorly designed query system, this is a fact. Query is at the mercy of the data, bad data gives bad query results.

