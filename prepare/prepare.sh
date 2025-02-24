#!/bin/bash
. ./env.sh

rm -rf $WORK_DIR $DATA_DIR

. ./2-prepare-lcsh.sh
. ./3-prepare-rameau.sh
. ./4-prepare-bne.sh
. ./5-prepare-pactols.sh
. ./7-prepare-geoethno.sh