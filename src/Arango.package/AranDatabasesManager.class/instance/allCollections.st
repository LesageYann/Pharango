query
allCollections
	self znClient
	   headerAt: #Authorization put: self user jwt;
		path: '/_api/collection';
		entity: (ZnEntity with: '');
		get.
	^ self handleResponse: self znClient