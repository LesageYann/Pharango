tests
testAllGraphs
	| graphs |
	graphs := (AranDatabaseConnector host: 'http://127.0.0.1:8529' user: 'test' password: 'test') allGraphs .
	self assert: graphs isCollection equals: true