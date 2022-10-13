# JSONParserURL
Parse a JSON returned from a URL


Used this public endpoint: 
https://api.nobelprize.org/2.1/nobelPrizes

>Note. For a list of public API's reach this list:
>https://github.com/public-apis

Here is an example of the JSON response:
```
{
    "nobelPrizes": [
        {
            "awardYear": "2020",
            "category": {
                "en": "Economic Sciences",
                "no": "Økonomi",
                "se": "Ekonomi"
            },
            "categoryFullName": {
                "en": "The Sveriges Riksbank Prize in Economic Sciences in Memory of Alfred Nobel",
                "no": "Sveriges Riksbanks pris i økonomisk vitenskap til minne om Alfred Nobel",
                "se": "Sveriges Riksbanks pris i ekonomisk vetenskap till Alfred Nobels minne"
            },
            "dateAwarded": "2020-10-12",
            "prizeAmount": 10000000,
            "prizeAmountAdjusted": 10000000,
            "links": [
                {
                    "rel": "nobelPrize",
                    "href": "https://api.nobelprize.org/2/nobelPrize/eco/2020",
                    "action": "GET",
                    "types": "application/json"
                }
            ],
            "laureates": [
                {
                    "id": "995",
                    "knownName": {
                        "en": "Paul R. Milgrom"
                    },
                    "fullName": {
                        "en": "Paul R. Milgrom"
                    },
                    "portion": "1/2",
                    "sortOrder": "1",
                    "motivation": {
                        "en": "for improvements to auction theory and inventions of new auction formats",
                        "se": "för förbättringar av auktionsteorin och uppfinningar av nya auktionsformat"
                    },
                    "links": [
                        {
                            "rel": "laureate",
                            "href": "https://api.nobelprize.org/2/laureate/995",
                            "action": "GET",
                            "types": "application/json"
                        }
                    ]
                },
 ...
 ```
 Note that `Laureate.fullName` is optional because some times the Nobel prize is awarded to an organizations instead of a person.
 
Here is the list of the awarded of 2020:
```
YEAR 2020 Nobel Prizes: 

Category: Economic Sciences
Prize amount: 10000000
Date awarded: 2020-10-12
Laureate:  Paul R. Milgrom
Motivation: for improvements to auction theory and inventions of new auction formats
Laureate:  Robert B. Wilson
Motivation: for improvements to auction theory and inventions of new auction formats
====
Category: Literature
Prize amount: 10000000
Date awarded: 2020-10-08
Laureate:  Louise Glück
Motivation: for her unmistakable poetic voice that with austere beauty makes individual existence universal
====
Category: Peace
Prize amount: 10000000
Date awarded: 2020-10-09
Laureate:  Organization
Motivation: for its efforts to combat hunger, for its contribution to bettering conditions for peace in conflict-affected areas and for acting as a driving force in efforts to prevent the use of hunger as a weapon of war and conflict
====
Category: Physics
Prize amount: 10000000
Date awarded: 2020-10-06
Laureate:  Roger Penrose
Motivation: for the discovery that black hole formation is a robust prediction of the general theory of relativity
Laureate:  Reinhard Genzel
Motivation: for the discovery of a supermassive compact object at the centre of our galaxy
Laureate:  Andrea Ghez
Motivation: for the discovery of a supermassive compact object at the centre of our galaxy
====
Category: Physiology or Medicine
Prize amount: 10000000
Date awarded: 2020-10-05
Laureate:  Harvey J. Alter
Motivation: for the discovery of Hepatitis C virus
Laureate:  Michael Houghton
Motivation: for the discovery of Hepatitis C virus
Laureate:  Charles M. Rice
Motivation: for the discovery of Hepatitis C virus
====
```
