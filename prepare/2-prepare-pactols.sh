
. ./env.sh

# Pactols

## 1. Download
echo "Pactols Download..."
export PACTOLS_DIR=$WORK_DIR/pactols
mkdir -p $PACTOLS_DIR
export URL=https://github.com/frantiq/PACTOLS/raw/master/pactols-latest-version/pactols_sujets_all/pactols_sujets_all.rdf
wget --no-check-certificate $URL 
mv pactols_sujets_all.rdf $PACTOLS_DIR

## 2. unzip
echo "Pactols Unzip..."
echo "Nothing to do !"

## 3. filter
echo "Pactols Pre-process..."
echo "Nothing to do !"

## 4. copy to final destination
echo "Pactols copy to data dir..."
mkdir -p $DATA_DIR/pactols
cp $PACTOLS_DIR/pactols_sujets_all.rdf $DATA_DIR/pactols