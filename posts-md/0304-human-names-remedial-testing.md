# Human Names - remedial testing

Originally posted: https://healthcaresecprivacy.blogspot.com/2017/06/human-names-remedial-testing.html
Published: 2017-06-20T16:35:00.001Z
Updated: 2017-06-20T16:35:50.128Z
Author: John Moehrke

---

Humans around the world have very difficult to deal with names. But even the most simplistic names can be problematic. Here is a specific case I have run into lately. We have had a problem where a person had a apostrophe in their name, and it caused failures. This because in the API (string based API), a person name is quoted using single quote... yet if it includes a quote, that terminates the string early... oops.

So I poked around, and don't find a test bench that does much of a good job at testing string elements that are intended to be human names. I did find a fantastic [QA article from W3C](https://www.w3.org/International/questions/qa-personal-names). But I would consider what they have outlined as "advanced".

Remedial would be a far more basic set... The closest I find is the definition in LDAP. That definition for [PrintableString](https://tools.ietf.org/html/rfc4517#section-3.2).

      PrintableCharacter = ALPHA / DIGIT / SQUOTE / LPAREN / RPAREN /
                           PLUS / COMMA / HYPHEN / DOT / EQUALS /

                           SLASH / COLON / QUESTION / SPACE
      PrintableString    = 1*PrintableCharacter
      IA5String          = *(%x00-7F)
      SLASH              = %x2F  ; forward slash ("/")
      COLON              = %x3A  ; colon (":")
      QUESTION           = %x3F  ; question mark ("?")

   The , , , , , , ,
   , , , and  rules are defined in
   [[RFC4512](https://tools.ietf.org/html/rfc4512)].

PrintableString has a few characters in it that are uncommon in a human name (never say never). But it does clearly indicate the 7-bit ASCII alpha, number, hyphen, space, period, and apostrophe. This set would work fine for many countries, okay it would only work for USA... But that is why I call it remedial.

      RemedialCharacter = ALPHA / DIGIT / SQUOTE / HYPHEN / DOT / SPACE
      RemedialName    = 1*RemedialCharacter

Beyond this one mostly needs all the alpha from unicode...See the W3C QA specification. but I haven't quite figured that one out.

    [https://www.w3.org/International/questions/qa-personal-names](https://www.w3.org/International/questions/qa-personal-names)

Mostly, I am thinking that for Provider Directory, and Patient Directory.... that testing should have test script that test for this remedial, and optionally for the full unicode...  And, they need to deal with searching, and [sorting](https://www.w3.org/International/questions/qa-personal-names#sorting)... topics well beyond advanced, but very very important.

Again... I don't think remedial is enough, but if one can't get past remedial they are clearly not ready for [real person names](https://www.w3.org/International/questions/qa-personal-names)

