#!/bin/bash

# Referentiel HAL
export OUTPUT=./data/hal

rm -rf $OUTPUT
mkdir -p $OUTPUT
poetry run hal --output ./data/hal

echo "Le fichier a été stocké dans le répertoire: " $OUTPUT