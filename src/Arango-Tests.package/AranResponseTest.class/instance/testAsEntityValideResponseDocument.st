tests
testAsEntityValideResponseDocument
	| document response fakeDocument |
	response := AranResponse new.
	document := (response response: self validSingleDocumentMockResponse)
		asEntity.
	fakeDocument := AranDocument new
		dictionary:
			{('key' -> '123').
			('id' -> 'col/123')} asDictionary;
		driver: response;
		yourself.
	self assert: document equals: fakeDocument