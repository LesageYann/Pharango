query
createDatabase: name
	^ self createDatabase: name with: (Array with: self user)