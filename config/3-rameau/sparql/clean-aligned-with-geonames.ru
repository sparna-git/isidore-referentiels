PREFIX skos:<http://www.w3.org/2004/02/skos/core#>
PREFIX opentheso:<http://purl.org/umu/uneskos#>
DELETE {
	?s ?p ?o .
} 
WHERE {
	{
		?s skos:exactMatch ?exactMatch .
		FILTER(STRSTARTS(STR(?exactMatch), "http://sws.geonames.org/"))
		?s ?p ?o .
	}
	UNION
	{
		?o skos:exactMatch ?exactMatch .
		FILTER(STRSTARTS(STR(?exactMatch), "http://sws.geonames.org/"))
		?s ?p ?o .
	}
}