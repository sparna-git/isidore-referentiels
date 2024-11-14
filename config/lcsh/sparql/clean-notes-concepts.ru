PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
DELETE { ?Concept ?p ?o }
where {
    ?Concept skos:editorialNote ?o .
    ?Concept ?p ?o
    FILTER(CONTAINS(?o,"[Resource automatically generated from"))
}