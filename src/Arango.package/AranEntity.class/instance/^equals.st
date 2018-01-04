converting
= object
	self == object
		ifTrue: [ ^ true ].
	^ object isAranEntity and: [ object dictionary = self dictionary ]