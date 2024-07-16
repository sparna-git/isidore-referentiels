
. ./env.sh

# LCSH

## 1. Download
echo "LCSH Download..."
export LCSH_DIR=$WORK_DIR/lcsh
mkdir -p $LCSH_DIR
export URL=https://id.loc.gov/download/authorities/subjects.skosrdf.nt.gz 
wget --no-check-certificate $URL 
mv subjects.skosrdf.nt.gz $LCSH_DIR

## 2. unzip
echo "LCSH Unzip..."
gzip -d $LCSH_DIR/subjects.skosrdf.nt.gz

## 3. filter
echo "LCSH Pre-process..."
grep -v -E "ChangeSet|creatorName|createdDate|changeNote|changeReason|subjectOfChange" $LCSH_DIR/subjects.skosrdf.nt > $LCSH_DIR/subjects.skosrdf-filtered.nt

## 4. copy to final destination
echo "LCSH copy to data dir..."
mkdir -p $DATA_DIR/lcsh
cp $LCSH_DIR/subjects.skosrdf-filtered.nt $DATA_DIR/lcsh