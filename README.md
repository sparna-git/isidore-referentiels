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
poetry run isidore_referentiels --etape clean --configuration {fichier_de_config.yaml} --referentiel {repertoire_de_data}
```

Par exemple :

```
poetry run isidore_referentiels --etape clean --configuration config/lcsh/config_lcsh.yaml --referentiel ./data/lcsh 
poetry run isidore_referentiels --etape clean --configuration config/bne/config_bne.yaml --referentiel ./data/bne
poetry run isidore_referentiels --etape clean --configuration config/rameau/config_rameau.yaml --referentiel ./data/rameau
poetry run isidore_referentiels --etape clean --configuration config/pactols/config_pactols.yaml --referentiel ./data/pactols
```


### Fichier de config config.yaml

