#!/bin/bash
. ./env.sh
# BNE
## 1. Download
echo "BNE Download..."
export BNE_DIR=./$WORK_DIR/bne
rm -rf $BNE_DIR
mkdir -p $BNE_DIR
export URL=http://datos.bne.es/datadump/materias.nt.bz2 
wget --no-check-certificate $URL 
mv materias.nt.bz2 $BNE_DIR

## 2. unzip
echo "BNE Unzip..."
bzip2 -d $BNE_DIR/materias.nt.bz2

## 3. filter
echo "BNE Pre-process..."
echo "Keeping only lines that look like correct triples..."
grep -E "<[^ ]*> <[^ ]*> <[^ ]*> \.|<[^ ]*> <[^ ]*> \".*\"(@..)? \." work/bne/materias.nt > work/bne/materias-fixed.nt
# old version : remove URI starting with a whitespace
# sed -i 's/< /</g' $BNE_DIR/materias.nt


## 4. copy to final destination
echo "BNE copy to data dir..."
mkdir -p $DATA_DIR/bne
cp $BNE_DIR/materias-fixed.nt $DATA_DIR/bne/materias.nt