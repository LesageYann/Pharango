mock
validMultipleMockResponse
	| mock |
	mock := Mock new.
	mock stub contents willReturn: '{"result":["_system","mooseBase"],"error":false,"code":200}'.
	^mock