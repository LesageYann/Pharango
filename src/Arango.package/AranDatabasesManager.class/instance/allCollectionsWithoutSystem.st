query
allCollectionsWithoutSystem
	self znClient
	   headerAt: #Authorization put: self user jwt;
		path: '/_api/collection?excludeSystem=true';
		get.
	^ self handleResponse: self znClient