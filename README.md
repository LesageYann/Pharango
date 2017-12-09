# Pharango
A  http connector for Pharo and arango db.

## Installation

Install on Pharo >= 5

	Metacello new
		repository: 'github://Valtena/Pharango:master/src';
		baseline: 'Pharango';
		load

To add dependency in your project baseline :

	spec
		baseline: 'Pharango'
		with: [ spec repository: 'github://Valtena/Pharango:master/src' ]

Note that you can replace the `master` by another branch as `developmen` or a tag as `v1.0.0` or `v1.x.x`.

Install on Pharo < 5

**TODO (Need to check how to load a newer Matacello managing metadataless filetree)**

## Usage

```
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

###Before April 2018

Use http API to create/modify/remove document and not only use AQL query for this.
Use http API to create/modify/remove edge and not only use AQL query for this.
add graph usage.
use query cursor to not load all results in one time.
add Travis CI to run test.

### Later
add install Arango script.
add asynchrone query. 
Use arango shell for local database.