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
poetry run geonames --input calenda --output data\calenda\calenda.ttl
```

### HAL SHS

```
poetry run hal --output <Répértoir>
```

Par exemple:

```
poetry run hal --output data\hal\calenda.ttl
```