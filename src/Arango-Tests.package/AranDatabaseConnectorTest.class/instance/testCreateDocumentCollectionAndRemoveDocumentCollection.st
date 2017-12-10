tests
testCreateDocumentCollectionAndRemoveDocumentCollection
	| base size |
	base := (AranDatabaseConnector  host: 'http://127.0.0.1:8529' user: 'test' password: 'test').
	size := base collections asEntities size.
	base createDocumentsCollection: 'test'.
	self assert: base collections asEntities size equals: size+1.
	base deleteCollection: 'test'.
	self assert: base collections asEntities size equals: size.