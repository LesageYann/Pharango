query
graph: name
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: self baseUrl , '/_api/gharial', name;
		entity: (ZnEntity with: '');
		get.
	^ self handleResponse: self znClient