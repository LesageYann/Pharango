mock
resultEmptyMockResponse
	| mock |
	mock := Mock new.
	mock stub contents willReturn: '{"result":[],"error":false,"code":200}'.
	^mock