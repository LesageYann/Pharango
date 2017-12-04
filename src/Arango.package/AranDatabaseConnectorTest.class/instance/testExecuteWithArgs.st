tests
testExecuteWithArgs
	| res |
	res := (AranDatabaseConnector host: 'http://127.0.0.1:8529' user: 'test' password: 'test')
		execute: 'FOR v IN hello_foxx_texts FILTER v.name== @name return v'
		withArgs: {('name' -> 'c')} asDictionary.
	self assert: (res first at: #name) equals: 'c'