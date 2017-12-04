as yet unclassified
allCollections
	self znClient
	   headerAt: #Authorization put: self user jwt;
		path: '/_api/collection';
		get.
	^ self handleResponse: self znClient