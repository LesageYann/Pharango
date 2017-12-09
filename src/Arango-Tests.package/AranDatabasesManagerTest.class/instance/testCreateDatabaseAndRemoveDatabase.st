tests
testCreateDatabaseAndRemoveDatabase
	| manager bases |
	manager := AranDatabasesManager host: 'http://127.0.0.1:8529' user: 'test' password: 'test'.
	bases := manager allDatabases asEntities.
	manager createDatabase: 'arangoTest'.
	self assert: manager allDatabases asEntities size equals: bases size + 1.
	manager deleteDatabase: 'arangoTest'.
	self assert: manager allDatabases asEntities size equals: bases size