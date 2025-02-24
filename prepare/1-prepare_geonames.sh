#!/bin/bash

# Referentiel HAL
export OUTPUT=../data/geonames

rm -rf $OUTPUT
mkdir -p $OUTPUT
poetry run geonames --user humanumRef --output $OUTPUT

echo "Le fichier a été stocker dans le répertoire: " $OUTPUT