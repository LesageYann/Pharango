tests
testGraphs
	| graphs |
	graphs := (AranDatabaseConnector host: 'http://127.0.0.1:8529' user: 'test' password: 'test') graphs .
	self assert: (graphs asCollectionAt: #graphs) isCollection equals: true