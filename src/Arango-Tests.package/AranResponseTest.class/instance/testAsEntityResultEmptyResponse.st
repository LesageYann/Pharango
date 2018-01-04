tests
testAsEntityResultEmptyResponse
	self assert: (AranResponse new response: self resultEmptyMockResponse) asEntity  equals: nil 