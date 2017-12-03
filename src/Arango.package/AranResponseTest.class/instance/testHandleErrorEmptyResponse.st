tests
testHandleErrorEmptyResponse
	self should: [ AranResponse new handleError: self emptyMockResponse ] raise: AranNilError 