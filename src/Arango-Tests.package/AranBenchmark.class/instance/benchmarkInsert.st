benchmarking
benchmarkInsert
	| manager connector bench |
	manager := AranDatabasesManager
		host: 'http://127.0.0.1:8529'
		user: 'test'
		password: 'test'.
	manager createDatabase: 'bench'.
	connector := (AranDatabaseConnector
		host: 'http://127.0.0.1:8529'
		user: 'test'
		password: 'test') baseName: 'bench'.
	connector createDocumentsCollection: 'bench'.
	bench := [ connector
		execute: 'INSERT {"string":@name, "test":true} IN bench RETURN 1'
		withArgs: {('name' -> 'abracabra')} asDictionary ] benchFor: 10 seconds.
	manager deleteDatabase: 'bench'.
	^ bench