tests
testAllCollectionsWithoutSystem
	| bases |
	bases := (AranDatabasesManager host: 'http://127.0.0.1:8529' user: 'test' password: 'test') allCollectionsWithoutSystem.
	bases do: [ :base |
		self assert: (base at: #isSystem) equals: false ]