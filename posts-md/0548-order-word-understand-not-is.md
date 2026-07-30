# Order Word Understand Not Is

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/08/order-word-understand-not-is.html
Published: 2017-08-10T13:57:00.002Z
Updated: 2017-08-10T13:57:32.233Z
Author: John Moehrke

---

[Keith](http://motorcycleguy.blogspot.com/) has written a humorous yet very informative article "[Order Word Import Not Is](http://motorcycleguy.blogspot.com/2017/08/order-word-important-not-is.html)". This article points out that although there is a right order for words in a sentence, we tend to understand even when the words are in awful painful order.

So, I very much agree with [Keith](http://motorcycleguy.blogspot.com/)that people can handle it when words are in diffeent order, and even when they are the wrong word but spelled close. I would argue that all software should also handle the case were elements are not in the defined order. I would assert that this is mostly the case today.

https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEibDphb5SjJSlsD8WmHgvxNJUgZsv1osB0Vwq55JWhXR2EnnGChqWhWrNJgEUGxIP0yLgNa86BvevMmL6WWsy_wBvCFe72W7L719clJNK408JJOaUPTXBNx5cyrXCyeo-nbJ9uo-bg3sUAr/s1600/Consent_InsideEnterprise.png

I commonly declare that [Postel's Law](http://en.wikipedia.org/wiki/Robustness_principle) is [absolutely necessary in Interoperability](https://healthcaresecprivacy.blogspot.com/2014/01/constrained-vocabulary-and-schema-are.html). This is the principle that is given much credit for the success of the Internet. It is that when one sends messages to another system, great care should be taken to follow the specification. While it also tells recipients of messages to be very robust and generous in how it processes messages from others. This bi-directional principle addresses Interoperability two ways. It does not only address Interoperability by declaring that the specification is LAW. It also addresses Interoperability by requiring robust input processing with the intent that the recipient tries really hard to understand what the sender wants to say.

However right now there is an emergence of [CDA scorecards](https://sitenv.org/scorecard/), and [CDA test tools](https://gazelle.ihe.net/). These are being very strict regarding the specification, including the order of elements. Thus they throw warnings, sometimes errors, when the elements are out-of-order. These tools then give a POOR score to the CDA document. **This poor score is justified, as it is not a quality document. **

The problem is, that these poor scores are not an indication of the quality of the data. That is there is no evaluation by these tools of the medical fitness of the medical data. This is not their intent, nor is this possible in a test tool. I am only pointing out that it is a perception that someone that doesn't fully understand the purpose of the tool might improperly come to.

More important these poor scores are not really an indication of how well the data could be processed. That is to say that the CDA document might be well processed with no failures, because recipients are using [Postel's Law](http://en.wikipedia.org/wiki/Robustness_principle), and are able to process the XML even with the elements not in perfect order.

Should the tools be changed? No, we just need better tools to explain the output of the tools. For example, the test tool **can notice that the failure is because of an out-of-order element**. It somewhat does this today. But they complain that the NEXT element is not the one expected. The failure is actually caused by the PREVIOUS element having been inserted too soon.

Indeed, as Keith points out  "[Order Word Import Not Is](http://motorcycleguy.blogspot.com/2017/08/order-word-important-not-is.html)". Thus don't complain that you can't figure out what the "Is" word is... Look earlier and see that "Is" could have been valid had it been inserted sooner.

