query
collections
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: self baseUrl , '/_api/collection';
		entity: (ZnEntity with: '');
		get.
	^ self handleResponse: self znClient 