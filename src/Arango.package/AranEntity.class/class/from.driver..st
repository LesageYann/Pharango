instance creation
from: aCollection driver: anAranResponse
	aCollection isDictionary
		ifTrue: [ ^ self new
				dictionary: aCollection;
				driver: anAranResponse;
				yourself ]
		ifFalse: [ "it's a value" ^ aCollection ]