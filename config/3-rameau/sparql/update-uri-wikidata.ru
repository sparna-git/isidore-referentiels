PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
DELETE {?Concept ?p ?uri}
INSERT { ?Concept ?p ?uriAlignement }
Where {
    ?Concept skos:exactMatch|skos:closeMatch|<http://www.loc.gov/mads/rdf/v1#hasCloseExternalAuthority> ?uri .
    ?Concept ?p ?uri 
    FILTER(isIRI(?uri))
    FILTER(CONTAINS(STR(?uri),'http://wikidata.org/entity/'))
    BIND(IF(CONTAINS(STR(?uri),'http://wikidata.org/entity/'),
            URI(REPLACE(STR(?uri),'http://wikidata.org/entity/','http://www.wikidata.org/entity/')),
            ?uri) as ?uriAlignement)
}