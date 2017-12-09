# Pharango
A  http connector for Pharo and arango db.

## Installation

Install on Pharo >= 5

```Smalltalk
	Metacello new
		repository: 'github://Valtena/Pharango:master/src';
		baseline: 'Pharango';
		load
```

To add dependency in your project baseline :

```Smalltalk
	spec
		baseline: 'Pharango'
		with: [ spec repository: 'github://Valtena/Pharango:master/src' ]
```

Note that you can replace the `master` by another branch as `development` or a tag as `v1.0.0` or `v1.x.x`.

Install on Pharo < 5

**TODO (Need to check how to load a newer Matacello managing metadataless filetree)**

## Usage

```Smalltalk
manager := AranDatabasesManager host: 'http://127.0.0.1:8529' username: 'test' password: 'test'.

manager createDatabase: 'users'.

base :=  (AranDatabaseConnector  host: 'http://127.0.0.1:8529' username: 'test' password: 'test')
    baseName:'users';
    yourself.
"if you don't, use base baseName:'name', the default database is _system."

base createDocumentsCollection: 'contributors'.
base createEdgesCollection: 'knows'.

"and now you can make aql request for fill database or ask  information"
base execute: 'FOR u IN [{"_key": "jecisc"}, {"_key": "valtena"}] INSERT u IN contributors'.
base execute: 'INSERT {"_from":"contributors/jecisc","_to":"contributors/valtena"} IN knows'.

```


## Roadmap

### Before April 2018

- Use http API to create/modify/remove document and not only use AQL query for this.
- Use http API to create/modify/remove edge and not only use AQL query for this.
- Add graph usage.
- Use query cursor to not load all results in one time.
- Add Travis CI to run test.

### Later
- Add install Arango script.
- Add asynchrone query. 
- Use arango shell for local database.