query
createDocumentsCollection: name
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: self baseUrl , '/_api/collection';
		entity: (ZnEntity
				with:
					'{"name":"',name,'"}');
					post.
	^ self handleResponse: self znClient 