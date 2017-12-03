tests
testAllDatabases
	| bases |
	bases := (AranDatabaseManager host: 'http://127.0.0.1:8529' user: 'test' password: 'test') allDatabases.
	self assert: bases isCollection equals: true.