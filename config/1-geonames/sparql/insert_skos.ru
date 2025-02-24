PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX gn: <http://www.geonames.org/ontology#>
INSERT {
    ?c a skos:Concept .
    ?c skos:prefLabel ?officialName .
    ?c skos:altLabel ?alternateName .
    ?c skos:broader ?parent .
    ?parent skos:narrower ?c .
} WHERE {
    ?c a gn:Feature .
    optional { ?c gn:officialName ?officialName . }
    OPTIONAL { ?c gn:alternateName ?alternateName }
    OPTIONAL { ?c gn:parentFeature ?parent }
}