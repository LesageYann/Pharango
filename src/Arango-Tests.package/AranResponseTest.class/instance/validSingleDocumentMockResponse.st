mock
validSingleDocumentMockResponse
	| mock |
	mock := Mock new.
	mock stub contents willReturn: '{"result":[{"id":"col/123","key":"123"}],"error":false,"code":200}'.
	^mock