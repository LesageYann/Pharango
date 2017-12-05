reflective operations
doesNotUnderstand: aMessage
	^ dictionary 
			at: aMessage selector
			ifAbsent: [ self dataNotFound: aMessage ]