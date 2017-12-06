query
allDatabases
	self znClient
	   headerAt: #Authorization put: self user jwt;
		path: '/_api/database';
		entity: (ZnEntity with: '');
		get.
	^ self handleResponse: self znClient