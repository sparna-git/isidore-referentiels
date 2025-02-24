export IN=../output/lcsh/output_integrate/lcsh.ttl
export OUT=analysis/lcsh
mkdir -p $OUT

# 1. Generate the SHACL profile for the dataset
echo "LCSH - Generate the SHACL profile..."
java -Xms3g -Xmx6g -jar shacl-play-app-0.8.0-onejar.jar generate \
--input $IN \
--output $OUT/subjects.skosrdf-shacl.ttl \
--prefix \
skos:http://www.w3.org/2004/02/skos/core# \
madsrdf:http://www.loc.gov/mads/rdf/v1# \
skosxl:http://www.w3.org/2008/05/skos-xl# \
bf:http://id.loc.gov/ontologies/bibframe/ \
dcterms:http://purl.org/dc/terms/ \
foaf:http://xmlns.com/foaf/0.1/

# 2. Compute the statistics (number of instances and property occurrences) on the dataset
# Also add the statistics in a string in sh:description inside the original SHACL file
echo "LCSH - Compute statistics..."
java -Xms3g -Xmx6g -jar shacl-play-app-0.8.0-onejar.jar analyze \
--shapes $OUT/subjects.skosrdf-shacl.ttl \
--input $IN \
--output $OUT/subjects.skosrdf-statistics.ttl \
--outputShapes $OUT/subjects.skosrdf-shacl-enhanced.ttl

# 3. Write the SHACL shapes into an Excel file
echo "LCSH - Write SHACL in Excel..."
java -jar rdf2xls-app-1.0.0-onejar.jar excel \
--input $OUT/subjects.skosrdf-shacl-enhanced.ttl \
--template shacl-spreadsheet-template.ttl \
--output $OUT/subjects.skosrdf.xlsx \
--language en

# 4. Zip together SHACL file + statistics file
echo "LCSH - Zip together SHACL + statistics..."
rm -rf $OUT/subjects.skosrdf-shacl.zip
zip $OUT/subjects.skosrdf-shacl.zip \
$OUT/subjects.skosrdf-shacl-enhanced.ttl \
$OUT/subjects.skosrdf-statistics.ttl

# 5. Generate the documentation of the dataset from the SHACL + statistics
echo "LCSH - Generate the dataset profile documentation..."
java -jar shacl-play-app-0.8.0-onejar.jar doc \
--diagram \
--input $OUT/subjects.skosrdf-shacl.zip \
--output $OUT/subjects.skosrdf-doc.html \
--language en