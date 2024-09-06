
. ./env.sh

# RAMEAU

## 1. Download
echo "RAMEAU Download..."
export RAMEAU_DIR=$WORK_DIR/rameau
rm -rf $RAMEAU_DIR
mkdir -p $RAMEAU_DIR
# RDF/XML
# export URL=https://transfert.bnf.fr/link/38c12c30-a86b-42fe-99e4-b0bc0740e30f
# N3
# export URL=https://transfert.bnf.fr/link/8510b2f1-1ad9-4d0f-8d66-6d691c1af307
# NT
export URL=https://transfert.bnf.fr/link/7da54f6e-34e0-48c5-b7c3-f3912cdcf355

wget -O databnf_rameau_nt.tar.gz --no-check-certificate $URL 
mv databnf_rameau_nt.tar.gz $RAMEAU_DIR

## 2. unzip
echo "RAMEAU Unzip..."
mkdir $RAMEAU_DIR/databnf_rameau
tar -xvzf $RAMEAU_DIR/databnf_rameau_nt.tar.gz --directory $RAMEAU_DIR/databnf_rameau

## 3. filter
echo "RAMEAU Pre-process..."
# echo "Merging all files..."
riot --output=NTriples $RAMEAU_DIR/databnf_rameau/* > $RAMEAU_DIR/rameau_full.nt

# find rameau/databnf_rameau_n3 -name "*.n3" \
# -exec sed -i 's/= /<http:\/\/www.w3.org\/2002\/07\/owl#sameAs> /g' {} \;
# find rameau/databnf_rameau_n3 -name "*.n3" \
# -exec sed -i 's/<:\/\//</g' {} \;

## 4. copy to final destination
echo "RAMEAU copy to data dir..."
mkdir -p $RAMEAU_DIR/rameau
cp $RAMEAU_DIR/rameau_full.nt $DATA_DIR/rameau