PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
DELETE { ?concept ?p ?o }
where {
    ?concept skos:editorialNote ?editorialNote .
    FILTER(CONTAINS(?editorialNote,"[Resource automatically generated from"))

    ?concept ?p ?o .
}