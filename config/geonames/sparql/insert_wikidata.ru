PREFIX gn: <http://www.geonames.org/ontology#>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
INSERT {
    ?f skos:exactMatch ?wikidataUri .
}
WHERE {
    # Extraire les ID Geonames
    { 
      SELECT ?f ?geonamesId WHERE {
      ?f a gn:Feature .
        BIND(STRBEFORE(STRAFTER(STR(?f), "https://sws.geonames.org/"), "/") AS ?geonamesId)
      }
    }
    # Demander les URI wikidata équivalentes
    SERVICE <https://query.wikidata.org/sparql> {
        ?wikidataUri wdt:P1566 ?geonamesId
    }        
}