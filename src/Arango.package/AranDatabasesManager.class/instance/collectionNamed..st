query
collectionNamed: name
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: '/_api/collection/' , name;
		get.
	^ self handleResponse: self znClient