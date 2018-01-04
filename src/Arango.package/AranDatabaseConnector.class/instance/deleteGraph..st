query
deleteGraph: name
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: self baseUrl , '/_api/gharial', name;
		entity: (ZnEntity with: '');
		delete.
	^ self handleResponse: self znClient