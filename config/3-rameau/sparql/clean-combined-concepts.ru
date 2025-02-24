PREFIX skos:<http://www.w3.org/2004/02/skos/core#>
PREFIX opentheso:<http://purl.org/umu/uneskos#>
DELETE {
	?s ?p ?o .
} 
WHERE {
	{
		?s skos:prefLabel ?label .
		FILTER(CONTAINS(STR(?label), " -- "))
		?s ?p ?o .
	}
	UNION
	{
		?o skos:prefLabel ?label .
		FILTER(CONTAINS(STR(?label), " -- "))
		?s ?p ?o .
	}
}