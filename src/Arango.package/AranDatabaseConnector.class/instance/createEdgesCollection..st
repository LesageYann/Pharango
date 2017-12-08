query
createEdgesCollection: name
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: self baseUrl , '/_api/collection';
		entity: (ZnEntity with: '{"name":"' , name , '","type":"3"}');
		post.
	^ self handleResponse: self znClient