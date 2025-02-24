PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
DELETE {?s ?p ?o}
INSERT { ?s ?p ?UriLCSH }
where {
    ?s ?p ?o .
    FILTER(regex(str(?o), "^http://id.loc.gov/authorities/sh", "i"))
    BIND(IRI(REPLACE(str(?o),"http://id.loc.gov/authorities/","http://id.loc.gov/authorities/subjects/")) as ?UriLCSH)
}