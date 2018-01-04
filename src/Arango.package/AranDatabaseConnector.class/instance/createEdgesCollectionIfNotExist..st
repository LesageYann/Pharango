query
createEdgesCollectionIfNotExist: name
	[ self createEdgesCollection: name ]
		on: AranDuplicatedError
		do: [  ]