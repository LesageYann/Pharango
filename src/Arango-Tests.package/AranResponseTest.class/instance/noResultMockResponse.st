mock
noResultMockResponse
	| mock |
	mock := Mock new.
	mock stub contents willReturn: '{"error":false,"code":200}'.
	^mock