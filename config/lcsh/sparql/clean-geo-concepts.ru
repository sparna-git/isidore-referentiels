PREFIX skos:<http://www.w3.org/2004/02/skos/core#>
PREFIX opentheso:<http://purl.org/umu/uneskos#>
DELETE {
	?s ?p ?o .
} 
WHERE {
	{
		?s skos:prefLabel ?label .
		FILTER(
STRENDS(STR(?label), "England)") ||
STRENDS(STR(?label), "Wash.)") ||
STRENDS(STR(?label), "Calif.)") ||
STRENDS(STR(?label), "Italy)") ||
STRENDS(STR(?label), "New York, N.Y.)") ||
STRENDS(STR(?label), "Spain)") ||
STRENDS(STR(?label), "Alaska)") ||
STRENDS(STR(?label), "Extinct city)") ||
STRENDS(STR(?label), "France)") ||
STRENDS(STR(?label), "India)") ||
STRENDS(STR(?label), "Germany)") ||
STRENDS(STR(?label), "Russia)") ||
STRENDS(STR(?label), "Japan)") ||
STRENDS(STR(?label), "Or.)") ||
STRENDS(STR(?label), "China)") ||
STRENDS(STR(?label), "English)") ||
STRENDS(STR(?label), "Mexico)") ||
STRENDS(STR(?label), "Scotland)") ||
STRENDS(STR(?label), "Colo.)") ||
STRENDS(STR(?label), "Idaho)") ||
STRENDS(STR(?label), "Tex.)") ||
STRENDS(STR(?label), "Utah)") ||
STRENDS(STR(?label), "Pa.)") ||
STRENDS(STR(?label), "B.C.)") ||
STRENDS(STR(?label), "N.Z.)") ||
STRENDS(STR(?label), "South Africa)") ||
STRENDS(STR(?label), "N.Y.)") ||
STRENDS(STR(?label), "Mont.)") ||
STRENDS(STR(?label), "Turkey)") ||
STRENDS(STR(?label), "Brazil)") ||
STRENDS(STR(?label), "Fla.)") ||
STRENDS(STR(?label), "N.M.)") ||
STRENDS(STR(?label), "N.C.)") ||
STRENDS(STR(?label), "Wyo.)") ||
STRENDS(STR(?label), "Indonesia)") ||
STRENDS(STR(?label), "Peru)") ||
STRENDS(STR(?label), "Seattle, Wash.)") ||
STRENDS(STR(?label), "Wis.)") ||
STRENDS(STR(?label), "Va.)") ||
STRENDS(STR(?label), "Mass.)") ||
STRENDS(STR(?label), "Ont.)") ||
STRENDS(STR(?label), "Ind.)") ||
STRENDS(STR(?label), "Poland)") ||
STRENDS(STR(?label), "Nev.)") ||
STRENDS(STR(?label), "London, England)") ||
STRENDS(STR(?label), "Ill.)") ||
STRENDS(STR(?label), "Wales)") ||
STRENDS(STR(?label), "Me.)") ||
STRENDS(STR(?label), "Ireland)") ||
STRENDS(STR(?label), "S.C.)") ||
STRENDS(STR(?label), "Minn.)") ||
STRENDS(STR(?label), "Washington, D.C.)") ||
STRENDS(STR(?label), "Greece)") ||
STRENDS(STR(?label), "Switzerland)") ||
STRENDS(STR(?label), "Rome, Italy)") ||
STRENDS(STR(?label), "Ohio)") ||
STRENDS(STR(?label), "Alta.)") ||
STRENDS(STR(?label), "Md.)") ||
STRENDS(STR(?label), "Okla.)") ||
STRENDS(STR(?label), "Norway)") ||
STRENDS(STR(?label), "W.A.)") ||
STRENDS(STR(?label), "Mich.)") ||
STRENDS(STR(?label), "Sweden)") ||
STRENDS(STR(?label), "Québec)") ||
STRENDS(STR(?label), "Korea)") ||
STRENDS(STR(?label), "Colombia)") ||
STRENDS(STR(?label), "N.J.)") ||
STRENDS(STR(?label), "Argentina)") ||
STRENDS(STR(?label), "Austria)") ||
STRENDS(STR(?label), "N.S.W.)") ||
STRENDS(STR(?label), "La.)") ||
STRENDS(STR(?label), "Ga.)") ||
STRENDS(STR(?label), "Tenn.)") ||
STRENDS(STR(?label), "Egypt)") ||
STRENDS(STR(?label), "Ark.)") ||
STRENDS(STR(?label), "Denmark)") ||
STRENDS(STR(?label), "Paris, France)") ||
STRENDS(STR(?label), "Antarctica)") ||
STRENDS(STR(?label), "Hawaii)") ||
STRENDS(STR(?label), "Romania)") ||
STRENDS(STR(?label), "Mo.)") ||
STRENDS(STR(?label), "Ala.)") ||
STRENDS(STR(?label), "Chile)") ||
STRENDS(STR(?label), "Princeton, N.J.)") ||
STRENDS(STR(?label), "Qld.)") ||
STRENDS(STR(?label), "Vic.)") ||
STRENDS(STR(?label), "S.D.)") ||
STRENDS(STR(?label), "N.H.)") ||
STRENDS(STR(?label), "Ukraine)") ||
STRENDS(STR(?label), "Neb.)") ||
STRENDS(STR(?label), "Conn.)") ||
STRENDS(STR(?label), "N.D.)") ||
STRENDS(STR(?label), "Berlin, Germany)") ||
STRENDS(STR(?label), "Thailand)") ||
STRENDS(STR(?label), "Czech Republic)") ||
STRENDS(STR(?label), "Nunavut)") ||
STRENDS(STR(?label), "Papua New Guinea)") ||
STRENDS(STR(?label), "Netherlands)") ||
STRENDS(STR(?label), "Man.)") ||
STRENDS(STR(?label), "Hungary)") ||
STRENDS(STR(?label), "Ecuador)") ||
STRENDS(STR(?label), "Ky.)") ||
STRENDS(STR(?label), "Miss.)") ||
STRENDS(STR(?label), "W. Va.)") ||
STRENDS(STR(?label), "Sask.)") ||
STRENDS(STR(?label), "Iran)") ||
STRENDS(STR(?label), "Kan.)") ||
STRENDS(STR(?label), "Iceland)") ||
STRENDS(STR(?label), "Pakistan)") ||
STRENDS(STR(?label), "Finland)") ||
STRENDS(STR(?label), "Chicago, Ill.)") ||
STRENDS(STR(?label), "Venezuela)") ||
STRENDS(STR(?label), "Kenya)") ||
STRENDS(STR(?label), "Tanzania)") ||
STRENDS(STR(?label), "Bolivia)") ||
STRENDS(STR(?label), "Vt.)") ||
STRENDS(STR(?label), "Guatemala)") ||
STRENDS(STR(?label), "Croatia)") ||
STRENDS(STR(?label), "Florence, Italy)") ||
STRENDS(STR(?label), "Panama)") ||
STRENDS(STR(?label), "Name)") ||
STRENDS(STR(?label), "Syria)") ||
STRENDS(STR(?label), "Singapore)") ||
STRENDS(STR(?label), "Iowa)") ||
STRENDS(STR(?label), "Portugal)") ||
STRENDS(STR(?label), "N.W.T.)") ||
STRENDS(STR(?label), "Jordan)") ||
STRENDS(STR(?label), "N.S.)") ||
STRENDS(STR(?label), "Slovenia)") ||
STRENDS(STR(?label), "P.R.)") ||
STRENDS(STR(?label), "Costa Rica)") ||
STRENDS(STR(?label), "Genus)") ||
STRENDS(STR(?label), "Boston, Mass.)") ||
STRENDS(STR(?label), "Bulgaria)") ||
STRENDS(STR(?label), "Vietnam)") ||
STRENDS(STR(?label), "Cuba)") ||
STRENDS(STR(?label), "Nepal)") ||
STRENDS(STR(?label), "Saint Petersburg, Russia)") ||
STRENDS(STR(?label), "Slovakia)") ||
STRENDS(STR(?label), "Zimbabwe)") ||
STRENDS(STR(?label), "N.L.)") ||
STRENDS(STR(?label), "Namibia)") ||
STRENDS(STR(?label), "Pianos (2)") ||
STRENDS(STR(?label), "R.I.)") ||
STRENDS(STR(?label), "Philadelphia, Pa.)") ||
STRENDS(STR(?label), "Vienna, Austria)") ||
STRENDS(STR(?label), "The French word)") ||
STRENDS(STR(?label), "Sri Lanka)") ||
STRENDS(STR(?label), "N.T.)") ||
STRENDS(STR(?label), "Los Angeles, Calif.)") ||
STRENDS(STR(?label), "Milan, Italy)") ||
STRENDS(STR(?label), "S.A.)") ||
STRENDS(STR(?label), "Spanish)") ||
STRENDS(STR(?label), "Cyprus)") ||
STRENDS(STR(?label), "Mexico City, Mexico)") ||
STRENDS(STR(?label), "Northern Ireland)") ||
STRENDS(STR(?label), "Belgium)") ||
STRENDS(STR(?label), "Phoenix, Ariz.)") ||
STRENDS(STR(?label), "N.B.)") ||
STRENDS(STR(?label), "San Francisco, Calif.)") ||
STRENDS(STR(?label), "Moscow, Russia)") ||
STRENDS(STR(?label), "Lithuania)") ||
STRENDS(STR(?label), "Tas.)") ||
STRENDS(STR(?label), "Istanbul, Turkey)") ||
STRENDS(STR(?label), "Venice, Italy)") ||
STRENDS(STR(?label), "Ethiopia)") ||
STRENDS(STR(?label), "Belize)") ||
STRENDS(STR(?label), "Baltimore, Md.)") ||
STRENDS(STR(?label), "Warsaw, Poland)") ||
STRENDS(STR(?label), "Serbia)") ||
STRENDS(STR(?label), "Del.)") ||
STRENDS(STR(?label), "Statistics)") ||
STRENDS(STR(?label), "Taiwan)") ||
STRENDS(STR(?label), "Tokyo, Japan)") ||
STRENDS(STR(?label), "Turkic people)") ||
STRENDS(STR(?label), "Morocco)") ||
STRENDS(STR(?label), "Geology)") ||
STRENDS(STR(?label), "Sudan)") ||
STRENDS(STR(?label), "Provo, Utah)") ||
STRENDS(STR(?label), "Violins (2)") ||
STRENDS(STR(?label), "Micronesia)") ||
STRENDS(STR(?label), "Arab people)") ||
STRENDS(STR(?label), "Greenland)") ||
STRENDS(STR(?label), "Seoul, Korea)") ||
STRENDS(STR(?label), "Education)") ||
STRENDS(STR(?label), "Cameroon)") ||
STRENDS(STR(?label), "Algeria)") ||
STRENDS(STR(?label), "Madrid, Spain)") ||
STRENDS(STR(?label), "Burma)") ||
STRENDS(STR(?label), "Coin)") ||
STRENDS(STR(?label), "Madagascar)") ||
STRENDS(STR(?label), "Dublin, Ireland)") ||
STRENDS(STR(?label), "Munich, Germany)") ||
STRENDS(STR(?label), "Sabah, Malaysia)") ||
STRENDS(STR(?label), "Mongolia)") ||
STRENDS(STR(?label), "Flutes (2)") ||
STRENDS(STR(?label), "Yukon)") ||
STRENDS(STR(?label), "Bahamas)") ||
STRENDS(STR(?label), "Fiji)") ||
STRENDS(STR(?label), "Iraq)") ||
STRENDS(STR(?label), "Kazakhstan)") ||
STRENDS(STR(?label), "Edinburgh, Scotland)") ||
STRENDS(STR(?label), "Honduras)") ||
STRENDS(STR(?label), "Athens, Greece)") ||
STRENDS(STR(?label), "São Paulo, Brazil)") ||
STRENDS(STR(?label), "French Polynesia)") ||
STRENDS(STR(?label), "Saudi Arabia)") ||
STRENDS(STR(?label), "Congo)") ||
STRENDS(STR(?label), "Georgia)") ||
STRENDS(STR(?label), "Portuguese)") ||
STRENDS(STR(?label), "French Creole)") ||
STRENDS(STR(?label), "Mars)") ||
STRENDS(STR(?label), "Nigeria)") ||
STRENDS(STR(?label), "Calif. and Nev.)") ||
STRENDS(STR(?label), "Buenos Aires, Argentina)") ||
STRENDS(STR(?label), "Buddhist deity)") ||
STRENDS(STR(?label), "Nicaragua)") ||
STRENDS(STR(?label), "Bangladesh)") ||
STRENDS(STR(?label), "Cleveland, Ohio)") ||
STRENDS(STR(?label), "The Japanese word)") ||
STRENDS(STR(?label), "Germanic law)") ||
STRENDS(STR(?label), "Pompeii)") ||
STRENDS(STR(?label), "King County, Wash.)") ||
STRENDS(STR(?label), "Zambia)") ||
STRENDS(STR(?label), "Chinese people)") ||
STRENDS(STR(?label), "Great Britain)") ||
STRENDS(STR(?label), "Denver, Colo.)") ||
STRENDS(STR(?label), "German)") ||
STRENDS(STR(?label), "Portland, Me.)") ||
STRENDS(STR(?label), "Bologna, Italy)") ||
STRENDS(STR(?label), "Amsterdam, Netherlands)") ||
STRENDS(STR(?label), "Naples, Italy)") ||
STRENDS(STR(?label), "San Diego, Calif.)") ||
STRENDS(STR(?label), "Dominican Republic)") ||
STRENDS(STR(?label), "Maebashi-shi, Japan)") ||
STRENDS(STR(?label), "Turin, Italy)") ||
STRENDS(STR(?label), "Mollusks)") ||
STRENDS(STR(?label), "Estonia)") ||
STRENDS(STR(?label), "Or. and Wash.)") ||
STRENDS(STR(?label), "Marshall Islands)") ||
STRENDS(STR(?label), "Solomon Islands)") ||
STRENDS(STR(?label), "New Orleans, La.)") ||
STRENDS(STR(?label), "Latvia)") ||
STRENDS(STR(?label), "Literature)") ||
STRENDS(STR(?label), "Rio de Janeiro, Brazil)") ||
STRENDS(STR(?label), "Saint Louis, Mo.)") ||
STRENDS(STR(?label), "Turkmenistan)") ||
STRENDS(STR(?label), "Byzantine law)") ||
STRENDS(STR(?label), "The Italian word)") ||
STRENDS(STR(?label), "Parable)") ||
STRENDS(STR(?label), "Judaism)") ||
STRENDS(STR(?label), "Tunisia)") ||
STRENDS(STR(?label), "Portland, Or.)") ||
STRENDS(STR(?label), "Hamburg, Germany)") ||
STRENDS(STR(?label), "The Spanish word)") ||
STRENDS(STR(?label), "Kanazawa-shi, Japan)") ||
STRENDS(STR(?label), "Barcelona, Spain)") ||
STRENDS(STR(?label), "Standard)") ||
STRENDS(STR(?label), "Australia)") ||
STRENDS(STR(?label), "Theology)") ||
STRENDS(STR(?label), "B.C. and Wash.)") ||
STRENDS(STR(?label), "Pakistani people)") ||
STRENDS(STR(?label), "Egyptian deity)") ||
STRENDS(STR(?label), "The number)") ||
STRENDS(STR(?label), "Afghanistan)") ||
STRENDS(STR(?label), "Cartography)") ||
STRENDS(STR(?label), "United States Virgin Islands)") ||
STRENDS(STR(?label), "Haiti)") ||
STRENDS(STR(?label), "Senegal)") ||
STRENDS(STR(?label), "Brussels, Belgium)") ||
STRENDS(STR(?label), "Ghana)") ||
STRENDS(STR(?label), "New Haven, Conn.)") ||
STRENDS(STR(?label), "Genoa, Italy)") ||
STRENDS(STR(?label), "Palau)") ||
STRENDS(STR(?label), "Tajikistan)") ||
STRENDS(STR(?label), "Accounting)") ||
STRENDS(STR(?label), "Tonga)") ||
STRENDS(STR(?label), "Astrology)") ||
STRENDS(STR(?label), "Seychelles)") ||
STRENDS(STR(?label), "Anatomy)") ||
STRENDS(STR(?label), "Gabon)") ||
STRENDS(STR(?label), "Italic people)") ||
STRENDS(STR(?label), "Belarus)") ||
STRENDS(STR(?label), "Lisbon, Portugal)") ||
STRENDS(STR(?label), "The Russian word)") ||
STRENDS(STR(?label), "The Hebrew root)") ||
STRENDS(STR(?label), "Albania)") ||
STRENDS(STR(?label), "Malagasy people)") ||
STRENDS(STR(?label), "Ind. : Lake)") ||
STRENDS(STR(?label), "Uganda)") ||
STRENDS(STR(?label), "Tragedy)") ||
STRENDS(STR(?label), "Beijing, China)") ||
STRENDS(STR(?label), "Frankfurt am Main, Germany)") ||
STRENDS(STR(?label), "Laos)") ||
STRENDS(STR(?label), "Tallahassee, Fla.)") ||
STRENDS(STR(?label), "Middle)") ||
STRENDS(STR(?label), "Montréal, Québec)") ||
STRENDS(STR(?label), "Vietnamese people)") ||
STRENDS(STR(?label), "Aesthetics)") ||
STRENDS(STR(?label), "San Antonio, Tex.)") ||
STRENDS(STR(?label), "Malaysian people)") ||
STRENDS(STR(?label), "Jamaica)") ||
STRENDS(STR(?label), "Mongolian people)") ||
STRENDS(STR(?label), "Botswana)") ||
STRENDS(STR(?label), "Kyoto, Japan)") ||
STRENDS(STR(?label), "Kiribati)") ||
STRENDS(STR(?label), "Richmond, Va.)") ||
STRENDS(STR(?label), "Prague, Czech Republic)") ||
STRENDS(STR(?label), "Ark. and Okla.)") ||
STRENDS(STR(?label), "N.C. and S.C.)") ||
STRENDS(STR(?label), "The Portuguese word)") ||
STRENDS(STR(?label), "Glasgow, Scotland)") ||
STRENDS(STR(?label), "Cincinnati, Ohio)") ||
STRENDS(STR(?label), "Evanston, Ill.)") ||
STRENDS(STR(?label), "Palermo, Italy)") ||
STRENDS(STR(?label), "Christian theology)") ||
STRENDS(STR(?label), "Vanuatu)") ||
STRENDS(STR(?label), "Budapest, Hungary)") ||
STRENDS(STR(?label), "Mozambique)") ||
STRENDS(STR(?label), "Malawi)") ||
STRENDS(STR(?label), "Yemen)") ||
STRENDS(STR(?label), "Québec, Québec)") ||
STRENDS(STR(?label), "Democratic Republic)") ||
STRENDS(STR(?label), "Cat)") ||
STRENDS(STR(?label), "Toronto, Ont.)") ||
STRENDS(STR(?label), "Old)") ||
STRENDS(STR(?label), "Stockholm, Sweden)") ||
STRENDS(STR(?label), "Guam)") ||
STRENDS(STR(?label), "Colo. and N.M.)") ||
STRENDS(STR(?label), "Charleston, S.C.)") ||
STRENDS(STR(?label), "Zurich, Switzerland)") ||
STRENDS(STR(?label), "Wyo. and Mont.)") ||
STRENDS(STR(?label), "Worcester, Mass.)") ||
STRENDS(STR(?label), "Pierce County, Wash.)") ||
STRENDS(STR(?label), "Sydney, N.S.W.)") ||
STRENDS(STR(?label), "Indianapolis, Ind.)") ||
STRENDS(STR(?label), "El Salvador)") ||
STRENDS(STR(?label), "Copenhagen, Denmark)") ||
STRENDS(STR(?label), "Miami, Fla.)") ||
STRENDS(STR(?label), "Chinese)") ||
STRENDS(STR(?label), "Horns (2)") ||
STRENDS(STR(?label), "Violins (3)") ||
STRENDS(STR(?label), "Clarinets (2)") ||
STRENDS(STR(?label), "Havana, Cuba)") ||
STRENDS(STR(?label), "Taiwan people)") ||
STRENDS(STR(?label), "Suriname)") ||
STRENDS(STR(?label), "Azerbaijan)") ||
STRENDS(STR(?label), "Surgery)") ||
STRENDS(STR(?label), "Lebanon)") ||
STRENDS(STR(?label), "Brazzaville)") ||
STRENDS(STR(?label), "Kraków, Poland)") ||
STRENDS(STR(?label), "N.H. and Me.)") ||
STRENDS(STR(?label), "Va. and N.C.)") ||
STRENDS(STR(?label), "Wales and England)") ||
STRENDS(STR(?label), "Niger)") ||
STRENDS(STR(?label), "Sarawak, Malaysia)") ||
STRENDS(STR(?label), "Central African Republic)") ||
STRENDS(STR(?label), "Germanic people)") ||
STRENDS(STR(?label), "Atlanta, Ga.)") ||
STRENDS(STR(?label), "Printing)") ||
STRENDS(STR(?label), "Horsemanship)") ||
STRENDS(STR(?label), "England : Imaginary place)") ||
STRENDS(STR(?label), "Kyrgyzstan)") ||
STRENDS(STR(?label), "Liturgy)") ||
STRENDS(STR(?label), "Uzbekistan)") ||
STRENDS(STR(?label), "N.Y. and N.J.)") ||
STRENDS(STR(?label), "Motion pictures)") ||
STRENDS(STR(?label), "Austin, Tex.)") ||
STRENDS(STR(?label), "Burmese people)") ||
STRENDS(STR(?label), "Seville, Spain)") ||
STRENDS(STR(?label), "Telecommunication)") ||
STRENDS(STR(?label), "U.S.)") ||
STRENDS(STR(?label), "Mont. and Wyo.)") ||
STRENDS(STR(?label), "Philately)") ||
STRENDS(STR(?label), "South Caucasian)") ||
STRENDS(STR(?label), "Tex. and Okla.)") ||
STRENDS(STR(?label), "Salt Lake City, Utah)") ||
STRENDS(STR(?label), "Interstate 5)") ||
STRENDS(STR(?label), "United States Capitol, Washington, D.C.)") ||
STRENDS(STR(?label), "Scrolls)") ||
STRENDS(STR(?label), "Recorders (2)") ||
STRENDS(STR(?label), "Montenegro)") ||
STRENDS(STR(?label), "Libya)") ||
STRENDS(STR(?label), "Spain and Portugal)") ||
STRENDS(STR(?label), "Cairo, Egypt)") ||
STRENDS(STR(?label), "Libraries)") ||
STRENDS(STR(?label), "Dresden, Germany)") ||
STRENDS(STR(?label), "Uruguay)") ||
STRENDS(STR(?label), "Vancouver, B.C.)") ||
STRENDS(STR(?label), "Boise, Idaho)") ||
STRENDS(STR(?label), "Mali)") ||
STRENDS(STR(?label), "Lawrence, Mass.)") ||
STRENDS(STR(?label), "Harpsichord, violins (2)") ||
STRENDS(STR(?label), "N.M. and Tex.)") ||
STRENDS(STR(?label), "Edmonton, Alta.)") ||
STRENDS(STR(?label), "Potsdam, Germany)") ||
STRENDS(STR(?label), "N.J. and N.Y.)") ||
STRENDS(STR(?label), "Yokohama-shi, Japan)") ||
STRENDS(STR(?label), "Iranian people)") ||
STRENDS(STR(?label), "Montevideo, Uruguay)") ||
STRENDS(STR(?label), "Kyïv, Ukraine)") ||
STRENDS(STR(?label), "Pittsburgh, Pa.)") ||
STRENDS(STR(?label), "Cook Islands)") ||
STRENDS(STR(?label), "Kurdish tribe)") ||
STRENDS(STR(?label), "Bosnia and Herzegovina)") ||
STRENDS(STR(?label), "Hinduism)") ||
STRENDS(STR(?label), "Jefferson County, Wash.)") ||
STRENDS(STR(?label), "Bogotá, Colombia)") ||
STRENDS(STR(?label), "Springfield, Ill.)") ||
STRENDS(STR(?label), "Portsmouth, England)") ||
STRENDS(STR(?label), "Caracas, Venezuela)") ||
STRENDS(STR(?label), "Yoruba deity)") ||
STRENDS(STR(?label), "Hague, Netherlands)") ||
STRENDS(STR(?label), "Pa. and Md.)") ||
STRENDS(STR(?label), "Guyana)") ||
STRENDS(STR(?label), "Malta)") ||
STRENDS(STR(?label), "Mich. and Ont.)") ||
STRENDS(STR(?label), "N.M. and Ariz.)") ||
STRENDS(STR(?label), "Kedah, Malaysia)") ||
STRENDS(STR(?label), "N.C. and Tenn.)") ||
STRENDS(STR(?label), "Milwaukee, Wis.)") ||
STRENDS(STR(?label), "Raleigh, N.C.)") ||
STRENDS(STR(?label), "B.C. and Alta.)") ||
STRENDS(STR(?label), "Wis. and Ill.)") ||
STRENDS(STR(?label), "Kansas City, Mo.)") ||
STRENDS(STR(?label), "Tucson, Ariz.)") ||
STRENDS(STR(?label), "Oslo, Norway)") ||
STRENDS(STR(?label), "Honolulu, Hawaii)") ||
STRENDS(STR(?label), "Okayama-shi, Japan)") ||
STRENDS(STR(?label), "Pensacola, Fla.)") ||
STRENDS(STR(?label), "Houston, Tex.)") ||
STRENDS(STR(?label), "Shanghai, China)") ||
STRENDS(STR(?label), "Vilnius, Lithuania)") ||
STRENDS(STR(?label), "Ferrara, Italy)") ||
STRENDS(STR(?label), "Aircraft carriers)") ||
STRENDS(STR(?label), "Albany, N.Y.)") ||
STRENDS(STR(?label), "Noble County, Ind.)") ||
STRENDS(STR(?label), "Nashville, Tenn.)") ||
STRENDS(STR(?label), "Educational test)") ||
STRENDS(STR(?label), "Social sciences)") ||
STRENDS(STR(?label), "Computer software)") ||
STRENDS(STR(?label), "Minneapolis, Minn.)") ||
STRENDS(STR(?label), "Va. and W. Va.)") ||
STRENDS(STR(?label), "United Arab Emirates)") ||
STRENDS(STR(?label), "India and Pakistan)") ||
STRENDS(STR(?label), "Pahang, Malaysia)") ||
STRENDS(STR(?label), "Alexandria, Va.)") ||
STRENDS(STR(?label), "Chapel Hill, N.C.)") ||
STRENDS(STR(?label), "Cardiff, Wales)") ||
STRENDS(STR(?label), "New Caledonia)") ||
STRENDS(STR(?label), "North Macedonia)") ||
STRENDS(STR(?label), "Washington County, Me.)") ||
STRENDS(STR(?label), "Md. and Washington, D.C.)") ||
STRENDS(STR(?label), "N.W.T. and Nunavut)") ||
STRENDS(STR(?label), "France and Italy)") ||
STRENDS(STR(?label), "Tel Aviv, Israel)") ||
STRENDS(STR(?label), "Valencia, Spain)") ||
STRENDS(STR(?label), "Saint Paul, Minn.)") ||
STRENDS(STR(?label), "Canary Islands)") ||
STRENDS(STR(?label), "Siena, Italy)") ||
STRENDS(STR(?label), "Bristol, England)") ||
STRENDS(STR(?label), "Vatican Palace, Vatican City)") ||
STRENDS(STR(?label), "Oxford, England)") ||
STRENDS(STR(?label), "Germany and Netherlands)") ||
STRENDS(STR(?label), "The Arabic word)") ||
STRENDS(STR(?label), "Guadalajara, Mexico)") ||
STRENDS(STR(?label), "Manchester, England)") ||
STRENDS(STR(?label), "Poznań, Poland)") ||
STRENDS(STR(?label), "French Guiana)") ||
STRENDS(STR(?label), "Pisa, Italy)") ||
STRENDS(STR(?label), "Colo. and Utah)") ||
STRENDS(STR(?label), "Buffalo, N.Y.)") ||
STRENDS(STR(?label), "Little Rock, Ark.)") ||
STRENDS(STR(?label), "Festival)") ||
STRENDS(STR(?label), "Yavapai County, Ariz.)") ||
STRENDS(STR(?label), "Genetics)") ||
STRENDS(STR(?label), "Sask. and Man.)") ||
STRENDS(STR(?label), "Biochemistry)") ||
STRENDS(STR(?label), "Cambridge, Mass.)") ||
STRENDS(STR(?label), "Mass. and Conn.)") ||
STRENDS(STR(?label), "Nepal and India)") ||
STRENDS(STR(?label), "Kan. and Okla.)") ||
STRENDS(STR(?label), "Colo. and Wyo.)") ||
STRENDS(STR(?label), "Alta. and Sask.)") ||
STRENDS(STR(?label), "Oahu, Hawaii)") ||
STRENDS(STR(?label), "B.C. and Alaska)") ||
STRENDS(STR(?label), "Africa)") ||
STRENDS(STR(?label), "Melbourne, Vic.)") ||
STRENDS(STR(?label), "Verona, Italy)") ||
STRENDS(STR(?label), "Ga. and S.C.)") ||
STRENDS(STR(?label), "Hartford, Conn.)") ||
STRENDS(STR(?label), "Stuttgart, Germany)") ||
STRENDS(STR(?label), "Guinea-Bissau)") ||
STRENDS(STR(?label), "Porto Alegre, Rio Grande do Sul, Brazil)") ||
STRENDS(STR(?label), "New York, N.Y. : Building)") ||
STRENDS(STR(?label), "Mantua, Italy)") ||
STRENDS(STR(?label), "Birmingham, England)") ||
STRENDS(STR(?label), "Oman)") ||
STRENDS(STR(?label), "York, England)") ||
STRENDS(STR(?label), "Monterrey, Mexico)") ||
STRENDS(STR(?label), "Swedish)") ||
STRENDS(STR(?label), "Assyro-Babylonian law)") ||
STRENDS(STR(?label), "Malay)") ||
STRENDS(STR(?label), "The Chinese word)") ||
STRENDS(STR(?label), "New Guinean people)") ||
STRENDS(STR(?label), "Guitars (2)") ||
STRENDS(STR(?label), "Yamaguchi-shi, Japan)") ||
STRENDS(STR(?label), "Minn. and Ont.)") ||
STRENDS(STR(?label), "Selangor, Malaysia)") ||
STRENDS(STR(?label), "American Samoa)") ||
STRENDS(STR(?label), "Ravenna, Italy)") ||
STRENDS(STR(?label), "Pa. and N.Y.)") ||
STRENDS(STR(?label), "Italy and Switzerland)") ||
STRENDS(STR(?label), "Iowa and Mo.)") ||
STRENDS(STR(?label), "Chad)") ||
STRENDS(STR(?label), "Argentina and Chile)") ||
STRENDS(STR(?label), "Idaho and Mont.)") ||
STRENDS(STR(?label), "Or. and Calif.)") ||
STRENDS(STR(?label), "Crustacea)") ||
STRENDS(STR(?label), "Northern Mariana Islands)") ||
STRENDS(STR(?label), "Hindu festival)") ||
STRENDS(STR(?label), "Paraguay)") ||
STRENDS(STR(?label), "Del. and Md.)") ||
STRENDS(STR(?label), "Southeast Asia)") ||
STRENDS(STR(?label), "Md. and Va.)") ||
STRENDS(STR(?label), "Maricopa County, Ariz.)") ||
STRENDS(STR(?label), "Côte d'Ivoire)") ||
STRENDS(STR(?label), "Burkina Faso)") ||
STRENDS(STR(?label), "Shizuoka-shi, Japan)") ||
STRENDS(STR(?label), "Utah and Wyo.)") ||
STRENDS(STR(?label), "Padua, Italy)") ||
STRENDS(STR(?label), "Christianity)") ||
STRENDS(STR(?label), "Lesotho)") ||
STRENDS(STR(?label), "Idaho and Or.)") ||
STRENDS(STR(?label), "Chelan County, Wash.)") ||
STRENDS(STR(?label), "Microbiology)") ||
STRENDS(STR(?label), "Thurston County, Wash.)") ||
STRENDS(STR(?label), "Azores)") ||
STRENDS(STR(?label), "Bangkok, Thailand)") ||
STRENDS(STR(?label), "Sierra Leone)") ||
STRENDS(STR(?label), "Manchester, N.H.)") ||
STRENDS(STR(?label), "Austria and Germany)") ||
STRENDS(STR(?label), "Cologne, Germany)") ||
STRENDS(STR(?label), "Suzhou Shi, Jiangsu Sheng, China)") ||
STRENDS(STR(?label), "All terrain vehicle)") ||
STRENDS(STR(?label), "Tenn. and Ky.)") ||
STRENDS(STR(?label), "Bloomington, Ind.)") ||
STRENDS(STR(?label), "Bellingham, Wash.)") ||
STRENDS(STR(?label), "Frankenmuth, Mich.)") ||
STRENDS(STR(?label), "Data processing)") ||
STRENDS(STR(?label), "The Arabic letter)") ||
STRENDS(STR(?label), "Orchestra)") ||
STRENDS(STR(?label), "Melanesian people)") ||
STRENDS(STR(?label), "Piano, violins (2)") ||
STRENDS(STR(?label), "Amagi-shi, Japan)") ||
STRENDS(STR(?label), "Harps (2)") ||
STRENDS(STR(?label), "2)") ||
STRENDS(STR(?label), "Flute)") ||
STRENDS(STR(?label), "Bucharest, Romania)") ||
STRENDS(STR(?label), "Medical care)") ||
STRENDS(STR(?label), "Mammals)") ||
STRENDS(STR(?label), "Wash. : Bay)") ||
STRENDS(STR(?label), "Ariz. and N.M.)") ||
STRENDS(STR(?label), "Reptiles)") ||
STRENDS(STR(?label), "Venus)") ||
STRENDS(STR(?label), "Papyri)") ||
STRENDS(STR(?label), "Utah and Idaho)") ||
STRENDS(STR(?label), "Steuben County, Ind.)") ||
STRENDS(STR(?label), "N.C. and Va.)") ||
STRENDS(STR(?label), "North Yorkshire, England)") ||
STRENDS(STR(?label), "Canada)") ||
STRENDS(STR(?label), "Perugia, Italy)") ||
STRENDS(STR(?label), "Ceramics)") ||
STRENDS(STR(?label), "Guatemala and Mexico)") ||
STRENDS(STR(?label), "Congo (Brazzaville)") ||
STRENDS(STR(?label), "Ky. and Tenn.)") ||
STRENDS(STR(?label), "Ga. and Fla.)") ||
STRENDS(STR(?label), "Civil procedure)") ||
STRENDS(STR(?label), "N.Y. and Ont.)") ||
STRENDS(STR(?label), "Helsinki, Finland)") ||
STRENDS(STR(?label), "Idaho and Wash.)") ||
STRENDS(STR(?label), "Valley County, Idaho)") ||
STRENDS(STR(?label), "Powys, Wales)") ||
STRENDS(STR(?label), "Mauritania)") ||
STRENDS(STR(?label), "Cumbria, England)") ||
STRENDS(STR(?label), "Ala. and Fla.)") ||
STRENDS(STR(?label), "Trento, Italy)") ||
STRENDS(STR(?label), "Leipzig, Germany)") ||
STRENDS(STR(?label), "Kenya and Tanzania)") ||
STRENDS(STR(?label), "Weimar, Thuringia, Germany)") ||
STRENDS(STR(?label), "San Juan, P.R.)") ||
STRENDS(STR(?label), "Ecuador and Peru)") ||
STRENDS(STR(?label), "Columbus, Ohio)") ||
STRENDS(STR(?label), "Cabo Verde)") ||
STRENDS(STR(?label), "Snohomish County, Wash.)") ||
STRENDS(STR(?label), "Me. and N.B.)") ||
STRENDS(STR(?label), "Neb. and Kan.)") ||
STRENDS(STR(?label), "Lyon, France)") ||
STRENDS(STR(?label), "Tex. and N.M.)") ||
STRENDS(STR(?label), "Mumbai, India)") ||
STRENDS(STR(?label), "Russia and Ukraine)") ||
STRENDS(STR(?label), "Georgia and Russia)") ||
STRENDS(STR(?label), "Newport, R.I.)") ||
STRENDS(STR(?label), "Oakland, Calif.)") ||
STRENDS(STR(?label), "Rotterdam, Netherlands)") ||
STRENDS(STR(?label), "Puebla de Zaragoza, Mexico)") ||
STRENDS(STR(?label), "Idaho County, Idaho)") ||
STRENDS(STR(?label), "France and Belgium)") ||
STRENDS(STR(?label), "Curaçao)") ||
STRENDS(STR(?label), "Bern, Switzerland)") ||
STRENDS(STR(?label), "Bassoons (2)") ||
STRENDS(STR(?label), "Cellos (2)") ||
STRENDS(STR(?label), "Abiko-shi, Japan)") ||
STRENDS(STR(?label), "Notogawa-chō, Japan)") ||
STRENDS(STR(?label), "Flute, violins (2)") ||
STRENDS(STR(?label), "Ark. and Mo.)") ||
STRENDS(STR(?label), "Ariz. and Calif.)") ||
STRENDS(STR(?label), "Mo. and Ark.)") ||
STRENDS(STR(?label), "Hannover, Germany)") ||
STRENDS(STR(?label), "Tribe of Israel)") ||
STRENDS(STR(?label), "England and Wales)") ||
STRENDS(STR(?label), "Armenia)") ||
STRENDS(STR(?label), "Slovakia and Hungary)") ||
STRENDS(STR(?label), "Ind. and Ill.)") ||
STRENDS(STR(?label), "Angola)") ||
STRENDS(STR(?label), "Ariz. and Nev.)") ||
STRENDS(STR(?label), "Alaska : Bay)") ||
STRENDS(STR(?label), "England and Scotland)") ||
STRENDS(STR(?label), "Ark. and La.)") ||
STRENDS(STR(?label), "Guadeloupe)") ||
STRENDS(STR(?label), "Braunschweig, Germany)") ||
STRENDS(STR(?label), "Salt Lake County, Utah)") ||
STRENDS(STR(?label), "Brescia, Italy)") ||
STRENDS(STR(?label), "Calif. and Or.)") ||
STRENDS(STR(?label), "Va. and Tenn.)") ||
STRENDS(STR(?label), "Düsseldorf, Germany)") ||
STRENDS(STR(?label), "Drone aircraft)") ||
STRENDS(STR(?label), "Detroit, Mich.)") ||
STRENDS(STR(?label), "Fungi)") ||
STRENDS(STR(?label), "Vilas County, Wis.)") ||
STRENDS(STR(?label), "Hancock County, Me.)") ||
STRENDS(STR(?label), "Neb. and S.D.)") ||
STRENDS(STR(?label), "Granada, Spain)") ||
STRENDS(STR(?label), "Bermuda Islands)") ||
STRENDS(STR(?label), "Parma, Italy)") ||
STRENDS(STR(?label), "El Paso, Tex.)") ||
STRENDS(STR(?label), "Marseille, France)") ||
STRENDS(STR(?label), "India and Bangladesh)") ||
STRENDS(STR(?label), "Saint Augustine, Fla.)") ||
STRENDS(STR(?label), "Manhattan, New York, N.Y.)") ||
STRENDS(STR(?label), "Lima, Peru)") ||
STRENDS(STR(?label), "Guinea)") ||
STRENDS(STR(?label), "Ottawa, Ont.)") ||
STRENDS(STR(?label), "Anchorage, Alaska)") ||
STRENDS(STR(?label), "Münster in Westfalen, Germany)") ||
STRENDS(STR(?label), "Nuremberg, Germany)") ||
STRENDS(STR(?label), "Ukraine and Russia)") ||
STRENDS(STR(?label), "Cape Town, South Africa)") ||
STRENDS(STR(?label), "Göteborg, Sweden)") ||
STRENDS(STR(?label), "The Greek phrase)") ||
STRENDS(STR(?label), "Sacramento, Calif.)") ||
STRENDS(STR(?label), "Providence, R.I.)") ||
STRENDS(STR(?label), "Owyhee County, Idaho)") ||
STRENDS(STR(?label), "Jewish theology)") ||
STRENDS(STR(?label), "Elementary)") ||
STRENDS(STR(?label), "Wyo. and Idaho)") ||
STRENDS(STR(?label), "Isle of Man)") ||
STRENDS(STR(?label), "Bahrain)") ||
STRENDS(STR(?label), "Whatcom County, Wash.)") ||
STRENDS(STR(?label), "Nev. and Idaho)") ||
STRENDS(STR(?label), "Numerical analysis)") ||
STRENDS(STR(?label), "Congo and Angola)") ||
STRENDS(STR(?label), "Guilford, Conn.)") ||
STRENDS(STR(?label), "Cambridge, England)") ||
STRENDS(STR(?label), "P.E.I.)") ||
STRENDS(STR(?label), "Geneva, Switzerland)") ||
STRENDS(STR(?label), "Savannah, Ga.)") ||
STRENDS(STR(?label), "Fremont County, Wyo.)") ||
STRENDS(STR(?label), "Lincoln, Mass.)") ||
STRENDS(STR(?label), "Trieste, Italy)") ||
STRENDS(STR(?label), "Belfast, Northern Ireland)") ||
STRENDS(STR(?label), "Kherwari)") ||
STRENDS(STR(?label), "Dance drama)") ||
STRENDS(STR(?label), "Osaka, Japan)") ||
STRENDS(STR(?label), "Lawton, Okla.)") ||
STRENDS(STR(?label), "Lemhi County, Idaho)") ||
STRENDS(STR(?label), "Zimbabwe and Mozambique)") ||
STRENDS(STR(?label), "Cambodia)") ||
STRENDS(STR(?label), "Zambezi)") ||
STRENDS(STR(?label), "Bookbinding)") ||
STRENDS(STR(?label), "The Hebrew particle)") ||
STRENDS(STR(?label), "Salem, Mass.)") ||
STRENDS(STR(?label), "Organ, violins (2)") ||
STRENDS(STR(?label), "Trumpets (2)") ||
STRENDS(STR(?label), "Sakai-shi, Japan)") ||
STRENDS(STR(?label), "Piano (4 hands)") ||
STRENDS(STR(?label), "Ala. and Ga.)") ||
STRENDS(STR(?label), "Armored military vehicle)") ||
STRENDS(STR(?label), "Ariz. and Utah)") ||
STRENDS(STR(?label), "Mass. and R.I.)") ||
STRENDS(STR(?label), "Dog breed)") ||
STRENDS(STR(?label), "South Sudan)") ||
STRENDS(STR(?label), "Frigates)") ||
STRENDS(STR(?label), "Memphis, Tenn.)") ||
STRENDS(STR(?label), "N.Y. and Pa.)") ||
STRENDS(STR(?label), "Cameroon and Nigeria)") ||
STRENDS(STR(?label), "Rite)") ||
STRENDS(STR(?label), "Violin)") ||
STRENDS(STR(?label), "Kassel, Germany)") ||
STRENDS(STR(?label), "Belgium and Netherlands)") ||
STRENDS(STR(?label), "Group of poets)") ||
STRENDS(STR(?label), "Ind. and Ohio)") ||
STRENDS(STR(?label), "Skagit County, Wash.)") ||
STRENDS(STR(?label), "Utah and Ariz.)") ||
STRENDS(STR(?label), "Tempe, Ariz.)") ||
STRENDS(STR(?label), "Congolese (Democratic Republic)") ||
STRENDS(STR(?label), "North Slope Borough, Alaska)") ||
STRENDS(STR(?label), "Galapagos Islands)") ||
STRENDS(STR(?label), "Pulau Pinang, Malaysia)") ||
STRENDS(STR(?label), "Crystallography)") ||
STRENDS(STR(?label), "Tenn. and Ala.)") ||
STRENDS(STR(?label), "Versailles, France)") ||
STRENDS(STR(?label), "China and Nepal)") ||
STRENDS(STR(?label), "Porto, Portugal)") ||
STRENDS(STR(?label), "Togo)") ||
STRENDS(STR(?label), "Basketball)") ||
STRENDS(STR(?label), "Alta. and B.C.)") ||
STRENDS(STR(?label), "N.H. and Mass.)") ||
STRENDS(STR(?label), "Poland and Ukraine)") ||
STRENDS(STR(?label), "Ariz. and Mexico)") ||
STRENDS(STR(?label), "Retail trade)") ||
STRENDS(STR(?label), "Basel, Switzerland)") ||
STRENDS(STR(?label), "Lute)") ||
STRENDS(STR(?label), "Dravidian)") ||
STRENDS(STR(?label), "Mythology)") ||
STRENDS(STR(?label), "Bratislava, Slovakia)") ||
STRENDS(STR(?label), "Naval architecture)") ||
STRENDS(STR(?label), "Taipei, Taiwan)") ||
STRENDS(STR(?label), "Wellington, N.Z.)") ||
STRENDS(STR(?label), "Wyo. and Colo.)") ||
STRENDS(STR(?label), "Nunavut and N.W.T.)") ||
STRENDS(STR(?label), "Missoula County, Mont.)") ||
STRENDS(STR(?label), "Utrecht, Netherlands)") ||
STRENDS(STR(?label), "Mont. and Alta.)") ||
STRENDS(STR(?label), "B.C. and Mont.)") ||
STRENDS(STR(?label), "Winnipeg, Man.)") ||
STRENDS(STR(?label), "Miss. and Tenn.)") ||
STRENDS(STR(?label), "Bremen, Germany)") ||
STRENDS(STR(?label), "Christchurch, N.Z.)") ||
STRENDS(STR(?label), "Pasadena, Calif.)") ||
STRENDS(STR(?label), "Josephine County, Or.)") ||
STRENDS(STR(?label), "Halifax, N.S.)") ||
STRENDS(STR(?label), "Grafton County, N.H.)") ||
STRENDS(STR(?label), "Liberia)") ||
STRENDS(STR(?label), "Noble, Noble County, Ind.)")
		)
		?s ?p ?o .
	}
	UNION
	{
		?o skos:prefLabel ?label .
		FILTER(
STRENDS(STR(?label), "England)") ||
STRENDS(STR(?label), "Wash.)") ||
STRENDS(STR(?label), "Calif.)") ||
STRENDS(STR(?label), "Italy)") ||
STRENDS(STR(?label), "New York, N.Y.)") ||
STRENDS(STR(?label), "Spain)") ||
STRENDS(STR(?label), "Alaska)") ||
STRENDS(STR(?label), "Extinct city)") ||
STRENDS(STR(?label), "France)") ||
STRENDS(STR(?label), "India)") ||
STRENDS(STR(?label), "Germany)") ||
STRENDS(STR(?label), "Russia)") ||
STRENDS(STR(?label), "Japan)") ||
STRENDS(STR(?label), "Or.)") ||
STRENDS(STR(?label), "China)") ||
STRENDS(STR(?label), "English)") ||
STRENDS(STR(?label), "Mexico)") ||
STRENDS(STR(?label), "Scotland)") ||
STRENDS(STR(?label), "Colo.)") ||
STRENDS(STR(?label), "Idaho)") ||
STRENDS(STR(?label), "Tex.)") ||
STRENDS(STR(?label), "Utah)") ||
STRENDS(STR(?label), "Pa.)") ||
STRENDS(STR(?label), "B.C.)") ||
STRENDS(STR(?label), "N.Z.)") ||
STRENDS(STR(?label), "South Africa)") ||
STRENDS(STR(?label), "N.Y.)") ||
STRENDS(STR(?label), "Mont.)") ||
STRENDS(STR(?label), "Turkey)") ||
STRENDS(STR(?label), "Brazil)") ||
STRENDS(STR(?label), "Fla.)") ||
STRENDS(STR(?label), "N.M.)") ||
STRENDS(STR(?label), "N.C.)") ||
STRENDS(STR(?label), "Wyo.)") ||
STRENDS(STR(?label), "Indonesia)") ||
STRENDS(STR(?label), "Peru)") ||
STRENDS(STR(?label), "Seattle, Wash.)") ||
STRENDS(STR(?label), "Wis.)") ||
STRENDS(STR(?label), "Va.)") ||
STRENDS(STR(?label), "Mass.)") ||
STRENDS(STR(?label), "Ont.)") ||
STRENDS(STR(?label), "Ind.)") ||
STRENDS(STR(?label), "Poland)") ||
STRENDS(STR(?label), "Nev.)") ||
STRENDS(STR(?label), "London, England)") ||
STRENDS(STR(?label), "Ill.)") ||
STRENDS(STR(?label), "Wales)") ||
STRENDS(STR(?label), "Me.)") ||
STRENDS(STR(?label), "Ireland)") ||
STRENDS(STR(?label), "S.C.)") ||
STRENDS(STR(?label), "Minn.)") ||
STRENDS(STR(?label), "Washington, D.C.)") ||
STRENDS(STR(?label), "Greece)") ||
STRENDS(STR(?label), "Switzerland)") ||
STRENDS(STR(?label), "Rome, Italy)") ||
STRENDS(STR(?label), "Ohio)") ||
STRENDS(STR(?label), "Alta.)") ||
STRENDS(STR(?label), "Md.)") ||
STRENDS(STR(?label), "Okla.)") ||
STRENDS(STR(?label), "Norway)") ||
STRENDS(STR(?label), "W.A.)") ||
STRENDS(STR(?label), "Mich.)") ||
STRENDS(STR(?label), "Sweden)") ||
STRENDS(STR(?label), "Québec)") ||
STRENDS(STR(?label), "Korea)") ||
STRENDS(STR(?label), "Colombia)") ||
STRENDS(STR(?label), "N.J.)") ||
STRENDS(STR(?label), "Argentina)") ||
STRENDS(STR(?label), "Austria)") ||
STRENDS(STR(?label), "N.S.W.)") ||
STRENDS(STR(?label), "La.)") ||
STRENDS(STR(?label), "Ga.)") ||
STRENDS(STR(?label), "Tenn.)") ||
STRENDS(STR(?label), "Egypt)") ||
STRENDS(STR(?label), "Ark.)") ||
STRENDS(STR(?label), "Denmark)") ||
STRENDS(STR(?label), "Paris, France)") ||
STRENDS(STR(?label), "Antarctica)") ||
STRENDS(STR(?label), "Hawaii)") ||
STRENDS(STR(?label), "Romania)") ||
STRENDS(STR(?label), "Mo.)") ||
STRENDS(STR(?label), "Ala.)") ||
STRENDS(STR(?label), "Chile)") ||
STRENDS(STR(?label), "Princeton, N.J.)") ||
STRENDS(STR(?label), "Qld.)") ||
STRENDS(STR(?label), "Vic.)") ||
STRENDS(STR(?label), "S.D.)") ||
STRENDS(STR(?label), "N.H.)") ||
STRENDS(STR(?label), "Ukraine)") ||
STRENDS(STR(?label), "Neb.)") ||
STRENDS(STR(?label), "Conn.)") ||
STRENDS(STR(?label), "N.D.)") ||
STRENDS(STR(?label), "Berlin, Germany)") ||
STRENDS(STR(?label), "Thailand)") ||
STRENDS(STR(?label), "Czech Republic)") ||
STRENDS(STR(?label), "Nunavut)") ||
STRENDS(STR(?label), "Papua New Guinea)") ||
STRENDS(STR(?label), "Netherlands)") ||
STRENDS(STR(?label), "Man.)") ||
STRENDS(STR(?label), "Hungary)") ||
STRENDS(STR(?label), "Ecuador)") ||
STRENDS(STR(?label), "Ky.)") ||
STRENDS(STR(?label), "Miss.)") ||
STRENDS(STR(?label), "W. Va.)") ||
STRENDS(STR(?label), "Sask.)") ||
STRENDS(STR(?label), "Iran)") ||
STRENDS(STR(?label), "Kan.)") ||
STRENDS(STR(?label), "Iceland)") ||
STRENDS(STR(?label), "Pakistan)") ||
STRENDS(STR(?label), "Finland)") ||
STRENDS(STR(?label), "Chicago, Ill.)") ||
STRENDS(STR(?label), "Venezuela)") ||
STRENDS(STR(?label), "Kenya)") ||
STRENDS(STR(?label), "Tanzania)") ||
STRENDS(STR(?label), "Bolivia)") ||
STRENDS(STR(?label), "Vt.)") ||
STRENDS(STR(?label), "Guatemala)") ||
STRENDS(STR(?label), "Croatia)") ||
STRENDS(STR(?label), "Florence, Italy)") ||
STRENDS(STR(?label), "Panama)") ||
STRENDS(STR(?label), "Name)") ||
STRENDS(STR(?label), "Syria)") ||
STRENDS(STR(?label), "Singapore)") ||
STRENDS(STR(?label), "Iowa)") ||
STRENDS(STR(?label), "Portugal)") ||
STRENDS(STR(?label), "N.W.T.)") ||
STRENDS(STR(?label), "Jordan)") ||
STRENDS(STR(?label), "N.S.)") ||
STRENDS(STR(?label), "Slovenia)") ||
STRENDS(STR(?label), "P.R.)") ||
STRENDS(STR(?label), "Costa Rica)") ||
STRENDS(STR(?label), "Genus)") ||
STRENDS(STR(?label), "Boston, Mass.)") ||
STRENDS(STR(?label), "Bulgaria)") ||
STRENDS(STR(?label), "Vietnam)") ||
STRENDS(STR(?label), "Cuba)") ||
STRENDS(STR(?label), "Nepal)") ||
STRENDS(STR(?label), "Saint Petersburg, Russia)") ||
STRENDS(STR(?label), "Slovakia)") ||
STRENDS(STR(?label), "Zimbabwe)") ||
STRENDS(STR(?label), "N.L.)") ||
STRENDS(STR(?label), "Namibia)") ||
STRENDS(STR(?label), "Pianos (2)") ||
STRENDS(STR(?label), "R.I.)") ||
STRENDS(STR(?label), "Philadelphia, Pa.)") ||
STRENDS(STR(?label), "Vienna, Austria)") ||
STRENDS(STR(?label), "The French word)") ||
STRENDS(STR(?label), "Sri Lanka)") ||
STRENDS(STR(?label), "N.T.)") ||
STRENDS(STR(?label), "Los Angeles, Calif.)") ||
STRENDS(STR(?label), "Milan, Italy)") ||
STRENDS(STR(?label), "S.A.)") ||
STRENDS(STR(?label), "Spanish)") ||
STRENDS(STR(?label), "Cyprus)") ||
STRENDS(STR(?label), "Mexico City, Mexico)") ||
STRENDS(STR(?label), "Northern Ireland)") ||
STRENDS(STR(?label), "Belgium)") ||
STRENDS(STR(?label), "Phoenix, Ariz.)") ||
STRENDS(STR(?label), "N.B.)") ||
STRENDS(STR(?label), "San Francisco, Calif.)") ||
STRENDS(STR(?label), "Moscow, Russia)") ||
STRENDS(STR(?label), "Lithuania)") ||
STRENDS(STR(?label), "Tas.)") ||
STRENDS(STR(?label), "Istanbul, Turkey)") ||
STRENDS(STR(?label), "Venice, Italy)") ||
STRENDS(STR(?label), "Ethiopia)") ||
STRENDS(STR(?label), "Belize)") ||
STRENDS(STR(?label), "Baltimore, Md.)") ||
STRENDS(STR(?label), "Warsaw, Poland)") ||
STRENDS(STR(?label), "Serbia)") ||
STRENDS(STR(?label), "Del.)") ||
STRENDS(STR(?label), "Statistics)") ||
STRENDS(STR(?label), "Taiwan)") ||
STRENDS(STR(?label), "Tokyo, Japan)") ||
STRENDS(STR(?label), "Turkic people)") ||
STRENDS(STR(?label), "Morocco)") ||
STRENDS(STR(?label), "Geology)") ||
STRENDS(STR(?label), "Sudan)") ||
STRENDS(STR(?label), "Provo, Utah)") ||
STRENDS(STR(?label), "Violins (2)") ||
STRENDS(STR(?label), "Micronesia)") ||
STRENDS(STR(?label), "Arab people)") ||
STRENDS(STR(?label), "Greenland)") ||
STRENDS(STR(?label), "Seoul, Korea)") ||
STRENDS(STR(?label), "Education)") ||
STRENDS(STR(?label), "Cameroon)") ||
STRENDS(STR(?label), "Algeria)") ||
STRENDS(STR(?label), "Madrid, Spain)") ||
STRENDS(STR(?label), "Burma)") ||
STRENDS(STR(?label), "Coin)") ||
STRENDS(STR(?label), "Madagascar)") ||
STRENDS(STR(?label), "Dublin, Ireland)") ||
STRENDS(STR(?label), "Munich, Germany)") ||
STRENDS(STR(?label), "Sabah, Malaysia)") ||
STRENDS(STR(?label), "Mongolia)") ||
STRENDS(STR(?label), "Flutes (2)") ||
STRENDS(STR(?label), "Yukon)") ||
STRENDS(STR(?label), "Bahamas)") ||
STRENDS(STR(?label), "Fiji)") ||
STRENDS(STR(?label), "Iraq)") ||
STRENDS(STR(?label), "Kazakhstan)") ||
STRENDS(STR(?label), "Edinburgh, Scotland)") ||
STRENDS(STR(?label), "Honduras)") ||
STRENDS(STR(?label), "Athens, Greece)") ||
STRENDS(STR(?label), "São Paulo, Brazil)") ||
STRENDS(STR(?label), "French Polynesia)") ||
STRENDS(STR(?label), "Saudi Arabia)") ||
STRENDS(STR(?label), "Congo)") ||
STRENDS(STR(?label), "Georgia)") ||
STRENDS(STR(?label), "Portuguese)") ||
STRENDS(STR(?label), "French Creole)") ||
STRENDS(STR(?label), "Mars)") ||
STRENDS(STR(?label), "Nigeria)") ||
STRENDS(STR(?label), "Calif. and Nev.)") ||
STRENDS(STR(?label), "Buenos Aires, Argentina)") ||
STRENDS(STR(?label), "Buddhist deity)") ||
STRENDS(STR(?label), "Nicaragua)") ||
STRENDS(STR(?label), "Bangladesh)") ||
STRENDS(STR(?label), "Cleveland, Ohio)") ||
STRENDS(STR(?label), "The Japanese word)") ||
STRENDS(STR(?label), "Germanic law)") ||
STRENDS(STR(?label), "Pompeii)") ||
STRENDS(STR(?label), "King County, Wash.)") ||
STRENDS(STR(?label), "Zambia)") ||
STRENDS(STR(?label), "Chinese people)") ||
STRENDS(STR(?label), "Great Britain)") ||
STRENDS(STR(?label), "Denver, Colo.)") ||
STRENDS(STR(?label), "German)") ||
STRENDS(STR(?label), "Portland, Me.)") ||
STRENDS(STR(?label), "Bologna, Italy)") ||
STRENDS(STR(?label), "Amsterdam, Netherlands)") ||
STRENDS(STR(?label), "Naples, Italy)") ||
STRENDS(STR(?label), "San Diego, Calif.)") ||
STRENDS(STR(?label), "Dominican Republic)") ||
STRENDS(STR(?label), "Maebashi-shi, Japan)") ||
STRENDS(STR(?label), "Turin, Italy)") ||
STRENDS(STR(?label), "Mollusks)") ||
STRENDS(STR(?label), "Estonia)") ||
STRENDS(STR(?label), "Or. and Wash.)") ||
STRENDS(STR(?label), "Marshall Islands)") ||
STRENDS(STR(?label), "Solomon Islands)") ||
STRENDS(STR(?label), "New Orleans, La.)") ||
STRENDS(STR(?label), "Latvia)") ||
STRENDS(STR(?label), "Literature)") ||
STRENDS(STR(?label), "Rio de Janeiro, Brazil)") ||
STRENDS(STR(?label), "Saint Louis, Mo.)") ||
STRENDS(STR(?label), "Turkmenistan)") ||
STRENDS(STR(?label), "Byzantine law)") ||
STRENDS(STR(?label), "The Italian word)") ||
STRENDS(STR(?label), "Parable)") ||
STRENDS(STR(?label), "Judaism)") ||
STRENDS(STR(?label), "Tunisia)") ||
STRENDS(STR(?label), "Portland, Or.)") ||
STRENDS(STR(?label), "Hamburg, Germany)") ||
STRENDS(STR(?label), "The Spanish word)") ||
STRENDS(STR(?label), "Kanazawa-shi, Japan)") ||
STRENDS(STR(?label), "Barcelona, Spain)") ||
STRENDS(STR(?label), "Standard)") ||
STRENDS(STR(?label), "Australia)") ||
STRENDS(STR(?label), "Theology)") ||
STRENDS(STR(?label), "B.C. and Wash.)") ||
STRENDS(STR(?label), "Pakistani people)") ||
STRENDS(STR(?label), "Egyptian deity)") ||
STRENDS(STR(?label), "The number)") ||
STRENDS(STR(?label), "Afghanistan)") ||
STRENDS(STR(?label), "Cartography)") ||
STRENDS(STR(?label), "United States Virgin Islands)") ||
STRENDS(STR(?label), "Haiti)") ||
STRENDS(STR(?label), "Senegal)") ||
STRENDS(STR(?label), "Brussels, Belgium)") ||
STRENDS(STR(?label), "Ghana)") ||
STRENDS(STR(?label), "New Haven, Conn.)") ||
STRENDS(STR(?label), "Genoa, Italy)") ||
STRENDS(STR(?label), "Palau)") ||
STRENDS(STR(?label), "Tajikistan)") ||
STRENDS(STR(?label), "Accounting)") ||
STRENDS(STR(?label), "Tonga)") ||
STRENDS(STR(?label), "Astrology)") ||
STRENDS(STR(?label), "Seychelles)") ||
STRENDS(STR(?label), "Anatomy)") ||
STRENDS(STR(?label), "Gabon)") ||
STRENDS(STR(?label), "Italic people)") ||
STRENDS(STR(?label), "Belarus)") ||
STRENDS(STR(?label), "Lisbon, Portugal)") ||
STRENDS(STR(?label), "The Russian word)") ||
STRENDS(STR(?label), "The Hebrew root)") ||
STRENDS(STR(?label), "Albania)") ||
STRENDS(STR(?label), "Malagasy people)") ||
STRENDS(STR(?label), "Ind. : Lake)") ||
STRENDS(STR(?label), "Uganda)") ||
STRENDS(STR(?label), "Tragedy)") ||
STRENDS(STR(?label), "Beijing, China)") ||
STRENDS(STR(?label), "Frankfurt am Main, Germany)") ||
STRENDS(STR(?label), "Laos)") ||
STRENDS(STR(?label), "Tallahassee, Fla.)") ||
STRENDS(STR(?label), "Middle)") ||
STRENDS(STR(?label), "Montréal, Québec)") ||
STRENDS(STR(?label), "Vietnamese people)") ||
STRENDS(STR(?label), "Aesthetics)") ||
STRENDS(STR(?label), "San Antonio, Tex.)") ||
STRENDS(STR(?label), "Malaysian people)") ||
STRENDS(STR(?label), "Jamaica)") ||
STRENDS(STR(?label), "Mongolian people)") ||
STRENDS(STR(?label), "Botswana)") ||
STRENDS(STR(?label), "Kyoto, Japan)") ||
STRENDS(STR(?label), "Kiribati)") ||
STRENDS(STR(?label), "Richmond, Va.)") ||
STRENDS(STR(?label), "Prague, Czech Republic)") ||
STRENDS(STR(?label), "Ark. and Okla.)") ||
STRENDS(STR(?label), "N.C. and S.C.)") ||
STRENDS(STR(?label), "The Portuguese word)") ||
STRENDS(STR(?label), "Glasgow, Scotland)") ||
STRENDS(STR(?label), "Cincinnati, Ohio)") ||
STRENDS(STR(?label), "Evanston, Ill.)") ||
STRENDS(STR(?label), "Palermo, Italy)") ||
STRENDS(STR(?label), "Christian theology)") ||
STRENDS(STR(?label), "Vanuatu)") ||
STRENDS(STR(?label), "Budapest, Hungary)") ||
STRENDS(STR(?label), "Mozambique)") ||
STRENDS(STR(?label), "Malawi)") ||
STRENDS(STR(?label), "Yemen)") ||
STRENDS(STR(?label), "Québec, Québec)") ||
STRENDS(STR(?label), "Democratic Republic)") ||
STRENDS(STR(?label), "Cat)") ||
STRENDS(STR(?label), "Toronto, Ont.)") ||
STRENDS(STR(?label), "Old)") ||
STRENDS(STR(?label), "Stockholm, Sweden)") ||
STRENDS(STR(?label), "Guam)") ||
STRENDS(STR(?label), "Colo. and N.M.)") ||
STRENDS(STR(?label), "Charleston, S.C.)") ||
STRENDS(STR(?label), "Zurich, Switzerland)") ||
STRENDS(STR(?label), "Wyo. and Mont.)") ||
STRENDS(STR(?label), "Worcester, Mass.)") ||
STRENDS(STR(?label), "Pierce County, Wash.)") ||
STRENDS(STR(?label), "Sydney, N.S.W.)") ||
STRENDS(STR(?label), "Indianapolis, Ind.)") ||
STRENDS(STR(?label), "El Salvador)") ||
STRENDS(STR(?label), "Copenhagen, Denmark)") ||
STRENDS(STR(?label), "Miami, Fla.)") ||
STRENDS(STR(?label), "Chinese)") ||
STRENDS(STR(?label), "Horns (2)") ||
STRENDS(STR(?label), "Violins (3)") ||
STRENDS(STR(?label), "Clarinets (2)") ||
STRENDS(STR(?label), "Havana, Cuba)") ||
STRENDS(STR(?label), "Taiwan people)") ||
STRENDS(STR(?label), "Suriname)") ||
STRENDS(STR(?label), "Azerbaijan)") ||
STRENDS(STR(?label), "Surgery)") ||
STRENDS(STR(?label), "Lebanon)") ||
STRENDS(STR(?label), "Brazzaville)") ||
STRENDS(STR(?label), "Kraków, Poland)") ||
STRENDS(STR(?label), "N.H. and Me.)") ||
STRENDS(STR(?label), "Va. and N.C.)") ||
STRENDS(STR(?label), "Wales and England)") ||
STRENDS(STR(?label), "Niger)") ||
STRENDS(STR(?label), "Sarawak, Malaysia)") ||
STRENDS(STR(?label), "Central African Republic)") ||
STRENDS(STR(?label), "Germanic people)") ||
STRENDS(STR(?label), "Atlanta, Ga.)") ||
STRENDS(STR(?label), "Printing)") ||
STRENDS(STR(?label), "Horsemanship)") ||
STRENDS(STR(?label), "England : Imaginary place)") ||
STRENDS(STR(?label), "Kyrgyzstan)") ||
STRENDS(STR(?label), "Liturgy)") ||
STRENDS(STR(?label), "Uzbekistan)") ||
STRENDS(STR(?label), "N.Y. and N.J.)") ||
STRENDS(STR(?label), "Motion pictures)") ||
STRENDS(STR(?label), "Austin, Tex.)") ||
STRENDS(STR(?label), "Burmese people)") ||
STRENDS(STR(?label), "Seville, Spain)") ||
STRENDS(STR(?label), "Telecommunication)") ||
STRENDS(STR(?label), "U.S.)") ||
STRENDS(STR(?label), "Mont. and Wyo.)") ||
STRENDS(STR(?label), "Philately)") ||
STRENDS(STR(?label), "South Caucasian)") ||
STRENDS(STR(?label), "Tex. and Okla.)") ||
STRENDS(STR(?label), "Salt Lake City, Utah)") ||
STRENDS(STR(?label), "Interstate 5)") ||
STRENDS(STR(?label), "United States Capitol, Washington, D.C.)") ||
STRENDS(STR(?label), "Scrolls)") ||
STRENDS(STR(?label), "Recorders (2)") ||
STRENDS(STR(?label), "Montenegro)") ||
STRENDS(STR(?label), "Libya)") ||
STRENDS(STR(?label), "Spain and Portugal)") ||
STRENDS(STR(?label), "Cairo, Egypt)") ||
STRENDS(STR(?label), "Libraries)") ||
STRENDS(STR(?label), "Dresden, Germany)") ||
STRENDS(STR(?label), "Uruguay)") ||
STRENDS(STR(?label), "Vancouver, B.C.)") ||
STRENDS(STR(?label), "Boise, Idaho)") ||
STRENDS(STR(?label), "Mali)") ||
STRENDS(STR(?label), "Lawrence, Mass.)") ||
STRENDS(STR(?label), "Harpsichord, violins (2)") ||
STRENDS(STR(?label), "N.M. and Tex.)") ||
STRENDS(STR(?label), "Edmonton, Alta.)") ||
STRENDS(STR(?label), "Potsdam, Germany)") ||
STRENDS(STR(?label), "N.J. and N.Y.)") ||
STRENDS(STR(?label), "Yokohama-shi, Japan)") ||
STRENDS(STR(?label), "Iranian people)") ||
STRENDS(STR(?label), "Montevideo, Uruguay)") ||
STRENDS(STR(?label), "Kyïv, Ukraine)") ||
STRENDS(STR(?label), "Pittsburgh, Pa.)") ||
STRENDS(STR(?label), "Cook Islands)") ||
STRENDS(STR(?label), "Kurdish tribe)") ||
STRENDS(STR(?label), "Bosnia and Herzegovina)") ||
STRENDS(STR(?label), "Hinduism)") ||
STRENDS(STR(?label), "Jefferson County, Wash.)") ||
STRENDS(STR(?label), "Bogotá, Colombia)") ||
STRENDS(STR(?label), "Springfield, Ill.)") ||
STRENDS(STR(?label), "Portsmouth, England)") ||
STRENDS(STR(?label), "Caracas, Venezuela)") ||
STRENDS(STR(?label), "Yoruba deity)") ||
STRENDS(STR(?label), "Hague, Netherlands)") ||
STRENDS(STR(?label), "Pa. and Md.)") ||
STRENDS(STR(?label), "Guyana)") ||
STRENDS(STR(?label), "Malta)") ||
STRENDS(STR(?label), "Mich. and Ont.)") ||
STRENDS(STR(?label), "N.M. and Ariz.)") ||
STRENDS(STR(?label), "Kedah, Malaysia)") ||
STRENDS(STR(?label), "N.C. and Tenn.)") ||
STRENDS(STR(?label), "Milwaukee, Wis.)") ||
STRENDS(STR(?label), "Raleigh, N.C.)") ||
STRENDS(STR(?label), "B.C. and Alta.)") ||
STRENDS(STR(?label), "Wis. and Ill.)") ||
STRENDS(STR(?label), "Kansas City, Mo.)") ||
STRENDS(STR(?label), "Tucson, Ariz.)") ||
STRENDS(STR(?label), "Oslo, Norway)") ||
STRENDS(STR(?label), "Honolulu, Hawaii)") ||
STRENDS(STR(?label), "Okayama-shi, Japan)") ||
STRENDS(STR(?label), "Pensacola, Fla.)") ||
STRENDS(STR(?label), "Houston, Tex.)") ||
STRENDS(STR(?label), "Shanghai, China)") ||
STRENDS(STR(?label), "Vilnius, Lithuania)") ||
STRENDS(STR(?label), "Ferrara, Italy)") ||
STRENDS(STR(?label), "Aircraft carriers)") ||
STRENDS(STR(?label), "Albany, N.Y.)") ||
STRENDS(STR(?label), "Noble County, Ind.)") ||
STRENDS(STR(?label), "Nashville, Tenn.)") ||
STRENDS(STR(?label), "Educational test)") ||
STRENDS(STR(?label), "Social sciences)") ||
STRENDS(STR(?label), "Computer software)") ||
STRENDS(STR(?label), "Minneapolis, Minn.)") ||
STRENDS(STR(?label), "Va. and W. Va.)") ||
STRENDS(STR(?label), "United Arab Emirates)") ||
STRENDS(STR(?label), "India and Pakistan)") ||
STRENDS(STR(?label), "Pahang, Malaysia)") ||
STRENDS(STR(?label), "Alexandria, Va.)") ||
STRENDS(STR(?label), "Chapel Hill, N.C.)") ||
STRENDS(STR(?label), "Cardiff, Wales)") ||
STRENDS(STR(?label), "New Caledonia)") ||
STRENDS(STR(?label), "North Macedonia)") ||
STRENDS(STR(?label), "Washington County, Me.)") ||
STRENDS(STR(?label), "Md. and Washington, D.C.)") ||
STRENDS(STR(?label), "N.W.T. and Nunavut)") ||
STRENDS(STR(?label), "France and Italy)") ||
STRENDS(STR(?label), "Tel Aviv, Israel)") ||
STRENDS(STR(?label), "Valencia, Spain)") ||
STRENDS(STR(?label), "Saint Paul, Minn.)") ||
STRENDS(STR(?label), "Canary Islands)") ||
STRENDS(STR(?label), "Siena, Italy)") ||
STRENDS(STR(?label), "Bristol, England)") ||
STRENDS(STR(?label), "Vatican Palace, Vatican City)") ||
STRENDS(STR(?label), "Oxford, England)") ||
STRENDS(STR(?label), "Germany and Netherlands)") ||
STRENDS(STR(?label), "The Arabic word)") ||
STRENDS(STR(?label), "Guadalajara, Mexico)") ||
STRENDS(STR(?label), "Manchester, England)") ||
STRENDS(STR(?label), "Poznań, Poland)") ||
STRENDS(STR(?label), "French Guiana)") ||
STRENDS(STR(?label), "Pisa, Italy)") ||
STRENDS(STR(?label), "Colo. and Utah)") ||
STRENDS(STR(?label), "Buffalo, N.Y.)") ||
STRENDS(STR(?label), "Little Rock, Ark.)") ||
STRENDS(STR(?label), "Festival)") ||
STRENDS(STR(?label), "Yavapai County, Ariz.)") ||
STRENDS(STR(?label), "Genetics)") ||
STRENDS(STR(?label), "Sask. and Man.)") ||
STRENDS(STR(?label), "Biochemistry)") ||
STRENDS(STR(?label), "Cambridge, Mass.)") ||
STRENDS(STR(?label), "Mass. and Conn.)") ||
STRENDS(STR(?label), "Nepal and India)") ||
STRENDS(STR(?label), "Kan. and Okla.)") ||
STRENDS(STR(?label), "Colo. and Wyo.)") ||
STRENDS(STR(?label), "Alta. and Sask.)") ||
STRENDS(STR(?label), "Oahu, Hawaii)") ||
STRENDS(STR(?label), "B.C. and Alaska)") ||
STRENDS(STR(?label), "Africa)") ||
STRENDS(STR(?label), "Melbourne, Vic.)") ||
STRENDS(STR(?label), "Verona, Italy)") ||
STRENDS(STR(?label), "Ga. and S.C.)") ||
STRENDS(STR(?label), "Hartford, Conn.)") ||
STRENDS(STR(?label), "Stuttgart, Germany)") ||
STRENDS(STR(?label), "Guinea-Bissau)") ||
STRENDS(STR(?label), "Porto Alegre, Rio Grande do Sul, Brazil)") ||
STRENDS(STR(?label), "New York, N.Y. : Building)") ||
STRENDS(STR(?label), "Mantua, Italy)") ||
STRENDS(STR(?label), "Birmingham, England)") ||
STRENDS(STR(?label), "Oman)") ||
STRENDS(STR(?label), "York, England)") ||
STRENDS(STR(?label), "Monterrey, Mexico)") ||
STRENDS(STR(?label), "Swedish)") ||
STRENDS(STR(?label), "Assyro-Babylonian law)") ||
STRENDS(STR(?label), "Malay)") ||
STRENDS(STR(?label), "The Chinese word)") ||
STRENDS(STR(?label), "New Guinean people)") ||
STRENDS(STR(?label), "Guitars (2)") ||
STRENDS(STR(?label), "Yamaguchi-shi, Japan)") ||
STRENDS(STR(?label), "Minn. and Ont.)") ||
STRENDS(STR(?label), "Selangor, Malaysia)") ||
STRENDS(STR(?label), "American Samoa)") ||
STRENDS(STR(?label), "Ravenna, Italy)") ||
STRENDS(STR(?label), "Pa. and N.Y.)") ||
STRENDS(STR(?label), "Italy and Switzerland)") ||
STRENDS(STR(?label), "Iowa and Mo.)") ||
STRENDS(STR(?label), "Chad)") ||
STRENDS(STR(?label), "Argentina and Chile)") ||
STRENDS(STR(?label), "Idaho and Mont.)") ||
STRENDS(STR(?label), "Or. and Calif.)") ||
STRENDS(STR(?label), "Crustacea)") ||
STRENDS(STR(?label), "Northern Mariana Islands)") ||
STRENDS(STR(?label), "Hindu festival)") ||
STRENDS(STR(?label), "Paraguay)") ||
STRENDS(STR(?label), "Del. and Md.)") ||
STRENDS(STR(?label), "Southeast Asia)") ||
STRENDS(STR(?label), "Md. and Va.)") ||
STRENDS(STR(?label), "Maricopa County, Ariz.)") ||
STRENDS(STR(?label), "Côte d'Ivoire)") ||
STRENDS(STR(?label), "Burkina Faso)") ||
STRENDS(STR(?label), "Shizuoka-shi, Japan)") ||
STRENDS(STR(?label), "Utah and Wyo.)") ||
STRENDS(STR(?label), "Padua, Italy)") ||
STRENDS(STR(?label), "Christianity)") ||
STRENDS(STR(?label), "Lesotho)") ||
STRENDS(STR(?label), "Idaho and Or.)") ||
STRENDS(STR(?label), "Chelan County, Wash.)") ||
STRENDS(STR(?label), "Microbiology)") ||
STRENDS(STR(?label), "Thurston County, Wash.)") ||
STRENDS(STR(?label), "Azores)") ||
STRENDS(STR(?label), "Bangkok, Thailand)") ||
STRENDS(STR(?label), "Sierra Leone)") ||
STRENDS(STR(?label), "Manchester, N.H.)") ||
STRENDS(STR(?label), "Austria and Germany)") ||
STRENDS(STR(?label), "Cologne, Germany)") ||
STRENDS(STR(?label), "Suzhou Shi, Jiangsu Sheng, China)") ||
STRENDS(STR(?label), "All terrain vehicle)") ||
STRENDS(STR(?label), "Tenn. and Ky.)") ||
STRENDS(STR(?label), "Bloomington, Ind.)") ||
STRENDS(STR(?label), "Bellingham, Wash.)") ||
STRENDS(STR(?label), "Frankenmuth, Mich.)") ||
STRENDS(STR(?label), "Data processing)") ||
STRENDS(STR(?label), "The Arabic letter)") ||
STRENDS(STR(?label), "Orchestra)") ||
STRENDS(STR(?label), "Melanesian people)") ||
STRENDS(STR(?label), "Piano, violins (2)") ||
STRENDS(STR(?label), "Amagi-shi, Japan)") ||
STRENDS(STR(?label), "Harps (2)") ||
STRENDS(STR(?label), "2)") ||
STRENDS(STR(?label), "Flute)") ||
STRENDS(STR(?label), "Bucharest, Romania)") ||
STRENDS(STR(?label), "Medical care)") ||
STRENDS(STR(?label), "Mammals)") ||
STRENDS(STR(?label), "Wash. : Bay)") ||
STRENDS(STR(?label), "Ariz. and N.M.)") ||
STRENDS(STR(?label), "Reptiles)") ||
STRENDS(STR(?label), "Venus)") ||
STRENDS(STR(?label), "Papyri)") ||
STRENDS(STR(?label), "Utah and Idaho)") ||
STRENDS(STR(?label), "Steuben County, Ind.)") ||
STRENDS(STR(?label), "N.C. and Va.)") ||
STRENDS(STR(?label), "North Yorkshire, England)") ||
STRENDS(STR(?label), "Canada)") ||
STRENDS(STR(?label), "Perugia, Italy)") ||
STRENDS(STR(?label), "Ceramics)") ||
STRENDS(STR(?label), "Guatemala and Mexico)") ||
STRENDS(STR(?label), "Congo (Brazzaville)") ||
STRENDS(STR(?label), "Ky. and Tenn.)") ||
STRENDS(STR(?label), "Ga. and Fla.)") ||
STRENDS(STR(?label), "Civil procedure)") ||
STRENDS(STR(?label), "N.Y. and Ont.)") ||
STRENDS(STR(?label), "Helsinki, Finland)") ||
STRENDS(STR(?label), "Idaho and Wash.)") ||
STRENDS(STR(?label), "Valley County, Idaho)") ||
STRENDS(STR(?label), "Powys, Wales)") ||
STRENDS(STR(?label), "Mauritania)") ||
STRENDS(STR(?label), "Cumbria, England)") ||
STRENDS(STR(?label), "Ala. and Fla.)") ||
STRENDS(STR(?label), "Trento, Italy)") ||
STRENDS(STR(?label), "Leipzig, Germany)") ||
STRENDS(STR(?label), "Kenya and Tanzania)") ||
STRENDS(STR(?label), "Weimar, Thuringia, Germany)") ||
STRENDS(STR(?label), "San Juan, P.R.)") ||
STRENDS(STR(?label), "Ecuador and Peru)") ||
STRENDS(STR(?label), "Columbus, Ohio)") ||
STRENDS(STR(?label), "Cabo Verde)") ||
STRENDS(STR(?label), "Snohomish County, Wash.)") ||
STRENDS(STR(?label), "Me. and N.B.)") ||
STRENDS(STR(?label), "Neb. and Kan.)") ||
STRENDS(STR(?label), "Lyon, France)") ||
STRENDS(STR(?label), "Tex. and N.M.)") ||
STRENDS(STR(?label), "Mumbai, India)") ||
STRENDS(STR(?label), "Russia and Ukraine)") ||
STRENDS(STR(?label), "Georgia and Russia)") ||
STRENDS(STR(?label), "Newport, R.I.)") ||
STRENDS(STR(?label), "Oakland, Calif.)") ||
STRENDS(STR(?label), "Rotterdam, Netherlands)") ||
STRENDS(STR(?label), "Puebla de Zaragoza, Mexico)") ||
STRENDS(STR(?label), "Idaho County, Idaho)") ||
STRENDS(STR(?label), "France and Belgium)") ||
STRENDS(STR(?label), "Curaçao)") ||
STRENDS(STR(?label), "Bern, Switzerland)") ||
STRENDS(STR(?label), "Bassoons (2)") ||
STRENDS(STR(?label), "Cellos (2)") ||
STRENDS(STR(?label), "Abiko-shi, Japan)") ||
STRENDS(STR(?label), "Notogawa-chō, Japan)") ||
STRENDS(STR(?label), "Flute, violins (2)") ||
STRENDS(STR(?label), "Ark. and Mo.)") ||
STRENDS(STR(?label), "Ariz. and Calif.)") ||
STRENDS(STR(?label), "Mo. and Ark.)") ||
STRENDS(STR(?label), "Hannover, Germany)") ||
STRENDS(STR(?label), "Tribe of Israel)") ||
STRENDS(STR(?label), "England and Wales)") ||
STRENDS(STR(?label), "Armenia)") ||
STRENDS(STR(?label), "Slovakia and Hungary)") ||
STRENDS(STR(?label), "Ind. and Ill.)") ||
STRENDS(STR(?label), "Angola)") ||
STRENDS(STR(?label), "Ariz. and Nev.)") ||
STRENDS(STR(?label), "Alaska : Bay)") ||
STRENDS(STR(?label), "England and Scotland)") ||
STRENDS(STR(?label), "Ark. and La.)") ||
STRENDS(STR(?label), "Guadeloupe)") ||
STRENDS(STR(?label), "Braunschweig, Germany)") ||
STRENDS(STR(?label), "Salt Lake County, Utah)") ||
STRENDS(STR(?label), "Brescia, Italy)") ||
STRENDS(STR(?label), "Calif. and Or.)") ||
STRENDS(STR(?label), "Va. and Tenn.)") ||
STRENDS(STR(?label), "Düsseldorf, Germany)") ||
STRENDS(STR(?label), "Drone aircraft)") ||
STRENDS(STR(?label), "Detroit, Mich.)") ||
STRENDS(STR(?label), "Fungi)") ||
STRENDS(STR(?label), "Vilas County, Wis.)") ||
STRENDS(STR(?label), "Hancock County, Me.)") ||
STRENDS(STR(?label), "Neb. and S.D.)") ||
STRENDS(STR(?label), "Granada, Spain)") ||
STRENDS(STR(?label), "Bermuda Islands)") ||
STRENDS(STR(?label), "Parma, Italy)") ||
STRENDS(STR(?label), "El Paso, Tex.)") ||
STRENDS(STR(?label), "Marseille, France)") ||
STRENDS(STR(?label), "India and Bangladesh)") ||
STRENDS(STR(?label), "Saint Augustine, Fla.)") ||
STRENDS(STR(?label), "Manhattan, New York, N.Y.)") ||
STRENDS(STR(?label), "Lima, Peru)") ||
STRENDS(STR(?label), "Guinea)") ||
STRENDS(STR(?label), "Ottawa, Ont.)") ||
STRENDS(STR(?label), "Anchorage, Alaska)") ||
STRENDS(STR(?label), "Münster in Westfalen, Germany)") ||
STRENDS(STR(?label), "Nuremberg, Germany)") ||
STRENDS(STR(?label), "Ukraine and Russia)") ||
STRENDS(STR(?label), "Cape Town, South Africa)") ||
STRENDS(STR(?label), "Göteborg, Sweden)") ||
STRENDS(STR(?label), "The Greek phrase)") ||
STRENDS(STR(?label), "Sacramento, Calif.)") ||
STRENDS(STR(?label), "Providence, R.I.)") ||
STRENDS(STR(?label), "Owyhee County, Idaho)") ||
STRENDS(STR(?label), "Jewish theology)") ||
STRENDS(STR(?label), "Elementary)") ||
STRENDS(STR(?label), "Wyo. and Idaho)") ||
STRENDS(STR(?label), "Isle of Man)") ||
STRENDS(STR(?label), "Bahrain)") ||
STRENDS(STR(?label), "Whatcom County, Wash.)") ||
STRENDS(STR(?label), "Nev. and Idaho)") ||
STRENDS(STR(?label), "Numerical analysis)") ||
STRENDS(STR(?label), "Congo and Angola)") ||
STRENDS(STR(?label), "Guilford, Conn.)") ||
STRENDS(STR(?label), "Cambridge, England)") ||
STRENDS(STR(?label), "P.E.I.)") ||
STRENDS(STR(?label), "Geneva, Switzerland)") ||
STRENDS(STR(?label), "Savannah, Ga.)") ||
STRENDS(STR(?label), "Fremont County, Wyo.)") ||
STRENDS(STR(?label), "Lincoln, Mass.)") ||
STRENDS(STR(?label), "Trieste, Italy)") ||
STRENDS(STR(?label), "Belfast, Northern Ireland)") ||
STRENDS(STR(?label), "Kherwari)") ||
STRENDS(STR(?label), "Dance drama)") ||
STRENDS(STR(?label), "Osaka, Japan)") ||
STRENDS(STR(?label), "Lawton, Okla.)") ||
STRENDS(STR(?label), "Lemhi County, Idaho)") ||
STRENDS(STR(?label), "Zimbabwe and Mozambique)") ||
STRENDS(STR(?label), "Cambodia)") ||
STRENDS(STR(?label), "Zambezi)") ||
STRENDS(STR(?label), "Bookbinding)") ||
STRENDS(STR(?label), "The Hebrew particle)") ||
STRENDS(STR(?label), "Salem, Mass.)") ||
STRENDS(STR(?label), "Organ, violins (2)") ||
STRENDS(STR(?label), "Trumpets (2)") ||
STRENDS(STR(?label), "Sakai-shi, Japan)") ||
STRENDS(STR(?label), "Piano (4 hands)") ||
STRENDS(STR(?label), "Ala. and Ga.)") ||
STRENDS(STR(?label), "Armored military vehicle)") ||
STRENDS(STR(?label), "Ariz. and Utah)") ||
STRENDS(STR(?label), "Mass. and R.I.)") ||
STRENDS(STR(?label), "Dog breed)") ||
STRENDS(STR(?label), "South Sudan)") ||
STRENDS(STR(?label), "Frigates)") ||
STRENDS(STR(?label), "Memphis, Tenn.)") ||
STRENDS(STR(?label), "N.Y. and Pa.)") ||
STRENDS(STR(?label), "Cameroon and Nigeria)") ||
STRENDS(STR(?label), "Rite)") ||
STRENDS(STR(?label), "Violin)") ||
STRENDS(STR(?label), "Kassel, Germany)") ||
STRENDS(STR(?label), "Belgium and Netherlands)") ||
STRENDS(STR(?label), "Group of poets)") ||
STRENDS(STR(?label), "Ind. and Ohio)") ||
STRENDS(STR(?label), "Skagit County, Wash.)") ||
STRENDS(STR(?label), "Utah and Ariz.)") ||
STRENDS(STR(?label), "Tempe, Ariz.)") ||
STRENDS(STR(?label), "Congolese (Democratic Republic)") ||
STRENDS(STR(?label), "North Slope Borough, Alaska)") ||
STRENDS(STR(?label), "Galapagos Islands)") ||
STRENDS(STR(?label), "Pulau Pinang, Malaysia)") ||
STRENDS(STR(?label), "Crystallography)") ||
STRENDS(STR(?label), "Tenn. and Ala.)") ||
STRENDS(STR(?label), "Versailles, France)") ||
STRENDS(STR(?label), "China and Nepal)") ||
STRENDS(STR(?label), "Porto, Portugal)") ||
STRENDS(STR(?label), "Togo)") ||
STRENDS(STR(?label), "Basketball)") ||
STRENDS(STR(?label), "Alta. and B.C.)") ||
STRENDS(STR(?label), "N.H. and Mass.)") ||
STRENDS(STR(?label), "Poland and Ukraine)") ||
STRENDS(STR(?label), "Ariz. and Mexico)") ||
STRENDS(STR(?label), "Retail trade)") ||
STRENDS(STR(?label), "Basel, Switzerland)") ||
STRENDS(STR(?label), "Lute)") ||
STRENDS(STR(?label), "Dravidian)") ||
STRENDS(STR(?label), "Mythology)") ||
STRENDS(STR(?label), "Bratislava, Slovakia)") ||
STRENDS(STR(?label), "Naval architecture)") ||
STRENDS(STR(?label), "Taipei, Taiwan)") ||
STRENDS(STR(?label), "Wellington, N.Z.)") ||
STRENDS(STR(?label), "Wyo. and Colo.)") ||
STRENDS(STR(?label), "Nunavut and N.W.T.)") ||
STRENDS(STR(?label), "Missoula County, Mont.)") ||
STRENDS(STR(?label), "Utrecht, Netherlands)") ||
STRENDS(STR(?label), "Mont. and Alta.)") ||
STRENDS(STR(?label), "B.C. and Mont.)") ||
STRENDS(STR(?label), "Winnipeg, Man.)") ||
STRENDS(STR(?label), "Miss. and Tenn.)") ||
STRENDS(STR(?label), "Bremen, Germany)") ||
STRENDS(STR(?label), "Christchurch, N.Z.)") ||
STRENDS(STR(?label), "Pasadena, Calif.)") ||
STRENDS(STR(?label), "Josephine County, Or.)") ||
STRENDS(STR(?label), "Halifax, N.S.)") ||
STRENDS(STR(?label), "Grafton County, N.H.)") ||
STRENDS(STR(?label), "Liberia)") ||
STRENDS(STR(?label), "Noble, Noble County, Ind.)")
		)
		?s ?p ?o .
	}
}