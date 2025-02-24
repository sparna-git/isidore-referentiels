PREFIX skos:<http://www.w3.org/2004/02/skos/core#>
PREFIX opentheso:<http://purl.org/umu/uneskos#>
DELETE {
	?s ?p ?o .
} 
WHERE {
	{
		?s <http://data.bnf.fr/ontology/bnf-onto/domaineLitteral> ?domaineLitteral .
		VALUES ?domaineLitteral {
			"Biologie des procaryotes"
			"Ésotérisme. Parapsychologie"
			"Économie domestique. Cuisine"
		}
		?s ?p ?o .
	}
	UNION
	{
		?o <http://data.bnf.fr/ontology/bnf-onto/domaineLitteral> ?domaineLitteral .
		VALUES ?domaineLitteral {
			"Biologie des procaryotes"
			"Ésotérisme. Parapsychologie"
			"Économie domestique. Cuisine"
		}
		?s ?p ?o .
	}
}