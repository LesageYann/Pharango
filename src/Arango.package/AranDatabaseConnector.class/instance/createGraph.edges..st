query
createGraph: name edges: edges
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: self baseUrl , '/_api/gharial';
		entity:
			(ZnEntity
				with:
					(String
						streamContents: [ :s | 
							s
								<< '{"name":"';
								<< name;
								<< '","edgeDefinitions":['.
							edges
								do: [ :edge | 
									s
										<< '{"collection":"';
										<< edge name;
										<< '","from":["';
									   << edge from;
										<< '"],"to":["';
										<< edge to;
										<< '"]}' ].
							s << ']}' ]) contents);
		put.
	^ self handleResponse: self znClient