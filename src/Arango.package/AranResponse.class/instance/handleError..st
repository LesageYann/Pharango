private
handleError: znResponse
	| contents res |
	contents := znResponse contents.
	contents
		ifNil: [ znResponse code = 401
				ifTrue: [ AranErrorManager reconnexionNeeded ]
				ifFalse: [ AranErrorManager nilException ] ].
	res := NeoJSONReader fromString: contents.
	(res at: #error)
		ifTrue: [ AranErrorManager signalMessage: (res at: #errorMessage) code: (res at: #code) ].
	^ res