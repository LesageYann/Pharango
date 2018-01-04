mock
validSingleValueMockResponse
	| mock |
	mock := Mock new.
	mock stub contents willReturn: '{"result":["_system"],"error":false,"code":200}'.
	^mock