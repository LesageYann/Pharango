tests
testCreateGraphEdges
	| base size edges |
	base := (AranDatabaseConnector  host: 'http://127.0.0.1:8529' user: 'test' password: 'test').
	size := base graphs asEntities size.
	base createGraph: 'test' edges: edges.
	self assert: base graphs asEntities size equals: size+1.
	base deleteGraph: 'test'.
	self assert: base graphs asEntities size equals: size.