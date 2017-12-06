query
collectionNamed: name
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: '/_api/collection/' , name;
		entity: (ZnEntity with: '');
		get.
	^ self handleResponse: self znClient