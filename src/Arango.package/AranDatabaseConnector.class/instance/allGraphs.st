query
allGraphs
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: self baseUrl , '/_api/gharial';
		entity: (ZnEntity with: '');
		get.
	^ self handleResponse: self znClient 