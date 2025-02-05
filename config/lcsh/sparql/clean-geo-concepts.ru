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
STRENDS(STR(?label), "Italy)") ||
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
STRENDS(STR(?label), "Scotland)") ||
STRENDS(STR(?label), "Pa.)") ||
STRENDS(STR(?label), "N.Z.)") ||
STRENDS(STR(?label), "South Africa)") ||
STRENDS(STR(?label), "N.Y.)") ||
STRENDS(STR(?label), "Mont.)") ||
STRENDS(STR(?label), "Turkey)") ||
STRENDS(STR(?label), "Indonesia)") ||
STRENDS(STR(?label), "Peru)") ||
STRENDS(STR(?label), "Wis.)") ||
STRENDS(STR(?label), "Va.)") ||
STRENDS(STR(?label), "Mass.)") ||
STRENDS(STR(?label), "Ont.)") ||
STRENDS(STR(?label), "Ind.)") ||
STRENDS(STR(?label), "Poland)") ||
STRENDS(STR(?label), "Ill.)") ||
STRENDS(STR(?label), "Wales)") ||
STRENDS(STR(?label), "Me.)") ||
STRENDS(STR(?label), "Ireland)") ||
STRENDS(STR(?label), "S.C.)") ||
STRENDS(STR(?label), "Washington, D.C.)") ||
STRENDS(STR(?label), "Greece)") ||
STRENDS(STR(?label), "Switzerland)") ||
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
STRENDS(STR(?label), "Austria)") ||
STRENDS(STR(?label), "N.S.W.)") ||
STRENDS(STR(?label), "La.)") ||
STRENDS(STR(?label), "Ga.)") ||
STRENDS(STR(?label), "Tenn.)") ||
STRENDS(STR(?label), "Egypt)") ||
STRENDS(STR(?label), "Ark.)") ||
STRENDS(STR(?label), "Denmark)") ||
STRENDS(STR(?label), "Antarctica)") ||
STRENDS(STR(?label), "Hawaii)") ||
STRENDS(STR(?label), "Romania)") ||
STRENDS(STR(?label), "Mo.)") ||
STRENDS(STR(?label), "Ala.)") ||
STRENDS(STR(?label), "Chile)") ||
STRENDS(STR(?label), "Qld.)") ||
STRENDS(STR(?label), "Vic.)") ||
STRENDS(STR(?label), "S.D.)") ||
STRENDS(STR(?label), "N.H.)") ||
STRENDS(STR(?label), "Ukraine)") ||
STRENDS(STR(?label), "Neb.)") ||
STRENDS(STR(?label), "Conn.)") ||
STRENDS(STR(?label), "N.D.)") ||
STRENDS(STR(?label), "Thailand)") ||
STRENDS(STR(?label), "Czech Republic)") ||
STRENDS(STR(?label), "Nunavut)") ||
STRENDS(STR(?label), "Papua New Guinea)") ||
STRENDS(STR(?label), "Netherlands)") ||
STRENDS(STR(?label), "Man.)") ||
STRENDS(STR(?label), "Hungary)") ||
STRENDS(STR(?label), "Ecuador)") ||
STRENDS(STR(?label), "Miss.)") ||
STRENDS(STR(?label), "W. Va.)") ||
STRENDS(STR(?label), "Sask.)") ||
STRENDS(STR(?label), "Iran)") ||
STRENDS(STR(?label), "Kan.)") ||
STRENDS(STR(?label), "Iceland)") ||
STRENDS(STR(?label), "Pakistan)") ||
STRENDS(STR(?label), "Finland)") ||
STRENDS(STR(?label), "Venezuela)") ||
STRENDS(STR(?label), "Kenya)") ||
STRENDS(STR(?label), "Tanzania)") ||
STRENDS(STR(?label), "Bolivia)") ||
STRENDS(STR(?label), "Vt.)") ||
STRENDS(STR(?label), "Guatemala)") ||
STRENDS(STR(?label), "Croatia)") ||
STRENDS(STR(?label), "Syria)") ||
STRENDS(STR(?label), "Singapore)") ||
STRENDS(STR(?label), "Iowa)") ||
STRENDS(STR(?label), "N.W.T.)") ||
STRENDS(STR(?label), "Jordan)") ||
STRENDS(STR(?label), "Slovenia)") ||
STRENDS(STR(?label), "Costa Rica)") ||
STRENDS(STR(?label), "Bulgaria)") ||
STRENDS(STR(?label), "Vietnam)") ||
STRENDS(STR(?label), "Cuba)") ||
STRENDS(STR(?label), "Nepal)") ||
STRENDS(STR(?label), "Slovakia)") ||
STRENDS(STR(?label), "N.L.)") ||
STRENDS(STR(?label), "Namibia)") ||
STRENDS(STR(?label), "The French word)") ||
STRENDS(STR(?label), "Sri Lanka)") ||
STRENDS(STR(?label), "N.T.)") ||
STRENDS(STR(?label), "S.A.)") ||
STRENDS(STR(?label), "Cyprus)") ||
STRENDS(STR(?label), "Northern Ireland)") ||
STRENDS(STR(?label), "Belgium)") ||
STRENDS(STR(?label), "N.B.)") ||
STRENDS(STR(?label), "Tas.)") ||
STRENDS(STR(?label), "Belize)") ||
STRENDS(STR(?label), "Statistics)") ||
STRENDS(STR(?label), "Taiwan)") ||
STRENDS(STR(?label), "Tokyo, Japan)") ||
STRENDS(STR(?label), "Turkic people)") ||
STRENDS(STR(?label), "Morocco)") ||
STRENDS(STR(?label), "Geology)") ||
STRENDS(STR(?label), "Fish)") ||
STRENDS(STR(?label), "Sudan)") ||
STRENDS(STR(?label), "Provo, Utah)") ||
STRENDS(STR(?label), "Violins (2)") ||
STRENDS(STR(?label), "Chemistry)") ||
STRENDS(STR(?label), "Chess)") ||
STRENDS(STR(?label), "Micronesia)") ||
STRENDS(STR(?label), "Jet transport)") ||
STRENDS(STR(?label), "Arab people)") ||
STRENDS(STR(?label), "Insects)") ||
STRENDS(STR(?label), "Persons)") ||
STRENDS(STR(?label), "Greenland)") ||
STRENDS(STR(?label), "Seoul, Korea)") ||
STRENDS(STR(?label), "Education)") ||
STRENDS(STR(?label), "Cameroon)") ||
STRENDS(STR(?label), "Algeria)") ||
STRENDS(STR(?label), "Madrid, Spain)") ||
STRENDS(STR(?label), "Nepalese people)") ||
STRENDS(STR(?label), "Training plane)") ||
STRENDS(STR(?label), "Burma)") ||
STRENDS(STR(?label), "Coin)") ||
STRENDS(STR(?label), "Madagascar)") ||
STRENDS(STR(?label), "Dublin, Ireland)") ||
STRENDS(STR(?label), "Munich, Germany)") ||
STRENDS(STR(?label), "Wine)") ||
STRENDS(STR(?label), "Sabah, Malaysia)") ||
STRENDS(STR(?label), "Mongolia)") ||
STRENDS(STR(?label), "Jazz)") ||
STRENDS(STR(?label), "Flutes (2)") ||
STRENDS(STR(?label), "Yukon)") ||
STRENDS(STR(?label), "Logic)") ||
STRENDS(STR(?label), "Bahamas)") ||
STRENDS(STR(?label), "Computer network protocol)") ||
STRENDS(STR(?label), "Fiji)") ||
STRENDS(STR(?label), "Iraq)") ||
STRENDS(STR(?label), "Kazakhstan)") ||
STRENDS(STR(?label), "Edinburgh, Scotland)") ||
STRENDS(STR(?label), "Computer programs)") ||
STRENDS(STR(?label), "Honduras)") ||
STRENDS(STR(?label), "Athens, Greece)") ||
STRENDS(STR(?label), "São Paulo, Brazil)") ||
STRENDS(STR(?label), "French Polynesia)") ||
STRENDS(STR(?label), "Saudi Arabia)") ||
STRENDS(STR(?label), "Birds)") ||
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
STRENDS(STR(?label), "Plant)") ||
STRENDS(STR(?label), "Islam)") ||
STRENDS(STR(?label), "King County, Wash.)") ||
STRENDS(STR(?label), "Zambia)") ||
STRENDS(STR(?label), "Chinese people)") ||
STRENDS(STR(?label), "Great Britain)") ||
STRENDS(STR(?label), "Denver, Colo.)") ||
STRENDS(STR(?label), "German)") ||
STRENDS(STR(?label), "Portland, Me.)") ||
STRENDS(STR(?label), "Bologna, Italy)") ||
STRENDS(STR(?label), "Amsterdam, Netherlands)") ||
STRENDS(STR(?label), "Meteorology)") ||
STRENDS(STR(?label), "Naples, Italy)") ||
STRENDS(STR(?label), "San Diego, Calif.)") ||
STRENDS(STR(?label), "Dominican Republic)") ||
STRENDS(STR(?label), "Maebashi-shi, Japan)") ||
STRENDS(STR(?label), "Turin, Italy)") ||
STRENDS(STR(?label), "Mollusks)") ||
STRENDS(STR(?label), "Estonia)") ||
STRENDS(STR(?label), "Electronics)") ||
STRENDS(STR(?label), "Economics)") ||
STRENDS(STR(?label), "Or. and Wash.)") ||
STRENDS(STR(?label), "Literary movement)") ||
STRENDS(STR(?label), "Steam locomotive)") ||
STRENDS(STR(?label), "Marshall Islands)") ||
STRENDS(STR(?label), "Cult)") ||
STRENDS(STR(?label), "Solomon Islands)") ||
STRENDS(STR(?label), "New Orleans, La.)") ||
STRENDS(STR(?label), "Latvia)") ||
STRENDS(STR(?label), "Cooking)") ||
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
STRENDS(STR(?label), "Astronomy)") ||
STRENDS(STR(?label), "Hamburg, Germany)") ||
STRENDS(STR(?label), "Engineering)") ||
STRENDS(STR(?label), "The Spanish word)") ||
STRENDS(STR(?label), "Kanazawa-shi, Japan)") ||
STRENDS(STR(?label), "Barcelona, Spain)") ||
STRENDS(STR(?label), "Standard)") ||
STRENDS(STR(?label), "Australia)") ||
STRENDS(STR(?label), "Sculpture)") ||
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
STRENDS(STR(?label), "Botany)") ||
STRENDS(STR(?label), "Ghana)") ||
STRENDS(STR(?label), "New Haven, Conn.)") ||
STRENDS(STR(?label), "Genoa, Italy)") ||
STRENDS(STR(?label), "Physiology)") ||
STRENDS(STR(?label), "Palau)") ||
STRENDS(STR(?label), "Tajikistan)") ||
STRENDS(STR(?label), "Accounting)") ||
STRENDS(STR(?label), "Computer networks)") ||
STRENDS(STR(?label), "Tonga)") ||
STRENDS(STR(?label), "West Bank)") ||
STRENDS(STR(?label), "Astrology)") ||
STRENDS(STR(?label), "Seychelles)") ||
STRENDS(STR(?label), "Anatomy)") ||
STRENDS(STR(?label), "Art movement)") ||
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
STRENDS(STR(?label), "Insect)") ||
STRENDS(STR(?label), "Beijing, China)") ||
STRENDS(STR(?label), "Frankfurt am Main, Germany)") ||
STRENDS(STR(?label), "Laos)") ||
STRENDS(STR(?label), "Aerodynamics)") ||
STRENDS(STR(?label), "Tallahassee, Fla.)") ||
STRENDS(STR(?label), "Middle)") ||
STRENDS(STR(?label), "Montréal, Québec)") ||
STRENDS(STR(?label), "Vietnamese people)") ||
STRENDS(STR(?label), "Aesthetics)") ||
STRENDS(STR(?label), "San Antonio, Tex.)") ||
STRENDS(STR(?label), "Malaysian people)") ||
STRENDS(STR(?label), "Algebra)") ||
STRENDS(STR(?label), "Document markup language)") ||
STRENDS(STR(?label), "Jamaica)") ||
STRENDS(STR(?label), "Mongolian people)") ||
STRENDS(STR(?label), "Botswana)") ||
STRENDS(STR(?label), "Kyoto, Japan)") ||
STRENDS(STR(?label), "Kiribati)") ||
STRENDS(STR(?label), "Asteroid)") ||
STRENDS(STR(?label), "Richmond, Va.)") ||
STRENDS(STR(?label), "Prague, Czech Republic)") ||
STRENDS(STR(?label), "Ark. and Okla.)") ||
STRENDS(STR(?label), "Diesel locomotives)") ||
STRENDS(STR(?label), "Computer network)") ||
STRENDS(STR(?label), "Baseball)") ||
STRENDS(STR(?label), "Seaplane)") ||
STRENDS(STR(?label), "N.C. and S.C.)") ||
STRENDS(STR(?label), "The Portuguese word)") ||
STRENDS(STR(?label), "Glasgow, Scotland)") ||
STRENDS(STR(?label), "Cincinnati, Ohio)") ||
STRENDS(STR(?label), "Evanston, Ill.)") ||
STRENDS(STR(?label), "Palermo, Italy)") ||
STRENDS(STR(?label), "Christian theology)") ||
STRENDS(STR(?label), "Ethics)") ||
STRENDS(STR(?label), "Miracle)") ||
STRENDS(STR(?label), "Berber people)") ||
STRENDS(STR(?label), "Rhetoric)") ||
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
STRENDS(STR(?label), "Missile)") ||
STRENDS(STR(?label), "Stockholm, Sweden)") ||
STRENDS(STR(?label), "Guam)") ||
STRENDS(STR(?label), "Colo. and N.M.)") ||
STRENDS(STR(?label), "Charleston, S.C.)") ||
STRENDS(STR(?label), "Zurich, Switzerland)") ||
STRENDS(STR(?label), "Wyo. and Mont.)") ||
STRENDS(STR(?label), "Worcester, Mass.)") ||
STRENDS(STR(?label), "Pierce County, Wash.)") ||
STRENDS(STR(?label), "Sydney, N.S.W.)") ||
STRENDS(STR(?label), "Clothing)") ||
STRENDS(STR(?label), "Indianapolis, Ind.)") ||
STRENDS(STR(?label), "El Salvador)") ||
STRENDS(STR(?label), "Copenhagen, Denmark)") ||
STRENDS(STR(?label), "Miami, Fla.)") ||
STRENDS(STR(?label), "Chinese)") ||
STRENDS(STR(?label), "Frankish law)") ||
STRENDS(STR(?label), "Horns (2)") ||
STRENDS(STR(?label), "Violins (3)") ||
STRENDS(STR(?label), "Clarinets (2)") ||
STRENDS(STR(?label), "Satellite)") ||
STRENDS(STR(?label), "Havana, Cuba)") ||
STRENDS(STR(?label), "Finance)") ||
STRENDS(STR(?label), "Taiwan people)") ||
STRENDS(STR(?label), "Suriname)") ||
STRENDS(STR(?label), "Azerbaijan)") ||
STRENDS(STR(?label), "Surgery)") ||
STRENDS(STR(?label), "Lebanon)") ||
STRENDS(STR(?label), "Brazzaville)") ||
STRENDS(STR(?label), "Kraków, Poland)") ||
STRENDS(STR(?label), "Exposition universelle, 1900, Paris, France)") ||
STRENDS(STR(?label), "N.H. and Me.)") ||
STRENDS(STR(?label), "Helicopter)") ||
STRENDS(STR(?label), "Disease)") ||
STRENDS(STR(?label), "Legendary place)") ||
STRENDS(STR(?label), "Football)") ||
STRENDS(STR(?label), "Va. and N.C.)") ||
STRENDS(STR(?label), "Wales and England)") ||
STRENDS(STR(?label), "Celtic people)") ||
STRENDS(STR(?label), "Medicine)") ||
STRENDS(STR(?label), "Niger)") ||
STRENDS(STR(?label), "Electricity)") ||
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
STRENDS(STR(?label), "Egyptian law)") ||
STRENDS(STR(?label), "N.Y. and N.J.)") ||
STRENDS(STR(?label), "Motion pictures)") ||
STRENDS(STR(?label), "Austin, Tex.)") ||
STRENDS(STR(?label), "Burmese people)") ||
STRENDS(STR(?label), "Seville, Spain)") ||
STRENDS(STR(?label), "Telecommunication)") ||
STRENDS(STR(?label), "Latter Day Saint doctrine)") ||
STRENDS(STR(?label), "Psychoanalysis)") ||
STRENDS(STR(?label), "Phonetics)") ||
STRENDS(STR(?label), "Computers)") ||
STRENDS(STR(?label), "U.S.)") ||
STRENDS(STR(?label), "Mont. and Wyo.)") ||
STRENDS(STR(?label), "Philately)") ||
STRENDS(STR(?label), "Piano)") ||
STRENDS(STR(?label), "South Caucasian)") ||
STRENDS(STR(?label), "Tex. and Okla.)") ||
STRENDS(STR(?label), "Salt Lake City, Utah)") ||
STRENDS(STR(?label), "Interstate 5)") ||
STRENDS(STR(?label), "Group of writers)") ||
STRENDS(STR(?label), "United States Capitol, Washington, D.C.)") ||
STRENDS(STR(?label), "Scrolls)") ||
STRENDS(STR(?label), "Recorders (2)") ||
STRENDS(STR(?label), "Montenegro)") ||
STRENDS(STR(?label), "Aeronautics)") ||
STRENDS(STR(?label), "Libya)") ||
STRENDS(STR(?label), "Zoology)") ||
STRENDS(STR(?label), "Spain and Portugal)") ||
STRENDS(STR(?label), "Archaeology)") ||
STRENDS(STR(?label), "Locomotive)") ||
STRENDS(STR(?label), "Geometry)") ||
STRENDS(STR(?label), "Cairo, Egypt)") ||
STRENDS(STR(?label), "Libraries)") ||
STRENDS(STR(?label), "Dresden, Germany)") ||
STRENDS(STR(?label), "Uruguay)") ||
STRENDS(STR(?label), "Vancouver, B.C.)") ||
STRENDS(STR(?label), "Boise, Idaho)") ||
STRENDS(STR(?label), "Mali)") ||
STRENDS(STR(?label), "Lawrence, Mass.)") ||
STRENDS(STR(?label), "Blues)") ||
STRENDS(STR(?label), "4 hands)") ||
STRENDS(STR(?label), "Harpsichord, violins (2)") ||
STRENDS(STR(?label), "N.M. and Tex.)") ||
STRENDS(STR(?label), "Battleships)") ||
STRENDS(STR(?label), "Edmonton, Alta.)") ||
STRENDS(STR(?label), "Private plane)") ||
STRENDS(STR(?label), "Potsdam, Germany)") ||
STRENDS(STR(?label), "N.J. and N.Y.)") ||
STRENDS(STR(?label), "Yokohama-shi, Japan)") ||
STRENDS(STR(?label), "Theory of knowledge)") ||
STRENDS(STR(?label), "Railroads)") ||
STRENDS(STR(?label), "Iranian people)") ||
STRENDS(STR(?label), "Montevideo, Uruguay)") ||
STRENDS(STR(?label), "Kyïv, Ukraine)") ||
STRENDS(STR(?label), "Destroyers)") ||
STRENDS(STR(?label), "Pittsburgh, Pa.)") ||
STRENDS(STR(?label), "Cook Islands)") ||
STRENDS(STR(?label), "Kurdish tribe)") ||
STRENDS(STR(?label), "Smartphone)") ||
STRENDS(STR(?label), "Bosnia and Herzegovina)") ||
STRENDS(STR(?label), "Hinduism)") ||
STRENDS(STR(?label), "Jefferson County, Wash.)") ||
STRENDS(STR(?label), "Civil law)") ||
STRENDS(STR(?label), "Bogotá, Colombia)") ||
STRENDS(STR(?label), "Springfield, Ill.)") ||
STRENDS(STR(?label), "Portsmouth, England)") ||
STRENDS(STR(?label), "Caracas, Venezuela)") ||
STRENDS(STR(?label), "Yoruba deity)") ||
STRENDS(STR(?label), "Hague, Netherlands)") ||
STRENDS(STR(?label), "Diesel locomotive)") ||
STRENDS(STR(?label), "Grammar)") ||
STRENDS(STR(?label), "Pa. and Md.)") ||
STRENDS(STR(?label), "Mechanics)") ||
STRENDS(STR(?label), "Jet attack plane)") ||
STRENDS(STR(?label), "Guyana)") ||
STRENDS(STR(?label), "Bornean people)") ||
STRENDS(STR(?label), "Containers)") ||
STRENDS(STR(?label), "Malta)") ||
STRENDS(STR(?label), "Mich. and Ont.)") ||
STRENDS(STR(?label), "N.M. and Ariz.)") ||
STRENDS(STR(?label), "Kedah, Malaysia)") ||
STRENDS(STR(?label), "N.C. and Tenn.)") ||
STRENDS(STR(?label), "Airplane)") ||
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
STRENDS(STR(?label), "Musical medium of performance)") ||
STRENDS(STR(?label), "Ferrara, Italy)") ||
STRENDS(STR(?label), "Adat law)") ||
STRENDS(STR(?label), "Aircraft carriers)") ||
STRENDS(STR(?label), "Albany, N.Y.)") ||
STRENDS(STR(?label), "Noble County, Ind.)") ||
STRENDS(STR(?label), "Nashville, Tenn.)") ||
STRENDS(STR(?label), "Educational test)") ||
STRENDS(STR(?label), "Social sciences)") ||
STRENDS(STR(?label), "Computer software)") ||
STRENDS(STR(?label), "Minneapolis, Minn.)") ||
STRENDS(STR(?label), "Religion)") ||
STRENDS(STR(?label), "Va. and W. Va.)") ||
STRENDS(STR(?label), "United Arab Emirates)") ||
STRENDS(STR(?label), "India and Pakistan)") ||
STRENDS(STR(?label), "Drug)") ||
STRENDS(STR(?label), "Pahang, Malaysia)") ||
STRENDS(STR(?label), "Sociology)") ||
STRENDS(STR(?label), "Metal-work)") ||
STRENDS(STR(?label), "Astrophysics)") ||
STRENDS(STR(?label), "Alexandria, Va.)") ||
STRENDS(STR(?label), "Criminal procedure)") ||
STRENDS(STR(?label), "Chapel Hill, N.C.)") ||
STRENDS(STR(?label), "Airplanes)") ||
STRENDS(STR(?label), "Organ)") ||
STRENDS(STR(?label), "Cardiff, Wales)") ||
STRENDS(STR(?label), "Bird)") ||
STRENDS(STR(?label), "New Caledonia)") ||
STRENDS(STR(?label), "North Macedonia)") ||
STRENDS(STR(?label), "Washington County, Me.)") ||
STRENDS(STR(?label), "Symbolic character)") ||
STRENDS(STR(?label), "Topology)") ||
STRENDS(STR(?label), "Md. and Washington, D.C.)") ||
STRENDS(STR(?label), "Personality trait)") ||
STRENDS(STR(?label), "N.W.T. and Nunavut)") ||
STRENDS(STR(?label), "Hindu rite)") ||
STRENDS(STR(?label), "France and Italy)") ||
STRENDS(STR(?label), "Securities)") ||
STRENDS(STR(?label), "Tel Aviv, Israel)") ||
STRENDS(STR(?label), "Valencia, Spain)") ||
STRENDS(STR(?label), "Saint Paul, Minn.)") ||
STRENDS(STR(?label), "Metallurgy)") ||
STRENDS(STR(?label), "Canary Islands)") ||
STRENDS(STR(?label), "Criminal law)") ||
STRENDS(STR(?label), "Siena, Italy)") ||
STRENDS(STR(?label), "Bristol, England)") ||
STRENDS(STR(?label), "Vatican Palace, Vatican City)") ||
STRENDS(STR(?label), "Oxford, England)") ||
STRENDS(STR(?label), "Germany and Netherlands)") ||
STRENDS(STR(?label), "The Arabic word)") ||
STRENDS(STR(?label), "Online service)") ||
STRENDS(STR(?label), "Guadalajara, Mexico)") ||
STRENDS(STR(?label), "Manchester, England)") ||
STRENDS(STR(?label), "Ancient law)") ||
STRENDS(STR(?label), "Band)") ||
STRENDS(STR(?label), "String orchestra)") ||
STRENDS(STR(?label), "Poznań, Poland)") ||
STRENDS(STR(?label), "French Guiana)") ||
STRENDS(STR(?label), "Pisa, Italy)") ||
STRENDS(STR(?label), "Colo. and Utah)") ||
STRENDS(STR(?label), "Computer bus)") ||
STRENDS(STR(?label), "Sailboats)") ||
STRENDS(STR(?label), "Computer systems)") ||
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
STRENDS(STR(?label), "Ecology)") ||
STRENDS(STR(?label), "Alta. and Sask.)") ||
STRENDS(STR(?label), "Oahu, Hawaii)") ||
STRENDS(STR(?label), "International relations)") ||
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
STRENDS(STR(?label), "Cataloging)") ||
STRENDS(STR(?label), "Mantua, Italy)") ||
STRENDS(STR(?label), "Birmingham, England)") ||
STRENDS(STR(?label), "Oman)") ||
STRENDS(STR(?label), "The Swedish word)") ||
STRENDS(STR(?label), "York, England)") ||
STRENDS(STR(?label), "Buddhist rite)") ||
STRENDS(STR(?label), "Mining)") ||
STRENDS(STR(?label), "Monterrey, Mexico)") ||
STRENDS(STR(?label), "Rock)") ||
STRENDS(STR(?label), "Swedish)") ||
STRENDS(STR(?label), "Assyro-Babylonian law)") ||
STRENDS(STR(?label), "Malay)") ||
STRENDS(STR(?label), "The Chinese word)") ||
STRENDS(STR(?label), "New Guinean people)") ||
STRENDS(STR(?label), "Piano, 4 hands)") ||
STRENDS(STR(?label), "Violin and piano)") ||
STRENDS(STR(?label), "Cello and piano)") ||
STRENDS(STR(?label), "Guitars (2)") ||
STRENDS(STR(?label), "Roman deity)") ||
STRENDS(STR(?label), "Yamaguchi-shi, Japan)") ||
STRENDS(STR(?label), "Minn. and Ont.)") ||
STRENDS(STR(?label), "Selangor, Malaysia)") ||
STRENDS(STR(?label), "American Samoa)") ||
STRENDS(STR(?label), "Computer architecture)") ||
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
STRENDS(STR(?label), "Social psychology)") ||
STRENDS(STR(?label), "Musical groups)") ||
STRENDS(STR(?label), "Hindu festival)") ||
STRENDS(STR(?label), "Paraguay)") ||
STRENDS(STR(?label), "Economic theory)") ||
STRENDS(STR(?label), "Del. and Md.)") ||
STRENDS(STR(?label), "Geomorphology)") ||
STRENDS(STR(?label), "Southeast Asia)") ||
STRENDS(STR(?label), "Award)") ||
STRENDS(STR(?label), "Md. and Va.)") ||
STRENDS(STR(?label), "Maricopa County, Ariz.)") ||
STRENDS(STR(?label), "Côte d'Ivoire)") ||
STRENDS(STR(?label), "Burkina Faso)") ||
STRENDS(STR(?label), "Shizuoka-shi, Japan)") ||
STRENDS(STR(?label), "Utah and Wyo.)") ||
STRENDS(STR(?label), "Padua, Italy)") ||
STRENDS(STR(?label), "Christianity)") ||
STRENDS(STR(?label), "Dentistry)") ||
STRENDS(STR(?label), "Turboprop transport)") ||
STRENDS(STR(?label), "Artificial satellite)") ||
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
STRENDS(STR(?label), "Hydraulic engineering)") ||
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
STRENDS(STR(?label), "Tank destroyer)") ||
STRENDS(STR(?label), "Bucharest, Romania)") ||
STRENDS(STR(?label), "Medical care)") ||
STRENDS(STR(?label), "Mammals)") ||
STRENDS(STR(?label), "Wash. : Bay)") ||
STRENDS(STR(?label), "Ariz. and N.M.)") ||
STRENDS(STR(?label), "Reptiles)") ||
STRENDS(STR(?label), "Electronic computers)") ||
STRENDS(STR(?label), "Venus)") ||
STRENDS(STR(?label), "Papyri)") ||
STRENDS(STR(?label), "Utah and Idaho)") ||
STRENDS(STR(?label), "Steuben County, Ind.)") ||
STRENDS(STR(?label), "Pathology)") ||
STRENDS(STR(?label), "Photography)") ||
STRENDS(STR(?label), "N.C. and Va.)") ||
STRENDS(STR(?label), "North Yorkshire, England)") ||
STRENDS(STR(?label), "Canada)") ||
STRENDS(STR(?label), "Perugia, Italy)") ||
STRENDS(STR(?label), "Ceramics)") ||
STRENDS(STR(?label), "Guatemala and Mexico)") ||
STRENDS(STR(?label), "Congo (Brazzaville)") ||
STRENDS(STR(?label), "Moon)") ||
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
STRENDS(STR(?label), "Pharmacy)") ||
STRENDS(STR(?label), "Ecuador and Peru)") ||
STRENDS(STR(?label), "Columbus, Ohio)") ||
STRENDS(STR(?label), "Cabo Verde)") ||
STRENDS(STR(?label), "Decorative arts)") ||
STRENDS(STR(?label), "Snohomish County, Wash.)") ||
STRENDS(STR(?label), "Me. and N.B.)") ||
STRENDS(STR(?label), "Neb. and Kan.)") ||
STRENDS(STR(?label), "Harpsichord)") ||
STRENDS(STR(?label), "Lyon, France)") ||
STRENDS(STR(?label), "Tex. and N.M.)") ||
STRENDS(STR(?label), "Guitar)") ||
STRENDS(STR(?label), "Mumbai, India)") ||
STRENDS(STR(?label), "Russia and Ukraine)") ||
STRENDS(STR(?label), "Solomon Islands people)") ||
STRENDS(STR(?label), "Georgia and Russia)") ||
STRENDS(STR(?label), "Newport, R.I.)") ||
STRENDS(STR(?label), "Oakland, Calif.)") ||
STRENDS(STR(?label), "Rotterdam, Netherlands)") ||
STRENDS(STR(?label), "Puebla de Zaragoza, Mexico)") ||
STRENDS(STR(?label), "Idaho County, Idaho)") ||
STRENDS(STR(?label), "France and Belgium)") ||
STRENDS(STR(?label), "The Polish word)") ||
STRENDS(STR(?label), "Curaçao)") ||
STRENDS(STR(?label), "Elephant)") ||
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
STRENDS(STR(?label), "Jet transports)") ||
STRENDS(STR(?label), "Armenia)") ||
STRENDS(STR(?label), "Graph theory)") ||
STRENDS(STR(?label), "Slovakia and Hungary)") ||
STRENDS(STR(?label), "Ind. and Ill.)") ||
STRENDS(STR(?label), "Angola)") ||
STRENDS(STR(?label), "Ariz. and Nev.)") ||
STRENDS(STR(?label), "Alaska : Bay)") ||
STRENDS(STR(?label), "England and Scotland)") ||
STRENDS(STR(?label), "Dive bomber)") ||
STRENDS(STR(?label), "Constellation)") ||
STRENDS(STR(?label), "Movement)") ||
STRENDS(STR(?label), "Ark. and La.)") ||
STRENDS(STR(?label), "Guadeloupe)") ||
STRENDS(STR(?label), "Braunschweig, Germany)") ||
STRENDS(STR(?label), "Salt Lake County, Utah)") ||
STRENDS(STR(?label), "Brescia, Italy)") ||
STRENDS(STR(?label), "Sports)") ||
STRENDS(STR(?label), "Calif. and Or.)") ||
STRENDS(STR(?label), "Va. and Tenn.)") ||
STRENDS(STR(?label), "Düsseldorf, Germany)") ||
STRENDS(STR(?label), "Drone aircraft)") ||
STRENDS(STR(?label), "Machines)") ||
STRENDS(STR(?label), "Detroit, Mich.)") ||
STRENDS(STR(?label), "Fungi)") ||
STRENDS(STR(?label), "Vilas County, Wis.)") ||
STRENDS(STR(?label), "Hancock County, Me.)") ||
STRENDS(STR(?label), "Neb. and S.D.)") ||
STRENDS(STR(?label), "Granada, Spain)") ||
STRENDS(STR(?label), "Bermuda Islands)") ||
STRENDS(STR(?label), "Information theory)") ||
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
STRENDS(STR(?label), "Printer)") ||
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
STRENDS(STR(?label), "Astronautics)") ||
STRENDS(STR(?label), "Congo and Angola)") ||
STRENDS(STR(?label), "Guilford, Conn.)") ||
STRENDS(STR(?label), "Ragtime)") ||
STRENDS(STR(?label), "Medal)") ||
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
STRENDS(STR(?label), "Videotex system)") ||
STRENDS(STR(?label), "Cambodia)") ||
STRENDS(STR(?label), "Zambezi)") ||
STRENDS(STR(?label), "Bookbinding)") ||
STRENDS(STR(?label), "The Hebrew particle)") ||
STRENDS(STR(?label), "Salem, Mass.)") ||
STRENDS(STR(?label), "Clarinet and piano)") ||
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
STRENDS(STR(?label), "Cruisers)") ||
STRENDS(STR(?label), "Machinery)") ||
STRENDS(STR(?label), "Frigates)") ||
STRENDS(STR(?label), "Memphis, Tenn.)") ||
STRENDS(STR(?label), "N.Y. and Pa.)") ||
STRENDS(STR(?label), "Cameroon and Nigeria)") ||
STRENDS(STR(?label), "Insurance)") ||
STRENDS(STR(?label), "Military transport helicopter)") ||
STRENDS(STR(?label), "Ordnance)") ||
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
STRENDS(STR(?label), "Management)") ||
STRENDS(STR(?label), "North Slope Borough, Alaska)") ||
STRENDS(STR(?label), "Galapagos Islands)") ||
STRENDS(STR(?label), "Pulau Pinang, Malaysia)") ||
STRENDS(STR(?label), "Crystallography)") ||
STRENDS(STR(?label), "Tenn. and Ala.)") ||
STRENDS(STR(?label), "Versailles, France)") ||
STRENDS(STR(?label), "China and Nepal)") ||
STRENDS(STR(?label), "Television programs)") ||
STRENDS(STR(?label), "Porto, Portugal)") ||
STRENDS(STR(?label), "Togo)") ||
STRENDS(STR(?label), "Jet bomber)") ||
STRENDS(STR(?label), "Basketball)") ||
STRENDS(STR(?label), "Alta. and B.C.)") ||
STRENDS(STR(?label), "N.H. and Mass.)") ||
STRENDS(STR(?label), "Poland and Ukraine)") ||
STRENDS(STR(?label), "Optics)") ||
STRENDS(STR(?label), "Ariz. and Mexico)") ||
STRENDS(STR(?label), "Micronesian people)") ||
STRENDS(STR(?label), "Retail trade)") ||
STRENDS(STR(?label), "Basel, Switzerland)") ||
STRENDS(STR(?label), "Electrophysiology)") ||
STRENDS(STR(?label), "Lute)") ||
STRENDS(STR(?label), "Dravidian)") ||
STRENDS(STR(?label), "Mythology)") ||
STRENDS(STR(?label), "Bratislava, Slovakia)") ||
STRENDS(STR(?label), "Naval architecture)") ||
STRENDS(STR(?label), "Taipei, Taiwan)") ||
STRENDS(STR(?label), "Wellington, N.Z.)") ||
STRENDS(STR(?label), "Electrical engineering)") ||
STRENDS(STR(?label), "Wyo. and Colo.)") ||
STRENDS(STR(?label), "Nunavut and N.W.T.)") ||
STRENDS(STR(?label), "Computer security)") ||
STRENDS(STR(?label), "Missoula County, Mont.)") ||
STRENDS(STR(?label), "Accordion)") ||
STRENDS(STR(?label), "Biogeochemistry)") ||
STRENDS(STR(?label), "Utrecht, Netherlands)") ||
STRENDS(STR(?label), "Mont. and Alta.)") ||
STRENDS(STR(?label), "B.C. and Mont.)") ||
STRENDS(STR(?label), "Winnipeg, Man.)") ||
STRENDS(STR(?label), "Miss. and Tenn.)") ||
STRENDS(STR(?label), "Bremen, Germany)") ||
STRENDS(STR(?label), "Christchurch, N.Z.)") ||
STRENDS(STR(?label), "Pasadena, Calif.)") ||
STRENDS(STR(?label), "Petroleum engineering)") ||
STRENDS(STR(?label), "Josephine County, Or.)") ||
STRENDS(STR(?label), "Halifax, N.S.)") ||
STRENDS(STR(?label), "Slavic people)") ||
STRENDS(STR(?label), "Grafton County, N.H.)") ||
STRENDS(STR(?label), "Liberia)") ||
STRENDS(STR(?label), "Bluegrass)") ||
STRENDS(STR(?label), "Group theory)") ||
STRENDS(STR(?label), "Reno, Nev.)") ||
STRENDS(STR(?label), "Omaha, Neb.)") ||
STRENDS(STR(?label), "Itasca County, Minn.)") ||
STRENDS(STR(?label), "Middle school)") ||
STRENDS(STR(?label), "Secondary)") ||
STRENDS(STR(?label), "Carbon County, Wyo.)") ||
STRENDS(STR(?label), "Gunnison County, Colo.)") ||
STRENDS(STR(?label), "Liverpool, England)") ||
STRENDS(STR(?label), "Men's voices)") ||
STRENDS(STR(?label), "Women's voices)") ||
STRENDS(STR(?label), "Unison)") ||
STRENDS(STR(?label), "Bordeaux, Nouvelle-Aquitaine, France)") ||
STRENDS(STR(?label), "Eugene, Or.)") ||
STRENDS(STR(?label), "Pará, Brazil)") ||
STRENDS(STR(?label), "Rīga, Latvia)") ||
STRENDS(STR(?label), "Kolkata, India)") ||
STRENDS(STR(?label), "Jackson, Miss.)") ||
STRENDS(STR(?label), "Galveston, Tex.)") ||
STRENDS(STR(?label), "Celtic deity)") ||
STRENDS(STR(?label), "Hamamatsu-shi, Japan)") ||
STRENDS(STR(?label), "Newcastle upon Tyne, England)") ||
STRENDS(STR(?label), "Library information network)") ||
STRENDS(STR(?label), "Karlsruhe, Germany)") ||
STRENDS(STR(?label), "Poland and Slovakia)") ||
STRENDS(STR(?label), "Bhutan)") ||
STRENDS(STR(?label), "Shoshone County, Idaho)") ||
STRENDS(STR(?label), "Columbia, S.C.)") ||
STRENDS(STR(?label), "San Bernardino County, Calif.)") ||
STRENDS(STR(?label), "Tamil)") ||
STRENDS(STR(?label), "Berber tribe)") ||
STRENDS(STR(?label), "San Luis Potosí, Mexico)") ||
STRENDS(STR(?label), "Chamber orchestra)") ||
STRENDS(STR(?label), "Flute and piano)") ||
STRENDS(STR(?label), "Instrumental ensemble)") ||
STRENDS(STR(?label), "Violas (2)") ||
STRENDS(STR(?label), "Violins (4)") ||
STRENDS(STR(?label), "Yao-shi, Japan)") ||
STRENDS(STR(?label), "Saxon law)") ||
STRENDS(STR(?label), "Oboes (2)") ||
STRENDS(STR(?label), "Oyama-shi, Japan)") ||
STRENDS(STR(?label), "Screen painting)") ||
STRENDS(STR(?label), "Violin with orchestra)") ||
STRENDS(STR(?label), "Pa. and Del.)") ||
STRENDS(STR(?label), "Alta. : Lake)") ||
STRENDS(STR(?label), "Wash. and Or.)") ||
STRENDS(STR(?label), "Theater)") ||
STRENDS(STR(?label), "Statue)") ||
STRENDS(STR(?label), "Richmond upon Thames, London, England)") ||
STRENDS(STR(?label), "Cheyenne, Wyo.)") ||
STRENDS(STR(?label), "Attack helicopter)") ||
STRENDS(STR(?label), "Utah and Colo.)") ||
STRENDS(STR(?label), "Political science)") ||
STRENDS(STR(?label), "Jefferson County, Colo.)") ||
STRENDS(STR(?label), "Oboe)") ||
STRENDS(STR(?label), "Martinique)") ||
STRENDS(STR(?label), "Attack plane)") ||
STRENDS(STR(?label), "Computer network protocols)") ||
STRENDS(STR(?label), "Whitley County, Ind.)") ||
STRENDS(STR(?label), "Planet)") ||
STRENDS(STR(?label), "Ala. and Miss.)") ||
STRENDS(STR(?label), "Salvador, Brazil)") ||
STRENDS(STR(?label), "Amphibian plane)") ||
STRENDS(STR(?label), "Tableware)") ||
STRENDS(STR(?label), "Nev. and Calif.)") ||
STRENDS(STR(?label), "Java, Indonesia)") ||
STRENDS(STR(?label), "Vicenza, Italy)") ||
STRENDS(STR(?label), "Torpedo bomber)") ||
STRENDS(STR(?label), "Bible)") ||
STRENDS(STR(?label), "Kurdish people)") ||
STRENDS(STR(?label), "Nev. and Utah)") ||
STRENDS(STR(?label), "Jackson County, Or.)") ||
STRENDS(STR(?label), "Central Sudanic)") ||
STRENDS(STR(?label), "Victoria, B.C.)") ||
STRENDS(STR(?label), "Rwanda)") ||
STRENDS(STR(?label), "Switzerland and Italy)") ||
STRENDS(STR(?label), "Probability theory)") ||
STRENDS(STR(?label), "Technology)") ||
STRENDS(STR(?label), "Faroe Islands)") ||
STRENDS(STR(?label), "Lane County, Or.)") ||
STRENDS(STR(?label), "British Virgin Islands)") ||
STRENDS(STR(?label), "Western Cape, South Africa)") ||
STRENDS(STR(?label), "Wash. : Lake)") ||
STRENDS(STR(?label), "Okla. and Tex.)") ||
STRENDS(STR(?label), "Réunion)") ||
STRENDS(STR(?label), "Jainism)") ||
STRENDS(STR(?label), "Jacksonville, Fla.)") ||
STRENDS(STR(?label), "Local area network system)") ||
STRENDS(STR(?label), "La. and Tex.)") ||
STRENDS(STR(?label), "Brunei)") ||
STRENDS(STR(?label), "Ljubljana, Slovenia)") ||
STRENDS(STR(?label), "Assyro-Babylonian deity)") ||
STRENDS(STR(?label), "Furniture)") ||
STRENDS(STR(?label), "Marketing)") ||
STRENDS(STR(?label), "Vt. and N.Y.)") ||
STRENDS(STR(?label), "Santiago, Chile)") ||
STRENDS(STR(?label), "Angola and Congo)") ||
STRENDS(STR(?label), "Shinto deity)") ||
STRENDS(STR(?label), "Essen, Germany)") ||
STRENDS(STR(?label), "Yukon and Alaska)") ||
STRENDS(STR(?label), "Ga. and Ala.)") ||
STRENDS(STR(?label), "Saxophones (4)") ||
STRENDS(STR(?label), "Primary)") ||
STRENDS(STR(?label), "Ships)") ||
STRENDS(STR(?label), "Fluid dynamics)") ||
STRENDS(STR(?label), "Colombia and Venezuela)") ||
STRENDS(STR(?label), "Wiccan sect)") ||
STRENDS(STR(?label), "Jaipur, India)") ||
STRENDS(STR(?label), "Samoa)") ||
STRENDS(STR(?label), "Idaho and Utah)") ||
STRENDS(STR(?label), "Benin)") ||
STRENDS(STR(?label), "A.C.T.)") ||
STRENDS(STR(?label), "Numismatics)") ||
STRENDS(STR(?label), "Viola)") ||
STRENDS(STR(?label), "Coventry, England)") ||
STRENDS(STR(?label), "Athletics)") ||
STRENDS(STR(?label), "Roman mythology)") ||
STRENDS(STR(?label), "Harp)") ||
STRENDS(STR(?label), "Augusta, Me.)") ||
STRENDS(STR(?label), "El Dorado County, Calif.)") ||
STRENDS(STR(?label), "Fishing)") ||
STRENDS(STR(?label), "Tacoma, Wash.)") ||
STRENDS(STR(?label), "Mainz, Rhineland-Palatinate, Germany)") ||
STRENDS(STR(?label), "Lancaster County, Pa.)") ||
STRENDS(STR(?label), "Grant County, Wash.)") ||
STRENDS(STR(?label), "Blaine County, Idaho)") ||
STRENDS(STR(?label), "Samaritan)") ||
STRENDS(STR(?label), "Knoxville, Tenn.)") ||
STRENDS(STR(?label), "Dutch)") ||
STRENDS(STR(?label), "Lancaster, Pa.)") ||
STRENDS(STR(?label), "High voice)") ||
STRENDS(STR(?label), "Equal voices)") ||
STRENDS(STR(?label), "Oceanography)") ||
STRENDS(STR(?label), "San Jose, Calif.)") ||
STRENDS(STR(?label), "Ill. and Ind.)") ||
STRENDS(STR(?label), "Gainesville, Fla.)") ||
STRENDS(STR(?label), "Sewing)") ||
STRENDS(STR(?label), "Dallas, Tex.)") ||
STRENDS(STR(?label), "Orange County, Calif.)") ||
STRENDS(STR(?label), "Rochester, N.Y.)") ||
STRENDS(STR(?label), "Oneida County, Wis.)") ||
STRENDS(STR(?label), "English Creole)") ||
STRENDS(STR(?label), "Minas Gerais, Brazil)") ||
STRENDS(STR(?label), "Poland and Czech Republic)") ||
STRENDS(STR(?label), "Bon deity)") ||
STRENDS(STR(?label), "Sound recordings)") ||
STRENDS(STR(?label), "Hachinohe-shi, Japan)") ||
STRENDS(STR(?label), "Hindu deities)") ||
STRENDS(STR(?label), "Textile machinery)") ||
STRENDS(STR(?label), "France : Region)") ||
STRENDS(STR(?label), "Bassoon and piano)") ||
STRENDS(STR(?label), "Piano with orchestra)") ||
STRENDS(STR(?label), "String quartet)") ||
STRENDS(STR(?label), "Violin and harpsichord)") ||
STRENDS(STR(?label), "Tenri-shi, Japan)") ||
STRENDS(STR(?label), "Hirosaki-shi, Japan)") ||
STRENDS(STR(?label), "Viola and piano)") ||
STRENDS(STR(?label), "Trumpet and organ)") ||
STRENDS(STR(?label), "Flutes (3)") ||
STRENDS(STR(?label), "Harpsichord, flutes (2)") ||
STRENDS(STR(?label), "Trumpet and piano)") ||
STRENDS(STR(?label), "Customary law)") ||
STRENDS(STR(?label), "Visigothic law)") ||
STRENDS(STR(?label), "Sask. and Mont.)") ||
STRENDS(STR(?label), "Ōtsu-shi, Japan)") ||
STRENDS(STR(?label), "Rokkasho-mura, Japan)") ||
STRENDS(STR(?label), "Guitar and piano)") ||
STRENDS(STR(?label), "Transport planes)") ||
STRENDS(STR(?label), "Aztec deity)") ||
STRENDS(STR(?label), "Fishes)") ||
STRENDS(STR(?label), "Statistical physics)") ||
STRENDS(STR(?label), "Yukon-Koyukuk Census Area, Alaska)") ||
STRENDS(STR(?label), "Harrisburg, Pa.)") ||
STRENDS(STR(?label), "Mich. and Wis.)") ||
STRENDS(STR(?label), "Greek philosophy)") ||
STRENDS(STR(?label), "Submarines)") ||
STRENDS(STR(?label), "Computer hardware description language)") ||
STRENDS(STR(?label), "Legendary characters)") ||
STRENDS(STR(?label), "Military helicopter)") ||
STRENDS(STR(?label), "Atlantic City, N.J.)") ||
STRENDS(STR(?label), "Sri Lankan people)") ||
STRENDS(STR(?label), "Biblical criticism)") ||
STRENDS(STR(?label), "Wis. and Mich.)") ||
STRENDS(STR(?label), "Mont. and Idaho)") ||
STRENDS(STR(?label), "Pakistan and China)") ||
STRENDS(STR(?label), "Croatia and Slovenia)") ||
STRENDS(STR(?label), "Performing arts)") ||
STRENDS(STR(?label), "Delphi)") ||
STRENDS(STR(?label), "N.D. and S.D.)") ||
STRENDS(STR(?label), "Arlington, Va.)") ||
STRENDS(STR(?label), "Algebraic geometry)") ||
STRENDS(STR(?label), "Madison, Wis.)") ||
STRENDS(STR(?label), "Quantum mechanics)") ||
STRENDS(STR(?label), "Publications)") ||
STRENDS(STR(?label), "Bonn, Germany)") ||
STRENDS(STR(?label), "N.Y. : Lake)") ||
STRENDS(STR(?label), "Turkey : Extinct city)") ||
STRENDS(STR(?label), "Valladolid, Spain)") ||
STRENDS(STR(?label), "Montgomery County, Md.)") ||
STRENDS(STR(?label), "Spice)") ||
STRENDS(STR(?label), "Czech Republic and Poland)") ||
STRENDS(STR(?label), "Clark County, Wash.)") ||
STRENDS(STR(?label), "Switzerland and France)") ||
STRENDS(STR(?label), "Matanuska-Susitna Borough, Alaska)") ||
STRENDS(STR(?label), "Utensils)") ||
STRENDS(STR(?label), "Zaragoza, Spain)") ||
STRENDS(STR(?label), "Waltham, Mass.)") ||
STRENDS(STR(?label), "Sintra, Portugal)") ||
STRENDS(STR(?label), "Cameroonian people)") ||
STRENDS(STR(?label), "Ukraine and Belarus)") ||
STRENDS(STR(?label), "Dover, Del.)") ||
STRENDS(STR(?label), "Sikhism)") ||
STRENDS(STR(?label), "Chimpanzee)") ||
STRENDS(STR(?label), "Advertising character)") ||
STRENDS(STR(?label), "Research plane)") ||
STRENDS(STR(?label), "Obstetrics)") ||
STRENDS(STR(?label), "Vatican City)") ||
STRENDS(STR(?label), "Painting)") ||
STRENDS(STR(?label), "Traffic engineering)") ||
STRENDS(STR(?label), "Natrona County, Wyo.)") ||
STRENDS(STR(?label), "Belo Horizonte, Brazil)") ||
STRENDS(STR(?label), "Aguascalientes, Mexico)") ||
STRENDS(STR(?label), "Czech Republic and Germany)") ||
STRENDS(STR(?label), "United States)") ||
STRENDS(STR(?label), "Bilbao, Spain)") ||
STRENDS(STR(?label), "Nigerian people)") ||
STRENDS(STR(?label), "Perak, Malaysia)") ||
STRENDS(STR(?label), "Information retrieval)") ||
STRENDS(STR(?label), "Afghanistan people)") ||
STRENDS(STR(?label), "Wis. : Lake)") ||
STRENDS(STR(?label), "Corinth, Greece)") ||
STRENDS(STR(?label), "Mascot)") ||
STRENDS(STR(?label), "France and Switzerland)") ||
STRENDS(STR(?label), "Minn. and Iowa)") ||
STRENDS(STR(?label), "Tibetan people)") ||
STRENDS(STR(?label), "Computing platform)") ||
STRENDS(STR(?label), "Durham, N.C.)") ||
STRENDS(STR(?label), "Ohio and Pa.)") ||
STRENDS(STR(?label), "Singers)") ||
STRENDS(STR(?label), "Summit County, Colo.)") ||
STRENDS(STR(?label), "Santa Barbara, Calif.)") ||
STRENDS(STR(?label), "Group of composers)") ||
STRENDS(STR(?label), "Agra, India)") ||
STRENDS(STR(?label), "Córdoba, Argentina)") ||
STRENDS(STR(?label), "Word processor)") ||
STRENDS(STR(?label), "Reading, England)") ||
STRENDS(STR(?label), "Founding)") ||
STRENDS(STR(?label), "Kan. and Neb.)") ||
STRENDS(STR(?label), "Fujian Sheng, China)") ||
STRENDS(STR(?label), "Thebes, Egypt)") ||
STRENDS(STR(?label), "Sweetwater County, Wyo.)") ||
STRENDS(STR(?label), "Auckland, N.Z.)") ||
STRENDS(STR(?label), "Gwynedd, Wales)") ||
STRENDS(STR(?label), "Lake and Peninsula Borough, Alaska)") ||
STRENDS(STR(?label), "Materials)") ||
STRENDS(STR(?label), "Nynorsk)") ||
STRENDS(STR(?label), "Chinese philosophy)") ||
STRENDS(STR(?label), "Douglas County, Or.)") ||
STRENDS(STR(?label), "Jewelry)") ||
STRENDS(STR(?label), "Tallinn, Estonia)") ||
STRENDS(STR(?label), "Modena, Italy)") ||
STRENDS(STR(?label), "Moldova)") ||
STRENDS(STR(?label), "Steuben County, Ind. : Lake)") ||
STRENDS(STR(?label), "Spokane, Wash.)") ||
STRENDS(STR(?label), "Feudal law)") ||
STRENDS(STR(?label), "Osnabrück, Germany)") ||
STRENDS(STR(?label), "Eritrea)") ||
STRENDS(STR(?label), "Santo Domingo, Dominican Republic)") ||
STRENDS(STR(?label), "Tex. and La.)") ||
STRENDS(STR(?label), "Brooklyn, New York, N.Y.)") ||
STRENDS(STR(?label), "Latter Day Saint churches)") ||
STRENDS(STR(?label), "Okanogan County, Wash.)") ||
STRENDS(STR(?label), "Leicester, England)") ||
STRENDS(STR(?label), "Building)") ||
STRENDS(STR(?label), "South Georgia and South Sandwich Islands)") ||
STRENDS(STR(?label), "Chittorgarh Fort, Chittaurgarh, India)") ||
STRENDS(STR(?label), "Rio Grande do Sul, Brazil)") ||
STRENDS(STR(?label), "Syracuse, Italy)") ||
STRENDS(STR(?label), "Fishing boats)") ||
STRENDS(STR(?label), "Nantucket, Mass.)") ||
STRENDS(STR(?label), "Jiangsu Sheng, China)") ||
STRENDS(STR(?label), "Somalia)") ||
STRENDS(STR(?label), "Udine, Italy)") ||
STRENDS(STR(?label), "West Yorkshire, England)") ||
STRENDS(STR(?label), "Charlottesville, Va.)") ||
STRENDS(STR(?label), "Orthopedics)") ||
STRENDS(STR(?label), "Golf)") ||
STRENDS(STR(?label), "Bangor, Me.)") ||
STRENDS(STR(?label), "Tiger)") ||
STRENDS(STR(?label), "Shinto)") ||
STRENDS(STR(?label), "The Finnish word)") ||
STRENDS(STR(?label), "Hadrian's Villa, Tivoli, Italy)") ||
STRENDS(STR(?label), "Hull, England)") ||
STRENDS(STR(?label), "Jewish rite)") ||
STRENDS(STR(?label), "France and Spain)") ||
STRENDS(STR(?label), "Butte, Mont.)") ||
STRENDS(STR(?label), "Bellevue, Wash.)") ||
STRENDS(STR(?label), "Preschool)") ||
STRENDS(STR(?label), "Minn. and S.D.)") ||
STRENDS(STR(?label), "Musical instruments)") ||
STRENDS(STR(?label), "Kazakhstan and Russia)") ||
STRENDS(STR(?label), "Coral Sea Islands)") ||
STRENDS(STR(?label), "Quito, Ecuador)") ||
STRENDS(STR(?label), "Changing voices)") ||
STRENDS(STR(?label), "Children's voices)") ||
STRENDS(STR(?label), "Medium voice)") ||
STRENDS(STR(?label), "Low voice)") ||
STRENDS(STR(?label), "The Catalan word)") ||
STRENDS(STR(?label), "Canterbury, England)") ||
STRENDS(STR(?label), "Québec and Ont.)") ||
STRENDS(STR(?label), "Plymouth, England)") ||
STRENDS(STR(?label), "Afro-Brazilian deity)") ||
STRENDS(STR(?label), "Pistoia, Italy)") ||
STRENDS(STR(?label), "Serbia : Region)") ||
STRENDS(STR(?label), "Marin County, Calif.)") ||
STRENDS(STR(?label), "Swansea, Wales)") ||
STRENDS(STR(?label), "Drum)") ||
STRENDS(STR(?label), "The word)") ||
STRENDS(STR(?label), "Norwich, England)") ||
STRENDS(STR(?label), "Fictitious character : Arena)") ||
STRENDS(STR(?label), "Wilmington, Del.)") ||
STRENDS(STR(?label), "Country)") ||
STRENDS(STR(?label), "Boulder County, Colo.)") ||
STRENDS(STR(?label), "Eastern Cape, South Africa)") ||
STRENDS(STR(?label), "Lexington, Ky.)") ||
STRENDS(STR(?label), "Dijon, France)") ||
STRENDS(STR(?label), "Romania and Hungary)") ||
STRENDS(STR(?label), "Agra Fort, Agra, India)") ||
STRENDS(STR(?label), "Soccer)") ||
STRENDS(STR(?label), "Middlebury, Vt.)") ||
STRENDS(STR(?label), "Chinese deity)") ||
STRENDS(STR(?label), "Salzburg, Austria)") ||
STRENDS(STR(?label), "The Middle High German word)") ||
STRENDS(STR(?label), "Querétaro, Mexico)") ||
STRENDS(STR(?label), "Lal Qila, Delhi, India)") ||
STRENDS(STR(?label), "Administrative law)") ||
STRENDS(STR(?label), "Panel painting)") ||
STRENDS(STR(?label), "Horn, trombone, trumpets (2)") ||
STRENDS(STR(?label), "Harpsichords (2)") ||
STRENDS(STR(?label), "Trombones (2)") ||
STRENDS(STR(?label), "Yoshii-machi, Gunma-ken, Japan)") ||
STRENDS(STR(?label), "Violin and continuo)") ||
STRENDS(STR(?label), "Violin with string orchestra)") ||
STRENDS(STR(?label), "Piano trio)") ||
STRENDS(STR(?label), "Violin and viola)") ||
STRENDS(STR(?label), "Higashihiroshima-shi, Japan)") ||
STRENDS(STR(?label), "Kitakyūshū-shi, Japan)") ||
STRENDS(STR(?label), "Shari-chō, Japan)") ||
STRENDS(STR(?label), "Kyrgyzstan and Kazakhstan)") ||
STRENDS(STR(?label), "Piano, horns (2)") ||
STRENDS(STR(?label), "Vt. and Québec)") ||
STRENDS(STR(?label), "Peru and Brazil)") ||
STRENDS(STR(?label), "Piano, flutes (2)") ||
STRENDS(STR(?label), "Turkey and Syria)") ||
STRENDS(STR(?label), "Fargo, N.D.)") ||
STRENDS(STR(?label), "Coconino County, Ariz.)") ||
STRENDS(STR(?label), "Data transmission)") ||
STRENDS(STR(?label), "Youngstown, Ohio)") ||
STRENDS(STR(?label), "Alaska and Yukon)") ||
STRENDS(STR(?label), "Stevens County, Wash.)") ||
STRENDS(STR(?label), "Textiles)") ||
STRENDS(STR(?label), "Ephesus)") ||
STRENDS(STR(?label), "Color)") ||
STRENDS(STR(?label), "Armored car)") ||
STRENDS(STR(?label), "Morpeth, England)") ||
STRENDS(STR(?label), "Livorno, Italy)") ||
STRENDS(STR(?label), "Wrocław, Poland)") ||
STRENDS(STR(?label), "Gorilla)") ||
STRENDS(STR(?label), "Guangzhou Shi, China)") ||
STRENDS(STR(?label), "Trenton, N.J.)") ||
STRENDS(STR(?label), "Space flight)") ||
STRENDS(STR(?label), "Occultism)") ||
STRENDS(STR(?label), "Bath, England)") ||
STRENDS(STR(?label), "Drilling rig)") ||
STRENDS(STR(?label), "Baltic people)") ||
STRENDS(STR(?label), "Whale)") ||
STRENDS(STR(?label), "Baden-Württemberg, Germany)") ||
STRENDS(STR(?label), "Germany : Mountain)") ||
STRENDS(STR(?label), "Semitic deity)") ||
STRENDS(STR(?label), "Execution)") ||
STRENDS(STR(?label), "Gila County, Ariz.)") ||
STRENDS(STR(?label), "Mongolia and Russia)") ||
STRENDS(STR(?label), "Yuma, Ariz.)") ||
STRENDS(STR(?label), "Bari, Italy)") ||
STRENDS(STR(?label), "Space environment)") ||
STRENDS(STR(?label), "Lucerne, Switzerland)") ||
STRENDS(STR(?label), "Eye)") ||
STRENDS(STR(?label), "Cumberland County, Me.)") ||
STRENDS(STR(?label), "Month)") ||
STRENDS(STR(?label), "Greek deity)") ||
STRENDS(STR(?label), "Heard and McDonald Islands)") ||
STRENDS(STR(?label), "Saint Vincent and the Grenadines)") ||
STRENDS(STR(?label), "Millard County, Utah)") ||
STRENDS(STR(?label), "Pretoria, South Africa)") ||
STRENDS(STR(?label), "Thai people)") ||
STRENDS(STR(?label), "Language learning)") ||
STRENDS(STR(?label), "Panda)") ||
STRENDS(STR(?label), "Poetry)") ||
STRENDS(STR(?label), "Warships)") ||
STRENDS(STR(?label), "Salamanca, Spain)") ||
STRENDS(STR(?label), "Part songs)") ||
STRENDS(STR(?label), "Rome)") ||
STRENDS(STR(?label), "Fighter planes)") ||
STRENDS(STR(?label), "El Paso County, Colo.)") ||
STRENDS(STR(?label), "Mural painting)") ||
STRENDS(STR(?label), "Boats)") ||
STRENDS(STR(?label), "Oklahoma City, Okla.)") ||
STRENDS(STR(?label), "Camden, N.J.)") ||
STRENDS(STR(?label), "Howitzer)") ||
STRENDS(STR(?label), "Commerce)") ||
STRENDS(STR(?label), "Parapsychology)") ||
STRENDS(STR(?label), "Erfurt, Germany)") ||
STRENDS(STR(?label), "Bavaria, Germany)") ||
STRENDS(STR(?label), "Web site development tool)") ||
STRENDS(STR(?label), "London, England : Imaginary place)") ||
STRENDS(STR(?label), "Region)") ||
STRENDS(STR(?label), "Alta. and N.W.T.)") ||
STRENDS(STR(?label), "African deity)") ||
STRENDS(STR(?label), "Egypt : Extinct city)") ||
STRENDS(STR(?label), "Worcester County, Mass.)") ||
STRENDS(STR(?label), "Ont. and Québec)") ||
STRENDS(STR(?label), "Germany : Region)") ||
STRENDS(STR(?label), "Minn. and Wis.)") ||
STRENDS(STR(?label), "LaGrange County, Ind.)") ||
STRENDS(STR(?label), "Geophysics)") ||
STRENDS(STR(?label), "Turks and Caicos Islands)") ||
STRENDS(STR(?label), "Helena, Mont.)") ||
STRENDS(STR(?label), "Motion pictures, television, etc.)") ||
STRENDS(STR(?label), "Albania : Region)") ||
STRENDS(STR(?label), "La Coruña, Spain)") ||
STRENDS(STR(?label), "Computer network standard)") ||
STRENDS(STR(?label), "Cocktails)") ||
STRENDS(STR(?label), "Perth, W.A.)") ||
STRENDS(STR(?label), "Trinidad and Tobago)") ||
STRENDS(STR(?label), "Conn. and Mass.)") ||
STRENDS(STR(?label), "Calgary, Alta.)") ||
STRENDS(STR(?label), "Taste)") ||
STRENDS(STR(?label), "Weapons system)") ||
STRENDS(STR(?label), "Animals)") ||
STRENDS(STR(?label), "Operator theory)") ||
STRENDS(STR(?label), "Dhaka, Bangladesh)") ||
STRENDS(STR(?label), "Domestic relations)") ||
STRENDS(STR(?label), "Middlesex County, Mass.)") ||
STRENDS(STR(?label), "N.C. : River)") ||
STRENDS(STR(?label), "Mythical bird)") ||
STRENDS(STR(?label), "Nickname)") ||
STRENDS(STR(?label), "Copyright)") ||
STRENDS(STR(?label), "Olympia, Wash.)") ||
STRENDS(STR(?label), "Johor, Malaysia)") ||
STRENDS(STR(?label), "Bangladeshi people)") ||
STRENDS(STR(?label), "Afghanistan and Pakistan)") ||
STRENDS(STR(?label), "Scottsdale, Ariz.)") ||
STRENDS(STR(?label), "Guided missile)") ||
STRENDS(STR(?label), "Valletta, Malta)") ||
STRENDS(STR(?label), "Metalwork)") ||
STRENDS(STR(?label), "Kuwait)") ||
STRENDS(STR(?label), "Transportation)") ||
STRENDS(STR(?label), "Machine learning)") ||
STRENDS(STR(?label), "Qld. and N.S.W.)") ||
STRENDS(STR(?label), "Ont. : Lake)") ||
STRENDS(STR(?label), "R.I. and Conn.)") ||
STRENDS(STR(?label), "Zhejiang Sheng, China)") ||
STRENDS(STR(?label), "N.D. and Man.)") ||
STRENDS(STR(?label), "Hot Springs, Ark.)") ||
STRENDS(STR(?label), "Punishment)") ||
STRENDS(STR(?label), "Tex. : Fort)") ||
STRENDS(STR(?label), "Santiago de Cuba, Cuba)") ||
STRENDS(STR(?label), "Derbyshire, England)") ||
STRENDS(STR(?label), "Birmingham, Ala.)") ||
STRENDS(STR(?label), "Angkor)") ||
STRENDS(STR(?label), "Chemical)") ||
STRENDS(STR(?label), "Bangladesh and India)") ||
STRENDS(STR(?label), "Antigua and Barbuda)") ||
STRENDS(STR(?label), "Ont. and Man.)") ||
STRENDS(STR(?label), "Me. : Imaginary place)") ||
STRENDS(STR(?label), "Violin and cello)") ||
STRENDS(STR(?label), "W. Va. and Pa.)") ||
STRENDS(STR(?label), "Mentor, Ohio)") ||
STRENDS(STR(?label), "Poland and Russia)") ||
STRENDS(STR(?label), "Akron, Ohio)") ||
STRENDS(STR(?label), "Sheffield, England)") ||
STRENDS(STR(?label), "Montgomery, Ala.)") ||
STRENDS(STR(?label), "Strathclyde, Scotland)") ||
STRENDS(STR(?label), "Sichuan Sheng, China)") ||
STRENDS(STR(?label), "Buddhist festival)") ||
STRENDS(STR(?label), "Malaysia)") ||
STRENDS(STR(?label), "Ethiopia and Sudan)") ||
STRENDS(STR(?label), "Personification)") ||
STRENDS(STR(?label), "Toledo, Spain)") ||
STRENDS(STR(?label), "Seattle, Wash. : Park)") ||
STRENDS(STR(?label), "Congo and Uganda)") ||
STRENDS(STR(?label), "Thessalonikē, Greece)") ||
STRENDS(STR(?label), "Fort Worth, Tex.)") ||
STRENDS(STR(?label), "Jersey City, N.J.)") ||
STRENDS(STR(?label), "Maldives)") ||
STRENDS(STR(?label), "S.C. : Island)") ||
STRENDS(STR(?label), "Building materials)") ||
STRENDS(STR(?label), "Me. and N.H.)") ||
STRENDS(STR(?label), "Khajurāho, India)") ||
STRENDS(STR(?label), "Plymouth County, Mass.)") ||
STRENDS(STR(?label), "Cello)") ||
STRENDS(STR(?label), "León, Spain)") ||
STRENDS(STR(?label), "Gibraltar)") ||
STRENDS(STR(?label), "North America)") ||
STRENDS(STR(?label), "China : Region)") ||
STRENDS(STR(?label), "Shanxi Sheng, China)") ||
STRENDS(STR(?label), "Sask. and Alta.)") ||
STRENDS(STR(?label), "Orlando, Fla.)") ||
STRENDS(STR(?label), "Delhi, India)") ||
STRENDS(STR(?label), "Madison County, Mont.)") ||
STRENDS(STR(?label), "Santa Cruz, Calif.)") ||
STRENDS(STR(?label), "York County, Me.)") ||
STRENDS(STR(?label), "Toruń, Poland)") ||
STRENDS(STR(?label), "Arezzo, Italy)") ||
STRENDS(STR(?label), "Monkey)") ||
STRENDS(STR(?label), "Fictitious character : Smith)") ||
STRENDS(STR(?label), "Fictitious character : Brown)") ||
STRENDS(STR(?label), "Bolzano, Trentino-Alto Adige, Italy)") ||
STRENDS(STR(?label), "Snohomish County and King County, Wash.)") ||
STRENDS(STR(?label), "Lecce, Italy)") ||
STRENDS(STR(?label), "Lewis and Clark County, Mont.)") ||
STRENDS(STR(?label), "Ancona, Italy)") ||
STRENDS(STR(?label), "Kōbe-shi, Japan)") ||
STRENDS(STR(?label), "Leeds, England)") ||
STRENDS(STR(?label), "Crow Wing County, Minn.)") ||
STRENDS(STR(?label), "Early childhood)") ||
STRENDS(STR(?label), "Higher)") ||
STRENDS(STR(?label), "Tianjin, China)") ||
STRENDS(STR(?label), "Argyll and Bute, Scotland)") ||
STRENDS(STR(?label), "Viterbo, Italy)") ||
STRENDS(STR(?label), "Williamsburg, Va.)") ||
STRENDS(STR(?label), "Beaverhead County, Mont.)") ||
STRENDS(STR(?label), "Wyo. and Neb.)") ||
STRENDS(STR(?label), "Montpellier, France)") ||
STRENDS(STR(?label), "Haarlem, Netherlands)") ||
STRENDS(STR(?label), "Malmö, Sweden)") ||
STRENDS(STR(?label), "Boulogne-Billancourt, France)") ||
STRENDS(STR(?label), "Nantes, France)") ||
STRENDS(STR(?label), "Canberra, A.C.T.)") ||
STRENDS(STR(?label), "Ogden, Utah)") ||
STRENDS(STR(?label), "Highland, Scotland)") ||
STRENDS(STR(?label), "Gloucester, Mass.)") ||
STRENDS(STR(?label), "Ely, England)") ||
STRENDS(STR(?label), "Augsburg, Germany)") ||
STRENDS(STR(?label), "Jackson, Tenn.)") ||
STRENDS(STR(?label), "Stanford, Calif.)") ||
STRENDS(STR(?label), "Buddhist deities)") ||
STRENDS(STR(?label), "N.W.T. and Yukon)") ||
STRENDS(STR(?label), "Italy : Region)") ||
STRENDS(STR(?label), "Cork, Ireland)") ||
STRENDS(STR(?label), "Kodiak Island, Alaska)") ||
STRENDS(STR(?label), "Recife, Brazil)") ||
STRENDS(STR(?label), "Cagliari, Italy)") ||
STRENDS(STR(?label), "The Hebrew phrase)") ||
STRENDS(STR(?label), "Iran and Iraq)") ||
STRENDS(STR(?label), "Kenai Peninsula Borough, Alaska)") ||
STRENDS(STR(?label), "Spirits)") ||
STRENDS(STR(?label), "Falmouth, Mass.)") ||
STRENDS(STR(?label), "Hubei Sheng, China)") ||
STRENDS(STR(?label), "Linz, Austria)") ||
STRENDS(STR(?label), "The Romanian word)") ||
STRENDS(STR(?label), "Jaina sect)") ||
STRENDS(STR(?label), "Yorktown, Va.)") ||
STRENDS(STR(?label), "Kosovo)") ||
STRENDS(STR(?label), "Ireland and Northern Ireland)") ||
STRENDS(STR(?label), "Gdańsk, Poland)") ||
STRENDS(STR(?label), "Suffolk, England)") ||
STRENDS(STR(?label), "Grand Forks, N.D.)") ||
STRENDS(STR(?label), "Kumamoto-ken, Japan)") ||
STRENDS(STR(?label), "Ukraine : Preserve)") ||
STRENDS(STR(?label), "Luxembourg)") ||
STRENDS(STR(?label), "Hightstown, N.J.)") ||
STRENDS(STR(?label), "Prato, Italy)") ||
STRENDS(STR(?label), "Psychotherapy)") ||
STRENDS(STR(?label), "Zagreb, Croatia)") ||
STRENDS(STR(?label), "Tehran, Iran)") ||
STRENDS(STR(?label), "Kwangju-si, Chŏlla-namdo, Korea)") ||
STRENDS(STR(?label), "Taoist deity)") ||
STRENDS(STR(?label), "Shandong Sheng, China)") ||
STRENDS(STR(?label), "Tarquinia, Italy)") ||
STRENDS(STR(?label), "Contract)") ||
STRENDS(STR(?label), "Indigenous leaders)") ||
STRENDS(STR(?label), "Fatehpur Sikri, India)") ||
STRENDS(STR(?label), "Ethiopia and Kenya)") ||
STRENDS(STR(?label), "Administrative procedure)") ||
STRENDS(STR(?label), "Computer war game)") ||
STRENDS(STR(?label), "Character)") ||
STRENDS(STR(?label), "Navajo rite)") ||
STRENDS(STR(?label), "South America)") ||
STRENDS(STR(?label), "Egyptian religion)") ||
STRENDS(STR(?label), "The Old High German word)") ||
STRENDS(STR(?label), "Spain and France)") ||
STRENDS(STR(?label), "Trombones (3)") ||
STRENDS(STR(?label), "Horns (3)") ||
STRENDS(STR(?label), "Clarinet and flute)") ||
STRENDS(STR(?label), "Clarinet, violins (2)") ||
STRENDS(STR(?label), "Flute with string orchestra)") ||
STRENDS(STR(?label), "Harpsichord, violins (3)") ||
STRENDS(STR(?label), "Oboe with string orchestra)") ||
STRENDS(STR(?label), "Piano, violins (3)") ||
STRENDS(STR(?label), "Trumpet with string orchestra)") ||
STRENDS(STR(?label), "Violin and organ)") ||
STRENDS(STR(?label), "Wind ensemble)") ||
STRENDS(STR(?label), "Sakaide-shi, Japan)") ||
STRENDS(STR(?label), "Azuchi-chō, Japan)") ||
STRENDS(STR(?label), "Organ and piano)") ||
STRENDS(STR(?label), "Mixed voices, 4 parts)") ||
STRENDS(STR(?label), "Conflict of laws)") ||
STRENDS(STR(?label), "Lübeck law)") ||
STRENDS(STR(?label), "Bassoon, clarinet, flute, oboe, violins (2)") ||
STRENDS(STR(?label), "Clarinets (3)") ||
STRENDS(STR(?label), "Clarinets (4)") ||
STRENDS(STR(?label), "Dance orchestra)") ||
STRENDS(STR(?label), "Flute and guitar)") ||
STRENDS(STR(?label), "Flute and harp)") ||
STRENDS(STR(?label), "Flute and violin)") ||
STRENDS(STR(?label), "Hurdy-gurdies (2)") ||
STRENDS(STR(?label), "Organ with string orchestra)") ||
STRENDS(STR(?label), "Saxophone and piano)") ||
STRENDS(STR(?label), "Liturgical books)") ||
STRENDS(STR(?label), "Chikushino-shi, Japan)") ||
STRENDS(STR(?label), "Miyoshi-shi, Japan)") ||
STRENDS(STR(?label), "Nakagawa-machi, Fukuoka-ken, Japan)") ||
STRENDS(STR(?label), "Tondabayashi-shi, Japan)") ||
STRENDS(STR(?label), "Toyotsu-machi, Japan)") ||
STRENDS(STR(?label), "1)") ||
STRENDS(STR(?label), "Moriyama-shi, Japan)") ||
STRENDS(STR(?label), "Kushigata-machi, Japan)") ||
STRENDS(STR(?label), "Ethiopia and Somalia)") ||
STRENDS(STR(?label), "Flute and continuo)") ||
STRENDS(STR(?label), "Horn and piano)") ||
STRENDS(STR(?label), "Piano, clarinets (2)") ||
STRENDS(STR(?label), "Flute, guitar, viola)") ||
STRENDS(STR(?label), "Cello with orchestra)") ||
STRENDS(STR(?label), "Harpsichord, horns (2)") ||
STRENDS(STR(?label), "Harpsichord, oboes (2)") ||
STRENDS(STR(?label), "Piano, oboes (2)") ||
STRENDS(STR(?label), "Ecuador and Colombia)") ||
STRENDS(STR(?label), "Flute with orchestra)") ||
STRENDS(STR(?label), "Viola with orchestra)") ||
STRENDS(STR(?label), "Brookline, Mass.)") ||
STRENDS(STR(?label), "Pottery)") ||
STRENDS(STR(?label), "Simsbury, Conn.)") ||
STRENDS(STR(?label), "Germany and Poland)") ||
STRENDS(STR(?label), "Thunder Bay, Ont.)") ||
STRENDS(STR(?label), "Pitcairn Islands)") ||
STRENDS(STR(?label), "Devon, England)") ||
STRENDS(STR(?label), "Literary analysis)") ||
STRENDS(STR(?label), "Mexico and Calif.)") ||
STRENDS(STR(?label), "Man. and N.D.)") ||
STRENDS(STR(?label), "Romania and Serbia)") ||
STRENDS(STR(?label), "Mass. and N.H.)") ||
STRENDS(STR(?label), "N.Y. : Island)") ||
STRENDS(STR(?label), "Northampton, England)") ||
STRENDS(STR(?label), "Group of painters)") ||
STRENDS(STR(?label), "Oyster Bay, N.Y.)") ||
STRENDS(STR(?label), "Zambia and Congo)") ||
STRENDS(STR(?label), "Lowell, Mass.)") ||
STRENDS(STR(?label), "Law of the sea)") ||
STRENDS(STR(?label), "Toys)") ||
STRENDS(STR(?label), "Classical mythology)") ||
STRENDS(STR(?label), "Racing plane)") ||
STRENDS(STR(?label), "Synoptics criticism)") ||
STRENDS(STR(?label), "Calif. : Valley)") ||
STRENDS(STR(?label), "Austria and Hungary)") ||
STRENDS(STR(?label), "Algeria and Tunisia)") ||
STRENDS(STR(?label), "Computer network technology)") ||
STRENDS(STR(?label), "Paphos, Cyprus)") ||
STRENDS(STR(?label), "Okla. and Ark.)") ||
STRENDS(STR(?label), "Allentown, Pa.)") ||
STRENDS(STR(?label), "Songs)") ||
STRENDS(STR(?label), "Half-track)") ||
STRENDS(STR(?label), "Subculture)") ||
STRENDS(STR(?label), "Glider)") ||
STRENDS(STR(?label), "Chemical technology)") ||
STRENDS(STR(?label), "Conceptual model)") ||
STRENDS(STR(?label), "Brighton, England)") ||
STRENDS(STR(?label), "Ice mummy)") ||
STRENDS(STR(?label), "Göttingen, Germany)") ||
STRENDS(STR(?label), "Saint Louis County, Minn.)") ||
STRENDS(STR(?label), "Stirling, Scotland)") ||
STRENDS(STR(?label), "Evidence)") ||
STRENDS(STR(?label), "Digital music player)") ||
STRENDS(STR(?label), "Evolution)") ||
STRENDS(STR(?label), "Cinematography)") ||
STRENDS(STR(?label), "Fisheries)") ||
STRENDS(STR(?label), "Supersonic plane)") ||
STRENDS(STR(?label), "Tartu, Estonia)") ||
STRENDS(STR(?label), "Carbon County, Utah)") ||
STRENDS(STR(?label), "Allegheny County, Pa.)") ||
STRENDS(STR(?label), "New Delhi, India)") ||
STRENDS(STR(?label), "Wis. and Minn.)") ||
STRENDS(STR(?label), "Mexico and Ariz.)") ||
STRENDS(STR(?label), "France and Germany)") ||
STRENDS(STR(?label), "Electric locomotive)") ||
STRENDS(STR(?label), "Wyo. and S.D.)") ||
STRENDS(STR(?label), "The letter)") ||
STRENDS(STR(?label), "Cnidaria)") ||
STRENDS(STR(?label), "Forestry)") ||
STRENDS(STR(?label), "Air-to-surface missile)") ||
STRENDS(STR(?label), "Dog sport)") ||
STRENDS(STR(?label), "Key West, Fla.)") ||
STRENDS(STR(?label), "Heraldry)") ||
STRENDS(STR(?label), "Service mark)") ||
STRENDS(STR(?label), "Tanker aircraft)") ||
STRENDS(STR(?label), "North Macedonia and Greece)") ||
STRENDS(STR(?label), "Musicians)") ||
STRENDS(STR(?label), "Austria and Italy)") ||
STRENDS(STR(?label), "Kingdom)") ||
STRENDS(STR(?label), "Kent, England)") ||
STRENDS(STR(?label), "Bread)") ||
STRENDS(STR(?label), "N.J. and Pa.)") ||
STRENDS(STR(?label), "Television)") ||
STRENDS(STR(?label), "India and Nepal)") ||
STRENDS(STR(?label), "Ashmore and Cartier Islands)") ||
STRENDS(STR(?label), "Computer graphics)") ||
STRENDS(STR(?label), "Los Angeles County, Calif.)") ||
STRENDS(STR(?label), "Sweden and Norway)") ||
STRENDS(STR(?label), "Instruments)") ||
STRENDS(STR(?label), "Computer network architecture)") ||
STRENDS(STR(?label), "Dominica)") ||
STRENDS(STR(?label), "Box Elder County, Utah)") ||
STRENDS(STR(?label), "Salem, Or.)") ||
STRENDS(STR(?label), "Prince of Wales-Outer Ketchikan Census Area, Alaska)") ||
STRENDS(STR(?label), "Sailing ships)") ||
STRENDS(STR(?label), "Mount Pleasant, S.C.)") ||
STRENDS(STR(?label), "Maritime law)") ||
STRENDS(STR(?label), "Clarinet)") ||
STRENDS(STR(?label), "Colo. and Neb.)") ||
STRENDS(STR(?label), "Peru and Bolivia)") ||
STRENDS(STR(?label), "Or. and Idaho)") ||
STRENDS(STR(?label), "Percussion)") ||
STRENDS(STR(?label), "Bassoon)") ||
STRENDS(STR(?label), "Germany and Czech Republic)") ||
STRENDS(STR(?label), "Zoroastrian deity)") ||
STRENDS(STR(?label), "Catholic theology)") ||
STRENDS(STR(?label), "Spiritualism)") ||
STRENDS(STR(?label), "Ky. and Va.)") ||
STRENDS(STR(?label), "Mesa, Ariz.)") ||
STRENDS(STR(?label), "Nice, France)") ||
STRENDS(STR(?label), "Jakarta, Indonesia)") ||
STRENDS(STR(?label), "Ohio : River)") ||
STRENDS(STR(?label), "Lucknow, India)") ||
STRENDS(STR(?label), "Nomadic people)") ||
STRENDS(STR(?label), "Jefferson County, Mont.)") ||
STRENDS(STR(?label), "China and Russia)") ||
STRENDS(STR(?label), "Greek deities)") ||
STRENDS(STR(?label), "Freiburg im Breisgau, Germany)") ||
STRENDS(STR(?label), "Scotland and England)") ||
STRENDS(STR(?label), "Ancient)") ||
STRENDS(STR(?label), "Johannesburg, South Africa)") ||
STRENDS(STR(?label), "Paestum)") ||
STRENDS(STR(?label), "Nunavut : Bay)") ||
STRENDS(STR(?label), "Summit County, Utah)") ||
STRENDS(STR(?label), "Fla. and Ala.)") ||
STRENDS(STR(?label), "Okla. and Kan.)") ||
STRENDS(STR(?label), "Llanelli, Wales)") ||
STRENDS(STR(?label), "New Caledonian people)") ||
STRENDS(STR(?label), "Benton County, Wash.)") ||
STRENDS(STR(?label), "Sonoma County, Calif.)") ||
STRENDS(STR(?label), "Mich. and Ind.)") ||
STRENDS(STR(?label), "N.S.W. and Vic.)") ||
STRENDS(STR(?label), "Artificial intelligence)") ||
STRENDS(STR(?label), "Greenbrier County, W. Va.)") ||
STRENDS(STR(?label), "Mohave County, Ariz.)") ||
STRENDS(STR(?label), "Juneau, Alaska)") ||
STRENDS(STR(?label), "Ga. and Tenn.)") ||
STRENDS(STR(?label), "Pa. and W. Va.)") ||
STRENDS(STR(?label), "Dortmund, Germany)") ||
STRENDS(STR(?label), "Colorado Springs, Colo.)") ||
STRENDS(STR(?label), "Colombo, Sri Lanka)") ||
STRENDS(STR(?label), "Long Island, N.Y.)") ||
STRENDS(STR(?label), "Io)") ||
STRENDS(STR(?label), "Lahore, Pakistan)") ||
STRENDS(STR(?label), "Roman officials)") ||
STRENDS(STR(?label), "Idaho : Lake)") ||
STRENDS(STR(?label), "Congo (Democratic Republic)") ||
STRENDS(STR(?label), "The sound)") ||
STRENDS(STR(?label), "Group of architects)") ||
STRENDS(STR(?label), "Canton, Ohio)") ||
STRENDS(STR(?label), "Virtual reality)") ||
STRENDS(STR(?label), "Bahia, Brazil)") ||
STRENDS(STR(?label), "Córdoba, Spain)") ||
STRENDS(STR(?label), "Antwerp, Belgium)") ||
STRENDS(STR(?label), "Colombia and Brazil)") ||
STRENDS(STR(?label), "Rimini, Italy)") ||
STRENDS(STR(?label), "Terengganu, Malaysia)") ||
STRENDS(STR(?label), "Malibu, Calif.)") ||
STRENDS(STR(?label), "Slavic deity)") ||
STRENDS(STR(?label), "Hampshire County, Mass.)") ||
STRENDS(STR(?label), "Double bass)") ||
STRENDS(STR(?label), "Church of England)") ||
STRENDS(STR(?label), "Logroño, Spain)") ||
STRENDS(STR(?label), "Ṣaqqārah, Egypt)") ||
STRENDS(STR(?label), "Benin and Togo)") ||
STRENDS(STR(?label), "Brazil and Bolivia)") ||
STRENDS(STR(?label), "Line Islands)") ||
STRENDS(STR(?label), "Arequipa, Peru)") ||
STRENDS(STR(?label), "Computer network management)") ||
STRENDS(STR(?label), "Immunology)") ||
STRENDS(STR(?label), "Wine making)") ||
STRENDS(STR(?label), "Wyo. and Utah)") ||
STRENDS(STR(?label), "Miss. and La.)") ||
STRENDS(STR(?label), "Ubangi)") ||
STRENDS(STR(?label), "Slovenia and Italy)") ||
STRENDS(STR(?label), "Exercise equipment)") ||
STRENDS(STR(?label), "New Haven County, Conn.)") ||
STRENDS(STR(?label), "Yakima County, Wash.)") ||
STRENDS(STR(?label), "Petrology)") ||
STRENDS(STR(?label), "N.T. and Qld.)") ||
STRENDS(STR(?label), "Leiden, Netherlands)") ||
STRENDS(STR(?label), "Conwy, Wales)") ||
STRENDS(STR(?label), "Trumpet)") ||
STRENDS(STR(?label), "Tajikistan and Uzbekistan)") ||
STRENDS(STR(?label), "Or. and Nev.)") ||
STRENDS(STR(?label), "Ahmadābād, India)") ||
STRENDS(STR(?label), "Idaho and Nev.)") ||
STRENDS(STR(?label), "San Juan County, Colo.)") ||
STRENDS(STR(?label), "Hillingdon, London, England)") ||
STRENDS(STR(?label), "Sweet Grass County, Mont.)") ||
STRENDS(STR(?label), "Scotland : Imaginary place)") ||
STRENDS(STR(?label), "Imola, Italy)") ||
STRENDS(STR(?label), "Christian sect)") ||
STRENDS(STR(?label), "Lʹviv, Ukraine)") ||
STRENDS(STR(?label), "Logging)") ||
STRENDS(STR(?label), "Kittitas County, Wash.)") ||
STRENDS(STR(?label), "Fresno, Calif.)") ||
STRENDS(STR(?label), "Washoe County, Nev.)") ||
STRENDS(STR(?label), "Washington County, Or.)") ||
STRENDS(STR(?label), "Midland, Mich.)") ||
STRENDS(STR(?label), "Lincoln County, Wyo.)") ||
STRENDS(STR(?label), "Cuernavaca, Mexico)") ||
STRENDS(STR(?label), "Cowlitz County, Wash.)") ||
STRENDS(STR(?label), "Wash. and B.C.)") ||
STRENDS(STR(?label), "Fictitious character : Dunbar)") ||
STRENDS(STR(?label), "Implements)") ||
STRENDS(STR(?label), "Takatsuki-shi, Japan)") ||
STRENDS(STR(?label), "Wood)") ||
STRENDS(STR(?label), "Textile)") ||
STRENDS(STR(?label), "Marburg, Germany)") ||
STRENDS(STR(?label), "Idaho and Wyo.)") ||
STRENDS(STR(?label), "W.A. : River)") ||
STRENDS(STR(?label), "Nancy, France)") ||
STRENDS(STR(?label), "Hastings, England)") ||
STRENDS(STR(?label), "Yukon and N.W.T.)") ||
STRENDS(STR(?label), "Missoula, Mont.)") ||
STRENDS(STR(?label), "Dunedin, N.Z.)") ||
STRENDS(STR(?label), "New Bedford, Mass.)") ||
STRENDS(STR(?label), "Luzon, Philippines)") ||
STRENDS(STR(?label), "Albuquerque, N.M.)") ||
STRENDS(STR(?label), "Boogie woogie)") ||
STRENDS(STR(?label), "The Dutch word)") ||
STRENDS(STR(?label), "Belarus and Lithuania)") ||
STRENDS(STR(?label), "Clatsop County, Or.)") ||
STRENDS(STR(?label), "Sidon, Lebanon)") ||
STRENDS(STR(?label), "Fictitious character : Rodda)") ||
STRENDS(STR(?label), "Bergama, Turkey)") ||
STRENDS(STR(?label), "Cache County, Utah)") ||
STRENDS(STR(?label), "Beaver County, Utah)") ||
STRENDS(STR(?label), "Modoc County, Calif.)") ||
STRENDS(STR(?label), "Varese, Italy)") ||
STRENDS(STR(?label), "Cremona, Italy)") ||
STRENDS(STR(?label), "Pushkin, Russia)") ||
STRENDS(STR(?label), "Costa Rica and Panama)") ||
STRENDS(STR(?label), "Saint Lucia)") ||
STRENDS(STR(?label), "Cayman Islands)") ||
STRENDS(STR(?label), "Beaufort, S.C.)") ||
STRENDS(STR(?label), "Dartmouth, England)") ||
STRENDS(STR(?label), "Slovakia and Poland)") ||
STRENDS(STR(?label), "Eagle County, Colo.)") ||
STRENDS(STR(?label), "Utah County, Utah)") ||
STRENDS(STR(?label), "Clark County and Jefferson County, Idaho)") ||
STRENDS(STR(?label), "Local government)") ||
STRENDS(STR(?label), "Jiangxi Sheng, China)") ||
STRENDS(STR(?label), "Pesaro, Italy)") ||
STRENDS(STR(?label), "Santa Fe, N.M.)") ||
STRENDS(STR(?label), "Innsbruck, Austria)") ||
STRENDS(STR(?label), "Karaite law)") ||
STRENDS(STR(?label), "Malawi and Mozambique)") ||
STRENDS(STR(?label), "Clemson, S.C.)") ||
STRENDS(STR(?label), "Laramie, Wyo.)") ||
STRENDS(STR(?label), "Fictitious character : Tibo)") ||
STRENDS(STR(?label), "N.S.W. and Qld.)") ||
STRENDS(STR(?label), "Scottish mountains)") ||
STRENDS(STR(?label), "Nauvoo, Ill.)") ||
STRENDS(STR(?label), "Yoruba law)") ||
STRENDS(STR(?label), "Nyasa)") ||
STRENDS(STR(?label), "Rouen, France)") ||
STRENDS(STR(?label), "Exposición Ibero-Americana, 1929-1930, Seville, Spain)") ||
STRENDS(STR(?label), "Compiègne, France)") ||
STRENDS(STR(?label), "Lincoln, England)") ||
STRENDS(STR(?label), "Clallam County, Wash.)") ||
STRENDS(STR(?label), "Wash. and Idaho)") ||
STRENDS(STR(?label), "Pamplona, Spain)") ||
STRENDS(STR(?label), "La Paz, Bolivia)") ||
STRENDS(STR(?label), "Bar Harbor, Me.)") ||
STRENDS(STR(?label), "Lion)") ||
STRENDS(STR(?label), "Lewis County, Wash.)") ||
STRENDS(STR(?label), "Guangdong Sheng, China)") ||
STRENDS(STR(?label), "Carlisle, England)") ||
STRENDS(STR(?label), "Hungary and Romania)") ||
STRENDS(STR(?label), "Nicosia, Cyprus)") ||
STRENDS(STR(?label), "Kennebunkport, Me.)") ||
STRENDS(STR(?label), "Gospel)") ||
STRENDS(STR(?label), "Swing)") ||
STRENDS(STR(?label), "Honky-tonk)") ||
STRENDS(STR(?label), "Heavy metal)") ||
STRENDS(STR(?label), "Trier, Germany)") ||
STRENDS(STR(?label), "Eswatini)") ||
STRENDS(STR(?label), "Rhythm and blues)") ||
STRENDS(STR(?label), "Concord, Mass.)") ||
STRENDS(STR(?label), "Bexley, London, England)") ||
STRENDS(STR(?label), "Automobiles)") ||
STRENDS(STR(?label), "Panama, Panama)") ||
STRENDS(STR(?label), "Nottingham, England)") ||
STRENDS(STR(?label), "North Rhine-Westphalia, Germany)") ||
STRENDS(STR(?label), "Las Vegas, Nev.)") ||
STRENDS(STR(?label), "The Tamil word)") ||
STRENDS(STR(?label), "Cento, Italy)") ||
STRENDS(STR(?label), "Symbol)") ||
STRENDS(STR(?label), "Barron County, Wis.)") ||
STRENDS(STR(?label), "South Yorkshire, England)") ||
STRENDS(STR(?label), "Burkina Faso and Ghana)") ||
STRENDS(STR(?label), "Santa Barbara County, Calif.)") ||
STRENDS(STR(?label), "Niederzier, Germany)") ||
STRENDS(STR(?label), "Fictitious character : Bouchard)") ||
STRENDS(STR(?label), "Curitiba, Brazil)") ||
STRENDS(STR(?label), "Polar bear)") ||
STRENDS(STR(?label), "New London, Conn.)") ||
STRENDS(STR(?label), "Colchester, England)") ||
STRENDS(STR(?label), "Château de Versailles, Versailles, France)") ||
STRENDS(STR(?label), "Galway, Ireland)") ||
STRENDS(STR(?label), "Lérida, Spain)") ||
STRENDS(STR(?label), "Salisbury, England)") ||
STRENDS(STR(?label), "Russia and Kazakhstan)") ||
STRENDS(STR(?label), "North-West, South Africa)") ||
STRENDS(STR(?label), "Humboldt County, Calif.)") ||
STRENDS(STR(?label), "Paterson, N.J.)") ||
STRENDS(STR(?label), "Guatemala, Guatemala)") ||
STRENDS(STR(?label), "Toluca de Lerdo, Mexico)") ||
STRENDS(STR(?label), "Nev. and Or.)") ||
STRENDS(STR(?label), "Norwell, England)") ||
STRENDS(STR(?label), "Liège, Belgium)") ||
STRENDS(STR(?label), "Latin America)") ||
STRENDS(STR(?label), "Piacenza, Italy)") ||
STRENDS(STR(?label), "Edirne, Turkey)") ||
STRENDS(STR(?label), "Bursa, Turkey)") ||
STRENDS(STR(?label), "The Danish word)") ||
STRENDS(STR(?label), "Asheville, N.C.)") ||
STRENDS(STR(?label), "Lille, France)") ||
STRENDS(STR(?label), "Kamchatskiĭ kraĭ, Russia)") ||
STRENDS(STR(?label), "The Ukrainian word)") ||
STRENDS(STR(?label), "Italy and Slovenia)") ||
STRENDS(STR(?label), "Jersey)") ||
STRENDS(STR(?label), "Sagunto, Spain)") ||
STRENDS(STR(?label), "Mexico and Tex.)") ||
STRENDS(STR(?label), "Lugano, Switzerland)") ||
STRENDS(STR(?label), "Rovigo, Italy)") ||
STRENDS(STR(?label), "West Vancouver, B.C.)") ||
STRENDS(STR(?label), "Liaoning Sheng, China)") ||
STRENDS(STR(?label), "Brazil and Uruguay)") ||
STRENDS(STR(?label), "South Carolina Inter-State and West Indian Exposition, 1901-1902, Charleston, S.C.)") ||
STRENDS(STR(?label), "Hamilton, Ont.)") ||
STRENDS(STR(?label), "Hydrodynamics)") ||
STRENDS(STR(?label), "Art object)") ||
STRENDS(STR(?label), "Indexing system)") ||
STRENDS(STR(?label), "Differential equations)") ||
STRENDS(STR(?label), "Bassoon and oboe)") ||
STRENDS(STR(?label), "Calif. and Mexico)") ||
STRENDS(STR(?label), "Austur-Húnavatnssýsla, Iceland)") ||
STRENDS(STR(?label), "Trumpets (4)") ||
STRENDS(STR(?label), "Horn, trombones (2)") ||
STRENDS(STR(?label), "Trumpets (5)") ||
STRENDS(STR(?label), "Trumpets (3)") ||
STRENDS(STR(?label), "Business)") ||
STRENDS(STR(?label), "Flute and cello)") ||
STRENDS(STR(?label), "Organ, 4 hands)") ||
STRENDS(STR(?label), "Organs (2)") ||
STRENDS(STR(?label), "Piano, 1 hand)") ||
STRENDS(STR(?label), "Recorder and piano)") ||
STRENDS(STR(?label), "String trio)") ||
STRENDS(STR(?label), "Cellos (4)") ||
STRENDS(STR(?label), "Sōja-shi, Japan)") ||
STRENDS(STR(?label), "Yamagata-shi, Japan)") ||
STRENDS(STR(?label), "Takefu-shi, Japan)") ||
STRENDS(STR(?label), "Harpsichord, recorders (3)") ||
STRENDS(STR(?label), "Tuba and piano)") ||
STRENDS(STR(?label), "Viola da gamba and continuo)") ||
STRENDS(STR(?label), "Cello with chamber orchestra)") ||
STRENDS(STR(?label), "Chiriquí, Panama)") ||
STRENDS(STR(?label), "Kazakhstan and Uzbekistan)") ||
STRENDS(STR(?label), "Flute and organ)") ||
STRENDS(STR(?label), "Horn and organ)") ||
STRENDS(STR(?label), "Oboe and organ)") ||
STRENDS(STR(?label), "Tswana law)") ||
STRENDS(STR(?label), "Bassoon, clarinet, flute, horn, oboe)") ||
STRENDS(STR(?label), "Bassoon, clarinets (2)") ||
STRENDS(STR(?label), "Flute with chamber orchestra)") ||
STRENDS(STR(?label), "Flutes (4)") ||
STRENDS(STR(?label), "Piano with string orchestra)") ||
STRENDS(STR(?label), "Recorder)") ||
STRENDS(STR(?label), "Recorders (3)") ||
STRENDS(STR(?label), "Viola and cello)") ||
STRENDS(STR(?label), "Viola with string orchestra)") ||
STRENDS(STR(?label), "Violin and harp)") ||
STRENDS(STR(?label), "Violin with chamber orchestra)") ||
STRENDS(STR(?label), "Musique concrète)") ||
STRENDS(STR(?label), "Nuclear engineering)") ||
STRENDS(STR(?label), "Unspecified instruments (2)") ||
STRENDS(STR(?label), "Kiryū-shi, Japan)") ||
STRENDS(STR(?label), "Elephantine, Egypt)") ||
STRENDS(STR(?label), "Arnhem, Netherlands)") ||
STRENDS(STR(?label), "Fujiidera-shi, Japan)") ||
STRENDS(STR(?label), "Chemung County, N.Y.)") ||
STRENDS(STR(?label), "Sumatra, Indonesia)") ||
STRENDS(STR(?label), "Yamashiro-chō, Kyoto, Japan)") ||
STRENDS(STR(?label), "Tsuiki-machi, Japan)") ||
STRENDS(STR(?label), "Kitami-shi, Japan)") ||
STRENDS(STR(?label), "Tamano-shi, Japan)") ||
STRENDS(STR(?label), "Nankoku-shi, Japan)") ||
STRENDS(STR(?label), "Higashikurume-shi, Japan)") ||
STRENDS(STR(?label), "Fukuoka-shi, Japan)") ||
STRENDS(STR(?label), "Miyazaki-shi, Japan)") ||
STRENDS(STR(?label), "Kannabe-chō, Japan)") ||
STRENDS(STR(?label), "Sagamihara-shi, Japan)") ||
STRENDS(STR(?label), "Yasu-machi, Fukuoka-ken, Japan)") ||
STRENDS(STR(?label), "Tomioka-shi, Japan)") ||
STRENDS(STR(?label), "Kaminokawa-machi, Japan)") ||
STRENDS(STR(?label), "Kanda-machi, Japan)") ||
STRENDS(STR(?label), "Shinʼasahi-chō, Japan)") ||
STRENDS(STR(?label), "Ogōri-shi, Japan)") ||
STRENDS(STR(?label), "Koga-machi, Japan)") ||
STRENDS(STR(?label), "Yonezawa-shi, Japan)") ||
STRENDS(STR(?label), "Kaga-shi, Japan)") ||
STRENDS(STR(?label), "Sakata-shi, Japan)") ||
STRENDS(STR(?label), "The Sanskrit word)") ||
STRENDS(STR(?label), "Poland and Germany)") ||
STRENDS(STR(?label), "Ind. and Mich.)") ||
STRENDS(STR(?label), "Oboe and continuo)") ||
STRENDS(STR(?label), "Salon orchestra)") ||
STRENDS(STR(?label), "Trombone and piano)") ||
STRENDS(STR(?label), "Plucked instrument ensemble)") ||
STRENDS(STR(?label), "Bassoon, clarinet, flute, horn, violins (2)") ||
STRENDS(STR(?label), "Flute, horns (2)") ||
STRENDS(STR(?label), "Percussion, violins (2)") ||
STRENDS(STR(?label), "Piano, bassoon, clarinets (2)") ||
STRENDS(STR(?label), "Piano, bassoons (2)") ||
STRENDS(STR(?label), "Piano quintet)") ||
STRENDS(STR(?label), "Recorder and harpsichord)") ||
STRENDS(STR(?label), "Flute, guitar, violin)") ||
STRENDS(STR(?label), "Violin and guitar)") ||
STRENDS(STR(?label), "Piano, flute, violin, cello)") ||
STRENDS(STR(?label), "Austria and Czech Republic)") ||
STRENDS(STR(?label), "Bulgaria and Greece)") ||
STRENDS(STR(?label), "Frederick County, Md.)") ||
STRENDS(STR(?label), "Valley County, Mont.)") ||
STRENDS(STR(?label), "Permskai︠a︡ oblastʹ, Russia)") ||
STRENDS(STR(?label), "Bassoon with orchestra)") ||
STRENDS(STR(?label), "Oboe and piano)") ||
STRENDS(STR(?label), "Recorder and continuo)") ||
STRENDS(STR(?label), "Piano, clarinet, violin)") ||
STRENDS(STR(?label), "Tadmur, Syria)") ||
STRENDS(STR(?label), "Celesta, pianos (2)") ||
STRENDS(STR(?label), "Burkina Faso and Côte d'Ivoire)") ||
STRENDS(STR(?label), "Aruba)") ||
STRENDS(STR(?label), "Eames furniture)") ||
STRENDS(STR(?label), "Fictitious character : Johnston)") ||
STRENDS(STR(?label), "Fictitious character : McArthur)") ||
STRENDS(STR(?label), "Lake County, Colo.)") ||
STRENDS(STR(?label), "Ill. and Mo.)") ||
STRENDS(STR(?label), "Greece and Albania)") ||
STRENDS(STR(?label), "Centaur object)") ||
STRENDS(STR(?label), "Del. and N.J.)") ||
STRENDS(STR(?label), "Haringey, London, England)") ||
STRENDS(STR(?label), "Evansville, Ind.)") ||
STRENDS(STR(?label), "Headgear)") ||
STRENDS(STR(?label), "Japanese people)") ||
STRENDS(STR(?label), "Observation helicopter)") ||
STRENDS(STR(?label), "Video game console)") ||
STRENDS(STR(?label), "Set theory)") ||
STRENDS(STR(?label), "Church work)") ||
STRENDS(STR(?label), "Epidaurus)") ||
STRENDS(STR(?label), "Narni, Italy)") ||
STRENDS(STR(?label), "Lucca, Italy)") ||
STRENDS(STR(?label), "Italian literature)") ||
STRENDS(STR(?label), "Minas Gerais-Alagoas and Sergipe, Brazil)") ||
STRENDS(STR(?label), "Larimer County, Colo.)") ||
STRENDS(STR(?label), "Streetcar)") ||
STRENDS(STR(?label), "Logical fallacy)") ||
STRENDS(STR(?label), "B.C. and Yukon)") ||
STRENDS(STR(?label), "Galaxy)") ||
STRENDS(STR(?label), "Madeira Islands)") ||
STRENDS(STR(?label), "Manila, Philippines)") ||
STRENDS(STR(?label), "Aquatic sports)") ||
STRENDS(STR(?label), "L'Aquila, Italy)") ||
STRENDS(STR(?label), "Wash. : Imaginary place)") ||
STRENDS(STR(?label), "Shape)") ||
STRENDS(STR(?label), "Me. : Island)") ||
STRENDS(STR(?label), "Ont. : River)") ||
STRENDS(STR(?label), "Virus)") ||
STRENDS(STR(?label), "Monetary policy)") ||
STRENDS(STR(?label), "Brazil and Argentina)") ||
STRENDS(STR(?label), "S.A. and W.A.)") ||
STRENDS(STR(?label), "Criminal investigation)") ||
STRENDS(STR(?label), "Wrangell, Alaska)") ||
STRENDS(STR(?label), "Columbia County-Brown County, Wis.)") ||
STRENDS(STR(?label), "Mobile, Ala.)") ||
STRENDS(STR(?label), "Northeast Harbor, Me.)") ||
STRENDS(STR(?label), "La Chaux-de-Fonds, Switzerland)") ||
STRENDS(STR(?label), "Gymnastics)") ||
STRENDS(STR(?label), "Microcomputers)") ||
STRENDS(STR(?label), "Ga.-Tenn.)") ||
STRENDS(STR(?label), "Telecommunications)") ||
STRENDS(STR(?label), "Paraná, Brazil)") ||
STRENDS(STR(?label), "Punctuation)") ||
STRENDS(STR(?label), "Calif. : Bay)") ||
STRENDS(STR(?label), "San Juan County, Utah)") ||
STRENDS(STR(?label), "Heat)") ||
STRENDS(STR(?label), "Wyo.-Utah)") ||
STRENDS(STR(?label), "Lagos, Nigeria)") ||
STRENDS(STR(?label), "Sexual behavior)") ||
STRENDS(STR(?label), "Philosophical concept)") ||
STRENDS(STR(?label), "Sexual orientation)") ||
STRENDS(STR(?label), "European people)") ||
STRENDS(STR(?label), "N.Y. : Bay)") ||
STRENDS(STR(?label), "Hebron)") ||
STRENDS(STR(?label), "Vienna, Va.)") ||
STRENDS(STR(?label), "Sukkot)") ||
STRENDS(STR(?label), "Military airplane)") ||
STRENDS(STR(?label), "S.D. and Minn.)") ||
STRENDS(STR(?label), "England : Forest)") ||
STRENDS(STR(?label), "Jewish liturgical objects)") ||
STRENDS(STR(?label), "Video display terminal)") ||
STRENDS(STR(?label), "Parties)") ||
STRENDS(STR(?label), "Tuvalu)") ||
STRENDS(STR(?label), "East Sussex, England)") ||
STRENDS(STR(?label), "Rambouillet, France)") ||
STRENDS(STR(?label), "N.Y. and Vt.-Québec)") ||
STRENDS(STR(?label), "Wash. : Island)") ||
STRENDS(STR(?label), "Togolese people)") ||
STRENDS(STR(?label), "Warwick, England)") ||
STRENDS(STR(?label), "Insurance law)") ||
STRENDS(STR(?label), "Pakistan and Afghanistan)") ||
STRENDS(STR(?label), "Tristan da Cunha)") ||
STRENDS(STR(?label), "Djibouti)") ||
STRENDS(STR(?label), "Colo.-Mexico)") ||
STRENDS(STR(?label), "Jilin Sheng, China)") ||
STRENDS(STR(?label), "Bolivia and Chile)") ||
STRENDS(STR(?label), "Nigeria and Niger)") ||
STRENDS(STR(?label), "Regensburg, Germany)") ||
STRENDS(STR(?label), "Drama)") ||
STRENDS(STR(?label), "Kuala Lumpur, Malaysia)") ||
STRENDS(STR(?label), "Matsuyama-shi, Japan)") ||
STRENDS(STR(?label), "Goddess)") ||
STRENDS(STR(?label), "Hunting)") ||
STRENDS(STR(?label), "Programmable controller)") ||
STRENDS(STR(?label), "Chemnitz, Germany)") ||
STRENDS(STR(?label), "N.J. : River)") ||
STRENDS(STR(?label), "Ga. : Island)") ||
STRENDS(STR(?label), "Fort Smith, Ark.)") ||
STRENDS(STR(?label), "Armenian deity)") ||
STRENDS(STR(?label), "Dye)") ||
STRENDS(STR(?label), "W.A. and S.A.)") ||
STRENDS(STR(?label), "Search and rescue helicopter)") ||
STRENDS(STR(?label), "Gunship)") ||
STRENDS(STR(?label), "Horn)") ||
STRENDS(STR(?label), "Annapolis, Md.)") ||
STRENDS(STR(?label), "Audio coding standard)") ||
STRENDS(STR(?label), "Santa Clara County, Calif.)") ||
STRENDS(STR(?label), "Radio meteorology)") ||
STRENDS(STR(?label), "Strategy)") ||
STRENDS(STR(?label), "Md. and Pa.)") ||
STRENDS(STR(?label), "Afghanistan : Region)") ||
STRENDS(STR(?label), "Antalya, Turkey)") ||
STRENDS(STR(?label), "Tools)") ||
STRENDS(STR(?label), "Dubai, United Arab Emirates)") ||
STRENDS(STR(?label), "Blackpool, England)") ||
STRENDS(STR(?label), "Or. : Lake)") ||
STRENDS(STR(?label), "Central Asian people)") ||
STRENDS(STR(?label), "Tex.-La.)") ||
STRENDS(STR(?label), "Yunnan Sheng, China)") ||
STRENDS(STR(?label), "Banking)") ||
STRENDS(STR(?label), "Vehicles)") ||
STRENDS(STR(?label), "Legend)") ||
STRENDS(STR(?label), "Mexico : Region)") ||
STRENDS(STR(?label), "Calif. : Mountain)") ||
STRENDS(STR(?label), "Radio)") ||
STRENDS(STR(?label), "Comic books)") ||
STRENDS(STR(?label), "Bosnia and Herzegovina and Croatia)") ||
STRENDS(STR(?label), "Salerno, Italy)") ||
STRENDS(STR(?label), "Ky. and W. Va.)") ||
STRENDS(STR(?label), "Kourion)") ||
STRENDS(STR(?label), "Psychiatry)") ||
STRENDS(STR(?label), "Gambia)") ||
STRENDS(STR(?label), "Elko County, Nev.)") ||
STRENDS(STR(?label), "Michigan City, Ind.)") ||
STRENDS(STR(?label), "Dwarf planet)") ||
STRENDS(STR(?label), "Liquor)") ||
STRENDS(STR(?label), "Writ)") ||
STRENDS(STR(?label), "Supercontinent)") ||
STRENDS(STR(?label), "Leicestershire-Gloucestershire, England)") ||
STRENDS(STR(?label), "Inyo County, Calif.)") ||
STRENDS(STR(?label), "Italy and Austria)") ||
STRENDS(STR(?label), "Nuclear strategy)") ||
STRENDS(STR(?label), "Brain)") ||
STRENDS(STR(?label), "South Queensferry, Scotland)") ||
STRENDS(STR(?label), "Duchesne County, Utah)") ||
STRENDS(STR(?label), "Electric locomotives)") ||
STRENDS(STR(?label), "Adelaide, S.A.)") ||
STRENDS(STR(?label), "Kerkyra, Greece)") ||
STRENDS(STR(?label), "Heidelberg, Germany)") ||
STRENDS(STR(?label), "Guimarães, Portugal)") ||
STRENDS(STR(?label), "Arts)") ||
STRENDS(STR(?label), "Iowa : River)") ||
STRENDS(STR(?label), "P'yŏngyang, Korea)") ||
STRENDS(STR(?label), "Chickens)") ||
STRENDS(STR(?label), "England : Lake)") ||
STRENDS(STR(?label), "India and Burma)") ||
STRENDS(STR(?label), "Sitka, Alaska)") ||
STRENDS(STR(?label), "Kars, Turkey)") ||
STRENDS(STR(?label), "Anhui Sheng, China)") ||
STRENDS(STR(?label), "Chihuahua, Chihuahua, Mexico)") ||
STRENDS(STR(?label), "Norse deity)") ||
STRENDS(STR(?label), "Hydrology)") ||
STRENDS(STR(?label), "George Town, Pulau Pinang, Malaysia)") ||
STRENDS(STR(?label), "Horticulture)") ||
STRENDS(STR(?label), "Microcontroller)") ||
STRENDS(STR(?label), "Mich. : River)") ||
STRENDS(STR(?label), "Asunción, Paraguay)") ||
STRENDS(STR(?label), "Keyboard instrument)") ||
STRENDS(STR(?label), "Scranton, Pa.)") ||
STRENDS(STR(?label), "Night fighter plane)") ||
STRENDS(STR(?label), "Dogs)") ||
STRENDS(STR(?label), "Gila County and Maricopa County, Ariz.)") ||
STRENDS(STR(?label), "Glacial landforms)") ||
STRENDS(STR(?label), "Jewish mourning custom)") ||
STRENDS(STR(?label), "Lichens)") ||
STRENDS(STR(?label), "Combat liaison airplane)") ||
STRENDS(STR(?label), "Penalties)") ||
STRENDS(STR(?label), "N.B. and Québec)") ||
STRENDS(STR(?label), "Lemhi County-Butte County, Idaho)") ||
STRENDS(STR(?label), "N.C.-W. Va.)") ||
STRENDS(STR(?label), "Walnut Creek, Calif.)") ||
STRENDS(STR(?label), "Berkeley, Calif.)") ||
STRENDS(STR(?label), "Waste, etc.)") ||
STRENDS(STR(?label), "Tivoli, Italy)") ||
STRENDS(STR(?label), "Firearms)") ||
STRENDS(STR(?label), "Staten Island, New York, N.Y.)") ||
STRENDS(STR(?label), "Boulder, Colo.)") ||
STRENDS(STR(?label), "Russia and China)") ||
STRENDS(STR(?label), "Social custom)") ||
STRENDS(STR(?label), "Como, Italy)") ||
STRENDS(STR(?label), "Bexar County, Tex.)") ||
STRENDS(STR(?label), "Machine-tools)") ||
STRENDS(STR(?label), "Secret language)") ||
STRENDS(STR(?label), "Southeast Fairbanks Census Area, Alaska)") ||
STRENDS(STR(?label), "B.C. : Lake)") ||
STRENDS(STR(?label), "Church decoration)") ||
STRENDS(STR(?label), "South Caucasian people)") ||
STRENDS(STR(?label), "China and Korea)") ||
STRENDS(STR(?label), "Graham County, Ariz.)") ||
STRENDS(STR(?label), "Miss. and Ala.)") ||
STRENDS(STR(?label), "Embroidery)") ||
STRENDS(STR(?label), "Wimbledon, London, England)") ||
STRENDS(STR(?label), "Armored personnel carrier)") ||
STRENDS(STR(?label), "Onondaga County, N.Y.)") ||
STRENDS(STR(?label), "Personality test)") ||
STRENDS(STR(?label), "Sporting goods)") ||
STRENDS(STR(?label), "Agricultural machinery)") ||
STRENDS(STR(?label), "Mollusk)") ||
STRENDS(STR(?label), "Teton County, Wyo.)") ||
STRENDS(STR(?label), "Mathematical logic)") ||
STRENDS(STR(?label), "Insecticide)") ||
STRENDS(STR(?label), "Tuscaloosa, Ala.)") ||
STRENDS(STR(?label), "Bay of Plenty, N.Z.)") ||
STRENDS(STR(?label), "Kane County, Utah)") ||
STRENDS(STR(?label), "Greece and Turkey)") ||
STRENDS(STR(?label), "Beverages)") ||
STRENDS(STR(?label), "Samos, Greece)") ||
STRENDS(STR(?label), "Va. and Md.)") ||
STRENDS(STR(?label), "Latvia and Estonia)") ||
STRENDS(STR(?label), "Hounslow, London, England)") ||
STRENDS(STR(?label), "Plumbing fixtures)") ||
STRENDS(STR(?label), "Mackinaw City, Mich.)") ||
STRENDS(STR(?label), "Olympia, Greece)") ||
STRENDS(STR(?label), "Expo, International Exhibitions Bureau, 2010, Shanghai, China)") ||
STRENDS(STR(?label), "Colo.-Mexico and Tex.)") ||
STRENDS(STR(?label), "Des Moines, Iowa)") ||
STRENDS(STR(?label), "Bonaire)") ||
STRENDS(STR(?label), "Higher education)") ||
STRENDS(STR(?label), "Falkland Islands)") ||
STRENDS(STR(?label), "Saint Kitts and Nevis)") ||
STRENDS(STR(?label), "The German phrase)") ||
STRENDS(STR(?label), "Lahore Fort, Lahore, Pakistan)") ||
STRENDS(STR(?label), "Monster)") ||
STRENDS(STR(?label), "Taylor County-La Crosse County, Wis.)") ||
STRENDS(STR(?label), "Wyo.-Wash.)") ||
STRENDS(STR(?label), "Kiel, Germany)") ||
STRENDS(STR(?label), "Biblical figures)") ||
STRENDS(STR(?label), "Albania and Greece)") ||
STRENDS(STR(?label), "New York World's Fair, 1939-1940, New York, N.Y.)") ||
STRENDS(STR(?label), "Durham and Northumberland, England)") ||
STRENDS(STR(?label), "Integrated circuits)") ||
STRENDS(STR(?label), "Marlborough District, N.Z.)") ||
STRENDS(STR(?label), "Kosciusko County, Ind.)") ||
STRENDS(STR(?label), "Finland and Russia)") ||
STRENDS(STR(?label), "Language teaching)") ||
STRENDS(STR(?label), "Catholic)") ||
STRENDS(STR(?label), "Argentina and Uruguay)") ||
STRENDS(STR(?label), "Literary, artistic, etc.)") ||
STRENDS(STR(?label), "Network analysis)") ||
STRENDS(STR(?label), "Minn. : Farm)") ||
STRENDS(STR(?label), "Regina, Sask.)") ||
STRENDS(STR(?label), "Brazil-Argentina)") ||
STRENDS(STR(?label), "Minas Gerais and São Paulo, Brazil)") ||
STRENDS(STR(?label), "Rensselaer County, N.Y.)") ||
STRENDS(STR(?label), "Pacific Grove, Calif.)") ||
STRENDS(STR(?label), "Bookselling)") ||
STRENDS(STR(?label), "Canterbury, N.Z.)") ||
STRENDS(STR(?label), "Charlotte, N.C.)") ||
STRENDS(STR(?label), "Washington County, Ohio)") ||
STRENDS(STR(?label), "Tampa, Fla.)") ||
STRENDS(STR(?label), "Shaanxi Sheng, China)") ||
STRENDS(STR(?label), "Programming)") ||
STRENDS(STR(?label), "Equatorial Guinea)") ||
STRENDS(STR(?label), "Stone carving)") ||
STRENDS(STR(?label), "South Orkney Islands)") ||
STRENDS(STR(?label), "Brownsville, Tex.)") ||
STRENDS(STR(?label), "Converse County, Wyo.)") ||
STRENDS(STR(?label), "Portrait painting)") ||
STRENDS(STR(?label), "Private planes)") ||
STRENDS(STR(?label), "Hardin County, Ill.)") ||
STRENDS(STR(?label), "Alger County, Mich.)") ||
STRENDS(STR(?label), "Burundi)") ||
STRENDS(STR(?label), "Goslar, Germany)") ||
STRENDS(STR(?label), "Sevenoaks, England)") ||
STRENDS(STR(?label), "N.S.W.-S.A.)") ||
STRENDS(STR(?label), "N.Y.-Del. and N.J.)") ||
STRENDS(STR(?label), "Novgorod, Russia)") ||
STRENDS(STR(?label), "Lake County, Calif.)") ||
STRENDS(STR(?label), "Rockford, Ill.)") ||
STRENDS(STR(?label), "Computer animation)") ||
STRENDS(STR(?label), "Tex. and Ark.)") ||
STRENDS(STR(?label), "W.A. and N.T.)") ||
STRENDS(STR(?label), "Zither)") ||
STRENDS(STR(?label), "Fort Myers, Fla.)") ||
STRENDS(STR(?label), "Imaginary space vehicle)") ||
STRENDS(STR(?label), "Reykjavík, Iceland)") ||
STRENDS(STR(?label), "Denmark and Germany)") ||
STRENDS(STR(?label), "Fayetteville, Ark.)") ||
STRENDS(STR(?label), "Alexandria, Egypt)") ||
STRENDS(STR(?label), "S.D. and Iowa)") ||
STRENDS(STR(?label), "Essex, England)") ||
STRENDS(STR(?label), "Ohio and Ind.)") ||
STRENDS(STR(?label), "Columbia County, Wis.)") ||
STRENDS(STR(?label), "Brno, Czech Republic)") ||
STRENDS(STR(?label), "Fictitious character : Disney)") ||
STRENDS(STR(?label), "Me. : Lake)") ||
STRENDS(STR(?label), "Utah-Idaho)") ||
STRENDS(STR(?label), "Franklin County, Me.)") ||
STRENDS(STR(?label), "Malay people)") ||
STRENDS(STR(?label), "Germany : Castle)") ||
STRENDS(STR(?label), "Crockett County-Val Verde County, Tex.)") ||
STRENDS(STR(?label), "San Gimignano, Italy)") ||
STRENDS(STR(?label), "Washington, D.C., and Va.)") ||
STRENDS(STR(?label), "Drottningholm, Sweden)") ||
STRENDS(STR(?label), "Alaska : Cape)") ||
STRENDS(STR(?label), "Toy)") ||
STRENDS(STR(?label), "China and India)") ||
STRENDS(STR(?label), "Va. : Estate)") ||
STRENDS(STR(?label), "American colonies)") ||
STRENDS(STR(?label), "Winchester, Va.)") ||
STRENDS(STR(?label), "Racing automobile)") ||
STRENDS(STR(?label), "Chanderi, Ashoknagar, India)") ||
STRENDS(STR(?label), "Matera, Italy)") ||
STRENDS(STR(?label), "Fortaleza, Brazil)") ||
STRENDS(STR(?label), "Otter Tail County, Minn.)") ||
STRENDS(STR(?label), "Århus, Denmark)") ||
STRENDS(STR(?label), "Picture language)") ||
STRENDS(STR(?label), "Formal language)") ||
STRENDS(STR(?label), "Somerset, England)") ||
STRENDS(STR(?label), "Klamath County-Curry County, Or.)") ||
STRENDS(STR(?label), "N.Z. : Mountain)") ||
STRENDS(STR(?label), "Long Beach, Calif.)") ||
STRENDS(STR(?label), "Tulsa, Okla.)") ||
STRENDS(STR(?label), "Stratigraphy)") ||
STRENDS(STR(?label), "Ellicott City, Md.)") ||
STRENDS(STR(?label), "Labor)") ||
STRENDS(STR(?label), "Expo, International Exhibitions Bureau, 2000, Hannover, Germany)") ||
STRENDS(STR(?label), "Richmond, B.C.)") ||
STRENDS(STR(?label), "Zacatecas, Zacatecas, Mexico)") ||
STRENDS(STR(?label), "Central Africa)") ||
STRENDS(STR(?label), "Białystok, Poland)") ||
STRENDS(STR(?label), "Military aeronautics)") ||
STRENDS(STR(?label), "Laredo, Tex.)") ||
STRENDS(STR(?label), "Fort Wayne, Ind.)") ||
STRENDS(STR(?label), "Eagle)") ||
STRENDS(STR(?label), "Ornaments)") ||
STRENDS(STR(?label), "Riverside, Ill.)") ||
STRENDS(STR(?label), "Fictitious character : Macomber)") ||
STRENDS(STR(?label), "Gettysburg, Pa.)") ||
STRENDS(STR(?label), "Kingston, Ont.)") ||
STRENDS(STR(?label), "Midway Islands)") ||
STRENDS(STR(?label), "Halle an der Saale, Germany)") ||
STRENDS(STR(?label), "Lynn, Mass.)") ||
STRENDS(STR(?label), "Fictitious character : Rayner)") ||
STRENDS(STR(?label), "Niagara-on-the-Lake, Ont.)") ||
STRENDS(STR(?label), "Virginia Beach, Va.)") ||
STRENDS(STR(?label), "Social structure)") ||
STRENDS(STR(?label), "Disciples of Christ)") ||
STRENDS(STR(?label), "Amapá and Pará, Brazil)") ||
STRENDS(STR(?label), "Milton Keynes, England)") ||
STRENDS(STR(?label), "Savigliano, Italy)") ||
STRENDS(STR(?label), "St. Albans, England)") ||
STRENDS(STR(?label), "Conn. : Cape)") ||
STRENDS(STR(?label), "Norfolk, Va.)") ||
STRENDS(STR(?label), "Frascati, Italy)") ||
STRENDS(STR(?label), "Catania, Italy)") ||
STRENDS(STR(?label), "Mass. : Cape)") ||
STRENDS(STR(?label), "Mont. : Fort)") ||
STRENDS(STR(?label), "Savona, Italy)") ||
STRENDS(STR(?label), "Painesville, Ohio)") ||
STRENDS(STR(?label), "Doylestown, Pa.)") ||
STRENDS(STR(?label), "Adams County, Idaho)") ||
STRENDS(STR(?label), "Jesi, Italy)") ||
STRENDS(STR(?label), "Fictitious character : Ashforth)") ||
STRENDS(STR(?label), "Ithaca, N.Y.)") ||
STRENDS(STR(?label), "Ill. : Lake)") ||
STRENDS(STR(?label), "South Bend, Ind.)") ||
STRENDS(STR(?label), "Taormina, Italy)") ||
STRENDS(STR(?label), "Fictitious character : Baker)") ||
STRENDS(STR(?label), "Riverside, Calif.)") ||
STRENDS(STR(?label), "York, Pa.)") ||
STRENDS(STR(?label), "Duluth, Minn.)") ||
STRENDS(STR(?label), "Santa Ana, Calif.)") ||
STRENDS(STR(?label), "Park County, Wyo.)") ||
STRENDS(STR(?label), "Albany County, Wyo.)") ||
STRENDS(STR(?label), "Italian)") ||
STRENDS(STR(?label), "Continuing education)") ||
STRENDS(STR(?label), "Waushara County, Wis.)") ||
STRENDS(STR(?label), "Otoe County, Neb.)") ||
STRENDS(STR(?label), "Tuolumne County, Calif.)") ||
STRENDS(STR(?label), "Iron County, Utah)") ||
STRENDS(STR(?label), "Reggio Emilia, Italy)") ||
STRENDS(STR(?label), "Seattle and Shoreline, Wash.)") ||
STRENDS(STR(?label), "Commonwealth Waters)") ||
STRENDS(STR(?label), "Wiltshire, England)") ||
STRENDS(STR(?label), "Elizabeth City, N.C.)") ||
STRENDS(STR(?label), "Blair County-Clinton County, Pa.)") ||
STRENDS(STR(?label), "Trombones (4)") ||
STRENDS(STR(?label), "Umatilla County, Or.)") ||
STRENDS(STR(?label), "Elko County and Eureka County, Nev.)") ||
STRENDS(STR(?label), "Niigata-shi, Japan)") ||
STRENDS(STR(?label), "Yamaguchi-ken, Japan)") ||
STRENDS(STR(?label), "Shiga-ken, Japan)") ||
STRENDS(STR(?label), "Amazonas, Brazil)") ||
STRENDS(STR(?label), "Fictitious character : Loehr)") ||
STRENDS(STR(?label), "Emblem)") ||
STRENDS(STR(?label), "Aranjuez, Spain)") ||
STRENDS(STR(?label), "Asuka-mura, Japan)") ||
STRENDS(STR(?label), "Eswatini and South Africa)") ||
STRENDS(STR(?label), "Durham, England)") ||
STRENDS(STR(?label), "Fictitious character : Welch)") ||
STRENDS(STR(?label), "Siskiyou County, Calif.)") ||
STRENDS(STR(?label), "Fictitious character : Chaucer)") ||
STRENDS(STR(?label), "Petersburg, Va.)") ||
STRENDS(STR(?label), "Reindeer Lake, Sask.)") ||
STRENDS(STR(?label), "North Atlantic Ocean)") ||
STRENDS(STR(?label), "El Pardo, Spain)") ||
STRENDS(STR(?label), "Cartago, Costa Rica)") ||
STRENDS(STR(?label), "Fictitious character : Martal)") ||
STRENDS(STR(?label), "Corydon, Ind.)") ||
STRENDS(STR(?label), "Charlotte Amalie, United States Virgin Islands)") ||
STRENDS(STR(?label), "The Old English word)") ||
STRENDS(STR(?label), "Park County, Mont.)") ||
STRENDS(STR(?label), "Berlin, Germany : Building)") ||
STRENDS(STR(?label), "Exercise)") ||
STRENDS(STR(?label), "Dayton, Ohio)") ||
STRENDS(STR(?label), "Przemyśl, Poland)") ||
STRENDS(STR(?label), "Prayer)") ||
STRENDS(STR(?label), "San Salvador, El Salvador)") ||
STRENDS(STR(?label), "Kan. : Imaginary place)") ||
STRENDS(STR(?label), "Saint Marys City, Md.)") ||
STRENDS(STR(?label), "Hangzhou Shi, China)") ||
STRENDS(STR(?label), "Blues-rock)") ||
STRENDS(STR(?label), "Wilberforce, Ohio)") ||
STRENDS(STR(?label), "Bulgaria and Serbia)") ||
STRENDS(STR(?label), "Va. : Dwelling)") ||
STRENDS(STR(?label), "Strasbourg, France)") ||
STRENDS(STR(?label), "Pontefract, England)") ||
STRENDS(STR(?label), "Fictitious character : Wells)") ||
STRENDS(STR(?label), "Neustadt an der Weinstrasse, Germany)") ||
STRENDS(STR(?label), "Baden, Austria)") ||
STRENDS(STR(?label), "Erlangen, Germany)") ||
STRENDS(STR(?label), "Frankfort, Ky.)") ||
STRENDS(STR(?label), "Carson City, Nev.)") ||
STRENDS(STR(?label), "New Bern, N.C.)") ||
STRENDS(STR(?label), "Bismarck, N.D.)") ||
STRENDS(STR(?label), "Staffordshire-North Lincolnshire, England)") ||
STRENDS(STR(?label), "Fictitious character : Nixon)") ||
STRENDS(STR(?label), "Gijón, Spain)") ||
STRENDS(STR(?label), "Southend-on-Sea, England)") ||
STRENDS(STR(?label), "Caen, France)") ||
STRENDS(STR(?label), "Middlesbrough, England)") ||
STRENDS(STR(?label), "Bognor Regis, England)") ||
STRENDS(STR(?label), "Palm Springs, Calif.)") ||
STRENDS(STR(?label), "Greene County, N.Y.)") ||
STRENDS(STR(?label), "Flathead County, Mont.)") ||
STRENDS(STR(?label), "Electronic organ)") ||
STRENDS(STR(?label), "Weapons)") ||
STRENDS(STR(?label), "Kent County, Md.)") ||
STRENDS(STR(?label), "Barnstable County, Mass.)") ||
STRENDS(STR(?label), "Santiago de Compostela, Spain)") ||
STRENDS(STR(?label), "Norway and Finland)") ||
STRENDS(STR(?label), "N.L. and Québec)") ||
STRENDS(STR(?label), "Knossos)") ||
STRENDS(STR(?label), "Guernsey)") ||
STRENDS(STR(?label), "Bozeman, Mont.)") ||
STRENDS(STR(?label), "Kootenai County, Idaho)") ||
STRENDS(STR(?label), "Baghdad, Iraq)") ||
STRENDS(STR(?label), "Fictitious character : Bergeron)") ||
STRENDS(STR(?label), "Exposition internationale, 1937, Paris, France)") ||
STRENDS(STR(?label), "Church of Jesus Christ of Latter-day Saints)") ||
STRENDS(STR(?label), "Colima, Colima, Mexico)") ||
STRENDS(STR(?label), "England : Manor)") ||
STRENDS(STR(?label), "Guildford, England)") ||
STRENDS(STR(?label), "Rio Arriba County-Socorro County, N.M.)") ||
STRENDS(STR(?label), "Sioux Falls, S.D.)") ||
STRENDS(STR(?label), "Clearwater County, Idaho)") ||
STRENDS(STR(?label), "Huntingdon, England)") ||
STRENDS(STR(?label), "Tijuana, Baja California, Mexico)") ||
STRENDS(STR(?label), "Jazz-rock)") ||
STRENDS(STR(?label), "Counseling)") ||
STRENDS(STR(?label), "Angers, France)") ||
STRENDS(STR(?label), "Muskoka, Ont.)") ||
STRENDS(STR(?label), "Santa Fe County, N.M.)") ||
STRENDS(STR(?label), "Clay County, Fla.)") ||
STRENDS(STR(?label), "Honley, England)") ||
STRENDS(STR(?label), "Willemstad, Curaçao)") ||
STRENDS(STR(?label), "Cumae)") ||
STRENDS(STR(?label), "Fictitious character : Jungman)") ||
STRENDS(STR(?label), "Kingston upon Thames, London, England)") ||
STRENDS(STR(?label), "Worcester County and Franklin County, Mass.)") ||
STRENDS(STR(?label), "Celtic)") ||
STRENDS(STR(?label), "Funk)") ||
STRENDS(STR(?label), "Latin jazz)") ||
STRENDS(STR(?label), "Popular music)") ||
STRENDS(STR(?label), "Louisville, Ky.)") ||
STRENDS(STR(?label), "Softball)") ||
STRENDS(STR(?label), "Stratford-upon-Avon, England)") ||
STRENDS(STR(?label), "Cádiz, Spain)") ||
STRENDS(STR(?label), "Mestre, Italy)") ||
STRENDS(STR(?label), "Calif. : Imaginary place)") ||
STRENDS(STR(?label), "Rochester, Kent, England)") ||
STRENDS(STR(?label), "Kitsap County, Wash.)") ||
STRENDS(STR(?label), "Cayuga County and Tompkins County, N.Y.)") ||
STRENDS(STR(?label), "Colo. and Kan.)") ||
STRENDS(STR(?label), "Ceará, Brazil)") ||
STRENDS(STR(?label), "Stoke-on-Trent, England)") ||
STRENDS(STR(?label), "Exeter, England)") ||
STRENDS(STR(?label), "Middlesex County and Suffolk County, Mass.)") ||
STRENDS(STR(?label), "Harpers Ferry, W. Va.)") ||
STRENDS(STR(?label), "Fairfield, Conn.)") ||
STRENDS(STR(?label), "Fictitious character : Langlois)") ||
STRENDS(STR(?label), "Kurskai︠a︡ oblastʹ-Nizhegorodskai︠a︡ oblastʹ, Russia)") ||
STRENDS(STR(?label), "Perth, Scotland)") ||
STRENDS(STR(?label), "Darmstadt, Germany)") ||
STRENDS(STR(?label), "Zambia and Zimbabwe)") ||
STRENDS(STR(?label), "Málaga, Spain)") ||
STRENDS(STR(?label), "Chattanooga, Tenn.)") ||
STRENDS(STR(?label), "Saint-Malo, France)") ||
STRENDS(STR(?label), "Motorcycles)") ||
STRENDS(STR(?label), "East Saint Louis, Ill.)") ||
STRENDS(STR(?label), "San José, Costa Rica)") ||
STRENDS(STR(?label), "Greek religion)") ||
STRENDS(STR(?label), "Cuyahoga County, Ohio)") ||
STRENDS(STR(?label), "Pa. : Imaginary place)") ||
STRENDS(STR(?label), "Port Jervis, N.Y.)") ||
STRENDS(STR(?label), "Annelida)") ||
STRENDS(STR(?label), "Botswana and Zimbabwe)") ||
STRENDS(STR(?label), "Christian art)") ||
STRENDS(STR(?label), "Rhinoceros)") ||
STRENDS(STR(?label), "Buxton, Derbyshire, England)") ||
STRENDS(STR(?label), "Wilmington, N.C.)") ||
STRENDS(STR(?label), "Miami Beach, Fla.)") ||
STRENDS(STR(?label), "Sesto Fiorentino, Italy)") ||
STRENDS(STR(?label), "Mato Grosso, Brazil)") ||
STRENDS(STR(?label), "1 hand)") ||
STRENDS(STR(?label), "Chester, England)") ||
STRENDS(STR(?label), "Hungary and Slovakia)") ||
STRENDS(STR(?label), "Derby, England)") ||
STRENDS(STR(?label), "Palazzo vecchio, Florence, Italy)") ||
STRENDS(STR(?label), "Groton, Conn.)") ||
STRENDS(STR(?label), "Ni-Vanuatu people)") ||
STRENDS(STR(?label), "Chennai, India)") ||
STRENDS(STR(?label), "Newport, Wales)") ||
STRENDS(STR(?label), "Amphibians)") ||
STRENDS(STR(?label), "Rio Grande do Norte, Brazil)") ||
STRENDS(STR(?label), "Matanzas, Cuba)") ||
STRENDS(STR(?label), "Kyŏngju-si, Korea)") ||
STRENDS(STR(?label), "Fictitious character : Rylant)") ||
STRENDS(STR(?label), "China and Kazakhstan)") ||
STRENDS(STR(?label), "Mannheim, Germany)") ||
STRENDS(STR(?label), "Castel Gandolfo, Italy)") ||
STRENDS(STR(?label), "N.Z. : Bay)") ||
STRENDS(STR(?label), "Bandung, Indonesia)") ||
STRENDS(STR(?label), "Lausanne, Switzerland)") ||
STRENDS(STR(?label), "'s-Hertogenbosch, Netherlands)") ||
STRENDS(STR(?label), "Norfolk, England)") ||
STRENDS(STR(?label), "Free State, South Africa)") ||
STRENDS(STR(?label), "Fredericksburg, Va.)") ||
STRENDS(STR(?label), "New York, N.Y. : Broadway)") ||
STRENDS(STR(?label), "Jalisco, Mexico)") ||
STRENDS(STR(?label), "Musselburgh, Scotland)") ||
STRENDS(STR(?label), "Monroe County, Ind.)") ||
STRENDS(STR(?label), "Figueira da Foz, Portugal)") ||
STRENDS(STR(?label), "Hereford, England)") ||
STRENDS(STR(?label), "Bielefeld, Germany)") ||
STRENDS(STR(?label), "Antalya İli-Mersin İli, Turkey)") ||
STRENDS(STR(?label), "Graz, Austria)") ||
STRENDS(STR(?label), "Enfield, London, England)") ||
STRENDS(STR(?label), "West Africa)") ||
STRENDS(STR(?label), "Azerbaijani music)") ||
STRENDS(STR(?label), "India : Region)") ||
STRENDS(STR(?label), "Kennebunk, Me.)") ||
STRENDS(STR(?label), "Croydon, London, England)") ||
STRENDS(STR(?label), "Dundee, Scotland)") ||
STRENDS(STR(?label), "Suffolk County, N.Y.)") ||
STRENDS(STR(?label), "Iver, England)") ||
STRENDS(STR(?label), "Stellenbosch, South Africa)") ||
STRENDS(STR(?label), "Silifke, Turkey)") ||
STRENDS(STR(?label), "Ch'ŏngju-si, Ch'ungch'ŏng-bukto, Korea)") ||
STRENDS(STR(?label), "Clearwater County and Idaho County, Idaho)") ||
STRENDS(STR(?label), "Barbados)") ||
STRENDS(STR(?label), "Nijmegen, Netherlands)") ||
STRENDS(STR(?label), "Yihe Yuan, Beijing, China)") ||
STRENDS(STR(?label), "Beverly Hills, Calif.)") ||
STRENDS(STR(?label), "Qatar)") ||
STRENDS(STR(?label), "Velikiĭ Novgorod, Russia)") ||
STRENDS(STR(?label), "Stafford, England)") ||
STRENDS(STR(?label), "Erzurum, Turkey)") ||
STRENDS(STR(?label), "Osage County, Okla.)") ||
STRENDS(STR(?label), "The Aramaic word)") ||
STRENDS(STR(?label), "Bonner County, Idaho)") ||
STRENDS(STR(?label), "Ekaterinburg, Russia)") ||
STRENDS(STR(?label), "Cariboo, B.C.)") ||
STRENDS(STR(?label), "Huddersfield, England)") ||
STRENDS(STR(?label), "Pan-American Exposition, 1901, Buffalo, N.Y.)") ||
STRENDS(STR(?label), "Villahermosa, Tabasco, Mexico)") ||
STRENDS(STR(?label), "Hikone-shi, Japan)") ||
STRENDS(STR(?label), "Xylophone)") ||
STRENDS(STR(?label), "Oaxaca, Mexico)") ||
STRENDS(STR(?label), "Mitcham, London, England)") ||
STRENDS(STR(?label), "New Canaan, Conn.)") ||
STRENDS(STR(?label), "Mérida, Mexico)") ||
STRENDS(STR(?label), "Mauritius)") ||
STRENDS(STR(?label), "Tōdaiji, Nara-shi, Japan)") ||
STRENDS(STR(?label), "The Persian word)") ||
STRENDS(STR(?label), "Frankfurt (Oder)") ||
STRENDS(STR(?label), "Sumerian law)") ||
STRENDS(STR(?label), "Todi, Italy)") ||
STRENDS(STR(?label), "Locri Epizephyrii)") ||
STRENDS(STR(?label), "Grand County, Colo.)") ||
STRENDS(STR(?label), "Ti︠u︡menskai︠a︡ oblastʹ, Russia)") ||
STRENDS(STR(?label), "The concept)") ||
STRENDS(STR(?label), "Aleppo, Syria)") ||
STRENDS(STR(?label), "Skagway, Alaska)") ||
STRENDS(STR(?label), "Faenza, Italy)") ||
STRENDS(STR(?label), "Vārānasi, Uttar Pradesh, India)") ||
STRENDS(STR(?label), "LaPorte County, Ind.)") ||
STRENDS(STR(?label), "Gorizia, Italy)") ||
STRENDS(STR(?label), "Aihole, Karnataka, India)") ||
STRENDS(STR(?label), "Gwalior, India)") ||
STRENDS(STR(?label), "Sardinia, Italy)") ||
STRENDS(STR(?label), "Ālampur, India)") ||
STRENDS(STR(?label), "Manual training)") ||
STRENDS(STR(?label), "Māmallapuram, India)") ||
STRENDS(STR(?label), "Structural members)") ||
STRENDS(STR(?label), "Karnak, Egypt)") ||
STRENDS(STR(?label), "Greenland and Nunavut)") ||
STRENDS(STR(?label), "Douala, Cameroon)") ||
STRENDS(STR(?label), "Philae Temple Complex, Egypt)") ||
STRENDS(STR(?label), "Nuevo León, Mexico)") ||
STRENDS(STR(?label), "Shoes)") ||
STRENDS(STR(?label), "Southampton, England)") ||
STRENDS(STR(?label), "Mito-shi, Japan)") ||
STRENDS(STR(?label), "Sound)") ||
STRENDS(STR(?label), "Educational method)") ||
STRENDS(STR(?label), "The Egyptian word)") ||
STRENDS(STR(?label), "Chino-shi, Japan)") ||
STRENDS(STR(?label), "Structural engineering)") ||
STRENDS(STR(?label), "Auditing)") ||
STRENDS(STR(?label), "Polish literature)") ||
STRENDS(STR(?label), "Shimonoseki-shi, Japan)") ||
STRENDS(STR(?label), "Bagpipes (2)") ||
STRENDS(STR(?label), "Nunavut : Inlet)") ||
STRENDS(STR(?label), "Bear)") ||
STRENDS(STR(?label), "Stochastic processes)") ||
STRENDS(STR(?label), "Germany and France)") ||
STRENDS(STR(?label), "Horns (4)") ||
STRENDS(STR(?label), "Ecclesiastical law)") ||
STRENDS(STR(?label), "Cabala)") ||
STRENDS(STR(?label), "in religious orders, congregations, etc.)") ||
STRENDS(STR(?label), "Clavichord)") ||
STRENDS(STR(?label), "Organ, violin, viola da gamba)") ||
STRENDS(STR(?label), "Piano quartet)") ||
STRENDS(STR(?label), "String trio with string orchestra)") ||
STRENDS(STR(?label), "Viols (2)") ||
STRENDS(STR(?label), "Viols (3)") ||
STRENDS(STR(?label), "Viols (4)") ||
STRENDS(STR(?label), "Viols (5)") ||
STRENDS(STR(?label), "Viols (6)") ||
STRENDS(STR(?label), "Solid state physics)") ||
STRENDS(STR(?label), "Fiesole, Italy)") ||
STRENDS(STR(?label), "Nagahama-shi, Japan)") ||
STRENDS(STR(?label), "Suzuka-shi, Japan)") ||
STRENDS(STR(?label), "Watari-chō, Japan)") ||
STRENDS(STR(?label), "Tagajō-shi, Japan)") ||
STRENDS(STR(?label), "Takahata-machi, Japan)") ||
STRENDS(STR(?label), "Harp with string orchestra)") ||
STRENDS(STR(?label), "Unspecified instrument and organ)") ||
STRENDS(STR(?label), "Unspecified instrument and piano)") ||
STRENDS(STR(?label), "Polyphonic chansons)") ||
STRENDS(STR(?label), "Shenyang, Liaoning Sheng, China)") ||
STRENDS(STR(?label), "Courts-martial)") ||
STRENDS(STR(?label), "Bassoon and organ)") ||
STRENDS(STR(?label), "Viola and organ)") ||
STRENDS(STR(?label), "Men's voices, 4 parts)") ||
STRENDS(STR(?label), "Mixed voices)") ||
STRENDS(STR(?label), "Chromatography)") ||
STRENDS(STR(?label), "Scroll)") ||
STRENDS(STR(?label), "Tarragona, Spain)") ||
STRENDS(STR(?label), "Optical instrument)") ||
STRENDS(STR(?label), "Bassoon and cello)") ||
STRENDS(STR(?label), "Bassoon, clarinet, flute, horn)") ||
STRENDS(STR(?label), "Bassoon, violins (2)") ||
STRENDS(STR(?label), "Bassoon with string orchestra)") ||
STRENDS(STR(?label), "Carillon)") ||
STRENDS(STR(?label), "Clarinet and cello)") ||
STRENDS(STR(?label), "Clarinet with string orchestra)") ||
STRENDS(STR(?label), "Double bass with string orchestra)") ||
STRENDS(STR(?label), "Double basses (2)") ||
STRENDS(STR(?label), "Flute and oboe)") ||
STRENDS(STR(?label), "Flute with instrumental ensemble)") ||
STRENDS(STR(?label), "Guitars (3)") ||
STRENDS(STR(?label), "Guitars (4)") ||
STRENDS(STR(?label), "Harp and piano)") ||
STRENDS(STR(?label), "Harp with chamber orchestra)") ||
STRENDS(STR(?label), "Harps (4)") ||
STRENDS(STR(?label), "Jazz ensemble)") ||
STRENDS(STR(?label), "Jazz ensemble with chamber orchestra)") ||
STRENDS(STR(?label), "Lutes (2)") ||
STRENDS(STR(?label), "Oboe and cello)") ||
STRENDS(STR(?label), "Oboe with chamber orchestra)") ||
STRENDS(STR(?label), "Oboes (3)") ||
STRENDS(STR(?label), "Percussion and piano)") ||
STRENDS(STR(?label), "Piano, clarinet, violin, cello)") ||
STRENDS(STR(?label), "Piano, horn, violin)") ||
STRENDS(STR(?label), "Piano with band)") ||
STRENDS(STR(?label), "Piano with chamber orchestra)") ||
STRENDS(STR(?label), "Saxophone with string orchestra)") ||
STRENDS(STR(?label), "String quartet with string orchestra)") ||
STRENDS(STR(?label), "Tuba)") ||
STRENDS(STR(?label), "Viola and double bass)") ||
STRENDS(STR(?label), "Violas (4)") ||
STRENDS(STR(?label), "Violin and double bass)") ||
STRENDS(STR(?label), "Cello and double bass)") ||
STRENDS(STR(?label), "Cello and harp)") ||
STRENDS(STR(?label), "Cello with string orchestra)") ||
STRENDS(STR(?label), "Cellos (3)") ||
STRENDS(STR(?label), "Light)") ||
STRENDS(STR(?label), "Metals)") ||
STRENDS(STR(?label), "Ukraine and Moldova)") ||
STRENDS(STR(?label), "Unspecified instrument and continuo)") ||
STRENDS(STR(?label), "Besançon, France)") ||
STRENDS(STR(?label), "Bagheria, Italy)") ||
STRENDS(STR(?label), "Kawasaki-shi, Japan)") ||
STRENDS(STR(?label), "Kumamoto-shi, Japan)") ||
STRENDS(STR(?label), "Natchez, Miss.)") ||
STRENDS(STR(?label), "Finland : Lake)") ||
STRENDS(STR(?label), "People)") ||
STRENDS(STR(?label), "Manchurian people)") ||
STRENDS(STR(?label), "Tokelau)") ||
STRENDS(STR(?label), "Tapestries)") ||
STRENDS(STR(?label), "Matsubara-shi, Japan)") ||
STRENDS(STR(?label), "N.M. and Colo.)") ||
STRENDS(STR(?label), "Radioactive substances)") ||
STRENDS(STR(?label), "Germanic deity)") ||
STRENDS(STR(?label), "Jaina deity)") ||
STRENDS(STR(?label), "Microscopy)") ||
STRENDS(STR(?label), "Yoshii-machi, Fukuoka-ken, Japan)") ||
STRENDS(STR(?label), "Ayase-shi, Japan)") ||
STRENDS(STR(?label), "Sapporo-shi, Japan)") ||
STRENDS(STR(?label), "Taxation)") ||
STRENDS(STR(?label), "Samaritan law)") ||
STRENDS(STR(?label), "Kaminokuni-chō, Japan)") ||
STRENDS(STR(?label), "Fukuyama-shi, Japan)") ||
STRENDS(STR(?label), "Kanagawa-ken, Japan)") ||
STRENDS(STR(?label), "The Slavic word)") ||
STRENDS(STR(?label), "Minakami-machi, Japan)") ||
STRENDS(STR(?label), "Kosugi-machi, Japan)") ||
STRENDS(STR(?label), "Hachijō-machi, Japan)") ||
STRENDS(STR(?label), "Nakamichi-machi, Japan)") ||
STRENDS(STR(?label), "Akagi-mura, Japan)") ||
STRENDS(STR(?label), "Kumage-chō, Japan)") ||
STRENDS(STR(?label), "Takayama-shi, Japan)") ||
STRENDS(STR(?label), "Tosayamada-chō, Japan)") ||
STRENDS(STR(?label), "Sendai-shi, Kagoshima-ken, Japan)") ||
STRENDS(STR(?label), "Chōfu-shi, Japan)") ||
STRENDS(STR(?label), "Higashiōsaka-shi, Japan)") ||
STRENDS(STR(?label), "Sakaigawa-mura, Japan)") ||
STRENDS(STR(?label), "Takaoka-shi, Japan)") ||
STRENDS(STR(?label), "Maibara-chō, Japan)") ||
STRENDS(STR(?label), "Machida-shi, Japan)") ||
STRENDS(STR(?label), "Shinʼyoshitomi-mura, Japan)") ||
STRENDS(STR(?label), "Ōme-shi, Japan)") ||
STRENDS(STR(?label), "Himi-shi, Japan)") ||
STRENDS(STR(?label), "Atō-chō, Japan)") ||
STRENDS(STR(?label), "Tateyama-machi, Japan)") ||
STRENDS(STR(?label), "Ōuda-chō, Japan)") ||
STRENDS(STR(?label), "Iwata-shi, Japan)") ||
STRENDS(STR(?label), "Kikugawa-chō, Yamaguchi-ken, Japan)") ||
STRENDS(STR(?label), "Fukuchi-mura, Aomori-ken, Japan)") ||
STRENDS(STR(?label), "Hesse, Germany)") ||
STRENDS(STR(?label), "Man. : Lake)") ||
STRENDS(STR(?label), "Sawyer County, Wis.)") ||
STRENDS(STR(?label), "Igbo law)") ||
STRENDS(STR(?label), "Zambia and Mozambique)") ||
STRENDS(STR(?label), "Piccolo and piano)") ||
STRENDS(STR(?label), "Chihuahua, Mexico)") ||
STRENDS(STR(?label), "New England)") ||
STRENDS(STR(?label), "Hamilton, N.J.)") ||
STRENDS(STR(?label), "Piano, flute, violins (2)") ||
STRENDS(STR(?label), "Piano, recorders (3)") ||
STRENDS(STR(?label), "Ondes Martenot (2)") ||
STRENDS(STR(?label), "Venezuela and Colombia)") ||
STRENDS(STR(?label), "Petroleum geology)") ||
STRENDS(STR(?label), "Postage stamps)") ||
STRENDS(STR(?label), "Koblenz, Germany)") ||
STRENDS(STR(?label), "Gulf Province, Papua New Guinea)") ||
STRENDS(STR(?label), "Flute, violin, viola, cello)") ||
STRENDS(STR(?label), "Guitar, violins (2)") ||
STRENDS(STR(?label), "Organ, oboes (2)") ||
STRENDS(STR(?label), "Piano, flute, percussion, cello)") ||
STRENDS(STR(?label), "Harpsichord, recorders (2)") ||
STRENDS(STR(?label), "Harpsichord, viols (2)") ||
STRENDS(STR(?label), "Qld. and N.T.)") ||
STRENDS(STR(?label), "Belgium and France)") ||
STRENDS(STR(?label), "Colo.-Utah)") ||
STRENDS(STR(?label), "Dominican Republic and Haiti)") ||
STRENDS(STR(?label), "Grampian, Scotland)") ||
STRENDS(STR(?label), "Walworth County and Racine County, Wis.)") ||
STRENDS(STR(?label), "Baritone and piano)") ||
STRENDS(STR(?label), "Bassoon and continuo)") ||
STRENDS(STR(?label), "Irkutskai︠a︡ oblastʹ, Russia)") ||
STRENDS(STR(?label), "Balalaika and piano)") ||
STRENDS(STR(?label), "Bassoon and flute)") ||
STRENDS(STR(?label), "Double bass and piano)") ||
STRENDS(STR(?label), "Flute and harpsichord)") ||
STRENDS(STR(?label), "Oboe and harpsichord)") ||
STRENDS(STR(?label), "Viola and harpsichord)") ||
STRENDS(STR(?label), "Viole da gamba (2)") ||
STRENDS(STR(?label), "Ibiza, Spain)") ||
STRENDS(STR(?label), "Clarinet with orchestra)") ||
STRENDS(STR(?label), "Guitar, violin, viola)") ||
STRENDS(STR(?label), "Harp with orchestra)") ||
STRENDS(STR(?label), "Harpsichord, violas (2)") ||
STRENDS(STR(?label), "Harpsichord, violin, viola da gamba)") ||
STRENDS(STR(?label), "Percussion with orchestra)") ||
STRENDS(STR(?label), "Piano, flute, oboe)") ||
STRENDS(STR(?label), "Pipes (4)") ||
STRENDS(STR(?label), "Auvernier, Switzerland)") ||
STRENDS(STR(?label), "Clarinet and harp)") ||
STRENDS(STR(?label), "Tubas (2)") ||
STRENDS(STR(?label), "Bassoons (3)") ||
STRENDS(STR(?label), "Greece : Region)") ||
STRENDS(STR(?label), "Antananarivo, Madagascar)") ||
STRENDS(STR(?label), "Guitar, unspecified instruments (2)") ||
STRENDS(STR(?label), "Cambodia and Vietnam)") ||
STRENDS(STR(?label), "Urbana, Ill.)") ||
STRENDS(STR(?label), "Tex. : Imaginary place)") ||
STRENDS(STR(?label), "Fictitious character : Marshall)") ||
STRENDS(STR(?label), "Fictitious character : Koller)") ||
STRENDS(STR(?label), "Fictitious character : Day)") ||
STRENDS(STR(?label), "Fictitious character : Hurwitz)") ||
STRENDS(STR(?label), "Fictitious character : Cameron)") ||
STRENDS(STR(?label), "Ukraine : Extinct city)") ||
STRENDS(STR(?label), "Monza, Italy)") ||
STRENDS(STR(?label), "United States law)") ||
STRENDS(STR(?label), "Wörlitz, Germany)") ||
STRENDS(STR(?label), "Belize and Guatemala)") ||
STRENDS(STR(?label), "Vertebra)") ||
STRENDS(STR(?label), "Etruscan deity)") ||
STRENDS(STR(?label), "Unit)") ||
STRENDS(STR(?label), "Roraima, Brazil)") ||
STRENDS(STR(?label), "Cymbals)") ||
STRENDS(STR(?label), "Neurology)") ||
STRENDS(STR(?label), "England : Estate)") ||
STRENDS(STR(?label), "Aerofoils)") ||
STRENDS(STR(?label), "Rome, Italy : Park)") ||
STRENDS(STR(?label), "Bryophytes)") ||
STRENDS(STR(?label), "Olbasa)") ||
STRENDS(STR(?label), "Electronic mail)") ||
STRENDS(STR(?label), "Preston, Lancashire, England)") ||
STRENDS(STR(?label), "Military decoration)") ||
STRENDS(STR(?label), "McCreary County, Ky.)") ||
STRENDS(STR(?label), "Fla. and Ga.)") ||
STRENDS(STR(?label), "Khȯvsgȯl Aĭmag and Bulgan Aĭmag, Mongolia)") ||
STRENDS(STR(?label), "Athens)") ||
STRENDS(STR(?label), "Forlì, Italy)") ||
STRENDS(STR(?label), "New York, N.Y. : Park Row)") ||
STRENDS(STR(?label), "Surveying)") ||
STRENDS(STR(?label), "Fiber)") ||
STRENDS(STR(?label), "Mass. : Coast)") ||
STRENDS(STR(?label), "Bückeburg, Germany)") ||
STRENDS(STR(?label), "Ingham County, Mich.)") ||
STRENDS(STR(?label), "Roquebrune-Cap-Martin, France)") ||
STRENDS(STR(?label), "Dulcimer)") ||
STRENDS(STR(?label), "Alaska and B.C.)") ||
STRENDS(STR(?label), "Roads)") ||
STRENDS(STR(?label), "Schwetzingen, Germany)") ||
STRENDS(STR(?label), "Anoka County, Minn.)") ||
STRENDS(STR(?label), "World Wide Web)") ||
STRENDS(STR(?label), "Anthropology)") ||
STRENDS(STR(?label), "Bowes, England)") ||
STRENDS(STR(?label), "Eritrea and Sudan)") ||
STRENDS(STR(?label), "Rosario, Santa Fe, Argentina)") ||
STRENDS(STR(?label), "Scotland : Mountain)") ||
STRENDS(STR(?label), "Earthwork)") ||
STRENDS(STR(?label), "Web-based instruction)") ||
STRENDS(STR(?label), "Urayasu-shi, Japan)") ||
STRENDS(STR(?label), "B.C. : Island)") ||
STRENDS(STR(?label), "Meteorites)") ||
STRENDS(STR(?label), "English poetry)") ||
STRENDS(STR(?label), "Vision)") ||
STRENDS(STR(?label), "Weighing instruments)") ||
STRENDS(STR(?label), "Ann Arbor, Mich.)") ||
STRENDS(STR(?label), "Langhorne, Pa.)") ||
STRENDS(STR(?label), "Gauteng, South Africa)") ||
STRENDS(STR(?label), "N.S.W. : Lake)") ||
STRENDS(STR(?label), "N.D. : River)") ||
STRENDS(STR(?label), "Lord's Cricket Ground, London, England)") ||
STRENDS(STR(?label), "Kodiak Island Borough, Alaska)") ||
STRENDS(STR(?label), "La. : Imaginary place)") ||
STRENDS(STR(?label), "Montserrat)") ||
STRENDS(STR(?label), "Rome, N.Y.)") ||
STRENDS(STR(?label), "Cameroon and Chad)") ||
STRENDS(STR(?label), "West Indies)") ||
STRENDS(STR(?label), "Montenegro-Bosnia and Herzegovina)") ||
STRENDS(STR(?label), "Amusement ride)") ||
STRENDS(STR(?label), "Austria and Slovenia)") ||
STRENDS(STR(?label), "Christian eschatology)") ||
STRENDS(STR(?label), "Dynamics)") ||
STRENDS(STR(?label), "Bloemfontein, South Africa)") ||
STRENDS(STR(?label), "Yoichi-chō, Japan)") ||
STRENDS(STR(?label), "West Midlands and Warwickshire, England)") ||
STRENDS(STR(?label), "Kent, N.B.)") ||
STRENDS(STR(?label), "Babylon)") ||
STRENDS(STR(?label), "Point Hope, Alaska)") ||
STRENDS(STR(?label), "R.I. : Island)") ||
STRENDS(STR(?label), "Waterloo, N.Y.)") ||
STRENDS(STR(?label), "Music fans)") ||
STRENDS(STR(?label), "Arkhangaĭ Aĭmag and Khȯvsgȯl Aĭmag, Mongolia)") ||
STRENDS(STR(?label), "New York, N.Y. : Forty-fourth Street)") ||
STRENDS(STR(?label), "N.B. and N.S.)") ||
STRENDS(STR(?label), "British Indian Ocean Territory)") ||
STRENDS(STR(?label), "Galleria degli Uffizi)") ||
STRENDS(STR(?label), "Ind. : River)") ||
STRENDS(STR(?label), "Kailua Kona, Hawaii)") ||
STRENDS(STR(?label), "Noble County, Ind. : Lake)") ||
STRENDS(STR(?label), "Man. and Sask.)") ||
STRENDS(STR(?label), "England : Island)") ||
STRENDS(STR(?label), "Zwolle, Netherlands)") ||
STRENDS(STR(?label), "Bayreuth, Germany)") ||
STRENDS(STR(?label), "Mathematical instruments)") ||
STRENDS(STR(?label), "Baku, Azerbaijan)") ||
STRENDS(STR(?label), "N.Y. : Valley)") ||
STRENDS(STR(?label), "Kazakhstan and China)") ||
STRENDS(STR(?label), "Minn. : Imaginary place)") ||
STRENDS(STR(?label), "Oakham, Rutland, England)") ||
STRENDS(STR(?label), "Alnwick, England)") ||
STRENDS(STR(?label), "Animal behavior)") ||
STRENDS(STR(?label), "N.Y. : Peninsula)") ||
STRENDS(STR(?label), "King County, Wash. : River)") ||
STRENDS(STR(?label), "Chile and Argentina)") ||
STRENDS(STR(?label), "Papuan)") ||
STRENDS(STR(?label), "India and Sri Lanka)")
		)
		?s ?p ?o .
	}
	UNION
	{
		?o skos:prefLabel ?label .
		FILTER(
STRENDS(STR(?label), "England)") ||
STRENDS(STR(?label), "Wash.)") ||
STRENDS(STR(?label), "Italy)") ||
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
STRENDS(STR(?label), "Scotland)") ||
STRENDS(STR(?label), "Pa.)") ||
STRENDS(STR(?label), "N.Z.)") ||
STRENDS(STR(?label), "South Africa)") ||
STRENDS(STR(?label), "N.Y.)") ||
STRENDS(STR(?label), "Mont.)") ||
STRENDS(STR(?label), "Turkey)") ||
STRENDS(STR(?label), "Indonesia)") ||
STRENDS(STR(?label), "Peru)") ||
STRENDS(STR(?label), "Wis.)") ||
STRENDS(STR(?label), "Va.)") ||
STRENDS(STR(?label), "Mass.)") ||
STRENDS(STR(?label), "Ont.)") ||
STRENDS(STR(?label), "Ind.)") ||
STRENDS(STR(?label), "Poland)") ||
STRENDS(STR(?label), "Ill.)") ||
STRENDS(STR(?label), "Wales)") ||
STRENDS(STR(?label), "Me.)") ||
STRENDS(STR(?label), "Ireland)") ||
STRENDS(STR(?label), "S.C.)") ||
STRENDS(STR(?label), "Washington, D.C.)") ||
STRENDS(STR(?label), "Greece)") ||
STRENDS(STR(?label), "Switzerland)") ||
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
STRENDS(STR(?label), "Austria)") ||
STRENDS(STR(?label), "N.S.W.)") ||
STRENDS(STR(?label), "La.)") ||
STRENDS(STR(?label), "Ga.)") ||
STRENDS(STR(?label), "Tenn.)") ||
STRENDS(STR(?label), "Egypt)") ||
STRENDS(STR(?label), "Ark.)") ||
STRENDS(STR(?label), "Denmark)") ||
STRENDS(STR(?label), "Antarctica)") ||
STRENDS(STR(?label), "Hawaii)") ||
STRENDS(STR(?label), "Romania)") ||
STRENDS(STR(?label), "Mo.)") ||
STRENDS(STR(?label), "Ala.)") ||
STRENDS(STR(?label), "Chile)") ||
STRENDS(STR(?label), "Qld.)") ||
STRENDS(STR(?label), "Vic.)") ||
STRENDS(STR(?label), "S.D.)") ||
STRENDS(STR(?label), "N.H.)") ||
STRENDS(STR(?label), "Ukraine)") ||
STRENDS(STR(?label), "Neb.)") ||
STRENDS(STR(?label), "Conn.)") ||
STRENDS(STR(?label), "N.D.)") ||
STRENDS(STR(?label), "Thailand)") ||
STRENDS(STR(?label), "Czech Republic)") ||
STRENDS(STR(?label), "Nunavut)") ||
STRENDS(STR(?label), "Papua New Guinea)") ||
STRENDS(STR(?label), "Netherlands)") ||
STRENDS(STR(?label), "Man.)") ||
STRENDS(STR(?label), "Hungary)") ||
STRENDS(STR(?label), "Ecuador)") ||
STRENDS(STR(?label), "Miss.)") ||
STRENDS(STR(?label), "W. Va.)") ||
STRENDS(STR(?label), "Sask.)") ||
STRENDS(STR(?label), "Iran)") ||
STRENDS(STR(?label), "Kan.)") ||
STRENDS(STR(?label), "Iceland)") ||
STRENDS(STR(?label), "Pakistan)") ||
STRENDS(STR(?label), "Finland)") ||
STRENDS(STR(?label), "Venezuela)") ||
STRENDS(STR(?label), "Kenya)") ||
STRENDS(STR(?label), "Tanzania)") ||
STRENDS(STR(?label), "Bolivia)") ||
STRENDS(STR(?label), "Vt.)") ||
STRENDS(STR(?label), "Guatemala)") ||
STRENDS(STR(?label), "Croatia)") ||
STRENDS(STR(?label), "Syria)") ||
STRENDS(STR(?label), "Singapore)") ||
STRENDS(STR(?label), "Iowa)") ||
STRENDS(STR(?label), "N.W.T.)") ||
STRENDS(STR(?label), "Jordan)") ||
STRENDS(STR(?label), "Slovenia)") ||
STRENDS(STR(?label), "Costa Rica)") ||
STRENDS(STR(?label), "Bulgaria)") ||
STRENDS(STR(?label), "Vietnam)") ||
STRENDS(STR(?label), "Cuba)") ||
STRENDS(STR(?label), "Nepal)") ||
STRENDS(STR(?label), "Slovakia)") ||
STRENDS(STR(?label), "N.L.)") ||
STRENDS(STR(?label), "Namibia)") ||
STRENDS(STR(?label), "The French word)") ||
STRENDS(STR(?label), "Sri Lanka)") ||
STRENDS(STR(?label), "N.T.)") ||
STRENDS(STR(?label), "S.A.)") ||
STRENDS(STR(?label), "Cyprus)") ||
STRENDS(STR(?label), "Northern Ireland)") ||
STRENDS(STR(?label), "Belgium)") ||
STRENDS(STR(?label), "N.B.)") ||
STRENDS(STR(?label), "Tas.)") ||
STRENDS(STR(?label), "Belize)") ||
STRENDS(STR(?label), "Statistics)") ||
STRENDS(STR(?label), "Taiwan)") ||
STRENDS(STR(?label), "Tokyo, Japan)") ||
STRENDS(STR(?label), "Turkic people)") ||
STRENDS(STR(?label), "Morocco)") ||
STRENDS(STR(?label), "Geology)") ||
STRENDS(STR(?label), "Fish)") ||
STRENDS(STR(?label), "Sudan)") ||
STRENDS(STR(?label), "Provo, Utah)") ||
STRENDS(STR(?label), "Violins (2)") ||
STRENDS(STR(?label), "Chemistry)") ||
STRENDS(STR(?label), "Chess)") ||
STRENDS(STR(?label), "Micronesia)") ||
STRENDS(STR(?label), "Jet transport)") ||
STRENDS(STR(?label), "Arab people)") ||
STRENDS(STR(?label), "Insects)") ||
STRENDS(STR(?label), "Persons)") ||
STRENDS(STR(?label), "Greenland)") ||
STRENDS(STR(?label), "Seoul, Korea)") ||
STRENDS(STR(?label), "Education)") ||
STRENDS(STR(?label), "Cameroon)") ||
STRENDS(STR(?label), "Algeria)") ||
STRENDS(STR(?label), "Madrid, Spain)") ||
STRENDS(STR(?label), "Nepalese people)") ||
STRENDS(STR(?label), "Training plane)") ||
STRENDS(STR(?label), "Burma)") ||
STRENDS(STR(?label), "Coin)") ||
STRENDS(STR(?label), "Madagascar)") ||
STRENDS(STR(?label), "Dublin, Ireland)") ||
STRENDS(STR(?label), "Munich, Germany)") ||
STRENDS(STR(?label), "Wine)") ||
STRENDS(STR(?label), "Sabah, Malaysia)") ||
STRENDS(STR(?label), "Mongolia)") ||
STRENDS(STR(?label), "Jazz)") ||
STRENDS(STR(?label), "Flutes (2)") ||
STRENDS(STR(?label), "Yukon)") ||
STRENDS(STR(?label), "Logic)") ||
STRENDS(STR(?label), "Bahamas)") ||
STRENDS(STR(?label), "Computer network protocol)") ||
STRENDS(STR(?label), "Fiji)") ||
STRENDS(STR(?label), "Iraq)") ||
STRENDS(STR(?label), "Kazakhstan)") ||
STRENDS(STR(?label), "Edinburgh, Scotland)") ||
STRENDS(STR(?label), "Computer programs)") ||
STRENDS(STR(?label), "Honduras)") ||
STRENDS(STR(?label), "Athens, Greece)") ||
STRENDS(STR(?label), "São Paulo, Brazil)") ||
STRENDS(STR(?label), "French Polynesia)") ||
STRENDS(STR(?label), "Saudi Arabia)") ||
STRENDS(STR(?label), "Birds)") ||
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
STRENDS(STR(?label), "Plant)") ||
STRENDS(STR(?label), "Islam)") ||
STRENDS(STR(?label), "King County, Wash.)") ||
STRENDS(STR(?label), "Zambia)") ||
STRENDS(STR(?label), "Chinese people)") ||
STRENDS(STR(?label), "Great Britain)") ||
STRENDS(STR(?label), "Denver, Colo.)") ||
STRENDS(STR(?label), "German)") ||
STRENDS(STR(?label), "Portland, Me.)") ||
STRENDS(STR(?label), "Bologna, Italy)") ||
STRENDS(STR(?label), "Amsterdam, Netherlands)") ||
STRENDS(STR(?label), "Meteorology)") ||
STRENDS(STR(?label), "Naples, Italy)") ||
STRENDS(STR(?label), "San Diego, Calif.)") ||
STRENDS(STR(?label), "Dominican Republic)") ||
STRENDS(STR(?label), "Maebashi-shi, Japan)") ||
STRENDS(STR(?label), "Turin, Italy)") ||
STRENDS(STR(?label), "Mollusks)") ||
STRENDS(STR(?label), "Estonia)") ||
STRENDS(STR(?label), "Electronics)") ||
STRENDS(STR(?label), "Economics)") ||
STRENDS(STR(?label), "Or. and Wash.)") ||
STRENDS(STR(?label), "Literary movement)") ||
STRENDS(STR(?label), "Steam locomotive)") ||
STRENDS(STR(?label), "Marshall Islands)") ||
STRENDS(STR(?label), "Cult)") ||
STRENDS(STR(?label), "Solomon Islands)") ||
STRENDS(STR(?label), "New Orleans, La.)") ||
STRENDS(STR(?label), "Latvia)") ||
STRENDS(STR(?label), "Cooking)") ||
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
STRENDS(STR(?label), "Astronomy)") ||
STRENDS(STR(?label), "Hamburg, Germany)") ||
STRENDS(STR(?label), "Engineering)") ||
STRENDS(STR(?label), "The Spanish word)") ||
STRENDS(STR(?label), "Kanazawa-shi, Japan)") ||
STRENDS(STR(?label), "Barcelona, Spain)") ||
STRENDS(STR(?label), "Standard)") ||
STRENDS(STR(?label), "Australia)") ||
STRENDS(STR(?label), "Sculpture)") ||
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
STRENDS(STR(?label), "Botany)") ||
STRENDS(STR(?label), "Ghana)") ||
STRENDS(STR(?label), "New Haven, Conn.)") ||
STRENDS(STR(?label), "Genoa, Italy)") ||
STRENDS(STR(?label), "Physiology)") ||
STRENDS(STR(?label), "Palau)") ||
STRENDS(STR(?label), "Tajikistan)") ||
STRENDS(STR(?label), "Accounting)") ||
STRENDS(STR(?label), "Computer networks)") ||
STRENDS(STR(?label), "Tonga)") ||
STRENDS(STR(?label), "West Bank)") ||
STRENDS(STR(?label), "Astrology)") ||
STRENDS(STR(?label), "Seychelles)") ||
STRENDS(STR(?label), "Anatomy)") ||
STRENDS(STR(?label), "Art movement)") ||
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
STRENDS(STR(?label), "Insect)") ||
STRENDS(STR(?label), "Beijing, China)") ||
STRENDS(STR(?label), "Frankfurt am Main, Germany)") ||
STRENDS(STR(?label), "Laos)") ||
STRENDS(STR(?label), "Aerodynamics)") ||
STRENDS(STR(?label), "Tallahassee, Fla.)") ||
STRENDS(STR(?label), "Middle)") ||
STRENDS(STR(?label), "Montréal, Québec)") ||
STRENDS(STR(?label), "Vietnamese people)") ||
STRENDS(STR(?label), "Aesthetics)") ||
STRENDS(STR(?label), "San Antonio, Tex.)") ||
STRENDS(STR(?label), "Malaysian people)") ||
STRENDS(STR(?label), "Algebra)") ||
STRENDS(STR(?label), "Document markup language)") ||
STRENDS(STR(?label), "Jamaica)") ||
STRENDS(STR(?label), "Mongolian people)") ||
STRENDS(STR(?label), "Botswana)") ||
STRENDS(STR(?label), "Kyoto, Japan)") ||
STRENDS(STR(?label), "Kiribati)") ||
STRENDS(STR(?label), "Asteroid)") ||
STRENDS(STR(?label), "Richmond, Va.)") ||
STRENDS(STR(?label), "Prague, Czech Republic)") ||
STRENDS(STR(?label), "Ark. and Okla.)") ||
STRENDS(STR(?label), "Diesel locomotives)") ||
STRENDS(STR(?label), "Computer network)") ||
STRENDS(STR(?label), "Baseball)") ||
STRENDS(STR(?label), "Seaplane)") ||
STRENDS(STR(?label), "N.C. and S.C.)") ||
STRENDS(STR(?label), "The Portuguese word)") ||
STRENDS(STR(?label), "Glasgow, Scotland)") ||
STRENDS(STR(?label), "Cincinnati, Ohio)") ||
STRENDS(STR(?label), "Evanston, Ill.)") ||
STRENDS(STR(?label), "Palermo, Italy)") ||
STRENDS(STR(?label), "Christian theology)") ||
STRENDS(STR(?label), "Ethics)") ||
STRENDS(STR(?label), "Miracle)") ||
STRENDS(STR(?label), "Berber people)") ||
STRENDS(STR(?label), "Rhetoric)") ||
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
STRENDS(STR(?label), "Missile)") ||
STRENDS(STR(?label), "Stockholm, Sweden)") ||
STRENDS(STR(?label), "Guam)") ||
STRENDS(STR(?label), "Colo. and N.M.)") ||
STRENDS(STR(?label), "Charleston, S.C.)") ||
STRENDS(STR(?label), "Zurich, Switzerland)") ||
STRENDS(STR(?label), "Wyo. and Mont.)") ||
STRENDS(STR(?label), "Worcester, Mass.)") ||
STRENDS(STR(?label), "Pierce County, Wash.)") ||
STRENDS(STR(?label), "Sydney, N.S.W.)") ||
STRENDS(STR(?label), "Clothing)") ||
STRENDS(STR(?label), "Indianapolis, Ind.)") ||
STRENDS(STR(?label), "El Salvador)") ||
STRENDS(STR(?label), "Copenhagen, Denmark)") ||
STRENDS(STR(?label), "Miami, Fla.)") ||
STRENDS(STR(?label), "Chinese)") ||
STRENDS(STR(?label), "Frankish law)") ||
STRENDS(STR(?label), "Horns (2)") ||
STRENDS(STR(?label), "Violins (3)") ||
STRENDS(STR(?label), "Clarinets (2)") ||
STRENDS(STR(?label), "Satellite)") ||
STRENDS(STR(?label), "Havana, Cuba)") ||
STRENDS(STR(?label), "Finance)") ||
STRENDS(STR(?label), "Taiwan people)") ||
STRENDS(STR(?label), "Suriname)") ||
STRENDS(STR(?label), "Azerbaijan)") ||
STRENDS(STR(?label), "Surgery)") ||
STRENDS(STR(?label), "Lebanon)") ||
STRENDS(STR(?label), "Brazzaville)") ||
STRENDS(STR(?label), "Kraków, Poland)") ||
STRENDS(STR(?label), "Exposition universelle, 1900, Paris, France)") ||
STRENDS(STR(?label), "N.H. and Me.)") ||
STRENDS(STR(?label), "Helicopter)") ||
STRENDS(STR(?label), "Disease)") ||
STRENDS(STR(?label), "Legendary place)") ||
STRENDS(STR(?label), "Football)") ||
STRENDS(STR(?label), "Va. and N.C.)") ||
STRENDS(STR(?label), "Wales and England)") ||
STRENDS(STR(?label), "Celtic people)") ||
STRENDS(STR(?label), "Medicine)") ||
STRENDS(STR(?label), "Niger)") ||
STRENDS(STR(?label), "Electricity)") ||
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
STRENDS(STR(?label), "Egyptian law)") ||
STRENDS(STR(?label), "N.Y. and N.J.)") ||
STRENDS(STR(?label), "Motion pictures)") ||
STRENDS(STR(?label), "Austin, Tex.)") ||
STRENDS(STR(?label), "Burmese people)") ||
STRENDS(STR(?label), "Seville, Spain)") ||
STRENDS(STR(?label), "Telecommunication)") ||
STRENDS(STR(?label), "Latter Day Saint doctrine)") ||
STRENDS(STR(?label), "Psychoanalysis)") ||
STRENDS(STR(?label), "Phonetics)") ||
STRENDS(STR(?label), "Computers)") ||
STRENDS(STR(?label), "U.S.)") ||
STRENDS(STR(?label), "Mont. and Wyo.)") ||
STRENDS(STR(?label), "Philately)") ||
STRENDS(STR(?label), "Piano)") ||
STRENDS(STR(?label), "South Caucasian)") ||
STRENDS(STR(?label), "Tex. and Okla.)") ||
STRENDS(STR(?label), "Salt Lake City, Utah)") ||
STRENDS(STR(?label), "Interstate 5)") ||
STRENDS(STR(?label), "Group of writers)") ||
STRENDS(STR(?label), "United States Capitol, Washington, D.C.)") ||
STRENDS(STR(?label), "Scrolls)") ||
STRENDS(STR(?label), "Recorders (2)") ||
STRENDS(STR(?label), "Montenegro)") ||
STRENDS(STR(?label), "Aeronautics)") ||
STRENDS(STR(?label), "Libya)") ||
STRENDS(STR(?label), "Zoology)") ||
STRENDS(STR(?label), "Spain and Portugal)") ||
STRENDS(STR(?label), "Archaeology)") ||
STRENDS(STR(?label), "Locomotive)") ||
STRENDS(STR(?label), "Geometry)") ||
STRENDS(STR(?label), "Cairo, Egypt)") ||
STRENDS(STR(?label), "Libraries)") ||
STRENDS(STR(?label), "Dresden, Germany)") ||
STRENDS(STR(?label), "Uruguay)") ||
STRENDS(STR(?label), "Vancouver, B.C.)") ||
STRENDS(STR(?label), "Boise, Idaho)") ||
STRENDS(STR(?label), "Mali)") ||
STRENDS(STR(?label), "Lawrence, Mass.)") ||
STRENDS(STR(?label), "Blues)") ||
STRENDS(STR(?label), "4 hands)") ||
STRENDS(STR(?label), "Harpsichord, violins (2)") ||
STRENDS(STR(?label), "N.M. and Tex.)") ||
STRENDS(STR(?label), "Battleships)") ||
STRENDS(STR(?label), "Edmonton, Alta.)") ||
STRENDS(STR(?label), "Private plane)") ||
STRENDS(STR(?label), "Potsdam, Germany)") ||
STRENDS(STR(?label), "N.J. and N.Y.)") ||
STRENDS(STR(?label), "Yokohama-shi, Japan)") ||
STRENDS(STR(?label), "Theory of knowledge)") ||
STRENDS(STR(?label), "Railroads)") ||
STRENDS(STR(?label), "Iranian people)") ||
STRENDS(STR(?label), "Montevideo, Uruguay)") ||
STRENDS(STR(?label), "Kyïv, Ukraine)") ||
STRENDS(STR(?label), "Destroyers)") ||
STRENDS(STR(?label), "Pittsburgh, Pa.)") ||
STRENDS(STR(?label), "Cook Islands)") ||
STRENDS(STR(?label), "Kurdish tribe)") ||
STRENDS(STR(?label), "Smartphone)") ||
STRENDS(STR(?label), "Bosnia and Herzegovina)") ||
STRENDS(STR(?label), "Hinduism)") ||
STRENDS(STR(?label), "Jefferson County, Wash.)") ||
STRENDS(STR(?label), "Civil law)") ||
STRENDS(STR(?label), "Bogotá, Colombia)") ||
STRENDS(STR(?label), "Springfield, Ill.)") ||
STRENDS(STR(?label), "Portsmouth, England)") ||
STRENDS(STR(?label), "Caracas, Venezuela)") ||
STRENDS(STR(?label), "Yoruba deity)") ||
STRENDS(STR(?label), "Hague, Netherlands)") ||
STRENDS(STR(?label), "Diesel locomotive)") ||
STRENDS(STR(?label), "Grammar)") ||
STRENDS(STR(?label), "Pa. and Md.)") ||
STRENDS(STR(?label), "Mechanics)") ||
STRENDS(STR(?label), "Jet attack plane)") ||
STRENDS(STR(?label), "Guyana)") ||
STRENDS(STR(?label), "Bornean people)") ||
STRENDS(STR(?label), "Containers)") ||
STRENDS(STR(?label), "Malta)") ||
STRENDS(STR(?label), "Mich. and Ont.)") ||
STRENDS(STR(?label), "N.M. and Ariz.)") ||
STRENDS(STR(?label), "Kedah, Malaysia)") ||
STRENDS(STR(?label), "N.C. and Tenn.)") ||
STRENDS(STR(?label), "Airplane)") ||
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
STRENDS(STR(?label), "Musical medium of performance)") ||
STRENDS(STR(?label), "Ferrara, Italy)") ||
STRENDS(STR(?label), "Adat law)") ||
STRENDS(STR(?label), "Aircraft carriers)") ||
STRENDS(STR(?label), "Albany, N.Y.)") ||
STRENDS(STR(?label), "Noble County, Ind.)") ||
STRENDS(STR(?label), "Nashville, Tenn.)") ||
STRENDS(STR(?label), "Educational test)") ||
STRENDS(STR(?label), "Social sciences)") ||
STRENDS(STR(?label), "Computer software)") ||
STRENDS(STR(?label), "Minneapolis, Minn.)") ||
STRENDS(STR(?label), "Religion)") ||
STRENDS(STR(?label), "Va. and W. Va.)") ||
STRENDS(STR(?label), "United Arab Emirates)") ||
STRENDS(STR(?label), "India and Pakistan)") ||
STRENDS(STR(?label), "Drug)") ||
STRENDS(STR(?label), "Pahang, Malaysia)") ||
STRENDS(STR(?label), "Sociology)") ||
STRENDS(STR(?label), "Metal-work)") ||
STRENDS(STR(?label), "Astrophysics)") ||
STRENDS(STR(?label), "Alexandria, Va.)") ||
STRENDS(STR(?label), "Criminal procedure)") ||
STRENDS(STR(?label), "Chapel Hill, N.C.)") ||
STRENDS(STR(?label), "Airplanes)") ||
STRENDS(STR(?label), "Organ)") ||
STRENDS(STR(?label), "Cardiff, Wales)") ||
STRENDS(STR(?label), "Bird)") ||
STRENDS(STR(?label), "New Caledonia)") ||
STRENDS(STR(?label), "North Macedonia)") ||
STRENDS(STR(?label), "Washington County, Me.)") ||
STRENDS(STR(?label), "Symbolic character)") ||
STRENDS(STR(?label), "Topology)") ||
STRENDS(STR(?label), "Md. and Washington, D.C.)") ||
STRENDS(STR(?label), "Personality trait)") ||
STRENDS(STR(?label), "N.W.T. and Nunavut)") ||
STRENDS(STR(?label), "Hindu rite)") ||
STRENDS(STR(?label), "France and Italy)") ||
STRENDS(STR(?label), "Securities)") ||
STRENDS(STR(?label), "Tel Aviv, Israel)") ||
STRENDS(STR(?label), "Valencia, Spain)") ||
STRENDS(STR(?label), "Saint Paul, Minn.)") ||
STRENDS(STR(?label), "Metallurgy)") ||
STRENDS(STR(?label), "Canary Islands)") ||
STRENDS(STR(?label), "Criminal law)") ||
STRENDS(STR(?label), "Siena, Italy)") ||
STRENDS(STR(?label), "Bristol, England)") ||
STRENDS(STR(?label), "Vatican Palace, Vatican City)") ||
STRENDS(STR(?label), "Oxford, England)") ||
STRENDS(STR(?label), "Germany and Netherlands)") ||
STRENDS(STR(?label), "The Arabic word)") ||
STRENDS(STR(?label), "Online service)") ||
STRENDS(STR(?label), "Guadalajara, Mexico)") ||
STRENDS(STR(?label), "Manchester, England)") ||
STRENDS(STR(?label), "Ancient law)") ||
STRENDS(STR(?label), "Band)") ||
STRENDS(STR(?label), "String orchestra)") ||
STRENDS(STR(?label), "Poznań, Poland)") ||
STRENDS(STR(?label), "French Guiana)") ||
STRENDS(STR(?label), "Pisa, Italy)") ||
STRENDS(STR(?label), "Colo. and Utah)") ||
STRENDS(STR(?label), "Computer bus)") ||
STRENDS(STR(?label), "Sailboats)") ||
STRENDS(STR(?label), "Computer systems)") ||
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
STRENDS(STR(?label), "Ecology)") ||
STRENDS(STR(?label), "Alta. and Sask.)") ||
STRENDS(STR(?label), "Oahu, Hawaii)") ||
STRENDS(STR(?label), "International relations)") ||
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
STRENDS(STR(?label), "Cataloging)") ||
STRENDS(STR(?label), "Mantua, Italy)") ||
STRENDS(STR(?label), "Birmingham, England)") ||
STRENDS(STR(?label), "Oman)") ||
STRENDS(STR(?label), "The Swedish word)") ||
STRENDS(STR(?label), "York, England)") ||
STRENDS(STR(?label), "Buddhist rite)") ||
STRENDS(STR(?label), "Mining)") ||
STRENDS(STR(?label), "Monterrey, Mexico)") ||
STRENDS(STR(?label), "Rock)") ||
STRENDS(STR(?label), "Swedish)") ||
STRENDS(STR(?label), "Assyro-Babylonian law)") ||
STRENDS(STR(?label), "Malay)") ||
STRENDS(STR(?label), "The Chinese word)") ||
STRENDS(STR(?label), "New Guinean people)") ||
STRENDS(STR(?label), "Piano, 4 hands)") ||
STRENDS(STR(?label), "Violin and piano)") ||
STRENDS(STR(?label), "Cello and piano)") ||
STRENDS(STR(?label), "Guitars (2)") ||
STRENDS(STR(?label), "Roman deity)") ||
STRENDS(STR(?label), "Yamaguchi-shi, Japan)") ||
STRENDS(STR(?label), "Minn. and Ont.)") ||
STRENDS(STR(?label), "Selangor, Malaysia)") ||
STRENDS(STR(?label), "American Samoa)") ||
STRENDS(STR(?label), "Computer architecture)") ||
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
STRENDS(STR(?label), "Social psychology)") ||
STRENDS(STR(?label), "Musical groups)") ||
STRENDS(STR(?label), "Hindu festival)") ||
STRENDS(STR(?label), "Paraguay)") ||
STRENDS(STR(?label), "Economic theory)") ||
STRENDS(STR(?label), "Del. and Md.)") ||
STRENDS(STR(?label), "Geomorphology)") ||
STRENDS(STR(?label), "Southeast Asia)") ||
STRENDS(STR(?label), "Award)") ||
STRENDS(STR(?label), "Md. and Va.)") ||
STRENDS(STR(?label), "Maricopa County, Ariz.)") ||
STRENDS(STR(?label), "Côte d'Ivoire)") ||
STRENDS(STR(?label), "Burkina Faso)") ||
STRENDS(STR(?label), "Shizuoka-shi, Japan)") ||
STRENDS(STR(?label), "Utah and Wyo.)") ||
STRENDS(STR(?label), "Padua, Italy)") ||
STRENDS(STR(?label), "Christianity)") ||
STRENDS(STR(?label), "Dentistry)") ||
STRENDS(STR(?label), "Turboprop transport)") ||
STRENDS(STR(?label), "Artificial satellite)") ||
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
STRENDS(STR(?label), "Hydraulic engineering)") ||
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
STRENDS(STR(?label), "Tank destroyer)") ||
STRENDS(STR(?label), "Bucharest, Romania)") ||
STRENDS(STR(?label), "Medical care)") ||
STRENDS(STR(?label), "Mammals)") ||
STRENDS(STR(?label), "Wash. : Bay)") ||
STRENDS(STR(?label), "Ariz. and N.M.)") ||
STRENDS(STR(?label), "Reptiles)") ||
STRENDS(STR(?label), "Electronic computers)") ||
STRENDS(STR(?label), "Venus)") ||
STRENDS(STR(?label), "Papyri)") ||
STRENDS(STR(?label), "Utah and Idaho)") ||
STRENDS(STR(?label), "Steuben County, Ind.)") ||
STRENDS(STR(?label), "Pathology)") ||
STRENDS(STR(?label), "Photography)") ||
STRENDS(STR(?label), "N.C. and Va.)") ||
STRENDS(STR(?label), "North Yorkshire, England)") ||
STRENDS(STR(?label), "Canada)") ||
STRENDS(STR(?label), "Perugia, Italy)") ||
STRENDS(STR(?label), "Ceramics)") ||
STRENDS(STR(?label), "Guatemala and Mexico)") ||
STRENDS(STR(?label), "Congo (Brazzaville)") ||
STRENDS(STR(?label), "Moon)") ||
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
STRENDS(STR(?label), "Pharmacy)") ||
STRENDS(STR(?label), "Ecuador and Peru)") ||
STRENDS(STR(?label), "Columbus, Ohio)") ||
STRENDS(STR(?label), "Cabo Verde)") ||
STRENDS(STR(?label), "Decorative arts)") ||
STRENDS(STR(?label), "Snohomish County, Wash.)") ||
STRENDS(STR(?label), "Me. and N.B.)") ||
STRENDS(STR(?label), "Neb. and Kan.)") ||
STRENDS(STR(?label), "Harpsichord)") ||
STRENDS(STR(?label), "Lyon, France)") ||
STRENDS(STR(?label), "Tex. and N.M.)") ||
STRENDS(STR(?label), "Guitar)") ||
STRENDS(STR(?label), "Mumbai, India)") ||
STRENDS(STR(?label), "Russia and Ukraine)") ||
STRENDS(STR(?label), "Solomon Islands people)") ||
STRENDS(STR(?label), "Georgia and Russia)") ||
STRENDS(STR(?label), "Newport, R.I.)") ||
STRENDS(STR(?label), "Oakland, Calif.)") ||
STRENDS(STR(?label), "Rotterdam, Netherlands)") ||
STRENDS(STR(?label), "Puebla de Zaragoza, Mexico)") ||
STRENDS(STR(?label), "Idaho County, Idaho)") ||
STRENDS(STR(?label), "France and Belgium)") ||
STRENDS(STR(?label), "The Polish word)") ||
STRENDS(STR(?label), "Curaçao)") ||
STRENDS(STR(?label), "Elephant)") ||
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
STRENDS(STR(?label), "Jet transports)") ||
STRENDS(STR(?label), "Armenia)") ||
STRENDS(STR(?label), "Graph theory)") ||
STRENDS(STR(?label), "Slovakia and Hungary)") ||
STRENDS(STR(?label), "Ind. and Ill.)") ||
STRENDS(STR(?label), "Angola)") ||
STRENDS(STR(?label), "Ariz. and Nev.)") ||
STRENDS(STR(?label), "Alaska : Bay)") ||
STRENDS(STR(?label), "England and Scotland)") ||
STRENDS(STR(?label), "Dive bomber)") ||
STRENDS(STR(?label), "Constellation)") ||
STRENDS(STR(?label), "Movement)") ||
STRENDS(STR(?label), "Ark. and La.)") ||
STRENDS(STR(?label), "Guadeloupe)") ||
STRENDS(STR(?label), "Braunschweig, Germany)") ||
STRENDS(STR(?label), "Salt Lake County, Utah)") ||
STRENDS(STR(?label), "Brescia, Italy)") ||
STRENDS(STR(?label), "Sports)") ||
STRENDS(STR(?label), "Calif. and Or.)") ||
STRENDS(STR(?label), "Va. and Tenn.)") ||
STRENDS(STR(?label), "Düsseldorf, Germany)") ||
STRENDS(STR(?label), "Drone aircraft)") ||
STRENDS(STR(?label), "Machines)") ||
STRENDS(STR(?label), "Detroit, Mich.)") ||
STRENDS(STR(?label), "Fungi)") ||
STRENDS(STR(?label), "Vilas County, Wis.)") ||
STRENDS(STR(?label), "Hancock County, Me.)") ||
STRENDS(STR(?label), "Neb. and S.D.)") ||
STRENDS(STR(?label), "Granada, Spain)") ||
STRENDS(STR(?label), "Bermuda Islands)") ||
STRENDS(STR(?label), "Information theory)") ||
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
STRENDS(STR(?label), "Printer)") ||
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
STRENDS(STR(?label), "Astronautics)") ||
STRENDS(STR(?label), "Congo and Angola)") ||
STRENDS(STR(?label), "Guilford, Conn.)") ||
STRENDS(STR(?label), "Ragtime)") ||
STRENDS(STR(?label), "Medal)") ||
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
STRENDS(STR(?label), "Videotex system)") ||
STRENDS(STR(?label), "Cambodia)") ||
STRENDS(STR(?label), "Zambezi)") ||
STRENDS(STR(?label), "Bookbinding)") ||
STRENDS(STR(?label), "The Hebrew particle)") ||
STRENDS(STR(?label), "Salem, Mass.)") ||
STRENDS(STR(?label), "Clarinet and piano)") ||
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
STRENDS(STR(?label), "Cruisers)") ||
STRENDS(STR(?label), "Machinery)") ||
STRENDS(STR(?label), "Frigates)") ||
STRENDS(STR(?label), "Memphis, Tenn.)") ||
STRENDS(STR(?label), "N.Y. and Pa.)") ||
STRENDS(STR(?label), "Cameroon and Nigeria)") ||
STRENDS(STR(?label), "Insurance)") ||
STRENDS(STR(?label), "Military transport helicopter)") ||
STRENDS(STR(?label), "Ordnance)") ||
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
STRENDS(STR(?label), "Management)") ||
STRENDS(STR(?label), "North Slope Borough, Alaska)") ||
STRENDS(STR(?label), "Galapagos Islands)") ||
STRENDS(STR(?label), "Pulau Pinang, Malaysia)") ||
STRENDS(STR(?label), "Crystallography)") ||
STRENDS(STR(?label), "Tenn. and Ala.)") ||
STRENDS(STR(?label), "Versailles, France)") ||
STRENDS(STR(?label), "China and Nepal)") ||
STRENDS(STR(?label), "Television programs)") ||
STRENDS(STR(?label), "Porto, Portugal)") ||
STRENDS(STR(?label), "Togo)") ||
STRENDS(STR(?label), "Jet bomber)") ||
STRENDS(STR(?label), "Basketball)") ||
STRENDS(STR(?label), "Alta. and B.C.)") ||
STRENDS(STR(?label), "N.H. and Mass.)") ||
STRENDS(STR(?label), "Poland and Ukraine)") ||
STRENDS(STR(?label), "Optics)") ||
STRENDS(STR(?label), "Ariz. and Mexico)") ||
STRENDS(STR(?label), "Micronesian people)") ||
STRENDS(STR(?label), "Retail trade)") ||
STRENDS(STR(?label), "Basel, Switzerland)") ||
STRENDS(STR(?label), "Electrophysiology)") ||
STRENDS(STR(?label), "Lute)") ||
STRENDS(STR(?label), "Dravidian)") ||
STRENDS(STR(?label), "Mythology)") ||
STRENDS(STR(?label), "Bratislava, Slovakia)") ||
STRENDS(STR(?label), "Naval architecture)") ||
STRENDS(STR(?label), "Taipei, Taiwan)") ||
STRENDS(STR(?label), "Wellington, N.Z.)") ||
STRENDS(STR(?label), "Electrical engineering)") ||
STRENDS(STR(?label), "Wyo. and Colo.)") ||
STRENDS(STR(?label), "Nunavut and N.W.T.)") ||
STRENDS(STR(?label), "Computer security)") ||
STRENDS(STR(?label), "Missoula County, Mont.)") ||
STRENDS(STR(?label), "Accordion)") ||
STRENDS(STR(?label), "Biogeochemistry)") ||
STRENDS(STR(?label), "Utrecht, Netherlands)") ||
STRENDS(STR(?label), "Mont. and Alta.)") ||
STRENDS(STR(?label), "B.C. and Mont.)") ||
STRENDS(STR(?label), "Winnipeg, Man.)") ||
STRENDS(STR(?label), "Miss. and Tenn.)") ||
STRENDS(STR(?label), "Bremen, Germany)") ||
STRENDS(STR(?label), "Christchurch, N.Z.)") ||
STRENDS(STR(?label), "Pasadena, Calif.)") ||
STRENDS(STR(?label), "Petroleum engineering)") ||
STRENDS(STR(?label), "Josephine County, Or.)") ||
STRENDS(STR(?label), "Halifax, N.S.)") ||
STRENDS(STR(?label), "Slavic people)") ||
STRENDS(STR(?label), "Grafton County, N.H.)") ||
STRENDS(STR(?label), "Liberia)") ||
STRENDS(STR(?label), "Bluegrass)") ||
STRENDS(STR(?label), "Group theory)") ||
STRENDS(STR(?label), "Reno, Nev.)") ||
STRENDS(STR(?label), "Omaha, Neb.)") ||
STRENDS(STR(?label), "Itasca County, Minn.)") ||
STRENDS(STR(?label), "Middle school)") ||
STRENDS(STR(?label), "Secondary)") ||
STRENDS(STR(?label), "Carbon County, Wyo.)") ||
STRENDS(STR(?label), "Gunnison County, Colo.)") ||
STRENDS(STR(?label), "Liverpool, England)") ||
STRENDS(STR(?label), "Men's voices)") ||
STRENDS(STR(?label), "Women's voices)") ||
STRENDS(STR(?label), "Unison)") ||
STRENDS(STR(?label), "Bordeaux, Nouvelle-Aquitaine, France)") ||
STRENDS(STR(?label), "Eugene, Or.)") ||
STRENDS(STR(?label), "Pará, Brazil)") ||
STRENDS(STR(?label), "Rīga, Latvia)") ||
STRENDS(STR(?label), "Kolkata, India)") ||
STRENDS(STR(?label), "Jackson, Miss.)") ||
STRENDS(STR(?label), "Galveston, Tex.)") ||
STRENDS(STR(?label), "Celtic deity)") ||
STRENDS(STR(?label), "Hamamatsu-shi, Japan)") ||
STRENDS(STR(?label), "Newcastle upon Tyne, England)") ||
STRENDS(STR(?label), "Library information network)") ||
STRENDS(STR(?label), "Karlsruhe, Germany)") ||
STRENDS(STR(?label), "Poland and Slovakia)") ||
STRENDS(STR(?label), "Bhutan)") ||
STRENDS(STR(?label), "Shoshone County, Idaho)") ||
STRENDS(STR(?label), "Columbia, S.C.)") ||
STRENDS(STR(?label), "San Bernardino County, Calif.)") ||
STRENDS(STR(?label), "Tamil)") ||
STRENDS(STR(?label), "Berber tribe)") ||
STRENDS(STR(?label), "San Luis Potosí, Mexico)") ||
STRENDS(STR(?label), "Chamber orchestra)") ||
STRENDS(STR(?label), "Flute and piano)") ||
STRENDS(STR(?label), "Instrumental ensemble)") ||
STRENDS(STR(?label), "Violas (2)") ||
STRENDS(STR(?label), "Violins (4)") ||
STRENDS(STR(?label), "Yao-shi, Japan)") ||
STRENDS(STR(?label), "Saxon law)") ||
STRENDS(STR(?label), "Oboes (2)") ||
STRENDS(STR(?label), "Oyama-shi, Japan)") ||
STRENDS(STR(?label), "Screen painting)") ||
STRENDS(STR(?label), "Violin with orchestra)") ||
STRENDS(STR(?label), "Pa. and Del.)") ||
STRENDS(STR(?label), "Alta. : Lake)") ||
STRENDS(STR(?label), "Wash. and Or.)") ||
STRENDS(STR(?label), "Theater)") ||
STRENDS(STR(?label), "Statue)") ||
STRENDS(STR(?label), "Richmond upon Thames, London, England)") ||
STRENDS(STR(?label), "Cheyenne, Wyo.)") ||
STRENDS(STR(?label), "Attack helicopter)") ||
STRENDS(STR(?label), "Utah and Colo.)") ||
STRENDS(STR(?label), "Political science)") ||
STRENDS(STR(?label), "Jefferson County, Colo.)") ||
STRENDS(STR(?label), "Oboe)") ||
STRENDS(STR(?label), "Martinique)") ||
STRENDS(STR(?label), "Attack plane)") ||
STRENDS(STR(?label), "Computer network protocols)") ||
STRENDS(STR(?label), "Whitley County, Ind.)") ||
STRENDS(STR(?label), "Planet)") ||
STRENDS(STR(?label), "Ala. and Miss.)") ||
STRENDS(STR(?label), "Salvador, Brazil)") ||
STRENDS(STR(?label), "Amphibian plane)") ||
STRENDS(STR(?label), "Tableware)") ||
STRENDS(STR(?label), "Nev. and Calif.)") ||
STRENDS(STR(?label), "Java, Indonesia)") ||
STRENDS(STR(?label), "Vicenza, Italy)") ||
STRENDS(STR(?label), "Torpedo bomber)") ||
STRENDS(STR(?label), "Bible)") ||
STRENDS(STR(?label), "Kurdish people)") ||
STRENDS(STR(?label), "Nev. and Utah)") ||
STRENDS(STR(?label), "Jackson County, Or.)") ||
STRENDS(STR(?label), "Central Sudanic)") ||
STRENDS(STR(?label), "Victoria, B.C.)") ||
STRENDS(STR(?label), "Rwanda)") ||
STRENDS(STR(?label), "Switzerland and Italy)") ||
STRENDS(STR(?label), "Probability theory)") ||
STRENDS(STR(?label), "Technology)") ||
STRENDS(STR(?label), "Faroe Islands)") ||
STRENDS(STR(?label), "Lane County, Or.)") ||
STRENDS(STR(?label), "British Virgin Islands)") ||
STRENDS(STR(?label), "Western Cape, South Africa)") ||
STRENDS(STR(?label), "Wash. : Lake)") ||
STRENDS(STR(?label), "Okla. and Tex.)") ||
STRENDS(STR(?label), "Réunion)") ||
STRENDS(STR(?label), "Jainism)") ||
STRENDS(STR(?label), "Jacksonville, Fla.)") ||
STRENDS(STR(?label), "Local area network system)") ||
STRENDS(STR(?label), "La. and Tex.)") ||
STRENDS(STR(?label), "Brunei)") ||
STRENDS(STR(?label), "Ljubljana, Slovenia)") ||
STRENDS(STR(?label), "Assyro-Babylonian deity)") ||
STRENDS(STR(?label), "Furniture)") ||
STRENDS(STR(?label), "Marketing)") ||
STRENDS(STR(?label), "Vt. and N.Y.)") ||
STRENDS(STR(?label), "Santiago, Chile)") ||
STRENDS(STR(?label), "Angola and Congo)") ||
STRENDS(STR(?label), "Shinto deity)") ||
STRENDS(STR(?label), "Essen, Germany)") ||
STRENDS(STR(?label), "Yukon and Alaska)") ||
STRENDS(STR(?label), "Ga. and Ala.)") ||
STRENDS(STR(?label), "Saxophones (4)") ||
STRENDS(STR(?label), "Primary)") ||
STRENDS(STR(?label), "Ships)") ||
STRENDS(STR(?label), "Fluid dynamics)") ||
STRENDS(STR(?label), "Colombia and Venezuela)") ||
STRENDS(STR(?label), "Wiccan sect)") ||
STRENDS(STR(?label), "Jaipur, India)") ||
STRENDS(STR(?label), "Samoa)") ||
STRENDS(STR(?label), "Idaho and Utah)") ||
STRENDS(STR(?label), "Benin)") ||
STRENDS(STR(?label), "A.C.T.)") ||
STRENDS(STR(?label), "Numismatics)") ||
STRENDS(STR(?label), "Viola)") ||
STRENDS(STR(?label), "Coventry, England)") ||
STRENDS(STR(?label), "Athletics)") ||
STRENDS(STR(?label), "Roman mythology)") ||
STRENDS(STR(?label), "Harp)") ||
STRENDS(STR(?label), "Augusta, Me.)") ||
STRENDS(STR(?label), "El Dorado County, Calif.)") ||
STRENDS(STR(?label), "Fishing)") ||
STRENDS(STR(?label), "Tacoma, Wash.)") ||
STRENDS(STR(?label), "Mainz, Rhineland-Palatinate, Germany)") ||
STRENDS(STR(?label), "Lancaster County, Pa.)") ||
STRENDS(STR(?label), "Grant County, Wash.)") ||
STRENDS(STR(?label), "Blaine County, Idaho)") ||
STRENDS(STR(?label), "Samaritan)") ||
STRENDS(STR(?label), "Knoxville, Tenn.)") ||
STRENDS(STR(?label), "Dutch)") ||
STRENDS(STR(?label), "Lancaster, Pa.)") ||
STRENDS(STR(?label), "High voice)") ||
STRENDS(STR(?label), "Equal voices)") ||
STRENDS(STR(?label), "Oceanography)") ||
STRENDS(STR(?label), "San Jose, Calif.)") ||
STRENDS(STR(?label), "Ill. and Ind.)") ||
STRENDS(STR(?label), "Gainesville, Fla.)") ||
STRENDS(STR(?label), "Sewing)") ||
STRENDS(STR(?label), "Dallas, Tex.)") ||
STRENDS(STR(?label), "Orange County, Calif.)") ||
STRENDS(STR(?label), "Rochester, N.Y.)") ||
STRENDS(STR(?label), "Oneida County, Wis.)") ||
STRENDS(STR(?label), "English Creole)") ||
STRENDS(STR(?label), "Minas Gerais, Brazil)") ||
STRENDS(STR(?label), "Poland and Czech Republic)") ||
STRENDS(STR(?label), "Bon deity)") ||
STRENDS(STR(?label), "Sound recordings)") ||
STRENDS(STR(?label), "Hachinohe-shi, Japan)") ||
STRENDS(STR(?label), "Hindu deities)") ||
STRENDS(STR(?label), "Textile machinery)") ||
STRENDS(STR(?label), "France : Region)") ||
STRENDS(STR(?label), "Bassoon and piano)") ||
STRENDS(STR(?label), "Piano with orchestra)") ||
STRENDS(STR(?label), "String quartet)") ||
STRENDS(STR(?label), "Violin and harpsichord)") ||
STRENDS(STR(?label), "Tenri-shi, Japan)") ||
STRENDS(STR(?label), "Hirosaki-shi, Japan)") ||
STRENDS(STR(?label), "Viola and piano)") ||
STRENDS(STR(?label), "Trumpet and organ)") ||
STRENDS(STR(?label), "Flutes (3)") ||
STRENDS(STR(?label), "Harpsichord, flutes (2)") ||
STRENDS(STR(?label), "Trumpet and piano)") ||
STRENDS(STR(?label), "Customary law)") ||
STRENDS(STR(?label), "Visigothic law)") ||
STRENDS(STR(?label), "Sask. and Mont.)") ||
STRENDS(STR(?label), "Ōtsu-shi, Japan)") ||
STRENDS(STR(?label), "Rokkasho-mura, Japan)") ||
STRENDS(STR(?label), "Guitar and piano)") ||
STRENDS(STR(?label), "Transport planes)") ||
STRENDS(STR(?label), "Aztec deity)") ||
STRENDS(STR(?label), "Fishes)") ||
STRENDS(STR(?label), "Statistical physics)") ||
STRENDS(STR(?label), "Yukon-Koyukuk Census Area, Alaska)") ||
STRENDS(STR(?label), "Harrisburg, Pa.)") ||
STRENDS(STR(?label), "Mich. and Wis.)") ||
STRENDS(STR(?label), "Greek philosophy)") ||
STRENDS(STR(?label), "Submarines)") ||
STRENDS(STR(?label), "Computer hardware description language)") ||
STRENDS(STR(?label), "Legendary characters)") ||
STRENDS(STR(?label), "Military helicopter)") ||
STRENDS(STR(?label), "Atlantic City, N.J.)") ||
STRENDS(STR(?label), "Sri Lankan people)") ||
STRENDS(STR(?label), "Biblical criticism)") ||
STRENDS(STR(?label), "Wis. and Mich.)") ||
STRENDS(STR(?label), "Mont. and Idaho)") ||
STRENDS(STR(?label), "Pakistan and China)") ||
STRENDS(STR(?label), "Croatia and Slovenia)") ||
STRENDS(STR(?label), "Performing arts)") ||
STRENDS(STR(?label), "Delphi)") ||
STRENDS(STR(?label), "N.D. and S.D.)") ||
STRENDS(STR(?label), "Arlington, Va.)") ||
STRENDS(STR(?label), "Algebraic geometry)") ||
STRENDS(STR(?label), "Madison, Wis.)") ||
STRENDS(STR(?label), "Quantum mechanics)") ||
STRENDS(STR(?label), "Publications)") ||
STRENDS(STR(?label), "Bonn, Germany)") ||
STRENDS(STR(?label), "N.Y. : Lake)") ||
STRENDS(STR(?label), "Turkey : Extinct city)") ||
STRENDS(STR(?label), "Valladolid, Spain)") ||
STRENDS(STR(?label), "Montgomery County, Md.)") ||
STRENDS(STR(?label), "Spice)") ||
STRENDS(STR(?label), "Czech Republic and Poland)") ||
STRENDS(STR(?label), "Clark County, Wash.)") ||
STRENDS(STR(?label), "Switzerland and France)") ||
STRENDS(STR(?label), "Matanuska-Susitna Borough, Alaska)") ||
STRENDS(STR(?label), "Utensils)") ||
STRENDS(STR(?label), "Zaragoza, Spain)") ||
STRENDS(STR(?label), "Waltham, Mass.)") ||
STRENDS(STR(?label), "Sintra, Portugal)") ||
STRENDS(STR(?label), "Cameroonian people)") ||
STRENDS(STR(?label), "Ukraine and Belarus)") ||
STRENDS(STR(?label), "Dover, Del.)") ||
STRENDS(STR(?label), "Sikhism)") ||
STRENDS(STR(?label), "Chimpanzee)") ||
STRENDS(STR(?label), "Advertising character)") ||
STRENDS(STR(?label), "Research plane)") ||
STRENDS(STR(?label), "Obstetrics)") ||
STRENDS(STR(?label), "Vatican City)") ||
STRENDS(STR(?label), "Painting)") ||
STRENDS(STR(?label), "Traffic engineering)") ||
STRENDS(STR(?label), "Natrona County, Wyo.)") ||
STRENDS(STR(?label), "Belo Horizonte, Brazil)") ||
STRENDS(STR(?label), "Aguascalientes, Mexico)") ||
STRENDS(STR(?label), "Czech Republic and Germany)") ||
STRENDS(STR(?label), "United States)") ||
STRENDS(STR(?label), "Bilbao, Spain)") ||
STRENDS(STR(?label), "Nigerian people)") ||
STRENDS(STR(?label), "Perak, Malaysia)") ||
STRENDS(STR(?label), "Information retrieval)") ||
STRENDS(STR(?label), "Afghanistan people)") ||
STRENDS(STR(?label), "Wis. : Lake)") ||
STRENDS(STR(?label), "Corinth, Greece)") ||
STRENDS(STR(?label), "Mascot)") ||
STRENDS(STR(?label), "France and Switzerland)") ||
STRENDS(STR(?label), "Minn. and Iowa)") ||
STRENDS(STR(?label), "Tibetan people)") ||
STRENDS(STR(?label), "Computing platform)") ||
STRENDS(STR(?label), "Durham, N.C.)") ||
STRENDS(STR(?label), "Ohio and Pa.)") ||
STRENDS(STR(?label), "Singers)") ||
STRENDS(STR(?label), "Summit County, Colo.)") ||
STRENDS(STR(?label), "Santa Barbara, Calif.)") ||
STRENDS(STR(?label), "Group of composers)") ||
STRENDS(STR(?label), "Agra, India)") ||
STRENDS(STR(?label), "Córdoba, Argentina)") ||
STRENDS(STR(?label), "Word processor)") ||
STRENDS(STR(?label), "Reading, England)") ||
STRENDS(STR(?label), "Founding)") ||
STRENDS(STR(?label), "Kan. and Neb.)") ||
STRENDS(STR(?label), "Fujian Sheng, China)") ||
STRENDS(STR(?label), "Thebes, Egypt)") ||
STRENDS(STR(?label), "Sweetwater County, Wyo.)") ||
STRENDS(STR(?label), "Auckland, N.Z.)") ||
STRENDS(STR(?label), "Gwynedd, Wales)") ||
STRENDS(STR(?label), "Lake and Peninsula Borough, Alaska)") ||
STRENDS(STR(?label), "Materials)") ||
STRENDS(STR(?label), "Nynorsk)") ||
STRENDS(STR(?label), "Chinese philosophy)") ||
STRENDS(STR(?label), "Douglas County, Or.)") ||
STRENDS(STR(?label), "Jewelry)") ||
STRENDS(STR(?label), "Tallinn, Estonia)") ||
STRENDS(STR(?label), "Modena, Italy)") ||
STRENDS(STR(?label), "Moldova)") ||
STRENDS(STR(?label), "Steuben County, Ind. : Lake)") ||
STRENDS(STR(?label), "Spokane, Wash.)") ||
STRENDS(STR(?label), "Feudal law)") ||
STRENDS(STR(?label), "Osnabrück, Germany)") ||
STRENDS(STR(?label), "Eritrea)") ||
STRENDS(STR(?label), "Santo Domingo, Dominican Republic)") ||
STRENDS(STR(?label), "Tex. and La.)") ||
STRENDS(STR(?label), "Brooklyn, New York, N.Y.)") ||
STRENDS(STR(?label), "Latter Day Saint churches)") ||
STRENDS(STR(?label), "Okanogan County, Wash.)") ||
STRENDS(STR(?label), "Leicester, England)") ||
STRENDS(STR(?label), "Building)") ||
STRENDS(STR(?label), "South Georgia and South Sandwich Islands)") ||
STRENDS(STR(?label), "Chittorgarh Fort, Chittaurgarh, India)") ||
STRENDS(STR(?label), "Rio Grande do Sul, Brazil)") ||
STRENDS(STR(?label), "Syracuse, Italy)") ||
STRENDS(STR(?label), "Fishing boats)") ||
STRENDS(STR(?label), "Nantucket, Mass.)") ||
STRENDS(STR(?label), "Jiangsu Sheng, China)") ||
STRENDS(STR(?label), "Somalia)") ||
STRENDS(STR(?label), "Udine, Italy)") ||
STRENDS(STR(?label), "West Yorkshire, England)") ||
STRENDS(STR(?label), "Charlottesville, Va.)") ||
STRENDS(STR(?label), "Orthopedics)") ||
STRENDS(STR(?label), "Golf)") ||
STRENDS(STR(?label), "Bangor, Me.)") ||
STRENDS(STR(?label), "Tiger)") ||
STRENDS(STR(?label), "Shinto)") ||
STRENDS(STR(?label), "The Finnish word)") ||
STRENDS(STR(?label), "Hadrian's Villa, Tivoli, Italy)") ||
STRENDS(STR(?label), "Hull, England)") ||
STRENDS(STR(?label), "Jewish rite)") ||
STRENDS(STR(?label), "France and Spain)") ||
STRENDS(STR(?label), "Butte, Mont.)") ||
STRENDS(STR(?label), "Bellevue, Wash.)") ||
STRENDS(STR(?label), "Preschool)") ||
STRENDS(STR(?label), "Minn. and S.D.)") ||
STRENDS(STR(?label), "Musical instruments)") ||
STRENDS(STR(?label), "Kazakhstan and Russia)") ||
STRENDS(STR(?label), "Coral Sea Islands)") ||
STRENDS(STR(?label), "Quito, Ecuador)") ||
STRENDS(STR(?label), "Changing voices)") ||
STRENDS(STR(?label), "Children's voices)") ||
STRENDS(STR(?label), "Medium voice)") ||
STRENDS(STR(?label), "Low voice)") ||
STRENDS(STR(?label), "The Catalan word)") ||
STRENDS(STR(?label), "Canterbury, England)") ||
STRENDS(STR(?label), "Québec and Ont.)") ||
STRENDS(STR(?label), "Plymouth, England)") ||
STRENDS(STR(?label), "Afro-Brazilian deity)") ||
STRENDS(STR(?label), "Pistoia, Italy)") ||
STRENDS(STR(?label), "Serbia : Region)") ||
STRENDS(STR(?label), "Marin County, Calif.)") ||
STRENDS(STR(?label), "Swansea, Wales)") ||
STRENDS(STR(?label), "Drum)") ||
STRENDS(STR(?label), "The word)") ||
STRENDS(STR(?label), "Norwich, England)") ||
STRENDS(STR(?label), "Fictitious character : Arena)") ||
STRENDS(STR(?label), "Wilmington, Del.)") ||
STRENDS(STR(?label), "Country)") ||
STRENDS(STR(?label), "Boulder County, Colo.)") ||
STRENDS(STR(?label), "Eastern Cape, South Africa)") ||
STRENDS(STR(?label), "Lexington, Ky.)") ||
STRENDS(STR(?label), "Dijon, France)") ||
STRENDS(STR(?label), "Romania and Hungary)") ||
STRENDS(STR(?label), "Agra Fort, Agra, India)") ||
STRENDS(STR(?label), "Soccer)") ||
STRENDS(STR(?label), "Middlebury, Vt.)") ||
STRENDS(STR(?label), "Chinese deity)") ||
STRENDS(STR(?label), "Salzburg, Austria)") ||
STRENDS(STR(?label), "The Middle High German word)") ||
STRENDS(STR(?label), "Querétaro, Mexico)") ||
STRENDS(STR(?label), "Lal Qila, Delhi, India)") ||
STRENDS(STR(?label), "Administrative law)") ||
STRENDS(STR(?label), "Panel painting)") ||
STRENDS(STR(?label), "Horn, trombone, trumpets (2)") ||
STRENDS(STR(?label), "Harpsichords (2)") ||
STRENDS(STR(?label), "Trombones (2)") ||
STRENDS(STR(?label), "Yoshii-machi, Gunma-ken, Japan)") ||
STRENDS(STR(?label), "Violin and continuo)") ||
STRENDS(STR(?label), "Violin with string orchestra)") ||
STRENDS(STR(?label), "Piano trio)") ||
STRENDS(STR(?label), "Violin and viola)") ||
STRENDS(STR(?label), "Higashihiroshima-shi, Japan)") ||
STRENDS(STR(?label), "Kitakyūshū-shi, Japan)") ||
STRENDS(STR(?label), "Shari-chō, Japan)") ||
STRENDS(STR(?label), "Kyrgyzstan and Kazakhstan)") ||
STRENDS(STR(?label), "Piano, horns (2)") ||
STRENDS(STR(?label), "Vt. and Québec)") ||
STRENDS(STR(?label), "Peru and Brazil)") ||
STRENDS(STR(?label), "Piano, flutes (2)") ||
STRENDS(STR(?label), "Turkey and Syria)") ||
STRENDS(STR(?label), "Fargo, N.D.)") ||
STRENDS(STR(?label), "Coconino County, Ariz.)") ||
STRENDS(STR(?label), "Data transmission)") ||
STRENDS(STR(?label), "Youngstown, Ohio)") ||
STRENDS(STR(?label), "Alaska and Yukon)") ||
STRENDS(STR(?label), "Stevens County, Wash.)") ||
STRENDS(STR(?label), "Textiles)") ||
STRENDS(STR(?label), "Ephesus)") ||
STRENDS(STR(?label), "Color)") ||
STRENDS(STR(?label), "Armored car)") ||
STRENDS(STR(?label), "Morpeth, England)") ||
STRENDS(STR(?label), "Livorno, Italy)") ||
STRENDS(STR(?label), "Wrocław, Poland)") ||
STRENDS(STR(?label), "Gorilla)") ||
STRENDS(STR(?label), "Guangzhou Shi, China)") ||
STRENDS(STR(?label), "Trenton, N.J.)") ||
STRENDS(STR(?label), "Space flight)") ||
STRENDS(STR(?label), "Occultism)") ||
STRENDS(STR(?label), "Bath, England)") ||
STRENDS(STR(?label), "Drilling rig)") ||
STRENDS(STR(?label), "Baltic people)") ||
STRENDS(STR(?label), "Whale)") ||
STRENDS(STR(?label), "Baden-Württemberg, Germany)") ||
STRENDS(STR(?label), "Germany : Mountain)") ||
STRENDS(STR(?label), "Semitic deity)") ||
STRENDS(STR(?label), "Execution)") ||
STRENDS(STR(?label), "Gila County, Ariz.)") ||
STRENDS(STR(?label), "Mongolia and Russia)") ||
STRENDS(STR(?label), "Yuma, Ariz.)") ||
STRENDS(STR(?label), "Bari, Italy)") ||
STRENDS(STR(?label), "Space environment)") ||
STRENDS(STR(?label), "Lucerne, Switzerland)") ||
STRENDS(STR(?label), "Eye)") ||
STRENDS(STR(?label), "Cumberland County, Me.)") ||
STRENDS(STR(?label), "Month)") ||
STRENDS(STR(?label), "Greek deity)") ||
STRENDS(STR(?label), "Heard and McDonald Islands)") ||
STRENDS(STR(?label), "Saint Vincent and the Grenadines)") ||
STRENDS(STR(?label), "Millard County, Utah)") ||
STRENDS(STR(?label), "Pretoria, South Africa)") ||
STRENDS(STR(?label), "Thai people)") ||
STRENDS(STR(?label), "Language learning)") ||
STRENDS(STR(?label), "Panda)") ||
STRENDS(STR(?label), "Poetry)") ||
STRENDS(STR(?label), "Warships)") ||
STRENDS(STR(?label), "Salamanca, Spain)") ||
STRENDS(STR(?label), "Part songs)") ||
STRENDS(STR(?label), "Rome)") ||
STRENDS(STR(?label), "Fighter planes)") ||
STRENDS(STR(?label), "El Paso County, Colo.)") ||
STRENDS(STR(?label), "Mural painting)") ||
STRENDS(STR(?label), "Boats)") ||
STRENDS(STR(?label), "Oklahoma City, Okla.)") ||
STRENDS(STR(?label), "Camden, N.J.)") ||
STRENDS(STR(?label), "Howitzer)") ||
STRENDS(STR(?label), "Commerce)") ||
STRENDS(STR(?label), "Parapsychology)") ||
STRENDS(STR(?label), "Erfurt, Germany)") ||
STRENDS(STR(?label), "Bavaria, Germany)") ||
STRENDS(STR(?label), "Web site development tool)") ||
STRENDS(STR(?label), "London, England : Imaginary place)") ||
STRENDS(STR(?label), "Region)") ||
STRENDS(STR(?label), "Alta. and N.W.T.)") ||
STRENDS(STR(?label), "African deity)") ||
STRENDS(STR(?label), "Egypt : Extinct city)") ||
STRENDS(STR(?label), "Worcester County, Mass.)") ||
STRENDS(STR(?label), "Ont. and Québec)") ||
STRENDS(STR(?label), "Germany : Region)") ||
STRENDS(STR(?label), "Minn. and Wis.)") ||
STRENDS(STR(?label), "LaGrange County, Ind.)") ||
STRENDS(STR(?label), "Geophysics)") ||
STRENDS(STR(?label), "Turks and Caicos Islands)") ||
STRENDS(STR(?label), "Helena, Mont.)") ||
STRENDS(STR(?label), "Motion pictures, television, etc.)") ||
STRENDS(STR(?label), "Albania : Region)") ||
STRENDS(STR(?label), "La Coruña, Spain)") ||
STRENDS(STR(?label), "Computer network standard)") ||
STRENDS(STR(?label), "Cocktails)") ||
STRENDS(STR(?label), "Perth, W.A.)") ||
STRENDS(STR(?label), "Trinidad and Tobago)") ||
STRENDS(STR(?label), "Conn. and Mass.)") ||
STRENDS(STR(?label), "Calgary, Alta.)") ||
STRENDS(STR(?label), "Taste)") ||
STRENDS(STR(?label), "Weapons system)") ||
STRENDS(STR(?label), "Animals)") ||
STRENDS(STR(?label), "Operator theory)") ||
STRENDS(STR(?label), "Dhaka, Bangladesh)") ||
STRENDS(STR(?label), "Domestic relations)") ||
STRENDS(STR(?label), "Middlesex County, Mass.)") ||
STRENDS(STR(?label), "N.C. : River)") ||
STRENDS(STR(?label), "Mythical bird)") ||
STRENDS(STR(?label), "Nickname)") ||
STRENDS(STR(?label), "Copyright)") ||
STRENDS(STR(?label), "Olympia, Wash.)") ||
STRENDS(STR(?label), "Johor, Malaysia)") ||
STRENDS(STR(?label), "Bangladeshi people)") ||
STRENDS(STR(?label), "Afghanistan and Pakistan)") ||
STRENDS(STR(?label), "Scottsdale, Ariz.)") ||
STRENDS(STR(?label), "Guided missile)") ||
STRENDS(STR(?label), "Valletta, Malta)") ||
STRENDS(STR(?label), "Metalwork)") ||
STRENDS(STR(?label), "Kuwait)") ||
STRENDS(STR(?label), "Transportation)") ||
STRENDS(STR(?label), "Machine learning)") ||
STRENDS(STR(?label), "Qld. and N.S.W.)") ||
STRENDS(STR(?label), "Ont. : Lake)") ||
STRENDS(STR(?label), "R.I. and Conn.)") ||
STRENDS(STR(?label), "Zhejiang Sheng, China)") ||
STRENDS(STR(?label), "N.D. and Man.)") ||
STRENDS(STR(?label), "Hot Springs, Ark.)") ||
STRENDS(STR(?label), "Punishment)") ||
STRENDS(STR(?label), "Tex. : Fort)") ||
STRENDS(STR(?label), "Santiago de Cuba, Cuba)") ||
STRENDS(STR(?label), "Derbyshire, England)") ||
STRENDS(STR(?label), "Birmingham, Ala.)") ||
STRENDS(STR(?label), "Angkor)") ||
STRENDS(STR(?label), "Chemical)") ||
STRENDS(STR(?label), "Bangladesh and India)") ||
STRENDS(STR(?label), "Antigua and Barbuda)") ||
STRENDS(STR(?label), "Ont. and Man.)") ||
STRENDS(STR(?label), "Me. : Imaginary place)") ||
STRENDS(STR(?label), "Violin and cello)") ||
STRENDS(STR(?label), "W. Va. and Pa.)") ||
STRENDS(STR(?label), "Mentor, Ohio)") ||
STRENDS(STR(?label), "Poland and Russia)") ||
STRENDS(STR(?label), "Akron, Ohio)") ||
STRENDS(STR(?label), "Sheffield, England)") ||
STRENDS(STR(?label), "Montgomery, Ala.)") ||
STRENDS(STR(?label), "Strathclyde, Scotland)") ||
STRENDS(STR(?label), "Sichuan Sheng, China)") ||
STRENDS(STR(?label), "Buddhist festival)") ||
STRENDS(STR(?label), "Malaysia)") ||
STRENDS(STR(?label), "Ethiopia and Sudan)") ||
STRENDS(STR(?label), "Personification)") ||
STRENDS(STR(?label), "Toledo, Spain)") ||
STRENDS(STR(?label), "Seattle, Wash. : Park)") ||
STRENDS(STR(?label), "Congo and Uganda)") ||
STRENDS(STR(?label), "Thessalonikē, Greece)") ||
STRENDS(STR(?label), "Fort Worth, Tex.)") ||
STRENDS(STR(?label), "Jersey City, N.J.)") ||
STRENDS(STR(?label), "Maldives)") ||
STRENDS(STR(?label), "S.C. : Island)") ||
STRENDS(STR(?label), "Building materials)") ||
STRENDS(STR(?label), "Me. and N.H.)") ||
STRENDS(STR(?label), "Khajurāho, India)") ||
STRENDS(STR(?label), "Plymouth County, Mass.)") ||
STRENDS(STR(?label), "Cello)") ||
STRENDS(STR(?label), "León, Spain)") ||
STRENDS(STR(?label), "Gibraltar)") ||
STRENDS(STR(?label), "North America)") ||
STRENDS(STR(?label), "China : Region)") ||
STRENDS(STR(?label), "Shanxi Sheng, China)") ||
STRENDS(STR(?label), "Sask. and Alta.)") ||
STRENDS(STR(?label), "Orlando, Fla.)") ||
STRENDS(STR(?label), "Delhi, India)") ||
STRENDS(STR(?label), "Madison County, Mont.)") ||
STRENDS(STR(?label), "Santa Cruz, Calif.)") ||
STRENDS(STR(?label), "York County, Me.)") ||
STRENDS(STR(?label), "Toruń, Poland)") ||
STRENDS(STR(?label), "Arezzo, Italy)") ||
STRENDS(STR(?label), "Monkey)") ||
STRENDS(STR(?label), "Fictitious character : Smith)") ||
STRENDS(STR(?label), "Fictitious character : Brown)") ||
STRENDS(STR(?label), "Bolzano, Trentino-Alto Adige, Italy)") ||
STRENDS(STR(?label), "Snohomish County and King County, Wash.)") ||
STRENDS(STR(?label), "Lecce, Italy)") ||
STRENDS(STR(?label), "Lewis and Clark County, Mont.)") ||
STRENDS(STR(?label), "Ancona, Italy)") ||
STRENDS(STR(?label), "Kōbe-shi, Japan)") ||
STRENDS(STR(?label), "Leeds, England)") ||
STRENDS(STR(?label), "Crow Wing County, Minn.)") ||
STRENDS(STR(?label), "Early childhood)") ||
STRENDS(STR(?label), "Higher)") ||
STRENDS(STR(?label), "Tianjin, China)") ||
STRENDS(STR(?label), "Argyll and Bute, Scotland)") ||
STRENDS(STR(?label), "Viterbo, Italy)") ||
STRENDS(STR(?label), "Williamsburg, Va.)") ||
STRENDS(STR(?label), "Beaverhead County, Mont.)") ||
STRENDS(STR(?label), "Wyo. and Neb.)") ||
STRENDS(STR(?label), "Montpellier, France)") ||
STRENDS(STR(?label), "Haarlem, Netherlands)") ||
STRENDS(STR(?label), "Malmö, Sweden)") ||
STRENDS(STR(?label), "Boulogne-Billancourt, France)") ||
STRENDS(STR(?label), "Nantes, France)") ||
STRENDS(STR(?label), "Canberra, A.C.T.)") ||
STRENDS(STR(?label), "Ogden, Utah)") ||
STRENDS(STR(?label), "Highland, Scotland)") ||
STRENDS(STR(?label), "Gloucester, Mass.)") ||
STRENDS(STR(?label), "Ely, England)") ||
STRENDS(STR(?label), "Augsburg, Germany)") ||
STRENDS(STR(?label), "Jackson, Tenn.)") ||
STRENDS(STR(?label), "Stanford, Calif.)") ||
STRENDS(STR(?label), "Buddhist deities)") ||
STRENDS(STR(?label), "N.W.T. and Yukon)") ||
STRENDS(STR(?label), "Italy : Region)") ||
STRENDS(STR(?label), "Cork, Ireland)") ||
STRENDS(STR(?label), "Kodiak Island, Alaska)") ||
STRENDS(STR(?label), "Recife, Brazil)") ||
STRENDS(STR(?label), "Cagliari, Italy)") ||
STRENDS(STR(?label), "The Hebrew phrase)") ||
STRENDS(STR(?label), "Iran and Iraq)") ||
STRENDS(STR(?label), "Kenai Peninsula Borough, Alaska)") ||
STRENDS(STR(?label), "Spirits)") ||
STRENDS(STR(?label), "Falmouth, Mass.)") ||
STRENDS(STR(?label), "Hubei Sheng, China)") ||
STRENDS(STR(?label), "Linz, Austria)") ||
STRENDS(STR(?label), "The Romanian word)") ||
STRENDS(STR(?label), "Jaina sect)") ||
STRENDS(STR(?label), "Yorktown, Va.)") ||
STRENDS(STR(?label), "Kosovo)") ||
STRENDS(STR(?label), "Ireland and Northern Ireland)") ||
STRENDS(STR(?label), "Gdańsk, Poland)") ||
STRENDS(STR(?label), "Suffolk, England)") ||
STRENDS(STR(?label), "Grand Forks, N.D.)") ||
STRENDS(STR(?label), "Kumamoto-ken, Japan)") ||
STRENDS(STR(?label), "Ukraine : Preserve)") ||
STRENDS(STR(?label), "Luxembourg)") ||
STRENDS(STR(?label), "Hightstown, N.J.)") ||
STRENDS(STR(?label), "Prato, Italy)") ||
STRENDS(STR(?label), "Psychotherapy)") ||
STRENDS(STR(?label), "Zagreb, Croatia)") ||
STRENDS(STR(?label), "Tehran, Iran)") ||
STRENDS(STR(?label), "Kwangju-si, Chŏlla-namdo, Korea)") ||
STRENDS(STR(?label), "Taoist deity)") ||
STRENDS(STR(?label), "Shandong Sheng, China)") ||
STRENDS(STR(?label), "Tarquinia, Italy)") ||
STRENDS(STR(?label), "Contract)") ||
STRENDS(STR(?label), "Indigenous leaders)") ||
STRENDS(STR(?label), "Fatehpur Sikri, India)") ||
STRENDS(STR(?label), "Ethiopia and Kenya)") ||
STRENDS(STR(?label), "Administrative procedure)") ||
STRENDS(STR(?label), "Computer war game)") ||
STRENDS(STR(?label), "Character)") ||
STRENDS(STR(?label), "Navajo rite)") ||
STRENDS(STR(?label), "South America)") ||
STRENDS(STR(?label), "Egyptian religion)") ||
STRENDS(STR(?label), "The Old High German word)") ||
STRENDS(STR(?label), "Spain and France)") ||
STRENDS(STR(?label), "Trombones (3)") ||
STRENDS(STR(?label), "Horns (3)") ||
STRENDS(STR(?label), "Clarinet and flute)") ||
STRENDS(STR(?label), "Clarinet, violins (2)") ||
STRENDS(STR(?label), "Flute with string orchestra)") ||
STRENDS(STR(?label), "Harpsichord, violins (3)") ||
STRENDS(STR(?label), "Oboe with string orchestra)") ||
STRENDS(STR(?label), "Piano, violins (3)") ||
STRENDS(STR(?label), "Trumpet with string orchestra)") ||
STRENDS(STR(?label), "Violin and organ)") ||
STRENDS(STR(?label), "Wind ensemble)") ||
STRENDS(STR(?label), "Sakaide-shi, Japan)") ||
STRENDS(STR(?label), "Azuchi-chō, Japan)") ||
STRENDS(STR(?label), "Organ and piano)") ||
STRENDS(STR(?label), "Mixed voices, 4 parts)") ||
STRENDS(STR(?label), "Conflict of laws)") ||
STRENDS(STR(?label), "Lübeck law)") ||
STRENDS(STR(?label), "Bassoon, clarinet, flute, oboe, violins (2)") ||
STRENDS(STR(?label), "Clarinets (3)") ||
STRENDS(STR(?label), "Clarinets (4)") ||
STRENDS(STR(?label), "Dance orchestra)") ||
STRENDS(STR(?label), "Flute and guitar)") ||
STRENDS(STR(?label), "Flute and harp)") ||
STRENDS(STR(?label), "Flute and violin)") ||
STRENDS(STR(?label), "Hurdy-gurdies (2)") ||
STRENDS(STR(?label), "Organ with string orchestra)") ||
STRENDS(STR(?label), "Saxophone and piano)") ||
STRENDS(STR(?label), "Liturgical books)") ||
STRENDS(STR(?label), "Chikushino-shi, Japan)") ||
STRENDS(STR(?label), "Miyoshi-shi, Japan)") ||
STRENDS(STR(?label), "Nakagawa-machi, Fukuoka-ken, Japan)") ||
STRENDS(STR(?label), "Tondabayashi-shi, Japan)") ||
STRENDS(STR(?label), "Toyotsu-machi, Japan)") ||
STRENDS(STR(?label), "1)") ||
STRENDS(STR(?label), "Moriyama-shi, Japan)") ||
STRENDS(STR(?label), "Kushigata-machi, Japan)") ||
STRENDS(STR(?label), "Ethiopia and Somalia)") ||
STRENDS(STR(?label), "Flute and continuo)") ||
STRENDS(STR(?label), "Horn and piano)") ||
STRENDS(STR(?label), "Piano, clarinets (2)") ||
STRENDS(STR(?label), "Flute, guitar, viola)") ||
STRENDS(STR(?label), "Cello with orchestra)") ||
STRENDS(STR(?label), "Harpsichord, horns (2)") ||
STRENDS(STR(?label), "Harpsichord, oboes (2)") ||
STRENDS(STR(?label), "Piano, oboes (2)") ||
STRENDS(STR(?label), "Ecuador and Colombia)") ||
STRENDS(STR(?label), "Flute with orchestra)") ||
STRENDS(STR(?label), "Viola with orchestra)") ||
STRENDS(STR(?label), "Brookline, Mass.)") ||
STRENDS(STR(?label), "Pottery)") ||
STRENDS(STR(?label), "Simsbury, Conn.)") ||
STRENDS(STR(?label), "Germany and Poland)") ||
STRENDS(STR(?label), "Thunder Bay, Ont.)") ||
STRENDS(STR(?label), "Pitcairn Islands)") ||
STRENDS(STR(?label), "Devon, England)") ||
STRENDS(STR(?label), "Literary analysis)") ||
STRENDS(STR(?label), "Mexico and Calif.)") ||
STRENDS(STR(?label), "Man. and N.D.)") ||
STRENDS(STR(?label), "Romania and Serbia)") ||
STRENDS(STR(?label), "Mass. and N.H.)") ||
STRENDS(STR(?label), "N.Y. : Island)") ||
STRENDS(STR(?label), "Northampton, England)") ||
STRENDS(STR(?label), "Group of painters)") ||
STRENDS(STR(?label), "Oyster Bay, N.Y.)") ||
STRENDS(STR(?label), "Zambia and Congo)") ||
STRENDS(STR(?label), "Lowell, Mass.)") ||
STRENDS(STR(?label), "Law of the sea)") ||
STRENDS(STR(?label), "Toys)") ||
STRENDS(STR(?label), "Classical mythology)") ||
STRENDS(STR(?label), "Racing plane)") ||
STRENDS(STR(?label), "Synoptics criticism)") ||
STRENDS(STR(?label), "Calif. : Valley)") ||
STRENDS(STR(?label), "Austria and Hungary)") ||
STRENDS(STR(?label), "Algeria and Tunisia)") ||
STRENDS(STR(?label), "Computer network technology)") ||
STRENDS(STR(?label), "Paphos, Cyprus)") ||
STRENDS(STR(?label), "Okla. and Ark.)") ||
STRENDS(STR(?label), "Allentown, Pa.)") ||
STRENDS(STR(?label), "Songs)") ||
STRENDS(STR(?label), "Half-track)") ||
STRENDS(STR(?label), "Subculture)") ||
STRENDS(STR(?label), "Glider)") ||
STRENDS(STR(?label), "Chemical technology)") ||
STRENDS(STR(?label), "Conceptual model)") ||
STRENDS(STR(?label), "Brighton, England)") ||
STRENDS(STR(?label), "Ice mummy)") ||
STRENDS(STR(?label), "Göttingen, Germany)") ||
STRENDS(STR(?label), "Saint Louis County, Minn.)") ||
STRENDS(STR(?label), "Stirling, Scotland)") ||
STRENDS(STR(?label), "Evidence)") ||
STRENDS(STR(?label), "Digital music player)") ||
STRENDS(STR(?label), "Evolution)") ||
STRENDS(STR(?label), "Cinematography)") ||
STRENDS(STR(?label), "Fisheries)") ||
STRENDS(STR(?label), "Supersonic plane)") ||
STRENDS(STR(?label), "Tartu, Estonia)") ||
STRENDS(STR(?label), "Carbon County, Utah)") ||
STRENDS(STR(?label), "Allegheny County, Pa.)") ||
STRENDS(STR(?label), "New Delhi, India)") ||
STRENDS(STR(?label), "Wis. and Minn.)") ||
STRENDS(STR(?label), "Mexico and Ariz.)") ||
STRENDS(STR(?label), "France and Germany)") ||
STRENDS(STR(?label), "Electric locomotive)") ||
STRENDS(STR(?label), "Wyo. and S.D.)") ||
STRENDS(STR(?label), "The letter)") ||
STRENDS(STR(?label), "Cnidaria)") ||
STRENDS(STR(?label), "Forestry)") ||
STRENDS(STR(?label), "Air-to-surface missile)") ||
STRENDS(STR(?label), "Dog sport)") ||
STRENDS(STR(?label), "Key West, Fla.)") ||
STRENDS(STR(?label), "Heraldry)") ||
STRENDS(STR(?label), "Service mark)") ||
STRENDS(STR(?label), "Tanker aircraft)") ||
STRENDS(STR(?label), "North Macedonia and Greece)") ||
STRENDS(STR(?label), "Musicians)") ||
STRENDS(STR(?label), "Austria and Italy)") ||
STRENDS(STR(?label), "Kingdom)") ||
STRENDS(STR(?label), "Kent, England)") ||
STRENDS(STR(?label), "Bread)") ||
STRENDS(STR(?label), "N.J. and Pa.)") ||
STRENDS(STR(?label), "Television)") ||
STRENDS(STR(?label), "India and Nepal)") ||
STRENDS(STR(?label), "Ashmore and Cartier Islands)") ||
STRENDS(STR(?label), "Computer graphics)") ||
STRENDS(STR(?label), "Los Angeles County, Calif.)") ||
STRENDS(STR(?label), "Sweden and Norway)") ||
STRENDS(STR(?label), "Instruments)") ||
STRENDS(STR(?label), "Computer network architecture)") ||
STRENDS(STR(?label), "Dominica)") ||
STRENDS(STR(?label), "Box Elder County, Utah)") ||
STRENDS(STR(?label), "Salem, Or.)") ||
STRENDS(STR(?label), "Prince of Wales-Outer Ketchikan Census Area, Alaska)") ||
STRENDS(STR(?label), "Sailing ships)") ||
STRENDS(STR(?label), "Mount Pleasant, S.C.)") ||
STRENDS(STR(?label), "Maritime law)") ||
STRENDS(STR(?label), "Clarinet)") ||
STRENDS(STR(?label), "Colo. and Neb.)") ||
STRENDS(STR(?label), "Peru and Bolivia)") ||
STRENDS(STR(?label), "Or. and Idaho)") ||
STRENDS(STR(?label), "Percussion)") ||
STRENDS(STR(?label), "Bassoon)") ||
STRENDS(STR(?label), "Germany and Czech Republic)") ||
STRENDS(STR(?label), "Zoroastrian deity)") ||
STRENDS(STR(?label), "Catholic theology)") ||
STRENDS(STR(?label), "Spiritualism)") ||
STRENDS(STR(?label), "Ky. and Va.)") ||
STRENDS(STR(?label), "Mesa, Ariz.)") ||
STRENDS(STR(?label), "Nice, France)") ||
STRENDS(STR(?label), "Jakarta, Indonesia)") ||
STRENDS(STR(?label), "Ohio : River)") ||
STRENDS(STR(?label), "Lucknow, India)") ||
STRENDS(STR(?label), "Nomadic people)") ||
STRENDS(STR(?label), "Jefferson County, Mont.)") ||
STRENDS(STR(?label), "China and Russia)") ||
STRENDS(STR(?label), "Greek deities)") ||
STRENDS(STR(?label), "Freiburg im Breisgau, Germany)") ||
STRENDS(STR(?label), "Scotland and England)") ||
STRENDS(STR(?label), "Ancient)") ||
STRENDS(STR(?label), "Johannesburg, South Africa)") ||
STRENDS(STR(?label), "Paestum)") ||
STRENDS(STR(?label), "Nunavut : Bay)") ||
STRENDS(STR(?label), "Summit County, Utah)") ||
STRENDS(STR(?label), "Fla. and Ala.)") ||
STRENDS(STR(?label), "Okla. and Kan.)") ||
STRENDS(STR(?label), "Llanelli, Wales)") ||
STRENDS(STR(?label), "New Caledonian people)") ||
STRENDS(STR(?label), "Benton County, Wash.)") ||
STRENDS(STR(?label), "Sonoma County, Calif.)") ||
STRENDS(STR(?label), "Mich. and Ind.)") ||
STRENDS(STR(?label), "N.S.W. and Vic.)") ||
STRENDS(STR(?label), "Artificial intelligence)") ||
STRENDS(STR(?label), "Greenbrier County, W. Va.)") ||
STRENDS(STR(?label), "Mohave County, Ariz.)") ||
STRENDS(STR(?label), "Juneau, Alaska)") ||
STRENDS(STR(?label), "Ga. and Tenn.)") ||
STRENDS(STR(?label), "Pa. and W. Va.)") ||
STRENDS(STR(?label), "Dortmund, Germany)") ||
STRENDS(STR(?label), "Colorado Springs, Colo.)") ||
STRENDS(STR(?label), "Colombo, Sri Lanka)") ||
STRENDS(STR(?label), "Long Island, N.Y.)") ||
STRENDS(STR(?label), "Io)") ||
STRENDS(STR(?label), "Lahore, Pakistan)") ||
STRENDS(STR(?label), "Roman officials)") ||
STRENDS(STR(?label), "Idaho : Lake)") ||
STRENDS(STR(?label), "Congo (Democratic Republic)") ||
STRENDS(STR(?label), "The sound)") ||
STRENDS(STR(?label), "Group of architects)") ||
STRENDS(STR(?label), "Canton, Ohio)") ||
STRENDS(STR(?label), "Virtual reality)") ||
STRENDS(STR(?label), "Bahia, Brazil)") ||
STRENDS(STR(?label), "Córdoba, Spain)") ||
STRENDS(STR(?label), "Antwerp, Belgium)") ||
STRENDS(STR(?label), "Colombia and Brazil)") ||
STRENDS(STR(?label), "Rimini, Italy)") ||
STRENDS(STR(?label), "Terengganu, Malaysia)") ||
STRENDS(STR(?label), "Malibu, Calif.)") ||
STRENDS(STR(?label), "Slavic deity)") ||
STRENDS(STR(?label), "Hampshire County, Mass.)") ||
STRENDS(STR(?label), "Double bass)") ||
STRENDS(STR(?label), "Church of England)") ||
STRENDS(STR(?label), "Logroño, Spain)") ||
STRENDS(STR(?label), "Ṣaqqārah, Egypt)") ||
STRENDS(STR(?label), "Benin and Togo)") ||
STRENDS(STR(?label), "Brazil and Bolivia)") ||
STRENDS(STR(?label), "Line Islands)") ||
STRENDS(STR(?label), "Arequipa, Peru)") ||
STRENDS(STR(?label), "Computer network management)") ||
STRENDS(STR(?label), "Immunology)") ||
STRENDS(STR(?label), "Wine making)") ||
STRENDS(STR(?label), "Wyo. and Utah)") ||
STRENDS(STR(?label), "Miss. and La.)") ||
STRENDS(STR(?label), "Ubangi)") ||
STRENDS(STR(?label), "Slovenia and Italy)") ||
STRENDS(STR(?label), "Exercise equipment)") ||
STRENDS(STR(?label), "New Haven County, Conn.)") ||
STRENDS(STR(?label), "Yakima County, Wash.)") ||
STRENDS(STR(?label), "Petrology)") ||
STRENDS(STR(?label), "N.T. and Qld.)") ||
STRENDS(STR(?label), "Leiden, Netherlands)") ||
STRENDS(STR(?label), "Conwy, Wales)") ||
STRENDS(STR(?label), "Trumpet)") ||
STRENDS(STR(?label), "Tajikistan and Uzbekistan)") ||
STRENDS(STR(?label), "Or. and Nev.)") ||
STRENDS(STR(?label), "Ahmadābād, India)") ||
STRENDS(STR(?label), "Idaho and Nev.)") ||
STRENDS(STR(?label), "San Juan County, Colo.)") ||
STRENDS(STR(?label), "Hillingdon, London, England)") ||
STRENDS(STR(?label), "Sweet Grass County, Mont.)") ||
STRENDS(STR(?label), "Scotland : Imaginary place)") ||
STRENDS(STR(?label), "Imola, Italy)") ||
STRENDS(STR(?label), "Christian sect)") ||
STRENDS(STR(?label), "Lʹviv, Ukraine)") ||
STRENDS(STR(?label), "Logging)") ||
STRENDS(STR(?label), "Kittitas County, Wash.)") ||
STRENDS(STR(?label), "Fresno, Calif.)") ||
STRENDS(STR(?label), "Washoe County, Nev.)") ||
STRENDS(STR(?label), "Washington County, Or.)") ||
STRENDS(STR(?label), "Midland, Mich.)") ||
STRENDS(STR(?label), "Lincoln County, Wyo.)") ||
STRENDS(STR(?label), "Cuernavaca, Mexico)") ||
STRENDS(STR(?label), "Cowlitz County, Wash.)") ||
STRENDS(STR(?label), "Wash. and B.C.)") ||
STRENDS(STR(?label), "Fictitious character : Dunbar)") ||
STRENDS(STR(?label), "Implements)") ||
STRENDS(STR(?label), "Takatsuki-shi, Japan)") ||
STRENDS(STR(?label), "Wood)") ||
STRENDS(STR(?label), "Textile)") ||
STRENDS(STR(?label), "Marburg, Germany)") ||
STRENDS(STR(?label), "Idaho and Wyo.)") ||
STRENDS(STR(?label), "W.A. : River)") ||
STRENDS(STR(?label), "Nancy, France)") ||
STRENDS(STR(?label), "Hastings, England)") ||
STRENDS(STR(?label), "Yukon and N.W.T.)") ||
STRENDS(STR(?label), "Missoula, Mont.)") ||
STRENDS(STR(?label), "Dunedin, N.Z.)") ||
STRENDS(STR(?label), "New Bedford, Mass.)") ||
STRENDS(STR(?label), "Luzon, Philippines)") ||
STRENDS(STR(?label), "Albuquerque, N.M.)") ||
STRENDS(STR(?label), "Boogie woogie)") ||
STRENDS(STR(?label), "The Dutch word)") ||
STRENDS(STR(?label), "Belarus and Lithuania)") ||
STRENDS(STR(?label), "Clatsop County, Or.)") ||
STRENDS(STR(?label), "Sidon, Lebanon)") ||
STRENDS(STR(?label), "Fictitious character : Rodda)") ||
STRENDS(STR(?label), "Bergama, Turkey)") ||
STRENDS(STR(?label), "Cache County, Utah)") ||
STRENDS(STR(?label), "Beaver County, Utah)") ||
STRENDS(STR(?label), "Modoc County, Calif.)") ||
STRENDS(STR(?label), "Varese, Italy)") ||
STRENDS(STR(?label), "Cremona, Italy)") ||
STRENDS(STR(?label), "Pushkin, Russia)") ||
STRENDS(STR(?label), "Costa Rica and Panama)") ||
STRENDS(STR(?label), "Saint Lucia)") ||
STRENDS(STR(?label), "Cayman Islands)") ||
STRENDS(STR(?label), "Beaufort, S.C.)") ||
STRENDS(STR(?label), "Dartmouth, England)") ||
STRENDS(STR(?label), "Slovakia and Poland)") ||
STRENDS(STR(?label), "Eagle County, Colo.)") ||
STRENDS(STR(?label), "Utah County, Utah)") ||
STRENDS(STR(?label), "Clark County and Jefferson County, Idaho)") ||
STRENDS(STR(?label), "Local government)") ||
STRENDS(STR(?label), "Jiangxi Sheng, China)") ||
STRENDS(STR(?label), "Pesaro, Italy)") ||
STRENDS(STR(?label), "Santa Fe, N.M.)") ||
STRENDS(STR(?label), "Innsbruck, Austria)") ||
STRENDS(STR(?label), "Karaite law)") ||
STRENDS(STR(?label), "Malawi and Mozambique)") ||
STRENDS(STR(?label), "Clemson, S.C.)") ||
STRENDS(STR(?label), "Laramie, Wyo.)") ||
STRENDS(STR(?label), "Fictitious character : Tibo)") ||
STRENDS(STR(?label), "N.S.W. and Qld.)") ||
STRENDS(STR(?label), "Scottish mountains)") ||
STRENDS(STR(?label), "Nauvoo, Ill.)") ||
STRENDS(STR(?label), "Yoruba law)") ||
STRENDS(STR(?label), "Nyasa)") ||
STRENDS(STR(?label), "Rouen, France)") ||
STRENDS(STR(?label), "Exposición Ibero-Americana, 1929-1930, Seville, Spain)") ||
STRENDS(STR(?label), "Compiègne, France)") ||
STRENDS(STR(?label), "Lincoln, England)") ||
STRENDS(STR(?label), "Clallam County, Wash.)") ||
STRENDS(STR(?label), "Wash. and Idaho)") ||
STRENDS(STR(?label), "Pamplona, Spain)") ||
STRENDS(STR(?label), "La Paz, Bolivia)") ||
STRENDS(STR(?label), "Bar Harbor, Me.)") ||
STRENDS(STR(?label), "Lion)") ||
STRENDS(STR(?label), "Lewis County, Wash.)") ||
STRENDS(STR(?label), "Guangdong Sheng, China)") ||
STRENDS(STR(?label), "Carlisle, England)") ||
STRENDS(STR(?label), "Hungary and Romania)") ||
STRENDS(STR(?label), "Nicosia, Cyprus)") ||
STRENDS(STR(?label), "Kennebunkport, Me.)") ||
STRENDS(STR(?label), "Gospel)") ||
STRENDS(STR(?label), "Swing)") ||
STRENDS(STR(?label), "Honky-tonk)") ||
STRENDS(STR(?label), "Heavy metal)") ||
STRENDS(STR(?label), "Trier, Germany)") ||
STRENDS(STR(?label), "Eswatini)") ||
STRENDS(STR(?label), "Rhythm and blues)") ||
STRENDS(STR(?label), "Concord, Mass.)") ||
STRENDS(STR(?label), "Bexley, London, England)") ||
STRENDS(STR(?label), "Automobiles)") ||
STRENDS(STR(?label), "Panama, Panama)") ||
STRENDS(STR(?label), "Nottingham, England)") ||
STRENDS(STR(?label), "North Rhine-Westphalia, Germany)") ||
STRENDS(STR(?label), "Las Vegas, Nev.)") ||
STRENDS(STR(?label), "The Tamil word)") ||
STRENDS(STR(?label), "Cento, Italy)") ||
STRENDS(STR(?label), "Symbol)") ||
STRENDS(STR(?label), "Barron County, Wis.)") ||
STRENDS(STR(?label), "South Yorkshire, England)") ||
STRENDS(STR(?label), "Burkina Faso and Ghana)") ||
STRENDS(STR(?label), "Santa Barbara County, Calif.)") ||
STRENDS(STR(?label), "Niederzier, Germany)") ||
STRENDS(STR(?label), "Fictitious character : Bouchard)") ||
STRENDS(STR(?label), "Curitiba, Brazil)") ||
STRENDS(STR(?label), "Polar bear)") ||
STRENDS(STR(?label), "New London, Conn.)") ||
STRENDS(STR(?label), "Colchester, England)") ||
STRENDS(STR(?label), "Château de Versailles, Versailles, France)") ||
STRENDS(STR(?label), "Galway, Ireland)") ||
STRENDS(STR(?label), "Lérida, Spain)") ||
STRENDS(STR(?label), "Salisbury, England)") ||
STRENDS(STR(?label), "Russia and Kazakhstan)") ||
STRENDS(STR(?label), "North-West, South Africa)") ||
STRENDS(STR(?label), "Humboldt County, Calif.)") ||
STRENDS(STR(?label), "Paterson, N.J.)") ||
STRENDS(STR(?label), "Guatemala, Guatemala)") ||
STRENDS(STR(?label), "Toluca de Lerdo, Mexico)") ||
STRENDS(STR(?label), "Nev. and Or.)") ||
STRENDS(STR(?label), "Norwell, England)") ||
STRENDS(STR(?label), "Liège, Belgium)") ||
STRENDS(STR(?label), "Latin America)") ||
STRENDS(STR(?label), "Piacenza, Italy)") ||
STRENDS(STR(?label), "Edirne, Turkey)") ||
STRENDS(STR(?label), "Bursa, Turkey)") ||
STRENDS(STR(?label), "The Danish word)") ||
STRENDS(STR(?label), "Asheville, N.C.)") ||
STRENDS(STR(?label), "Lille, France)") ||
STRENDS(STR(?label), "Kamchatskiĭ kraĭ, Russia)") ||
STRENDS(STR(?label), "The Ukrainian word)") ||
STRENDS(STR(?label), "Italy and Slovenia)") ||
STRENDS(STR(?label), "Jersey)") ||
STRENDS(STR(?label), "Sagunto, Spain)") ||
STRENDS(STR(?label), "Mexico and Tex.)") ||
STRENDS(STR(?label), "Lugano, Switzerland)") ||
STRENDS(STR(?label), "Rovigo, Italy)") ||
STRENDS(STR(?label), "West Vancouver, B.C.)") ||
STRENDS(STR(?label), "Liaoning Sheng, China)") ||
STRENDS(STR(?label), "Brazil and Uruguay)") ||
STRENDS(STR(?label), "South Carolina Inter-State and West Indian Exposition, 1901-1902, Charleston, S.C.)") ||
STRENDS(STR(?label), "Hamilton, Ont.)") ||
STRENDS(STR(?label), "Hydrodynamics)") ||
STRENDS(STR(?label), "Art object)") ||
STRENDS(STR(?label), "Indexing system)") ||
STRENDS(STR(?label), "Differential equations)") ||
STRENDS(STR(?label), "Bassoon and oboe)") ||
STRENDS(STR(?label), "Calif. and Mexico)") ||
STRENDS(STR(?label), "Austur-Húnavatnssýsla, Iceland)") ||
STRENDS(STR(?label), "Trumpets (4)") ||
STRENDS(STR(?label), "Horn, trombones (2)") ||
STRENDS(STR(?label), "Trumpets (5)") ||
STRENDS(STR(?label), "Trumpets (3)") ||
STRENDS(STR(?label), "Business)") ||
STRENDS(STR(?label), "Flute and cello)") ||
STRENDS(STR(?label), "Organ, 4 hands)") ||
STRENDS(STR(?label), "Organs (2)") ||
STRENDS(STR(?label), "Piano, 1 hand)") ||
STRENDS(STR(?label), "Recorder and piano)") ||
STRENDS(STR(?label), "String trio)") ||
STRENDS(STR(?label), "Cellos (4)") ||
STRENDS(STR(?label), "Sōja-shi, Japan)") ||
STRENDS(STR(?label), "Yamagata-shi, Japan)") ||
STRENDS(STR(?label), "Takefu-shi, Japan)") ||
STRENDS(STR(?label), "Harpsichord, recorders (3)") ||
STRENDS(STR(?label), "Tuba and piano)") ||
STRENDS(STR(?label), "Viola da gamba and continuo)") ||
STRENDS(STR(?label), "Cello with chamber orchestra)") ||
STRENDS(STR(?label), "Chiriquí, Panama)") ||
STRENDS(STR(?label), "Kazakhstan and Uzbekistan)") ||
STRENDS(STR(?label), "Flute and organ)") ||
STRENDS(STR(?label), "Horn and organ)") ||
STRENDS(STR(?label), "Oboe and organ)") ||
STRENDS(STR(?label), "Tswana law)") ||
STRENDS(STR(?label), "Bassoon, clarinet, flute, horn, oboe)") ||
STRENDS(STR(?label), "Bassoon, clarinets (2)") ||
STRENDS(STR(?label), "Flute with chamber orchestra)") ||
STRENDS(STR(?label), "Flutes (4)") ||
STRENDS(STR(?label), "Piano with string orchestra)") ||
STRENDS(STR(?label), "Recorder)") ||
STRENDS(STR(?label), "Recorders (3)") ||
STRENDS(STR(?label), "Viola and cello)") ||
STRENDS(STR(?label), "Viola with string orchestra)") ||
STRENDS(STR(?label), "Violin and harp)") ||
STRENDS(STR(?label), "Violin with chamber orchestra)") ||
STRENDS(STR(?label), "Musique concrète)") ||
STRENDS(STR(?label), "Nuclear engineering)") ||
STRENDS(STR(?label), "Unspecified instruments (2)") ||
STRENDS(STR(?label), "Kiryū-shi, Japan)") ||
STRENDS(STR(?label), "Elephantine, Egypt)") ||
STRENDS(STR(?label), "Arnhem, Netherlands)") ||
STRENDS(STR(?label), "Fujiidera-shi, Japan)") ||
STRENDS(STR(?label), "Chemung County, N.Y.)") ||
STRENDS(STR(?label), "Sumatra, Indonesia)") ||
STRENDS(STR(?label), "Yamashiro-chō, Kyoto, Japan)") ||
STRENDS(STR(?label), "Tsuiki-machi, Japan)") ||
STRENDS(STR(?label), "Kitami-shi, Japan)") ||
STRENDS(STR(?label), "Tamano-shi, Japan)") ||
STRENDS(STR(?label), "Nankoku-shi, Japan)") ||
STRENDS(STR(?label), "Higashikurume-shi, Japan)") ||
STRENDS(STR(?label), "Fukuoka-shi, Japan)") ||
STRENDS(STR(?label), "Miyazaki-shi, Japan)") ||
STRENDS(STR(?label), "Kannabe-chō, Japan)") ||
STRENDS(STR(?label), "Sagamihara-shi, Japan)") ||
STRENDS(STR(?label), "Yasu-machi, Fukuoka-ken, Japan)") ||
STRENDS(STR(?label), "Tomioka-shi, Japan)") ||
STRENDS(STR(?label), "Kaminokawa-machi, Japan)") ||
STRENDS(STR(?label), "Kanda-machi, Japan)") ||
STRENDS(STR(?label), "Shinʼasahi-chō, Japan)") ||
STRENDS(STR(?label), "Ogōri-shi, Japan)") ||
STRENDS(STR(?label), "Koga-machi, Japan)") ||
STRENDS(STR(?label), "Yonezawa-shi, Japan)") ||
STRENDS(STR(?label), "Kaga-shi, Japan)") ||
STRENDS(STR(?label), "Sakata-shi, Japan)") ||
STRENDS(STR(?label), "The Sanskrit word)") ||
STRENDS(STR(?label), "Poland and Germany)") ||
STRENDS(STR(?label), "Ind. and Mich.)") ||
STRENDS(STR(?label), "Oboe and continuo)") ||
STRENDS(STR(?label), "Salon orchestra)") ||
STRENDS(STR(?label), "Trombone and piano)") ||
STRENDS(STR(?label), "Plucked instrument ensemble)") ||
STRENDS(STR(?label), "Bassoon, clarinet, flute, horn, violins (2)") ||
STRENDS(STR(?label), "Flute, horns (2)") ||
STRENDS(STR(?label), "Percussion, violins (2)") ||
STRENDS(STR(?label), "Piano, bassoon, clarinets (2)") ||
STRENDS(STR(?label), "Piano, bassoons (2)") ||
STRENDS(STR(?label), "Piano quintet)") ||
STRENDS(STR(?label), "Recorder and harpsichord)") ||
STRENDS(STR(?label), "Flute, guitar, violin)") ||
STRENDS(STR(?label), "Violin and guitar)") ||
STRENDS(STR(?label), "Piano, flute, violin, cello)") ||
STRENDS(STR(?label), "Austria and Czech Republic)") ||
STRENDS(STR(?label), "Bulgaria and Greece)") ||
STRENDS(STR(?label), "Frederick County, Md.)") ||
STRENDS(STR(?label), "Valley County, Mont.)") ||
STRENDS(STR(?label), "Permskai︠a︡ oblastʹ, Russia)") ||
STRENDS(STR(?label), "Bassoon with orchestra)") ||
STRENDS(STR(?label), "Oboe and piano)") ||
STRENDS(STR(?label), "Recorder and continuo)") ||
STRENDS(STR(?label), "Piano, clarinet, violin)") ||
STRENDS(STR(?label), "Tadmur, Syria)") ||
STRENDS(STR(?label), "Celesta, pianos (2)") ||
STRENDS(STR(?label), "Burkina Faso and Côte d'Ivoire)") ||
STRENDS(STR(?label), "Aruba)") ||
STRENDS(STR(?label), "Eames furniture)") ||
STRENDS(STR(?label), "Fictitious character : Johnston)") ||
STRENDS(STR(?label), "Fictitious character : McArthur)") ||
STRENDS(STR(?label), "Lake County, Colo.)") ||
STRENDS(STR(?label), "Ill. and Mo.)") ||
STRENDS(STR(?label), "Greece and Albania)") ||
STRENDS(STR(?label), "Centaur object)") ||
STRENDS(STR(?label), "Del. and N.J.)") ||
STRENDS(STR(?label), "Haringey, London, England)") ||
STRENDS(STR(?label), "Evansville, Ind.)") ||
STRENDS(STR(?label), "Headgear)") ||
STRENDS(STR(?label), "Japanese people)") ||
STRENDS(STR(?label), "Observation helicopter)") ||
STRENDS(STR(?label), "Video game console)") ||
STRENDS(STR(?label), "Set theory)") ||
STRENDS(STR(?label), "Church work)") ||
STRENDS(STR(?label), "Epidaurus)") ||
STRENDS(STR(?label), "Narni, Italy)") ||
STRENDS(STR(?label), "Lucca, Italy)") ||
STRENDS(STR(?label), "Italian literature)") ||
STRENDS(STR(?label), "Minas Gerais-Alagoas and Sergipe, Brazil)") ||
STRENDS(STR(?label), "Larimer County, Colo.)") ||
STRENDS(STR(?label), "Streetcar)") ||
STRENDS(STR(?label), "Logical fallacy)") ||
STRENDS(STR(?label), "B.C. and Yukon)") ||
STRENDS(STR(?label), "Galaxy)") ||
STRENDS(STR(?label), "Madeira Islands)") ||
STRENDS(STR(?label), "Manila, Philippines)") ||
STRENDS(STR(?label), "Aquatic sports)") ||
STRENDS(STR(?label), "L'Aquila, Italy)") ||
STRENDS(STR(?label), "Wash. : Imaginary place)") ||
STRENDS(STR(?label), "Shape)") ||
STRENDS(STR(?label), "Me. : Island)") ||
STRENDS(STR(?label), "Ont. : River)") ||
STRENDS(STR(?label), "Virus)") ||
STRENDS(STR(?label), "Monetary policy)") ||
STRENDS(STR(?label), "Brazil and Argentina)") ||
STRENDS(STR(?label), "S.A. and W.A.)") ||
STRENDS(STR(?label), "Criminal investigation)") ||
STRENDS(STR(?label), "Wrangell, Alaska)") ||
STRENDS(STR(?label), "Columbia County-Brown County, Wis.)") ||
STRENDS(STR(?label), "Mobile, Ala.)") ||
STRENDS(STR(?label), "Northeast Harbor, Me.)") ||
STRENDS(STR(?label), "La Chaux-de-Fonds, Switzerland)") ||
STRENDS(STR(?label), "Gymnastics)") ||
STRENDS(STR(?label), "Microcomputers)") ||
STRENDS(STR(?label), "Ga.-Tenn.)") ||
STRENDS(STR(?label), "Telecommunications)") ||
STRENDS(STR(?label), "Paraná, Brazil)") ||
STRENDS(STR(?label), "Punctuation)") ||
STRENDS(STR(?label), "Calif. : Bay)") ||
STRENDS(STR(?label), "San Juan County, Utah)") ||
STRENDS(STR(?label), "Heat)") ||
STRENDS(STR(?label), "Wyo.-Utah)") ||
STRENDS(STR(?label), "Lagos, Nigeria)") ||
STRENDS(STR(?label), "Sexual behavior)") ||
STRENDS(STR(?label), "Philosophical concept)") ||
STRENDS(STR(?label), "Sexual orientation)") ||
STRENDS(STR(?label), "European people)") ||
STRENDS(STR(?label), "N.Y. : Bay)") ||
STRENDS(STR(?label), "Hebron)") ||
STRENDS(STR(?label), "Vienna, Va.)") ||
STRENDS(STR(?label), "Sukkot)") ||
STRENDS(STR(?label), "Military airplane)") ||
STRENDS(STR(?label), "S.D. and Minn.)") ||
STRENDS(STR(?label), "England : Forest)") ||
STRENDS(STR(?label), "Jewish liturgical objects)") ||
STRENDS(STR(?label), "Video display terminal)") ||
STRENDS(STR(?label), "Parties)") ||
STRENDS(STR(?label), "Tuvalu)") ||
STRENDS(STR(?label), "East Sussex, England)") ||
STRENDS(STR(?label), "Rambouillet, France)") ||
STRENDS(STR(?label), "N.Y. and Vt.-Québec)") ||
STRENDS(STR(?label), "Wash. : Island)") ||
STRENDS(STR(?label), "Togolese people)") ||
STRENDS(STR(?label), "Warwick, England)") ||
STRENDS(STR(?label), "Insurance law)") ||
STRENDS(STR(?label), "Pakistan and Afghanistan)") ||
STRENDS(STR(?label), "Tristan da Cunha)") ||
STRENDS(STR(?label), "Djibouti)") ||
STRENDS(STR(?label), "Colo.-Mexico)") ||
STRENDS(STR(?label), "Jilin Sheng, China)") ||
STRENDS(STR(?label), "Bolivia and Chile)") ||
STRENDS(STR(?label), "Nigeria and Niger)") ||
STRENDS(STR(?label), "Regensburg, Germany)") ||
STRENDS(STR(?label), "Drama)") ||
STRENDS(STR(?label), "Kuala Lumpur, Malaysia)") ||
STRENDS(STR(?label), "Matsuyama-shi, Japan)") ||
STRENDS(STR(?label), "Goddess)") ||
STRENDS(STR(?label), "Hunting)") ||
STRENDS(STR(?label), "Programmable controller)") ||
STRENDS(STR(?label), "Chemnitz, Germany)") ||
STRENDS(STR(?label), "N.J. : River)") ||
STRENDS(STR(?label), "Ga. : Island)") ||
STRENDS(STR(?label), "Fort Smith, Ark.)") ||
STRENDS(STR(?label), "Armenian deity)") ||
STRENDS(STR(?label), "Dye)") ||
STRENDS(STR(?label), "W.A. and S.A.)") ||
STRENDS(STR(?label), "Search and rescue helicopter)") ||
STRENDS(STR(?label), "Gunship)") ||
STRENDS(STR(?label), "Horn)") ||
STRENDS(STR(?label), "Annapolis, Md.)") ||
STRENDS(STR(?label), "Audio coding standard)") ||
STRENDS(STR(?label), "Santa Clara County, Calif.)") ||
STRENDS(STR(?label), "Radio meteorology)") ||
STRENDS(STR(?label), "Strategy)") ||
STRENDS(STR(?label), "Md. and Pa.)") ||
STRENDS(STR(?label), "Afghanistan : Region)") ||
STRENDS(STR(?label), "Antalya, Turkey)") ||
STRENDS(STR(?label), "Tools)") ||
STRENDS(STR(?label), "Dubai, United Arab Emirates)") ||
STRENDS(STR(?label), "Blackpool, England)") ||
STRENDS(STR(?label), "Or. : Lake)") ||
STRENDS(STR(?label), "Central Asian people)") ||
STRENDS(STR(?label), "Tex.-La.)") ||
STRENDS(STR(?label), "Yunnan Sheng, China)") ||
STRENDS(STR(?label), "Banking)") ||
STRENDS(STR(?label), "Vehicles)") ||
STRENDS(STR(?label), "Legend)") ||
STRENDS(STR(?label), "Mexico : Region)") ||
STRENDS(STR(?label), "Calif. : Mountain)") ||
STRENDS(STR(?label), "Radio)") ||
STRENDS(STR(?label), "Comic books)") ||
STRENDS(STR(?label), "Bosnia and Herzegovina and Croatia)") ||
STRENDS(STR(?label), "Salerno, Italy)") ||
STRENDS(STR(?label), "Ky. and W. Va.)") ||
STRENDS(STR(?label), "Kourion)") ||
STRENDS(STR(?label), "Psychiatry)") ||
STRENDS(STR(?label), "Gambia)") ||
STRENDS(STR(?label), "Elko County, Nev.)") ||
STRENDS(STR(?label), "Michigan City, Ind.)") ||
STRENDS(STR(?label), "Dwarf planet)") ||
STRENDS(STR(?label), "Liquor)") ||
STRENDS(STR(?label), "Writ)") ||
STRENDS(STR(?label), "Supercontinent)") ||
STRENDS(STR(?label), "Leicestershire-Gloucestershire, England)") ||
STRENDS(STR(?label), "Inyo County, Calif.)") ||
STRENDS(STR(?label), "Italy and Austria)") ||
STRENDS(STR(?label), "Nuclear strategy)") ||
STRENDS(STR(?label), "Brain)") ||
STRENDS(STR(?label), "South Queensferry, Scotland)") ||
STRENDS(STR(?label), "Duchesne County, Utah)") ||
STRENDS(STR(?label), "Electric locomotives)") ||
STRENDS(STR(?label), "Adelaide, S.A.)") ||
STRENDS(STR(?label), "Kerkyra, Greece)") ||
STRENDS(STR(?label), "Heidelberg, Germany)") ||
STRENDS(STR(?label), "Guimarães, Portugal)") ||
STRENDS(STR(?label), "Arts)") ||
STRENDS(STR(?label), "Iowa : River)") ||
STRENDS(STR(?label), "P'yŏngyang, Korea)") ||
STRENDS(STR(?label), "Chickens)") ||
STRENDS(STR(?label), "England : Lake)") ||
STRENDS(STR(?label), "India and Burma)") ||
STRENDS(STR(?label), "Sitka, Alaska)") ||
STRENDS(STR(?label), "Kars, Turkey)") ||
STRENDS(STR(?label), "Anhui Sheng, China)") ||
STRENDS(STR(?label), "Chihuahua, Chihuahua, Mexico)") ||
STRENDS(STR(?label), "Norse deity)") ||
STRENDS(STR(?label), "Hydrology)") ||
STRENDS(STR(?label), "George Town, Pulau Pinang, Malaysia)") ||
STRENDS(STR(?label), "Horticulture)") ||
STRENDS(STR(?label), "Microcontroller)") ||
STRENDS(STR(?label), "Mich. : River)") ||
STRENDS(STR(?label), "Asunción, Paraguay)") ||
STRENDS(STR(?label), "Keyboard instrument)") ||
STRENDS(STR(?label), "Scranton, Pa.)") ||
STRENDS(STR(?label), "Night fighter plane)") ||
STRENDS(STR(?label), "Dogs)") ||
STRENDS(STR(?label), "Gila County and Maricopa County, Ariz.)") ||
STRENDS(STR(?label), "Glacial landforms)") ||
STRENDS(STR(?label), "Jewish mourning custom)") ||
STRENDS(STR(?label), "Lichens)") ||
STRENDS(STR(?label), "Combat liaison airplane)") ||
STRENDS(STR(?label), "Penalties)") ||
STRENDS(STR(?label), "N.B. and Québec)") ||
STRENDS(STR(?label), "Lemhi County-Butte County, Idaho)") ||
STRENDS(STR(?label), "N.C.-W. Va.)") ||
STRENDS(STR(?label), "Walnut Creek, Calif.)") ||
STRENDS(STR(?label), "Berkeley, Calif.)") ||
STRENDS(STR(?label), "Waste, etc.)") ||
STRENDS(STR(?label), "Tivoli, Italy)") ||
STRENDS(STR(?label), "Firearms)") ||
STRENDS(STR(?label), "Staten Island, New York, N.Y.)") ||
STRENDS(STR(?label), "Boulder, Colo.)") ||
STRENDS(STR(?label), "Russia and China)") ||
STRENDS(STR(?label), "Social custom)") ||
STRENDS(STR(?label), "Como, Italy)") ||
STRENDS(STR(?label), "Bexar County, Tex.)") ||
STRENDS(STR(?label), "Machine-tools)") ||
STRENDS(STR(?label), "Secret language)") ||
STRENDS(STR(?label), "Southeast Fairbanks Census Area, Alaska)") ||
STRENDS(STR(?label), "B.C. : Lake)") ||
STRENDS(STR(?label), "Church decoration)") ||
STRENDS(STR(?label), "South Caucasian people)") ||
STRENDS(STR(?label), "China and Korea)") ||
STRENDS(STR(?label), "Graham County, Ariz.)") ||
STRENDS(STR(?label), "Miss. and Ala.)") ||
STRENDS(STR(?label), "Embroidery)") ||
STRENDS(STR(?label), "Wimbledon, London, England)") ||
STRENDS(STR(?label), "Armored personnel carrier)") ||
STRENDS(STR(?label), "Onondaga County, N.Y.)") ||
STRENDS(STR(?label), "Personality test)") ||
STRENDS(STR(?label), "Sporting goods)") ||
STRENDS(STR(?label), "Agricultural machinery)") ||
STRENDS(STR(?label), "Mollusk)") ||
STRENDS(STR(?label), "Teton County, Wyo.)") ||
STRENDS(STR(?label), "Mathematical logic)") ||
STRENDS(STR(?label), "Insecticide)") ||
STRENDS(STR(?label), "Tuscaloosa, Ala.)") ||
STRENDS(STR(?label), "Bay of Plenty, N.Z.)") ||
STRENDS(STR(?label), "Kane County, Utah)") ||
STRENDS(STR(?label), "Greece and Turkey)") ||
STRENDS(STR(?label), "Beverages)") ||
STRENDS(STR(?label), "Samos, Greece)") ||
STRENDS(STR(?label), "Va. and Md.)") ||
STRENDS(STR(?label), "Latvia and Estonia)") ||
STRENDS(STR(?label), "Hounslow, London, England)") ||
STRENDS(STR(?label), "Plumbing fixtures)") ||
STRENDS(STR(?label), "Mackinaw City, Mich.)") ||
STRENDS(STR(?label), "Olympia, Greece)") ||
STRENDS(STR(?label), "Expo, International Exhibitions Bureau, 2010, Shanghai, China)") ||
STRENDS(STR(?label), "Colo.-Mexico and Tex.)") ||
STRENDS(STR(?label), "Des Moines, Iowa)") ||
STRENDS(STR(?label), "Bonaire)") ||
STRENDS(STR(?label), "Higher education)") ||
STRENDS(STR(?label), "Falkland Islands)") ||
STRENDS(STR(?label), "Saint Kitts and Nevis)") ||
STRENDS(STR(?label), "The German phrase)") ||
STRENDS(STR(?label), "Lahore Fort, Lahore, Pakistan)") ||
STRENDS(STR(?label), "Monster)") ||
STRENDS(STR(?label), "Taylor County-La Crosse County, Wis.)") ||
STRENDS(STR(?label), "Wyo.-Wash.)") ||
STRENDS(STR(?label), "Kiel, Germany)") ||
STRENDS(STR(?label), "Biblical figures)") ||
STRENDS(STR(?label), "Albania and Greece)") ||
STRENDS(STR(?label), "New York World's Fair, 1939-1940, New York, N.Y.)") ||
STRENDS(STR(?label), "Durham and Northumberland, England)") ||
STRENDS(STR(?label), "Integrated circuits)") ||
STRENDS(STR(?label), "Marlborough District, N.Z.)") ||
STRENDS(STR(?label), "Kosciusko County, Ind.)") ||
STRENDS(STR(?label), "Finland and Russia)") ||
STRENDS(STR(?label), "Language teaching)") ||
STRENDS(STR(?label), "Catholic)") ||
STRENDS(STR(?label), "Argentina and Uruguay)") ||
STRENDS(STR(?label), "Literary, artistic, etc.)") ||
STRENDS(STR(?label), "Network analysis)") ||
STRENDS(STR(?label), "Minn. : Farm)") ||
STRENDS(STR(?label), "Regina, Sask.)") ||
STRENDS(STR(?label), "Brazil-Argentina)") ||
STRENDS(STR(?label), "Minas Gerais and São Paulo, Brazil)") ||
STRENDS(STR(?label), "Rensselaer County, N.Y.)") ||
STRENDS(STR(?label), "Pacific Grove, Calif.)") ||
STRENDS(STR(?label), "Bookselling)") ||
STRENDS(STR(?label), "Canterbury, N.Z.)") ||
STRENDS(STR(?label), "Charlotte, N.C.)") ||
STRENDS(STR(?label), "Washington County, Ohio)") ||
STRENDS(STR(?label), "Tampa, Fla.)") ||
STRENDS(STR(?label), "Shaanxi Sheng, China)") ||
STRENDS(STR(?label), "Programming)") ||
STRENDS(STR(?label), "Equatorial Guinea)") ||
STRENDS(STR(?label), "Stone carving)") ||
STRENDS(STR(?label), "South Orkney Islands)") ||
STRENDS(STR(?label), "Brownsville, Tex.)") ||
STRENDS(STR(?label), "Converse County, Wyo.)") ||
STRENDS(STR(?label), "Portrait painting)") ||
STRENDS(STR(?label), "Private planes)") ||
STRENDS(STR(?label), "Hardin County, Ill.)") ||
STRENDS(STR(?label), "Alger County, Mich.)") ||
STRENDS(STR(?label), "Burundi)") ||
STRENDS(STR(?label), "Goslar, Germany)") ||
STRENDS(STR(?label), "Sevenoaks, England)") ||
STRENDS(STR(?label), "N.S.W.-S.A.)") ||
STRENDS(STR(?label), "N.Y.-Del. and N.J.)") ||
STRENDS(STR(?label), "Novgorod, Russia)") ||
STRENDS(STR(?label), "Lake County, Calif.)") ||
STRENDS(STR(?label), "Rockford, Ill.)") ||
STRENDS(STR(?label), "Computer animation)") ||
STRENDS(STR(?label), "Tex. and Ark.)") ||
STRENDS(STR(?label), "W.A. and N.T.)") ||
STRENDS(STR(?label), "Zither)") ||
STRENDS(STR(?label), "Fort Myers, Fla.)") ||
STRENDS(STR(?label), "Imaginary space vehicle)") ||
STRENDS(STR(?label), "Reykjavík, Iceland)") ||
STRENDS(STR(?label), "Denmark and Germany)") ||
STRENDS(STR(?label), "Fayetteville, Ark.)") ||
STRENDS(STR(?label), "Alexandria, Egypt)") ||
STRENDS(STR(?label), "S.D. and Iowa)") ||
STRENDS(STR(?label), "Essex, England)") ||
STRENDS(STR(?label), "Ohio and Ind.)") ||
STRENDS(STR(?label), "Columbia County, Wis.)") ||
STRENDS(STR(?label), "Brno, Czech Republic)") ||
STRENDS(STR(?label), "Fictitious character : Disney)") ||
STRENDS(STR(?label), "Me. : Lake)") ||
STRENDS(STR(?label), "Utah-Idaho)") ||
STRENDS(STR(?label), "Franklin County, Me.)") ||
STRENDS(STR(?label), "Malay people)") ||
STRENDS(STR(?label), "Germany : Castle)") ||
STRENDS(STR(?label), "Crockett County-Val Verde County, Tex.)") ||
STRENDS(STR(?label), "San Gimignano, Italy)") ||
STRENDS(STR(?label), "Washington, D.C., and Va.)") ||
STRENDS(STR(?label), "Drottningholm, Sweden)") ||
STRENDS(STR(?label), "Alaska : Cape)") ||
STRENDS(STR(?label), "Toy)") ||
STRENDS(STR(?label), "China and India)") ||
STRENDS(STR(?label), "Va. : Estate)") ||
STRENDS(STR(?label), "American colonies)") ||
STRENDS(STR(?label), "Winchester, Va.)") ||
STRENDS(STR(?label), "Racing automobile)") ||
STRENDS(STR(?label), "Chanderi, Ashoknagar, India)") ||
STRENDS(STR(?label), "Matera, Italy)") ||
STRENDS(STR(?label), "Fortaleza, Brazil)") ||
STRENDS(STR(?label), "Otter Tail County, Minn.)") ||
STRENDS(STR(?label), "Århus, Denmark)") ||
STRENDS(STR(?label), "Picture language)") ||
STRENDS(STR(?label), "Formal language)") ||
STRENDS(STR(?label), "Somerset, England)") ||
STRENDS(STR(?label), "Klamath County-Curry County, Or.)") ||
STRENDS(STR(?label), "N.Z. : Mountain)") ||
STRENDS(STR(?label), "Long Beach, Calif.)") ||
STRENDS(STR(?label), "Tulsa, Okla.)") ||
STRENDS(STR(?label), "Stratigraphy)") ||
STRENDS(STR(?label), "Ellicott City, Md.)") ||
STRENDS(STR(?label), "Labor)") ||
STRENDS(STR(?label), "Expo, International Exhibitions Bureau, 2000, Hannover, Germany)") ||
STRENDS(STR(?label), "Richmond, B.C.)") ||
STRENDS(STR(?label), "Zacatecas, Zacatecas, Mexico)") ||
STRENDS(STR(?label), "Central Africa)") ||
STRENDS(STR(?label), "Białystok, Poland)") ||
STRENDS(STR(?label), "Military aeronautics)") ||
STRENDS(STR(?label), "Laredo, Tex.)") ||
STRENDS(STR(?label), "Fort Wayne, Ind.)") ||
STRENDS(STR(?label), "Eagle)") ||
STRENDS(STR(?label), "Ornaments)") ||
STRENDS(STR(?label), "Riverside, Ill.)") ||
STRENDS(STR(?label), "Fictitious character : Macomber)") ||
STRENDS(STR(?label), "Gettysburg, Pa.)") ||
STRENDS(STR(?label), "Kingston, Ont.)") ||
STRENDS(STR(?label), "Midway Islands)") ||
STRENDS(STR(?label), "Halle an der Saale, Germany)") ||
STRENDS(STR(?label), "Lynn, Mass.)") ||
STRENDS(STR(?label), "Fictitious character : Rayner)") ||
STRENDS(STR(?label), "Niagara-on-the-Lake, Ont.)") ||
STRENDS(STR(?label), "Virginia Beach, Va.)") ||
STRENDS(STR(?label), "Social structure)") ||
STRENDS(STR(?label), "Disciples of Christ)") ||
STRENDS(STR(?label), "Amapá and Pará, Brazil)") ||
STRENDS(STR(?label), "Milton Keynes, England)") ||
STRENDS(STR(?label), "Savigliano, Italy)") ||
STRENDS(STR(?label), "St. Albans, England)") ||
STRENDS(STR(?label), "Conn. : Cape)") ||
STRENDS(STR(?label), "Norfolk, Va.)") ||
STRENDS(STR(?label), "Frascati, Italy)") ||
STRENDS(STR(?label), "Catania, Italy)") ||
STRENDS(STR(?label), "Mass. : Cape)") ||
STRENDS(STR(?label), "Mont. : Fort)") ||
STRENDS(STR(?label), "Savona, Italy)") ||
STRENDS(STR(?label), "Painesville, Ohio)") ||
STRENDS(STR(?label), "Doylestown, Pa.)") ||
STRENDS(STR(?label), "Adams County, Idaho)") ||
STRENDS(STR(?label), "Jesi, Italy)") ||
STRENDS(STR(?label), "Fictitious character : Ashforth)") ||
STRENDS(STR(?label), "Ithaca, N.Y.)") ||
STRENDS(STR(?label), "Ill. : Lake)") ||
STRENDS(STR(?label), "South Bend, Ind.)") ||
STRENDS(STR(?label), "Taormina, Italy)") ||
STRENDS(STR(?label), "Fictitious character : Baker)") ||
STRENDS(STR(?label), "Riverside, Calif.)") ||
STRENDS(STR(?label), "York, Pa.)") ||
STRENDS(STR(?label), "Duluth, Minn.)") ||
STRENDS(STR(?label), "Santa Ana, Calif.)") ||
STRENDS(STR(?label), "Park County, Wyo.)") ||
STRENDS(STR(?label), "Albany County, Wyo.)") ||
STRENDS(STR(?label), "Italian)") ||
STRENDS(STR(?label), "Continuing education)") ||
STRENDS(STR(?label), "Waushara County, Wis.)") ||
STRENDS(STR(?label), "Otoe County, Neb.)") ||
STRENDS(STR(?label), "Tuolumne County, Calif.)") ||
STRENDS(STR(?label), "Iron County, Utah)") ||
STRENDS(STR(?label), "Reggio Emilia, Italy)") ||
STRENDS(STR(?label), "Seattle and Shoreline, Wash.)") ||
STRENDS(STR(?label), "Commonwealth Waters)") ||
STRENDS(STR(?label), "Wiltshire, England)") ||
STRENDS(STR(?label), "Elizabeth City, N.C.)") ||
STRENDS(STR(?label), "Blair County-Clinton County, Pa.)") ||
STRENDS(STR(?label), "Trombones (4)") ||
STRENDS(STR(?label), "Umatilla County, Or.)") ||
STRENDS(STR(?label), "Elko County and Eureka County, Nev.)") ||
STRENDS(STR(?label), "Niigata-shi, Japan)") ||
STRENDS(STR(?label), "Yamaguchi-ken, Japan)") ||
STRENDS(STR(?label), "Shiga-ken, Japan)") ||
STRENDS(STR(?label), "Amazonas, Brazil)") ||
STRENDS(STR(?label), "Fictitious character : Loehr)") ||
STRENDS(STR(?label), "Emblem)") ||
STRENDS(STR(?label), "Aranjuez, Spain)") ||
STRENDS(STR(?label), "Asuka-mura, Japan)") ||
STRENDS(STR(?label), "Eswatini and South Africa)") ||
STRENDS(STR(?label), "Durham, England)") ||
STRENDS(STR(?label), "Fictitious character : Welch)") ||
STRENDS(STR(?label), "Siskiyou County, Calif.)") ||
STRENDS(STR(?label), "Fictitious character : Chaucer)") ||
STRENDS(STR(?label), "Petersburg, Va.)") ||
STRENDS(STR(?label), "Reindeer Lake, Sask.)") ||
STRENDS(STR(?label), "North Atlantic Ocean)") ||
STRENDS(STR(?label), "El Pardo, Spain)") ||
STRENDS(STR(?label), "Cartago, Costa Rica)") ||
STRENDS(STR(?label), "Fictitious character : Martal)") ||
STRENDS(STR(?label), "Corydon, Ind.)") ||
STRENDS(STR(?label), "Charlotte Amalie, United States Virgin Islands)") ||
STRENDS(STR(?label), "The Old English word)") ||
STRENDS(STR(?label), "Park County, Mont.)") ||
STRENDS(STR(?label), "Berlin, Germany : Building)") ||
STRENDS(STR(?label), "Exercise)") ||
STRENDS(STR(?label), "Dayton, Ohio)") ||
STRENDS(STR(?label), "Przemyśl, Poland)") ||
STRENDS(STR(?label), "Prayer)") ||
STRENDS(STR(?label), "San Salvador, El Salvador)") ||
STRENDS(STR(?label), "Kan. : Imaginary place)") ||
STRENDS(STR(?label), "Saint Marys City, Md.)") ||
STRENDS(STR(?label), "Hangzhou Shi, China)") ||
STRENDS(STR(?label), "Blues-rock)") ||
STRENDS(STR(?label), "Wilberforce, Ohio)") ||
STRENDS(STR(?label), "Bulgaria and Serbia)") ||
STRENDS(STR(?label), "Va. : Dwelling)") ||
STRENDS(STR(?label), "Strasbourg, France)") ||
STRENDS(STR(?label), "Pontefract, England)") ||
STRENDS(STR(?label), "Fictitious character : Wells)") ||
STRENDS(STR(?label), "Neustadt an der Weinstrasse, Germany)") ||
STRENDS(STR(?label), "Baden, Austria)") ||
STRENDS(STR(?label), "Erlangen, Germany)") ||
STRENDS(STR(?label), "Frankfort, Ky.)") ||
STRENDS(STR(?label), "Carson City, Nev.)") ||
STRENDS(STR(?label), "New Bern, N.C.)") ||
STRENDS(STR(?label), "Bismarck, N.D.)") ||
STRENDS(STR(?label), "Staffordshire-North Lincolnshire, England)") ||
STRENDS(STR(?label), "Fictitious character : Nixon)") ||
STRENDS(STR(?label), "Gijón, Spain)") ||
STRENDS(STR(?label), "Southend-on-Sea, England)") ||
STRENDS(STR(?label), "Caen, France)") ||
STRENDS(STR(?label), "Middlesbrough, England)") ||
STRENDS(STR(?label), "Bognor Regis, England)") ||
STRENDS(STR(?label), "Palm Springs, Calif.)") ||
STRENDS(STR(?label), "Greene County, N.Y.)") ||
STRENDS(STR(?label), "Flathead County, Mont.)") ||
STRENDS(STR(?label), "Electronic organ)") ||
STRENDS(STR(?label), "Weapons)") ||
STRENDS(STR(?label), "Kent County, Md.)") ||
STRENDS(STR(?label), "Barnstable County, Mass.)") ||
STRENDS(STR(?label), "Santiago de Compostela, Spain)") ||
STRENDS(STR(?label), "Norway and Finland)") ||
STRENDS(STR(?label), "N.L. and Québec)") ||
STRENDS(STR(?label), "Knossos)") ||
STRENDS(STR(?label), "Guernsey)") ||
STRENDS(STR(?label), "Bozeman, Mont.)") ||
STRENDS(STR(?label), "Kootenai County, Idaho)") ||
STRENDS(STR(?label), "Baghdad, Iraq)") ||
STRENDS(STR(?label), "Fictitious character : Bergeron)") ||
STRENDS(STR(?label), "Exposition internationale, 1937, Paris, France)") ||
STRENDS(STR(?label), "Church of Jesus Christ of Latter-day Saints)") ||
STRENDS(STR(?label), "Colima, Colima, Mexico)") ||
STRENDS(STR(?label), "England : Manor)") ||
STRENDS(STR(?label), "Guildford, England)") ||
STRENDS(STR(?label), "Rio Arriba County-Socorro County, N.M.)") ||
STRENDS(STR(?label), "Sioux Falls, S.D.)") ||
STRENDS(STR(?label), "Clearwater County, Idaho)") ||
STRENDS(STR(?label), "Huntingdon, England)") ||
STRENDS(STR(?label), "Tijuana, Baja California, Mexico)") ||
STRENDS(STR(?label), "Jazz-rock)") ||
STRENDS(STR(?label), "Counseling)") ||
STRENDS(STR(?label), "Angers, France)") ||
STRENDS(STR(?label), "Muskoka, Ont.)") ||
STRENDS(STR(?label), "Santa Fe County, N.M.)") ||
STRENDS(STR(?label), "Clay County, Fla.)") ||
STRENDS(STR(?label), "Honley, England)") ||
STRENDS(STR(?label), "Willemstad, Curaçao)") ||
STRENDS(STR(?label), "Cumae)") ||
STRENDS(STR(?label), "Fictitious character : Jungman)") ||
STRENDS(STR(?label), "Kingston upon Thames, London, England)") ||
STRENDS(STR(?label), "Worcester County and Franklin County, Mass.)") ||
STRENDS(STR(?label), "Celtic)") ||
STRENDS(STR(?label), "Funk)") ||
STRENDS(STR(?label), "Latin jazz)") ||
STRENDS(STR(?label), "Popular music)") ||
STRENDS(STR(?label), "Louisville, Ky.)") ||
STRENDS(STR(?label), "Softball)") ||
STRENDS(STR(?label), "Stratford-upon-Avon, England)") ||
STRENDS(STR(?label), "Cádiz, Spain)") ||
STRENDS(STR(?label), "Mestre, Italy)") ||
STRENDS(STR(?label), "Calif. : Imaginary place)") ||
STRENDS(STR(?label), "Rochester, Kent, England)") ||
STRENDS(STR(?label), "Kitsap County, Wash.)") ||
STRENDS(STR(?label), "Cayuga County and Tompkins County, N.Y.)") ||
STRENDS(STR(?label), "Colo. and Kan.)") ||
STRENDS(STR(?label), "Ceará, Brazil)") ||
STRENDS(STR(?label), "Stoke-on-Trent, England)") ||
STRENDS(STR(?label), "Exeter, England)") ||
STRENDS(STR(?label), "Middlesex County and Suffolk County, Mass.)") ||
STRENDS(STR(?label), "Harpers Ferry, W. Va.)") ||
STRENDS(STR(?label), "Fairfield, Conn.)") ||
STRENDS(STR(?label), "Fictitious character : Langlois)") ||
STRENDS(STR(?label), "Kurskai︠a︡ oblastʹ-Nizhegorodskai︠a︡ oblastʹ, Russia)") ||
STRENDS(STR(?label), "Perth, Scotland)") ||
STRENDS(STR(?label), "Darmstadt, Germany)") ||
STRENDS(STR(?label), "Zambia and Zimbabwe)") ||
STRENDS(STR(?label), "Málaga, Spain)") ||
STRENDS(STR(?label), "Chattanooga, Tenn.)") ||
STRENDS(STR(?label), "Saint-Malo, France)") ||
STRENDS(STR(?label), "Motorcycles)") ||
STRENDS(STR(?label), "East Saint Louis, Ill.)") ||
STRENDS(STR(?label), "San José, Costa Rica)") ||
STRENDS(STR(?label), "Greek religion)") ||
STRENDS(STR(?label), "Cuyahoga County, Ohio)") ||
STRENDS(STR(?label), "Pa. : Imaginary place)") ||
STRENDS(STR(?label), "Port Jervis, N.Y.)") ||
STRENDS(STR(?label), "Annelida)") ||
STRENDS(STR(?label), "Botswana and Zimbabwe)") ||
STRENDS(STR(?label), "Christian art)") ||
STRENDS(STR(?label), "Rhinoceros)") ||
STRENDS(STR(?label), "Buxton, Derbyshire, England)") ||
STRENDS(STR(?label), "Wilmington, N.C.)") ||
STRENDS(STR(?label), "Miami Beach, Fla.)") ||
STRENDS(STR(?label), "Sesto Fiorentino, Italy)") ||
STRENDS(STR(?label), "Mato Grosso, Brazil)") ||
STRENDS(STR(?label), "1 hand)") ||
STRENDS(STR(?label), "Chester, England)") ||
STRENDS(STR(?label), "Hungary and Slovakia)") ||
STRENDS(STR(?label), "Derby, England)") ||
STRENDS(STR(?label), "Palazzo vecchio, Florence, Italy)") ||
STRENDS(STR(?label), "Groton, Conn.)") ||
STRENDS(STR(?label), "Ni-Vanuatu people)") ||
STRENDS(STR(?label), "Chennai, India)") ||
STRENDS(STR(?label), "Newport, Wales)") ||
STRENDS(STR(?label), "Amphibians)") ||
STRENDS(STR(?label), "Rio Grande do Norte, Brazil)") ||
STRENDS(STR(?label), "Matanzas, Cuba)") ||
STRENDS(STR(?label), "Kyŏngju-si, Korea)") ||
STRENDS(STR(?label), "Fictitious character : Rylant)") ||
STRENDS(STR(?label), "China and Kazakhstan)") ||
STRENDS(STR(?label), "Mannheim, Germany)") ||
STRENDS(STR(?label), "Castel Gandolfo, Italy)") ||
STRENDS(STR(?label), "N.Z. : Bay)") ||
STRENDS(STR(?label), "Bandung, Indonesia)") ||
STRENDS(STR(?label), "Lausanne, Switzerland)") ||
STRENDS(STR(?label), "'s-Hertogenbosch, Netherlands)") ||
STRENDS(STR(?label), "Norfolk, England)") ||
STRENDS(STR(?label), "Free State, South Africa)") ||
STRENDS(STR(?label), "Fredericksburg, Va.)") ||
STRENDS(STR(?label), "New York, N.Y. : Broadway)") ||
STRENDS(STR(?label), "Jalisco, Mexico)") ||
STRENDS(STR(?label), "Musselburgh, Scotland)") ||
STRENDS(STR(?label), "Monroe County, Ind.)") ||
STRENDS(STR(?label), "Figueira da Foz, Portugal)") ||
STRENDS(STR(?label), "Hereford, England)") ||
STRENDS(STR(?label), "Bielefeld, Germany)") ||
STRENDS(STR(?label), "Antalya İli-Mersin İli, Turkey)") ||
STRENDS(STR(?label), "Graz, Austria)") ||
STRENDS(STR(?label), "Enfield, London, England)") ||
STRENDS(STR(?label), "West Africa)") ||
STRENDS(STR(?label), "Azerbaijani music)") ||
STRENDS(STR(?label), "India : Region)") ||
STRENDS(STR(?label), "Kennebunk, Me.)") ||
STRENDS(STR(?label), "Croydon, London, England)") ||
STRENDS(STR(?label), "Dundee, Scotland)") ||
STRENDS(STR(?label), "Suffolk County, N.Y.)") ||
STRENDS(STR(?label), "Iver, England)") ||
STRENDS(STR(?label), "Stellenbosch, South Africa)") ||
STRENDS(STR(?label), "Silifke, Turkey)") ||
STRENDS(STR(?label), "Ch'ŏngju-si, Ch'ungch'ŏng-bukto, Korea)") ||
STRENDS(STR(?label), "Clearwater County and Idaho County, Idaho)") ||
STRENDS(STR(?label), "Barbados)") ||
STRENDS(STR(?label), "Nijmegen, Netherlands)") ||
STRENDS(STR(?label), "Yihe Yuan, Beijing, China)") ||
STRENDS(STR(?label), "Beverly Hills, Calif.)") ||
STRENDS(STR(?label), "Qatar)") ||
STRENDS(STR(?label), "Velikiĭ Novgorod, Russia)") ||
STRENDS(STR(?label), "Stafford, England)") ||
STRENDS(STR(?label), "Erzurum, Turkey)") ||
STRENDS(STR(?label), "Osage County, Okla.)") ||
STRENDS(STR(?label), "The Aramaic word)") ||
STRENDS(STR(?label), "Bonner County, Idaho)") ||
STRENDS(STR(?label), "Ekaterinburg, Russia)") ||
STRENDS(STR(?label), "Cariboo, B.C.)") ||
STRENDS(STR(?label), "Huddersfield, England)") ||
STRENDS(STR(?label), "Pan-American Exposition, 1901, Buffalo, N.Y.)") ||
STRENDS(STR(?label), "Villahermosa, Tabasco, Mexico)") ||
STRENDS(STR(?label), "Hikone-shi, Japan)") ||
STRENDS(STR(?label), "Xylophone)") ||
STRENDS(STR(?label), "Oaxaca, Mexico)") ||
STRENDS(STR(?label), "Mitcham, London, England)") ||
STRENDS(STR(?label), "New Canaan, Conn.)") ||
STRENDS(STR(?label), "Mérida, Mexico)") ||
STRENDS(STR(?label), "Mauritius)") ||
STRENDS(STR(?label), "Tōdaiji, Nara-shi, Japan)") ||
STRENDS(STR(?label), "The Persian word)") ||
STRENDS(STR(?label), "Frankfurt (Oder)") ||
STRENDS(STR(?label), "Sumerian law)") ||
STRENDS(STR(?label), "Todi, Italy)") ||
STRENDS(STR(?label), "Locri Epizephyrii)") ||
STRENDS(STR(?label), "Grand County, Colo.)") ||
STRENDS(STR(?label), "Ti︠u︡menskai︠a︡ oblastʹ, Russia)") ||
STRENDS(STR(?label), "The concept)") ||
STRENDS(STR(?label), "Aleppo, Syria)") ||
STRENDS(STR(?label), "Skagway, Alaska)") ||
STRENDS(STR(?label), "Faenza, Italy)") ||
STRENDS(STR(?label), "Vārānasi, Uttar Pradesh, India)") ||
STRENDS(STR(?label), "LaPorte County, Ind.)") ||
STRENDS(STR(?label), "Gorizia, Italy)") ||
STRENDS(STR(?label), "Aihole, Karnataka, India)") ||
STRENDS(STR(?label), "Gwalior, India)") ||
STRENDS(STR(?label), "Sardinia, Italy)") ||
STRENDS(STR(?label), "Ālampur, India)") ||
STRENDS(STR(?label), "Manual training)") ||
STRENDS(STR(?label), "Māmallapuram, India)") ||
STRENDS(STR(?label), "Structural members)") ||
STRENDS(STR(?label), "Karnak, Egypt)") ||
STRENDS(STR(?label), "Greenland and Nunavut)") ||
STRENDS(STR(?label), "Douala, Cameroon)") ||
STRENDS(STR(?label), "Philae Temple Complex, Egypt)") ||
STRENDS(STR(?label), "Nuevo León, Mexico)") ||
STRENDS(STR(?label), "Shoes)") ||
STRENDS(STR(?label), "Southampton, England)") ||
STRENDS(STR(?label), "Mito-shi, Japan)") ||
STRENDS(STR(?label), "Sound)") ||
STRENDS(STR(?label), "Educational method)") ||
STRENDS(STR(?label), "The Egyptian word)") ||
STRENDS(STR(?label), "Chino-shi, Japan)") ||
STRENDS(STR(?label), "Structural engineering)") ||
STRENDS(STR(?label), "Auditing)") ||
STRENDS(STR(?label), "Polish literature)") ||
STRENDS(STR(?label), "Shimonoseki-shi, Japan)") ||
STRENDS(STR(?label), "Bagpipes (2)") ||
STRENDS(STR(?label), "Nunavut : Inlet)") ||
STRENDS(STR(?label), "Bear)") ||
STRENDS(STR(?label), "Stochastic processes)") ||
STRENDS(STR(?label), "Germany and France)") ||
STRENDS(STR(?label), "Horns (4)") ||
STRENDS(STR(?label), "Ecclesiastical law)") ||
STRENDS(STR(?label), "Cabala)") ||
STRENDS(STR(?label), "in religious orders, congregations, etc.)") ||
STRENDS(STR(?label), "Clavichord)") ||
STRENDS(STR(?label), "Organ, violin, viola da gamba)") ||
STRENDS(STR(?label), "Piano quartet)") ||
STRENDS(STR(?label), "String trio with string orchestra)") ||
STRENDS(STR(?label), "Viols (2)") ||
STRENDS(STR(?label), "Viols (3)") ||
STRENDS(STR(?label), "Viols (4)") ||
STRENDS(STR(?label), "Viols (5)") ||
STRENDS(STR(?label), "Viols (6)") ||
STRENDS(STR(?label), "Solid state physics)") ||
STRENDS(STR(?label), "Fiesole, Italy)") ||
STRENDS(STR(?label), "Nagahama-shi, Japan)") ||
STRENDS(STR(?label), "Suzuka-shi, Japan)") ||
STRENDS(STR(?label), "Watari-chō, Japan)") ||
STRENDS(STR(?label), "Tagajō-shi, Japan)") ||
STRENDS(STR(?label), "Takahata-machi, Japan)") ||
STRENDS(STR(?label), "Harp with string orchestra)") ||
STRENDS(STR(?label), "Unspecified instrument and organ)") ||
STRENDS(STR(?label), "Unspecified instrument and piano)") ||
STRENDS(STR(?label), "Polyphonic chansons)") ||
STRENDS(STR(?label), "Shenyang, Liaoning Sheng, China)") ||
STRENDS(STR(?label), "Courts-martial)") ||
STRENDS(STR(?label), "Bassoon and organ)") ||
STRENDS(STR(?label), "Viola and organ)") ||
STRENDS(STR(?label), "Men's voices, 4 parts)") ||
STRENDS(STR(?label), "Mixed voices)") ||
STRENDS(STR(?label), "Chromatography)") ||
STRENDS(STR(?label), "Scroll)") ||
STRENDS(STR(?label), "Tarragona, Spain)") ||
STRENDS(STR(?label), "Optical instrument)") ||
STRENDS(STR(?label), "Bassoon and cello)") ||
STRENDS(STR(?label), "Bassoon, clarinet, flute, horn)") ||
STRENDS(STR(?label), "Bassoon, violins (2)") ||
STRENDS(STR(?label), "Bassoon with string orchestra)") ||
STRENDS(STR(?label), "Carillon)") ||
STRENDS(STR(?label), "Clarinet and cello)") ||
STRENDS(STR(?label), "Clarinet with string orchestra)") ||
STRENDS(STR(?label), "Double bass with string orchestra)") ||
STRENDS(STR(?label), "Double basses (2)") ||
STRENDS(STR(?label), "Flute and oboe)") ||
STRENDS(STR(?label), "Flute with instrumental ensemble)") ||
STRENDS(STR(?label), "Guitars (3)") ||
STRENDS(STR(?label), "Guitars (4)") ||
STRENDS(STR(?label), "Harp and piano)") ||
STRENDS(STR(?label), "Harp with chamber orchestra)") ||
STRENDS(STR(?label), "Harps (4)") ||
STRENDS(STR(?label), "Jazz ensemble)") ||
STRENDS(STR(?label), "Jazz ensemble with chamber orchestra)") ||
STRENDS(STR(?label), "Lutes (2)") ||
STRENDS(STR(?label), "Oboe and cello)") ||
STRENDS(STR(?label), "Oboe with chamber orchestra)") ||
STRENDS(STR(?label), "Oboes (3)") ||
STRENDS(STR(?label), "Percussion and piano)") ||
STRENDS(STR(?label), "Piano, clarinet, violin, cello)") ||
STRENDS(STR(?label), "Piano, horn, violin)") ||
STRENDS(STR(?label), "Piano with band)") ||
STRENDS(STR(?label), "Piano with chamber orchestra)") ||
STRENDS(STR(?label), "Saxophone with string orchestra)") ||
STRENDS(STR(?label), "String quartet with string orchestra)") ||
STRENDS(STR(?label), "Tuba)") ||
STRENDS(STR(?label), "Viola and double bass)") ||
STRENDS(STR(?label), "Violas (4)") ||
STRENDS(STR(?label), "Violin and double bass)") ||
STRENDS(STR(?label), "Cello and double bass)") ||
STRENDS(STR(?label), "Cello and harp)") ||
STRENDS(STR(?label), "Cello with string orchestra)") ||
STRENDS(STR(?label), "Cellos (3)") ||
STRENDS(STR(?label), "Light)") ||
STRENDS(STR(?label), "Metals)") ||
STRENDS(STR(?label), "Ukraine and Moldova)") ||
STRENDS(STR(?label), "Unspecified instrument and continuo)") ||
STRENDS(STR(?label), "Besançon, France)") ||
STRENDS(STR(?label), "Bagheria, Italy)") ||
STRENDS(STR(?label), "Kawasaki-shi, Japan)") ||
STRENDS(STR(?label), "Kumamoto-shi, Japan)") ||
STRENDS(STR(?label), "Natchez, Miss.)") ||
STRENDS(STR(?label), "Finland : Lake)") ||
STRENDS(STR(?label), "People)") ||
STRENDS(STR(?label), "Manchurian people)") ||
STRENDS(STR(?label), "Tokelau)") ||
STRENDS(STR(?label), "Tapestries)") ||
STRENDS(STR(?label), "Matsubara-shi, Japan)") ||
STRENDS(STR(?label), "N.M. and Colo.)") ||
STRENDS(STR(?label), "Radioactive substances)") ||
STRENDS(STR(?label), "Germanic deity)") ||
STRENDS(STR(?label), "Jaina deity)") ||
STRENDS(STR(?label), "Microscopy)") ||
STRENDS(STR(?label), "Yoshii-machi, Fukuoka-ken, Japan)") ||
STRENDS(STR(?label), "Ayase-shi, Japan)") ||
STRENDS(STR(?label), "Sapporo-shi, Japan)") ||
STRENDS(STR(?label), "Taxation)") ||
STRENDS(STR(?label), "Samaritan law)") ||
STRENDS(STR(?label), "Kaminokuni-chō, Japan)") ||
STRENDS(STR(?label), "Fukuyama-shi, Japan)") ||
STRENDS(STR(?label), "Kanagawa-ken, Japan)") ||
STRENDS(STR(?label), "The Slavic word)") ||
STRENDS(STR(?label), "Minakami-machi, Japan)") ||
STRENDS(STR(?label), "Kosugi-machi, Japan)") ||
STRENDS(STR(?label), "Hachijō-machi, Japan)") ||
STRENDS(STR(?label), "Nakamichi-machi, Japan)") ||
STRENDS(STR(?label), "Akagi-mura, Japan)") ||
STRENDS(STR(?label), "Kumage-chō, Japan)") ||
STRENDS(STR(?label), "Takayama-shi, Japan)") ||
STRENDS(STR(?label), "Tosayamada-chō, Japan)") ||
STRENDS(STR(?label), "Sendai-shi, Kagoshima-ken, Japan)") ||
STRENDS(STR(?label), "Chōfu-shi, Japan)") ||
STRENDS(STR(?label), "Higashiōsaka-shi, Japan)") ||
STRENDS(STR(?label), "Sakaigawa-mura, Japan)") ||
STRENDS(STR(?label), "Takaoka-shi, Japan)") ||
STRENDS(STR(?label), "Maibara-chō, Japan)") ||
STRENDS(STR(?label), "Machida-shi, Japan)") ||
STRENDS(STR(?label), "Shinʼyoshitomi-mura, Japan)") ||
STRENDS(STR(?label), "Ōme-shi, Japan)") ||
STRENDS(STR(?label), "Himi-shi, Japan)") ||
STRENDS(STR(?label), "Atō-chō, Japan)") ||
STRENDS(STR(?label), "Tateyama-machi, Japan)") ||
STRENDS(STR(?label), "Ōuda-chō, Japan)") ||
STRENDS(STR(?label), "Iwata-shi, Japan)") ||
STRENDS(STR(?label), "Kikugawa-chō, Yamaguchi-ken, Japan)") ||
STRENDS(STR(?label), "Fukuchi-mura, Aomori-ken, Japan)") ||
STRENDS(STR(?label), "Hesse, Germany)") ||
STRENDS(STR(?label), "Man. : Lake)") ||
STRENDS(STR(?label), "Sawyer County, Wis.)") ||
STRENDS(STR(?label), "Igbo law)") ||
STRENDS(STR(?label), "Zambia and Mozambique)") ||
STRENDS(STR(?label), "Piccolo and piano)") ||
STRENDS(STR(?label), "Chihuahua, Mexico)") ||
STRENDS(STR(?label), "New England)") ||
STRENDS(STR(?label), "Hamilton, N.J.)") ||
STRENDS(STR(?label), "Piano, flute, violins (2)") ||
STRENDS(STR(?label), "Piano, recorders (3)") ||
STRENDS(STR(?label), "Ondes Martenot (2)") ||
STRENDS(STR(?label), "Venezuela and Colombia)") ||
STRENDS(STR(?label), "Petroleum geology)") ||
STRENDS(STR(?label), "Postage stamps)") ||
STRENDS(STR(?label), "Koblenz, Germany)") ||
STRENDS(STR(?label), "Gulf Province, Papua New Guinea)") ||
STRENDS(STR(?label), "Flute, violin, viola, cello)") ||
STRENDS(STR(?label), "Guitar, violins (2)") ||
STRENDS(STR(?label), "Organ, oboes (2)") ||
STRENDS(STR(?label), "Piano, flute, percussion, cello)") ||
STRENDS(STR(?label), "Harpsichord, recorders (2)") ||
STRENDS(STR(?label), "Harpsichord, viols (2)") ||
STRENDS(STR(?label), "Qld. and N.T.)") ||
STRENDS(STR(?label), "Belgium and France)") ||
STRENDS(STR(?label), "Colo.-Utah)") ||
STRENDS(STR(?label), "Dominican Republic and Haiti)") ||
STRENDS(STR(?label), "Grampian, Scotland)") ||
STRENDS(STR(?label), "Walworth County and Racine County, Wis.)") ||
STRENDS(STR(?label), "Baritone and piano)") ||
STRENDS(STR(?label), "Bassoon and continuo)") ||
STRENDS(STR(?label), "Irkutskai︠a︡ oblastʹ, Russia)") ||
STRENDS(STR(?label), "Balalaika and piano)") ||
STRENDS(STR(?label), "Bassoon and flute)") ||
STRENDS(STR(?label), "Double bass and piano)") ||
STRENDS(STR(?label), "Flute and harpsichord)") ||
STRENDS(STR(?label), "Oboe and harpsichord)") ||
STRENDS(STR(?label), "Viola and harpsichord)") ||
STRENDS(STR(?label), "Viole da gamba (2)") ||
STRENDS(STR(?label), "Ibiza, Spain)") ||
STRENDS(STR(?label), "Clarinet with orchestra)") ||
STRENDS(STR(?label), "Guitar, violin, viola)") ||
STRENDS(STR(?label), "Harp with orchestra)") ||
STRENDS(STR(?label), "Harpsichord, violas (2)") ||
STRENDS(STR(?label), "Harpsichord, violin, viola da gamba)") ||
STRENDS(STR(?label), "Percussion with orchestra)") ||
STRENDS(STR(?label), "Piano, flute, oboe)") ||
STRENDS(STR(?label), "Pipes (4)") ||
STRENDS(STR(?label), "Auvernier, Switzerland)") ||
STRENDS(STR(?label), "Clarinet and harp)") ||
STRENDS(STR(?label), "Tubas (2)") ||
STRENDS(STR(?label), "Bassoons (3)") ||
STRENDS(STR(?label), "Greece : Region)") ||
STRENDS(STR(?label), "Antananarivo, Madagascar)") ||
STRENDS(STR(?label), "Guitar, unspecified instruments (2)") ||
STRENDS(STR(?label), "Cambodia and Vietnam)") ||
STRENDS(STR(?label), "Urbana, Ill.)") ||
STRENDS(STR(?label), "Tex. : Imaginary place)") ||
STRENDS(STR(?label), "Fictitious character : Marshall)") ||
STRENDS(STR(?label), "Fictitious character : Koller)") ||
STRENDS(STR(?label), "Fictitious character : Day)") ||
STRENDS(STR(?label), "Fictitious character : Hurwitz)") ||
STRENDS(STR(?label), "Fictitious character : Cameron)") ||
STRENDS(STR(?label), "Ukraine : Extinct city)") ||
STRENDS(STR(?label), "Monza, Italy)") ||
STRENDS(STR(?label), "United States law)") ||
STRENDS(STR(?label), "Wörlitz, Germany)") ||
STRENDS(STR(?label), "Belize and Guatemala)") ||
STRENDS(STR(?label), "Vertebra)") ||
STRENDS(STR(?label), "Etruscan deity)") ||
STRENDS(STR(?label), "Unit)") ||
STRENDS(STR(?label), "Roraima, Brazil)") ||
STRENDS(STR(?label), "Cymbals)") ||
STRENDS(STR(?label), "Neurology)") ||
STRENDS(STR(?label), "England : Estate)") ||
STRENDS(STR(?label), "Aerofoils)") ||
STRENDS(STR(?label), "Rome, Italy : Park)") ||
STRENDS(STR(?label), "Bryophytes)") ||
STRENDS(STR(?label), "Olbasa)") ||
STRENDS(STR(?label), "Electronic mail)") ||
STRENDS(STR(?label), "Preston, Lancashire, England)") ||
STRENDS(STR(?label), "Military decoration)") ||
STRENDS(STR(?label), "McCreary County, Ky.)") ||
STRENDS(STR(?label), "Fla. and Ga.)") ||
STRENDS(STR(?label), "Khȯvsgȯl Aĭmag and Bulgan Aĭmag, Mongolia)") ||
STRENDS(STR(?label), "Athens)") ||
STRENDS(STR(?label), "Forlì, Italy)") ||
STRENDS(STR(?label), "New York, N.Y. : Park Row)") ||
STRENDS(STR(?label), "Surveying)") ||
STRENDS(STR(?label), "Fiber)") ||
STRENDS(STR(?label), "Mass. : Coast)") ||
STRENDS(STR(?label), "Bückeburg, Germany)") ||
STRENDS(STR(?label), "Ingham County, Mich.)") ||
STRENDS(STR(?label), "Roquebrune-Cap-Martin, France)") ||
STRENDS(STR(?label), "Dulcimer)") ||
STRENDS(STR(?label), "Alaska and B.C.)") ||
STRENDS(STR(?label), "Roads)") ||
STRENDS(STR(?label), "Schwetzingen, Germany)") ||
STRENDS(STR(?label), "Anoka County, Minn.)") ||
STRENDS(STR(?label), "World Wide Web)") ||
STRENDS(STR(?label), "Anthropology)") ||
STRENDS(STR(?label), "Bowes, England)") ||
STRENDS(STR(?label), "Eritrea and Sudan)") ||
STRENDS(STR(?label), "Rosario, Santa Fe, Argentina)") ||
STRENDS(STR(?label), "Scotland : Mountain)") ||
STRENDS(STR(?label), "Earthwork)") ||
STRENDS(STR(?label), "Web-based instruction)") ||
STRENDS(STR(?label), "Urayasu-shi, Japan)") ||
STRENDS(STR(?label), "B.C. : Island)") ||
STRENDS(STR(?label), "Meteorites)") ||
STRENDS(STR(?label), "English poetry)") ||
STRENDS(STR(?label), "Vision)") ||
STRENDS(STR(?label), "Weighing instruments)") ||
STRENDS(STR(?label), "Ann Arbor, Mich.)") ||
STRENDS(STR(?label), "Langhorne, Pa.)") ||
STRENDS(STR(?label), "Gauteng, South Africa)") ||
STRENDS(STR(?label), "N.S.W. : Lake)") ||
STRENDS(STR(?label), "N.D. : River)") ||
STRENDS(STR(?label), "Lord's Cricket Ground, London, England)") ||
STRENDS(STR(?label), "Kodiak Island Borough, Alaska)") ||
STRENDS(STR(?label), "La. : Imaginary place)") ||
STRENDS(STR(?label), "Montserrat)") ||
STRENDS(STR(?label), "Rome, N.Y.)") ||
STRENDS(STR(?label), "Cameroon and Chad)") ||
STRENDS(STR(?label), "West Indies)") ||
STRENDS(STR(?label), "Montenegro-Bosnia and Herzegovina)") ||
STRENDS(STR(?label), "Amusement ride)") ||
STRENDS(STR(?label), "Austria and Slovenia)") ||
STRENDS(STR(?label), "Christian eschatology)") ||
STRENDS(STR(?label), "Dynamics)") ||
STRENDS(STR(?label), "Bloemfontein, South Africa)") ||
STRENDS(STR(?label), "Yoichi-chō, Japan)") ||
STRENDS(STR(?label), "West Midlands and Warwickshire, England)") ||
STRENDS(STR(?label), "Kent, N.B.)") ||
STRENDS(STR(?label), "Babylon)") ||
STRENDS(STR(?label), "Point Hope, Alaska)") ||
STRENDS(STR(?label), "R.I. : Island)") ||
STRENDS(STR(?label), "Waterloo, N.Y.)") ||
STRENDS(STR(?label), "Music fans)") ||
STRENDS(STR(?label), "Arkhangaĭ Aĭmag and Khȯvsgȯl Aĭmag, Mongolia)") ||
STRENDS(STR(?label), "New York, N.Y. : Forty-fourth Street)") ||
STRENDS(STR(?label), "N.B. and N.S.)") ||
STRENDS(STR(?label), "British Indian Ocean Territory)") ||
STRENDS(STR(?label), "Galleria degli Uffizi)") ||
STRENDS(STR(?label), "Ind. : River)") ||
STRENDS(STR(?label), "Kailua Kona, Hawaii)") ||
STRENDS(STR(?label), "Noble County, Ind. : Lake)") ||
STRENDS(STR(?label), "Man. and Sask.)") ||
STRENDS(STR(?label), "England : Island)") ||
STRENDS(STR(?label), "Zwolle, Netherlands)") ||
STRENDS(STR(?label), "Bayreuth, Germany)") ||
STRENDS(STR(?label), "Mathematical instruments)") ||
STRENDS(STR(?label), "Baku, Azerbaijan)") ||
STRENDS(STR(?label), "N.Y. : Valley)") ||
STRENDS(STR(?label), "Kazakhstan and China)") ||
STRENDS(STR(?label), "Minn. : Imaginary place)") ||
STRENDS(STR(?label), "Oakham, Rutland, England)") ||
STRENDS(STR(?label), "Alnwick, England)") ||
STRENDS(STR(?label), "Animal behavior)") ||
STRENDS(STR(?label), "N.Y. : Peninsula)") ||
STRENDS(STR(?label), "King County, Wash. : River)") ||
STRENDS(STR(?label), "Chile and Argentina)") ||
STRENDS(STR(?label), "Papuan)") ||
STRENDS(STR(?label), "India and Sri Lanka)")
		)
		?s ?p ?o .
	}
}