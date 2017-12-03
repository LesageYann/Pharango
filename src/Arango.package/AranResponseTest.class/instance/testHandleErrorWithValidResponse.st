tests
testHandleErrorWithValidResponse
	| res |
	res := AranResponse new handleError: self validMockResponse.
	self assert: res equals: {('result'->{'_system'. 'mooseBase'}). ('error'-> false). ('code'->200)} asDictionary 
	
	