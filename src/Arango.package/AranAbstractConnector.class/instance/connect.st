ssl
connect
	| response |
	self znClient
		path: '/_open/auth';
		entity: (self znEntityFrom: self user);
		post.
	response := NeoJSONReader fromString: self znClient response contents.
	self user jwt: (response at: #jwt)