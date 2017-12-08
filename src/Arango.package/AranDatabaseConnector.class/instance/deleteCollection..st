query
deleteCollection: name
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: self baseUrl , '/_api/collection/' , name;
		entity: (ZnEntity with: '');
		delete.
	^ self handleResponse: self znClient