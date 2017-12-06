query
deleteDatabase: name
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: '/_api/database/',name ;
		entity: (ZnEntity with: '');
		delete.
	^ self handleResponse: self znClient
