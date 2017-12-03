tests
testHandleError401
	self should: [ AranResponse new handleError: self mock401Response ] raise: AranConnexionFailure 