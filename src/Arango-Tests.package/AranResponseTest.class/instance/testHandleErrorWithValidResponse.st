tests
testHandleErrorWithValidResponse
	| res |
	res := AranResponse new handleError: self validMultipleMockResponse.
	self assert: res equals: {('result'->{'_system'. 'mooseBase'}). ('error'-> false). ('code'->200)} asDictionary 
	
	