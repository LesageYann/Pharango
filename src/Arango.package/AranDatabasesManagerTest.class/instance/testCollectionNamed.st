tests
testCollectionNamed
	| response |
	response := ((AranDatabasesManager host: 'http://127.0.0.1:8529' user: 'test' password: 'test')
		collectionNamed: '_apps') asAranCollection.
	self
		assert: response asDictionary 
		equals:
			{('code' -> 200).
			('error' -> false).
			('id' -> '60').
			('isSystem' -> true).
			('name' -> '_apps').
			('status' -> 3).
			('type' -> 2)} asDictionary 