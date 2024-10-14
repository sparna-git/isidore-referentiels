PREFIX skos:<http://www.w3.org/2004/02/skos/core#>
PREFIX opentheso:<http://purl.org/umu/uneskos#>
DELETE {
	?s ?p ?o .
} 
WHERE {
	{
		?s skos:editorialNote ?note
		FILTER(
			regex(STR(?note), "Dict\\. comm\\.", "i")
			||
			regex(STR(?note), "Dict\\. des communes", "i")
			||
			regex(STR(?note), "Dictionnaire des communes de France", "i")
			||
			regex(STR(?note), "Dict\\. national des communes de France", "i")
			||
			regex(STR(?note), "Dict\\. des communes de France", "i")
			||
			regex(STR(?note), "Dict\\. administratif des communes", "i")
			||
			regex(STR(?note), "Code off\\. géogr\\. INSEE, 1990", "i")
			||
			regex(STR(?note), "Dict\\. des prénoms de France / N. Cretin", "i")
		)
		?s ?p ?o .
	}
	UNION
	{
		?o skos:editorialNote ?note .
		FILTER(
			regex(STR(?note), "Dict\\. comm\\.", "i")
			||
			regex(STR(?note), "Dict\\. des communes", "i")
			||
			regex(STR(?note), "Dictionnaire des communes de France", "i")
			||
			regex(STR(?note), "Dict\\. national des communes de France", "i")
			||
			regex(STR(?note), "Dict\\. des communes de France", "i")
			||
			regex(STR(?note), "Dict\\. administratif des communes", "i")
			||
			regex(STR(?note), "Code off\\. géogr\\. INSEE, 1990", "i")
			||
			regex(STR(?note), "Dict\\. des prénoms de France / N. Cretin", "i")
		)
		?s ?p ?o .
	}
}