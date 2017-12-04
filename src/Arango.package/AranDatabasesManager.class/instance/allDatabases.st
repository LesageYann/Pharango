as yet unclassified
allDatabases
	self znClient
	   headerAt: #Authorization put: self user jwt;
		path: '/_api/database';
		get.
	^ self handleResponse: self znClient