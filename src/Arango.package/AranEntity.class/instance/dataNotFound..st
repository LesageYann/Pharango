reflective operations
dataNotFound: aMessage
	^ dictionary at: aMessage selector ifAbsent: [ nil ]