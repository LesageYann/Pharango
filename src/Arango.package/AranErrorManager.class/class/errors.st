accessing
errors
	^ errors ifNil: [ self createErrorsDictionary ]