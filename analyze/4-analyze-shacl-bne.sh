export IN=../output/bne/output_clean
export OUT=analysis/bne
mkdir -p $OUT

# 1. Generate the SHACL profile for the dataset
echo "BNE - Generate the SHACL profile..."
java -Xms3g -Xmx6g -jar shacl-play-app-0.8.0-onejar.jar generate \
--input $IN \
--output $OUT/bne-shacl.ttl \
--prefix \
skos:http://www.w3.org/2004/02/skos/core# \
skosxl:http://www.w3.org/2008/05/skos-xl# \
dcterms:http://purl.org/dc/terms/ \
foaf:http://xmlns.com/foaf/0.1/

# 2. Compute the statistics (number of instances and property occurrences) on the dataset
# Also add the statistics in a string in sh:description inside the original SHACL file
echo "BNE - Compute statistics..."
java -Xms3g -Xmx6g -jar shacl-play-app-0.8.0-onejar.jar analyze \
--shapes $OUT/bne-shacl.ttl \
--input $IN \
--output $OUT/bne-statistics.ttl \
--outputShapes $OUT/bne-shacl-enhanced.ttl

# 3. Write the SHACL shapes into an Excel file
echo "BNE - Write SHACL in Excel..."
java -jar rdf2xls-app-1.0.0-onejar.jar excel \
--input $OUT/bne-shacl-enhanced.ttl \
--template shacl-spreadsheet-template.ttl \
--output $OUT/bne.xlsx \
--language en

# 4. Zip together SHACL file + statistics file
echo "BNE - Zip together SHACL + statistics..."
rm -rf $OUT/bne-shacl.zip
zip $OUT/bne-shacl.zip \
$OUT/bne-shacl-enhanced.ttl \
$OUT/bne-statistics.ttl

# 5. Generate the documentation of the dataset from the SHACL + statistics
echo "BNE - Generate the dataset profile documentation..."
java -jar shacl-play-app-0.8.0-onejar.jar doc \
--diagram \
--input $OUT/bne-shacl.zip \
--output $OUT/bne-doc.html \
--language en