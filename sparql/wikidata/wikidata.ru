construct {?s ?p ?o}
where {
    ?s ?p ?o .
    FILTER(isIRI(?o))
    FILTER(CONTAINS(STR(?o),"wikidata"))
}