### Etape 1 Geonames

```
poetry run geonames --user <User> --directory GeonamesRDF
```

Par exemple:

```
poetry run geonames --user humanumRef --directory GeonamesRDF
```

### Calenda

```
poetry run calenda --input <répértoir> --output <Répértoir>
```

Par exemple:

```
poetry run calenda --input prepare/calenda --output data/calenda
```

### HAL SHS

```
poetry run hal --output <Répértoir>
```

Par exemple:

```
poetry run hal --output data/hal
```