#!/bin/bash

# Referentiel HAL
export OUTPUT=../data/geonames

rm -rf $OUTPUT
mkdir -p $OUTPUT

rm -rf geonames.log
poetry run geonames --user humanumRef --output $OUTPUT

echo "Les fichiers ont été stockés dans le répertoire: " $OUTPUT
