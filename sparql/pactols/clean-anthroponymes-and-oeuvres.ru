PREFIX skos:<http://www.w3.org/2004/02/skos/core#>
PREFIX opentheso:<http://purl.org/umu/uneskos#>
DELETE {
	?s ?p ?o
}
INSERT {
	?child skos:broader ?grandParent .
	?grandParent skos:narrower ?child .
}
WHERE {
	?x opentheso:memberOf ?collection .
	# chronologie et anthroponymes
	VALUES ?collection { 
		<https://ark.frantiq.fr/ark:/26678/pcrtIriK2LwtHZ>
		<https://ark.frantiq.fr/ark:/26678/pcrtrG9ejXOVNA>
	}
	{
		{
			?x ?p ?o
			BIND(?x AS ?s)			
		}
		UNION
		{
			?s ?p ?x .
			BIND(?x AS ?o)
		}
	}

	OPTIONAL {
		?x skos:narrower|^skos:broader ?child .
		?grandParent skos:narrower|^skos:broader ?x .
	}
}