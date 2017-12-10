tests
testExecute
	| base res |
	base := AranDatabaseConnector host: 'http://127.0.0.1:8529' user: 'test' password: 'test'.
	base createDocumentsCollection: 'test'.
	res := (base execute: 'INSERT { name: "entity", _key: "6565" } IN test return NEW')
		asEntity.
	self assert: (res at: 'name') equals: 'entity'.
	self assert: (res at: '_key') equals: '6565'.
	base deleteCollection: 'test'.