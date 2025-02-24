export IN=../output/calenda/output_clean
export OUT=analysis/calenda_clean_2
mkdir -p $OUT

# 1. Generate the SHACL profile for the dataset
echo "CALENDA - Generate the SHACL profile..."
java -Xms3g -Xmx6g -jar shacl-play-app-0.8.0-onejar.jar generate \
--input $IN \
--output $OUT/pactols_sujets_all-shacl.ttl \
--prefix \
skos:http://www.w3.org/2004/02/skos/core# \
madsrdf:http://www.loc.gov/mads/rdf/v1# \
skosxl:http://www.w3.org/2008/05/skos-xl# \
bf:http://id.loc.gov/ontologies/bibframe/ \
dcterms:http://purl.org/dc/terms/ \
foaf:http://xmlns.com/foaf/0.1/

# 2. Compute the statistics (number of instances and property occurrences) on the dataset
# Also add the statistics in a string in sh:description inside the original SHACL file
echo "CALENDA - Compute statistics..."
java -Xms3g -Xmx6g -jar shacl-play-app-0.8.0-onejar.jar analyze \
--shapes $OUT/pactols_sujets_all-shacl.ttl \
--input $IN \
--output $OUT/pactols_sujets_all-statistics.ttl \
--outputShapes $OUT/pactols_sujets_all-shacl-enhanced.ttl

java -jar rdf2xls-app-1.0.0-onejar.jar excel \
--input $OUT/pactols_sujets_all-shacl-enhanced.ttl \
--template shacl-spreadsheet-template.ttl \
--output $OUT/pactols_sujets_all.xlsx \
--language en

rm -rf $OUT/pactols_sujets_all-shacl.zip
zip $OUT/pactols_sujets_all-shacl.zip \
$OUT/pactols_sujets_all-shacl-enhanced.ttl \
$OUT/pactols_sujets_all-statistics.ttl

java -jar shacl-play-app-0.8.0-onejar.jar doc \
--diagram \
--input $OUT/pactols_sujets_all-shacl.zip \
--output $OUT/pactols_sujets_all-doc.html \
--language en