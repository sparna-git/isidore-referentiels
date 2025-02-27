#!/bin/bash

# Referentiel HAL
export OUTPUT=../data/geonames

rm -rf $OUTPUT
mkdir -p $OUTPUT

rm -rf geonames.log
poetry run geonames --user humanumRef --seconds 12 --output $OUTPUT

# Si besoin, on peut donner un nombre maximum de notices a telecharger, pour tester sur un petit nombre
# Avec le paramètre --maxrdf
# poetry run geonames --user humanumRef --output $OUTPUT --maxrdf 10

echo "Les fichiers ont été stockés dans le répertoire: " $OUTPUT
