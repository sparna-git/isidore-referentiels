PREFIX skos:<http://www.w3.org/2004/02/skos/core#>
PREFIX opentheso:<http://purl.org/umu/uneskos#>
DELETE {
	?s ?p ?o .
} 
WHERE {

	{
		?s a skos:Concept .
		FILTER NOT EXISTS {
			?s <http://purl.org/dc/terms/isPartOf> ?domaine .
			VALUES ?domaine {
				# noms communs
				<https://data.bnf.fr/vocabulary/rameau/r166>
				# personnages fictifs
				<https://data.bnf.fr/vocabulary/rameau/r160>
				# subdivisions chrono
				<https://data.bnf.fr/vocabulary/rameau/r168>
			}
		}

		?s ?p ?o
	}
	UNION
	{
		?o a skos:Concept .
		FILTER NOT EXISTS {
			?o <http://purl.org/dc/terms/isPartOf> ?domaine .
			VALUES ?domaine {
				# noms communs
				<https://data.bnf.fr/vocabulary/rameau/r166>
				# personnages fictifs
				<https://data.bnf.fr/vocabulary/rameau/r160>
				# subdivisions chrono
				<https://data.bnf.fr/vocabulary/rameau/r168>
			}
		}

		?s ?p ?o
	}
}