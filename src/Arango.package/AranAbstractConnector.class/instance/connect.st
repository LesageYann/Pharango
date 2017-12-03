as yet unclassified
connect
	| response|
	self znClient 
	path: '/_open/auth';
		entity:
			(ZnEntity
				with: self user asJson);
		post.
	response := NeoJSONReader fromString: self znClient response contents.
	self user jwt: (response at: #jwt)