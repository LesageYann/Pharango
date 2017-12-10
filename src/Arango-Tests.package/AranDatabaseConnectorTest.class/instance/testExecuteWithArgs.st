tests
testExecuteWithArgs
	| base res |
	base := AranDatabaseConnector
		host: 'http://127.0.0.1:8529'
		user: 'test'
		password: 'test'.
	base createDocumentsCollection: 'test'.
	res := (base
		execute: 'INSERT { name: @name, _key: "6565" } IN test return NEW'
		withArgs: {('name' -> 'entity')} asDictionary) asEntity.
	self assert: (res at: 'name') equals: 'entity'.
	self assert: (res at: '_key') equals: '6565'.
	base deleteCollection: 'test'.