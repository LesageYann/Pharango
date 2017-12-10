tests
testCollectionNamed
	| response |
	response := ((AranDatabasesManager
		host: 'http://127.0.0.1:8529'
		user: 'test'
		password: 'test') collectionNamed: '_apps') asAranCollection.
	self assert: (response asDictionary at: 'code') equals: 200.
	self assert: (response asDictionary at: 'error') equals: false.
	self assert: (response asDictionary at: 'isSystem') equals: true.
	self assert: (response asDictionary at: 'name') equals: '_apps'.
	self assert: (response asDictionary at: 'status') equals: 3.
	self assert: (response asDictionary at: 'type') equals: 2