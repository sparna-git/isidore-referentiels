#!/bin/bash

# Referentiel Calenda
export OUTPUT=./data/calenda

rm -rf $OUTPUT
mkdir -p $OUTPUT
poetry run calenda --input ./resources/calenda/calenda.csv --output $OUTPUT