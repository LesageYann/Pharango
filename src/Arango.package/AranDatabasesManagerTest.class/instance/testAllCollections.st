tests
testAllCollections
	| bases |
	bases := (AranDatabasesManager host: 'http://127.0.0.1:8529' user: 'test' password: 'test') allCollections.
	self assert: bases isCollection equals: true.
	self assert: (bases size >= 1) equals: true