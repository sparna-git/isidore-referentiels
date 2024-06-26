# isidore-referentiels
Récupération des référentiels Isidore


1. Faire un script Python
2. Utiliser un fichier de configuration en YAML qui permettra de configurer le comportement du script
3. Développer seulement la récupération des référentiels via des URLs

```yaml

outputDir: output
workDir: work
logFile: isidore-referentiels.log
vocabularies:
  - rameau:
      downloadPage:
        - https://pef.bnf.fr/link/539d6d59-c2e3-4e17-b24c-d8a83ca11944#
      urls:
        - https://pef.bnf.fr/link/539d6d59-c2e3-4e17-b24c-d8a83ca11944#
  - lcsh:
      downloadPage:
        - https://id.loc.gov/download/
      urls:
        - https://id.loc.gov/download/authorities/subjects.skosrdf.ttl.gz
  - bne:
      downloadPage:
        - https://www.bne.es/es/iniciativas-proyectos/datos-enlazados-bne
      urls:
        - http://datos.bne.es/datadump/materias.nt.bz2
  - pactols:
      downloadPage:
        - https://github.com/frantiq/PACTOLS
        - https://github.com/frantiq/PACTOLS/tree/master/pactols-latest-version/pactols_sujets_all
      urls:
        - https://github.com/frantiq/PACTOLS/blob/master/pactols-latest-version/pactols_sujets_all/pactols_sujets_all.rdf

```

4. L'output du script est de :
  - sauvegrader chaque fichier dans le répertoire indiqué dans le paramètre "outputDir"
  - en Turtle
  - en utilisant la clé du vocabulaire ("rameau.ttl", "lcsh.ttl", "bne.ttl", "pactols.ttl"

5. On peut sauvegarder des fichiers temporaires dans le répertoire indiqué par "workDir"
6. Il faut bien gérer:
  - la génération d'un log de traitement dans le fichier indiqué dans le paramètre "logFile"
  - le cas des erreurs de téléchargement (renvoyer une exception si un téléchargement échoue)
  - le cas des fichiers zippés (cas de Rameau, LCSH, BNE) : il faut savoir les dézipper
