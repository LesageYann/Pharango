query
createDatabase: name with: users
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: '/_api/database/';
		entity:
			(self
				znEntityFrom:
					{('name' -> name).
					('users' -> users)} asDictionary);
		post.
	^ self handleResponse: self znClient