tests
testAsEntityValideResponseValue
	self assert: (AranResponse new response: self validSingleValueMockResponse) asEntity  equals: '_system' 