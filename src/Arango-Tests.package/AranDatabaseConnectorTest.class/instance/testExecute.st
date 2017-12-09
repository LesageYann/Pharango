tests
testExecute
	| res |
	res := ((AranDatabaseConnector host: 'http://127.0.0.1:8529' user: 'test' password: 'test')
		execute: 'FOR v IN hello_foxx_texts return v') asEntities.
	self assert: res size equals: 7.
	self assert: (res first _id beginsWith: 'hello_foxx_texts/') equals: true