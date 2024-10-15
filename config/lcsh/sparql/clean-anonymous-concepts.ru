PREFIX skos:<http://www.w3.org/2004/02/skos/core#>
PREFIX opentheso:<http://purl.org/umu/uneskos#>
DELETE {
	?s ?p ?o .
} 
WHERE {
	{
		?s a skos:Concept .
		FILTER(isBlank(?s))
		?s ?p ?o .
	}
	UNION
	{
		?o a skos:Concept .
		FILTER(isBlank(?s))
		?s ?p ?o .
	}
}