
. ./env.sh

# LCSH

## 1. Download
echo "LCSH Subjects Download..."
export LCSH_DIR=$WORK_DIR/lcsh
rm -rf $LCSH_DIR
mkdir -p $LCSH_DIR
export URL=https://id.loc.gov/download/authorities/subjects.skosrdf.nt.gz 
wget --no-check-certificate $URL 
mv subjects.skosrdf.nt.gz $LCSH_DIR

echo "LCSH Externallinks Download..."
export URL_ALIGNEMENTS=https://id.loc.gov/download/externallinks.nt.zip
wget --no-check-certificate $URL_ALIGNEMENTS 
mv externallinks.nt.zip $LCSH_DIR

## 2. unzip
echo "LCSH Subjects Unzip..."
echo "Unzip subjects.skosrdf.nt.gz..."
gzip -d $LCSH_DIR/subjects.skosrdf.nt.gz
echo "LCSH externallinks Unzip..."
unzip $LCSH_DIR/externallinks.nt.zip -d $LCSH_DIR

## 3. filter
echo "LCSH Pre-process..."
echo "Remove all history information (changesets) in the file..."
grep -v -E "ChangeSet|creatorName|createdDate|changeNote|changeReason|subjectOfChange" $LCSH_DIR/subjects.skosrdf.nt > $LCSH_DIR/subjects.skosrdf.without-changesets.nt
echo "Keep only the wikidata alignments in the external links..."
grep "authorities/subject" $LCSH_DIR/external_links.nt | grep wikidata > $LCSH_DIR/externallinks.only-wikidata.nt


## 4. copy to final destination
echo "LCSH copy to data dir..."
mkdir -p $DATA_DIR/lcsh
cp $LCSH_DIR/subjects.skosrdf.without-changesets.nt $DATA_DIR/lcsh
cp $LCSH_DIR/externallinks.only-wikidata.nt $DATA_DIR/lcsh