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
 Note that Laureate.fullName is optional because some time the Nobel prize is awarded to an organizations instead of a person.
 
