export IN=../output/rameau/output_integrate/rameau.ttl
export OUT=analysis/rameau
mkdir -p $OUT

# 1. Generate the SHACL profile for the dataset
echo "RAMEAU - Generate the SHACL profile..."
java -Xms3g -Xmx6g -jar shacl-play-app-0.8.0-onejar.jar generate \
--input $IN \
--output $OUT/databnf_rameau-shacl.ttl \
--prefix \
skos:http://www.w3.org/2004/02/skos/core# \
madsrdf:http://www.loc.gov/mads/rdf/v1# \
skosxl:http://www.w3.org/2008/05/skos-xl# \
bf:http://id.loc.gov/ontologies/bibframe/ \
dcterms:http://purl.org/dc/terms/ \
foaf:http://xmlns.com/foaf/0.1/

# 2. Compute the statistics (number of instances and property occurrences) on the dataset
# Also add the statistics in a string in sh:description inside the original SHACL file
echo "RAMEAU - Compute statistics..."
java -Xms3g -Xmx6g -jar shacl-play-app-0.8.0-onejar.jar analyze \
--shapes $OUT/databnf_rameau-shacl.ttl \
--input $IN \
--output $OUT/databnf_rameau-statistics.ttl \
--outputShapes $OUT/databnf_rameau-shacl-enhanced.ttl

# 3. Write the SHACL shapes into an Excel file
echo "RAMEAU - Write SHACL in Excel..."
java -jar rdf2xls-app-1.0.0-onejar.jar excel \
--input $OUT/databnf_rameau-shacl-enhanced.ttl \
--template shacl-spreadsheet-template.ttl \
--output $OUT/databnf_rameau.xlsx \
--language en

# 4. Zip together SHACL file + statistics file
echo "RAMEAU - Zip together SHACL + statistics..."
rm -rf $OUT/databnf_rameau-shacl.zip
zip $OUT/databnf_rameau-shacl.zip \
$OUT/databnf_rameau-shacl-enhanced.ttl \
$OUT/databnf_rameau-statistics.ttl

# 5. Generate the documentation of the dataset from the SHACL + statistics
echo "RAMEAU - Generate the dataset profile documentation..."
java -jar shacl-play-app-0.8.0-onejar.jar doc \
--diagram \
--input $OUT/databnf_rameau-shacl.zip \
--output $OUT/databnf_rameau-doc.html \
--language en