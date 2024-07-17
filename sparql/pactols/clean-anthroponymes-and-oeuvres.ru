PREFIX skos:<http://www.w3.org/2004/02/skos/core#>
PREFIX opentheso:<http://purl.org/umu/uneskos#>
DELETE {
	?s ?p ?o .
	?x ?y ?s .
}
WHERE {
	?s opentheso:memberOf ?collection .
	# chronologie et anthroponymes
	VALUES ?collection { 
		<https://ark.frantiq.fr/ark:/26678/pcrtIriK2LwtHZ>
		<https://ark.frantiq.fr/ark:/26678/pcrtrG9ejXOVNA>
	}

	?s ?p ?o .
	OPTIONAL {
		?x ?y ?s .
	}
}