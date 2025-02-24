PREFIX skos:<http://www.w3.org/2004/02/skos/core#>
PREFIX opentheso:<http://purl.org/umu/uneskos#>
DELETE {
	?s ?p ?o .
} 
WHERE {

	{
		?s a skos:Concept .
		FILTER NOT EXISTS {
			?s skos:inScheme <https://datos.bne.es/def/materias> .
		}

		?s ?p ?o .
	}
	UNION
	{
		?o a skos:Concept .
		FILTER NOT EXISTS {
			?o skos:inScheme <https://datos.bne.es/def/materias> .
		}

		?s ?p ?o .
	}
}