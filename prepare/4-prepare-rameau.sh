
. ./env.sh

# RAMEAU

## 1. Download
echo "RAMEAU Download..."
export RAMEAU_DIR=$WORK_DIR/rameau
mkdir -p $RAMEAU_DIR
export URL=https://transfert.bnf.fr/link/38c12c30-a86b-42fe-99e4-b0bc0740e30f
wget -O databnf_rameau_xml.tar.gz --no-check-certificate $URL 
mv databnf_rameau_xml.tar.gz $RAMEAU_DIR

## 2. unzip
echo "RAMEAU Unzip..."
mkdir $RAMEAU_DIR/databnf_rameau_xml
tar -xvzf $RAMEAU_DIR/databnf_rameau_xml.tar.gz --directory $RAMEAU_DIR/databnf_rameau_xml

## 3. filter
echo "RAMEAU Pre-process..."
# find rameau/databnf_rameau_n3 -name "*.n3" \
# -exec sed -i 's/= /<http:\/\/www.w3.org\/2002\/07\/owl#sameAs> /g' {} \;
# find rameau/databnf_rameau_n3 -name "*.n3" \
# -exec sed -i 's/<:\/\//</g' {} \;

## 4. copy to final destination
echo "RAMEAU copy to data dir..."
mkdir -p $RAMEAU_DIR/rameau
cp -r $RAMEAU_DIR/databnf_rameau_xml $DATA_DIR/rameau