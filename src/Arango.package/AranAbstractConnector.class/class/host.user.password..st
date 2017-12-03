instance creation
host: aString user: aString2 password: aString3
	^ self new
		host: aString;
		user: (AranUser name: aString2 password: aString3)