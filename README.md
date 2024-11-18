# Isidore référentiels

Récupération et pré-traitements des référentiels Isidore

## Installation

### Python

- Python 3.10
- Poetry :

```
sudo apt install python3-poetry
```

### Java

Jena et les scripts d'analyse des référentiels utilisent SHACL Play et nécessitent d'avoir Java installé. Les scripts ont été testés avec Java 21.

### Commandes Linux

Les commandes `wget`, `grep`, `tar` et `zip` doivent être disponibles dans la ligne de commande

### Jena

Il faut installer les commandes Jena version 5.1.0 : https://jena.apache.org/documentation/tools/index.html

- Télécharger Jena et le dézipper
- Positionner la variable d'environnement $JENA_HOME à l'endroit où à été dézippé Jena:
- Ajouter $JENA_HOME/bin dans le path:

```
export JENA_HOME=/home/thomas/programs/apache-jena/apache-jena-5.1.0
export PATH=$PATH:$JENA_HOME/bin
```

Les commandes `sparql` ou `riot` doivent être executables directement dans un prompt, on doit pouvoir lancer:

```
sparql --version
> Apache Jena version 5.1.0
riot --version
> Apache Jena version 5.1.0
```


### Installation des dépendances

Il faut installer les dépendances Python à l'aide de Poetry en lançant les commandes suivantes:

```
poetry update
poetry install
```

## Exécution

### Etape 1 / prepare : Récupération et préparation des fichiers de données

Cette étape télécharge les fichiers et effectue certains filtrages simples sur la base de la syntaxe des fichiers, avec des expressions régulières.

```
cd prepare
./prepare.sh
```

Les fichiers résultats se retrouvent dans `../data`

### Etape 1 Geonames

```
poetry run geonames --user <User> --directory GeonamesRDF
```

Par exemple:

```
poetry run geonames --user humanumRef --directory GeonamesRDF
```

### Etape 1bis optionnelle : Analyse des datasets bruts après récupération et avant traitement/filtrage

Cette étape génére des rapports HTML d'analyse qui donnent la structure des données de chaque référentiel, ainsi que les comptages de nombre de concepts, et le nombre de chaque propriété.
C'est une étape optionnelle qui permet de se rendre compte du contenu des datasets avant leur traitement.

```
cd analyze
./1-analyze-shacl-lcsh.sh
./2-analyze-shacl-pactols.sh
./3-analyze-shacl-bne.sh
./4-analyze-shacl-rameau.sh
```

Les données à analyser sont lues depuis le répertoire `../data` et les rapports d'analyse sont dans `analysis`. Ouvrir les fichiers HTML pour lire les rapports, par exemple `analysis/lcsh/subjects.skosrdf-doc.html`


### Etape 2 / clean : Nettoyage des fichiers

Le synopsis de lancement de l'étape 1 est le suivant:

```
poetry run isidore_referentiels --etape clean --configuration {fichier_de_config.yaml}
```

Par exemple :

```
poetry run isidore_referentiels --etape clean --configuration config/geonames/config_geonames.yaml
poetry run isidore_referentiels --etape report --configuration config/geonames/config_geonames.yaml
poetry run isidore_referentiels --etape integrate --configuration config/geonames/config_geonames.yaml

poetry run isidore_referentiels --etape clean --configuration config/lcsh/config_lcsh.yaml
poetry run isidore_referentiels --etape report --configuration config/lcsh/config_lcsh.yaml
poetry run isidore_referentiels --etape integrate --configuration config/lcsh/config_lcsh.yaml
```


### Fichier de config config.yaml

Il y a un fichier de config par référentiel à intégrer. Ces fichiers sont dans le répertoire `config`. Ils ont tous la structure suivante:

```yaml
# ID du référentiel qui est utilisé pour créer des sous-répertoires sous $workDir et $outputDir
id: geonames
# Page de download du référentiel. Ce paramètre est purement informatif et n'est pas utilisé dans les scripts
downloadPage: 
  - https://www.geonames.org/ 
# Répertoire où sont enregistrés les fichiers de résultat de chaque étape de traitement
outputDir: output
# Répertoire où sont stockés les fichiers temporaires de travail
# Ce répertoire peut être supprimé après chaque exécution du script
workDir: work
# Nom du fichier de log qui sera créé dans $workDir/${id_referentiel}
logFile: isidore-referentiels_geonames.log

# Etape 1 : "clean" : nettoyage ou enrichissement des données par requêtes SPARQL
clean:
  # Répertoire source des données, qui doit contenir le ou les fichiers RDF du référentiel
  data: 
    - data/geonames
  # Liste des fichiers contenant chacun une requête SPARQL d'update a exécuter
  sparql: 
    - config/geonames/sparql/insert_wikidata.ru
    - config/geonames/sparql/insert_skos.ru
  # Répertoire de résultat qui sera créé sous $outputDir/${id_referentiel} (par exemple output/geonames/output_clean)
  output: 
    - output_clean

# Etape 2 : "report" : analyse du référentiel et détection des doublons par rapport aux autres référentiels
report:
  # Répertoire source des données, qui est le répertoire d'output de l'étape précédente
  data: 
    - output/geonames/output_clean
  # Répertoire de résultat qui sera créé sous $outputDir/${id_referentiel} (par exemple output/geonames/output_report)
  output: 
    - output_report
  # Listes des algorithmes de détection de doublon à appliquer. Les valeurs possibles sont `alignement` ou `libelles`.
  # Par exemple si on met seulement "alignement" il ne fera que le traitement de détection des doublons d'alignement mais pas sur les libellés
  algorithms:
    - alignement
    - libelles

# Etape 3 : "integrate" : lit le rapport d'analyse de l'étape précédente et supprime les concepts qui sont marqués "A EXCLURE"
integrate:
  # Répertoire source des données, qui est le répertoire d'output de l'étape clean 
  data: 
    - output/geonames/output_clean
  # Répertoire source contenant le rapport, qui est le répertoire d'output de l'étape précédente
  # Le répertoire doit contenir des fichiers csv, xls ou xlsx.
  # Les noms de fichier n'ont pas d'importance.
  # Tous les fichiers du répertoire sont lus
  #
  # Dans ces fichiers, le script lit la colonne "jugement" (peu importe sa position) et repère toutes les
  # lignes qui sont marquées "A EXCLURE"
  report: 
    - output/geonames/output_report
  # Répertoire pour stoker le résultat RDF final
  output: 
    - output_integrate
``` 